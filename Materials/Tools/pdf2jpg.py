import pdfbox
import os

p = pdfbox.PDFBox()

BASE_DIR = os.path.dirname(os.path.abspath(__file__))

os.chdir(BASE_DIR)
print("Convertion Starts at {0}".format(BASE_DIR))

for f in [f for f in os.listdir() if f.endswith('.pdf')]:
    p.pdf_to_images(os.path.join(BASE_DIR,f), dpi=300)

for f in [f for f in os.listdir() if f.endswith('1.jpg')]:
    origin_filename = os.path.join(BASE_DIR,f)
    os.rename(origin_filename, origin_filename.replace('1.jpg','.jpg'))

print("End of Convertion")