.PHONY: build

build:
	sam build
deploy-infra:
	sam build && aws-vault exec cloud_user --no-session -- sam deploy

deploy-site:
	aws-vault exec cloud_user --no-session -- aws s3 sync ./resume-site s3://kalyan-viswanath