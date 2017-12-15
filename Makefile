package:
	rm -f kreader.zip
	zip kreader.zip kreader.py
	rm -f eventproc.zip
	zip eventproc.zip processEvent.py

deploy:
	aws s3 cp kreader.zip s3://$(DEPLOY_BUCKET)
	aws s3 cp eventproc.zip s3://$(DEPLOY_BUCKET)
