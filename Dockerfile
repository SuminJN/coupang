FROM mariadb:latest

### TimeZone 환경 변수 지정
ENV TZ Asia/Seoul

### Mariadb root 비밀번호 설정
ENV MYSQL_ROOT_PASSWORD=1234

### Mariadb Database 생성
ENV MYSQL_DATABASE=coupang

### TimeZone 설정
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

### Mariadb User 및 DB 스키마 설정 스크립
ADD db.sql /docker-entrypoint-initdb.d/db.sql

WORKDIR /

### 서비스 포
EXPOSE 3306