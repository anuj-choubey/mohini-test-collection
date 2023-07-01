from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium import webdriver
# from  webdriver_manager.chrome import ChromeDriverManager
import time

def login():
    driver = webdriver.Chrome(executable_path="chromedriver.exe")
    username = "utkarsh@mistpl.com"
    password = "Svast@1209"
    driver.get("https://testing.svastapps.com/#/")
    driver.maximize_window()
    driver.find_element(by=By.XPATH, value="//button[normalize-space()='Other Login']").click()
    time.sleep(1)
    # Find username and password fields and enter values
    driver.find_element(by=By.XPATH, value="/html/body/app-root/div/app-login/app-layout/div/div/div/form/div[1]/input").send_keys("utkarsh@mistpl.com")
    driver.find_element(by=By.XPATH, value="/html/body/app-root/div/app-login/app-layout/div/div/div/form/div[2]/input").send_keys("Svast@1209")
    # Click the login button
    login_button = driver.find_element(by=By.XPATH, value="//button[normalize-space()='Login']")
    login_button.click()
    time.sleep(5)
    return driver

