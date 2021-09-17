import os
directory = '/Users/olegbezr/Code/ostarbeiters/assets/story_content/ivan_klimenko/audio/'
files = os.listdir(directory)

for file in files:
    if (not ".m4a" in file):
        print(file)
        os.rename(directory + "/" + file, directory + "/" + file + ".m4a")