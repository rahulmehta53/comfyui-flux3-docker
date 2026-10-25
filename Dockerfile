FROM ixmxamar/comfyui-ultimate:latest

RUN cd /ComfyUI \
 && git fetch --depth=1 origin refs/tags/v0.42.0:refs/tags/v0.42.0 \
 && git reset --hard v0.42.0 \
 && uv pip install --no-cache --no-deps \
      comfyui-frontend-package==1.57.1 \
      comfyui-workflow-templates==0.11.96 \
      comfyui-embedded-docs==0.5.14 \
      comfy-aimdo==0.6.0 \
      comfy-kitchen==0.2.40
