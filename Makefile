.PHONY: build

build:
	docker build -t nginx .

run:
	docker run -d --name nginx -p 80:80 -p 443:443 \
		--link marvin:marvin \
		--link savage:savage \
		--restart="on-failure:25" \
		nginx	