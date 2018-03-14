all:
	docker build . -f Dockerfile.base -t mob-ai-ruby
	docker build . -f Dockerfile.builder -t robot-$(BOT_NAME) --network none
