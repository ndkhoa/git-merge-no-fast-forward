#!/usr/bin/env bash

# ============================== master branch =================================
echo '# Merge with no fast forward' > README.md
git add .
git commit -m 'Add README'

echo '---' >> README.md
echo 'https://github.com/git-school/visualizing-git/blob/gh-pages/examples/merging.md' >> README.md
git commit -am 'Add reference'

git branch NDKhoa001
git branch NDKhoa002
git branch NDKhoa003

# ============================== NDKhoa001 branch ==============================
git checkout NDKhoa001
echo 'first line' > file-001.txt
git add .
git commit -m 'NDKhoa001: Add file-001'

echo 'second line' >> file-001.txt
git commit -am 'NDKhoa001: Add more line'

# ============================== NDKhoa002 branch ==============================
git checkout NDKhoa002
echo 'first line' > file-002.txt
git add .
git commit -m 'NDKhoa002: Add file-002'

echo 'second line' >> file-002.txt
git commit -am 'NDKhoa002: Add more line'

# ============================== NDKhoa003 branch ==============================
git checkout NDKhoa003
echo 'first line' > file-003.txt
git add .
git commit -m 'NDKhoa003: Add file-003'

echo 'second line' >> file-003.txt
git commit -am 'NDKhoa003: Add more line'

# ============================== master branch =================================
git checkout master

echo 'Default: fast-forward merge. Do NOT create a new merge commit.' >> README.md
git commit -am 'Add default option'

echo '--no-ff: force Git to create a new merge commit.' >> README.md
git commit -am 'Add no fast-forward option'

# =============== merge NDKhoa001 branch into master branch ====================
git checkout NDKhoa001
git rebase master
git checkout master
git merge NDKhoa001 --no-ff --no-edit

# =============== continue work on master branch ====================
cat <<EOT >> README.md

# git init
---
Initialize Git repository before run bash script
EOT

git commit -am 'Add init git note'

# =============== merge NDKhoa002 branch into master branch ====================
git checkout NDKhoa002
git rebase master
git checkout master
git merge NDKhoa002 --no-ff --no-edit

# =============== continue work on master branch ====================
cat <<EOT >> README.md

# chmod
---
Run: chmod +x merge-no-fast-forward.sh
Then run: ./merge-no-fast-forward.sh
EOT

git commit -am 'Add chmod note'

# =============== merge NDKhoa001 branch into master branch ====================
git checkout NDKhoa003
git rebase master
git checkout master
git merge NDKhoa003 --no-ff --no-edit

# =============== continue work on master branch ====================
cat <<EOT >> README.md

# gitk
---
Check with gitk
Run: gitk
EOT

git commit -am 'Add gitk note'

# =============== continue work on master branch ====================
cat <<EOT >> README.md

# git reset
---
Run: git reset --hard origin/master
EOT

git commit -am 'Add git reset note'

