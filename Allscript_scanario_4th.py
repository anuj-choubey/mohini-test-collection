import time
from  selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from login import login
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.chrome.service import Service

def Allscript_scanarios_4th(driver):
    upload_link = driver.find_element(by=By.XPATH, value="//a[normalize-space()='Upload']")
    upload_link.click()
    time.sleep(2)
    Choose_file = driver.find_element(by=By.XPATH, value="//input[@type='file']")
    Choose_file.send_keys("C:/Users/mohni/PycharmProjects/08052023 Svast/Test data/All script PMS/All script 4.xlsx")
    time.sleep(2)
    PMS_dd = driver.find_element(By.CLASS_NAME, "pi-chevron-down")
    PMS_dd.click()
    time.sleep(2)
    Allscript_option = driver.find_element(By.XPATH, "//li[@aria-label='All Scripts']")
    Allscript_option.click()
    time.sleep(2)
    Client_dd = driver.find_element(By.XPATH, "/html/body/app-root/div/app-upload-csv/div/div[2]/div[2]/div/div[2]/div/p-dropdown/div/span")
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
    td_bal = driver.find_element(By.XPATH, "//tbody/tr[1]/td[13]")
    time.sleep(2)
    A = td_bal.text
    if A == "$198.00":
        print("Multiple claims with same UID has sum of balance in workbench")
    else:
        print("Multiple claims with same UID don't have sum of balance in workbench")
    time.sleep(2)
    driver.close()

driver = login()
Allscript_scanarios_4th(driver)