FROM python:3.10

# 安装libro和所有依赖
RUN pip install libro python-lsp-server[all] jedi-language-server ipython-sql sqlalchemy pymysql psycopg2-binary pandas matplotlib

# 创建/app/libro目录
RUN mkdir -p /app/libro

# 设置工作目录
WORKDIR /app/libro

# 执行libro命令
CMD ["libro", "--allow-root", "--ip=0.0.0.0", "--port=8888", "--ServerApp.allow_origin='*'", "--ServerApp.disable_check_xsrf=True"]