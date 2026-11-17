.PHONY: setup clean

setup:
	@command -v docker >/dev/null 2>&1 || { echo "Docker is required."; exit 1; }
	docker pull hashicorp/terraform-mcp-server
	@echo "Setup complete! Launch your preferred AI CLI inside this folder."

clean:
	@find generated -mindepth 1 ! -name ".gitkeep" -exec rm -rf {} +
