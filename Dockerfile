FROM python:3.13-slim
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements-dev.txt
ENV PYTHONUNBUFFERED=1
CMD cp -f mcp_config.example.json mcp_config.json ; echo ENDPOINT_SET=$${MCP_ENDPOINT:+yes} ; python bridge.py ; echo BRIDGE_STOPPED ; sleep 86400
