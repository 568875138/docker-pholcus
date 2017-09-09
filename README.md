# Pholcus DOCKER镜像

## 使用方法

### 自行编译
```
git clone https://git.ustclug.org/Crawlerlearning/Pholcus/
cd Pholcus
docker build -t pholcus .
docker run -d -P -v `pwd`/pholcus_pkg:/root/pholcus_pkg pholcus
```
### 直接从Docker Hub运行
```
docker run -d -P -v `pwd`/pholcus_pkg:/root/pholcus_pkg silentyang/pholcus
```
