from selenium import webdriver
from selenium.webdriver.common.keys import Keys

# สร้าง WebDriver
driver = webdriver.Chrome()

# เปิดเว็บไซต์
driver.get("https://www.google.com")

# ค้นหา "Selenium" ในช่องค้นหา
search_box = driver.find_element("name", "q")
search_box.send_keys("Selenium")
search_box.send_keys(Keys.RETURN)

# รอผลลัพธ์แสดง
driver.implicitly_wait(10)

# ปิดเบราว์เซอร์
driver.quit()
