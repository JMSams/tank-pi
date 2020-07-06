from zipfile import ZipFile

files = [
    "auto-update.sh",
    "requirements.txt",
    "tank-pi.py"
]

with ZipFile('tank-pi.zip', 'w') as zip:
    for file in files:
        zip.write(file)