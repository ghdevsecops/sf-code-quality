## Lines of Code using CLOC

### 1. Download cloc using node.js
```bash
npm install -g cloc
```
### 2. Check cloc version
```bash
cloc -v
```
### 3. Run cloc on a particular / current directory
```bash
cloc <directory_name>
cloc force-app/main/default

cloc <.>
cloc .
```

## Lines of Code using sonar-loc-count repository
Note: Have a glance on README.md before proceeding <br>
Reference Link: https://github.com/SonarSource/sonar-loc-count/blob/main/README.md

### 1. Clone https://github.com/SonarSource/sonar-loc-count repository
Note: Access README.md file for more details

### 2. For Bitbucket, open bash and run below command
Note: This will run Line of Code and generate report on entire repository
```bash
./bitbucket_org.sh <username> <app_password_token> <workspace> <repo_name>
./bitbucket_org.sh mk99999999 02934lk2j34lkj23l4kj2l3k4234 smk unlockpack
```
