docker run \
         -e SETTINGS_FLAVOR=local \
         -e AWS_BUCKET=mybucket \
         -e STORAGE_PATH=/registry \
         -e AWS_KEY=superawskey \
         -e AWS_SECRET=superawssecret \
         -e SEARCH_BACKEND=sqlalchemy \
         -p 5000:5000 \
         -v /opt/registry:/registry \
         distribution/registry
# registry
