from selenium import webdriver
from selenium.webdriver.common.by import By
from PIL import Image
import os, shutil
import tempfile
import pyperclip

def split_gif(gif_path, output_folder):
    gif = Image.open(gif_path)
    for frame in range(0, gif.n_frames):
        gif.seek(frame)
        new_frame = gif.copy().convert('RGBA')
        background = Image.new('RGBA', new_frame.size, (0,0,0))
        new_frame = Image.alpha_composite(background, new_frame)
        new_frame = new_frame.convert('RGB')
        new_frame.save(os.path.join(output_folder, f"{frame}.jpg"), format='JPEG')

gifPath = input('Path to your gif: ')
size = input('Size (leave empty for default, default is 64): ')
if size == '':
    size = '64'
else:
    size = str(size)
if not os.path.exists(tempfile.gettempdir()+'\\temp_images'):
    os.makedirs(tempfile.gettempdir()+'\\temp_images')
jpgFolder = tempfile.gettempdir()+'\\temp_images'
split_gif(gifPath, jpgFolder)

driver = webdriver.Edge()
driver.get("https://artem7-ops.github.io/emoji2image/?textSize="+size)
text_field = None
upload_field = driver.find_elements(By.XPATH, "//input[@type='file']")[0]
length = len(os.listdir(jpgFolder))
anim = '['
for file in range(length):
    path = jpgFolder+'\\'+str(file)+'.jpg'
    upload_field.send_keys(path)
    if text_field == None:
        text_field = driver.find_elements(By.XPATH, "//pre[@data-v-15269b48='']")[0]
    if file == length-1:
        anim = anim+'"'+text_field.text.replace('\n', '\\n')+'"]'
    else:
        anim = anim+'"'+text_field.text.replace('\n', '\\n')+'",'
for filename in os.listdir(jpgFolder):
    file_path = os.path.join(jpgFolder, filename)
    try:
        if os.path.isfile(file_path) or os.path.islink(file_path):
            os.unlink(file_path)
        elif os.path.isdir(file_path):
            shutil.rmtree(file_path)
    except Exception as e:
        print('Failed to delete %s. Reason: %s' % (file_path, e))
driver.quit()
pyperclip.copy(anim)
input('Copied to clipboard! Press Enter to exit ')
