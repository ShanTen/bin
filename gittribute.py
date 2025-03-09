# git + distribute 
"""
    Inputs: Starting time period (now), Ending Time Period (Past), Folder 
    Flags 
        - exclude-weekends 
        - distribution 
        - skip [array of days]
        - ignore-private-commits 

    2 Versions, 
        1) File Cutting 
        2) Line Cutting

    Version - 1

    1) Fetches your github profile 
    2) Finds number of days in start-end period (interpolation-period)
    3) Removes all days with "some" or "any" activity and makes the days into array with yyyy-mm-dd values 
    4) Looks at all your files (7-8) (commits-to-interpolate)
    5) commits files to respective days 
    

    Go to your profile
"""

import subprocess
import re

    
def git_status():
    cmd = "git status --porcelain | grep '??' | sed s/^...//"
    
    
    # print(strOut)
    # print(type(strOut))

    untracked = []
    deleted = []
    added = []
    modified = []

    out = subprocess.run(["git", "status", "--porcelain"], capture_output=True, )
    lines = (out.stdout).decode("utf-8").strip().split("\n")
    for line in lines:
        lineHead = line[:3]
        print(lineHead)
    
    

    

def main():
    git_status()
   

if __name__ == '__main__':
    main()


