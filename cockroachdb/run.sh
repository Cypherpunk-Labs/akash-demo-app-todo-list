docker run -d \
--name=roach2 \
--hostname=roach2 \
-p 26257:26257 -p 8080:8080  \
cockroachdb/cockroach:v20.1.8 start \
--insecure
