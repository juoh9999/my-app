FROM python:3.11-slim

# 작업 디렉토리 설정
WORKDIR /app

# 의존성 파일 복사 및 설치
COPY requirements.txt .
RUN pip install -r requirements.txt

# 앱 소스 복사
COPY . .

# 앱 실행
CMD ["python", "app.py"]

