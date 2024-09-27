# 使用官方 Python 3.10.14 基础镜像
#FROM python:3.10.14-slim

#FROM ubuntu:latest
FROM python:3.12


# 设置工作目录
WORKDIR /app

# 复制 requirements.txt 并安装依赖
COPY requirements.txt .

# 安装依赖
RUN pip install --no-cache-dir -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/
RUN playwright install chromium
RUN playwright install-deps


# 更新系统并安装必要的工具
#RUN apt update && apt upgrade -y \
    #&& apt-get install -y software-properties-common \
    #&& apt-get update \
    #&& add-apt-repository ppa:deadsnakes/ppa \
    #&& apt-get update \
    #&& apt-get install -y python3.12 python3.12-venv python3-pip \
    #&& python3.12 -m venv /app/venv \
    #&& . /app/venv/bin/activate \
    #&& pip install --no-cache-dir -r requirements.txt \
    #&& playwright install firefox \
    #&& playwright install-deps firefox


# 时区
RUN apt-get install -y tzdata
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# 复制应用文件
COPY . .

# 设置 jd.sh 的权限为 777
RUN chmod 777 /app/jd.sh

# 安装 Chromium 浏览器，Playwright 需要这个浏览器
RUN apt-get update \
    && rm -rf /var/lib/apt/lists/* \
    && pip install --no-cache-dir -r requirements.txt \
    && playwright install firefox \
    && playwright install-deps firefox


# 定义启动命令，运行 main.py
# CMD ["python", "schedule_main.py"]
CMD ["/app/jd.sh"]
