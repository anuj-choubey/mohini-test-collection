import time
from  selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from login import login
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import NoSuchElementException
from selenium.webdriver.chrome.service import Service

def Allscript_scanarios_5th(driver):
    upload_link = driver.find_element(by=By.XPATH, value="//a[normalize-space()='Upload']")
    upload_link.click()
    time.sleep(2)
    Choose_file = driver.find_element(by=By.XPATH, value="//input[@type='file']")
    Choose_file.send_keys("C:/Users/mohni/PycharmProjects/08052023 Svast/Test data/All script PMS/All script 5.xlsx")
    time.sleep(2)
    PMS_dd = driver.find_element(By.CLASS_NAME, "pi-chevron-down")
    PMS_dd.click()
    time.sleep(2)
    Allscript_option = driver.find_element(By.XPATH, "//li[@aria-label='All Scripts']")
    Allscript_option.click()
    time.sleep(2)
    Client_dd = driver.find_element(By.XPATH,
                                    "/html/body/app-root/div/app-upload-csv/div/div[2]/div[2]/div/div[2]/div/p-dropdown/div/span")
    Client_dd.click()
    time.sleep(2)
    Choose_client = driver.find_element(By.XPATH, "//span[normalize-space()='Catskill Orthopedics PC']")
    Choose_client.click()
    time.sleep(2)
    Submit_btn = driver.find_element(by=By.XPATH, value="//span[@class='p-button-label ng-star-inserted']")
    Submit_btn.click()
    time.sleep(2)
    driver.get("http://localhost:4200/#/admin/workbench")
    time.sleep(2)
    IF_UID = driver.find_element(By.XPATH, "//input[@name='uid']")
    IF_UID.send_keys("28810458630")
    time.sleep(2)
    IF_UID.send_keys(Keys.ENTER)
    time.sleep(2)

    try:
        tbl_data = driver.find_element(By.XPATH, "//td[normalize-space()='28810458630']")
        raise AssertionError("Element is present in the web page")
    except NoSuchElementException:
        print("Claims not comes in new ATB are auto closed")
    driver.close()

driver = login()
Allscript_scanarios_5th(driver)