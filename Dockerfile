FROM python:3.13-slim
WORKDIR /app
COPY . .
RUN cp mcp_config.example.json mcp_config.json
RUN pip install --no-cache-dir -r requirements-dev.txt
ENV PYTHONUNBUFFERED=1
CMD ["python", "bridge.py"]

