from datetime import datetime
from zipfile import ZipFile,ZIP_DEFLATED

files = [
    "auto-update.sh",
    "requirements.txt",
    "tank-pi.py"
]

with ZipFile('tank-pi.zip', mode='w', compression=ZIP_DEFLATED, compresslevel=9) as thezip:
    for file in files:
        thezip.write(file)
    thezip.writestr("version", datetime.now().strftime("%Y/%m/%d"))
