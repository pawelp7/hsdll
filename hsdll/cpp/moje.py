import os
import os.path
import shutil

os.chdir(os.path.join("..", "hs"))

os.system("cabal install")
shutil.copyfile("HSdll.dll", os.path.join("..", "cpp", "HSdll.dll"))