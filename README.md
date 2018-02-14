## Docker memo
This is for testing docker feature

I. **binding current dir to using current dir code, mount sharing volume for bundle:**
```
docker volume create test_ruby_volume
```
```
docker run -it --rm -v test_ruby_volume:/bundle -v ${PWD}:/app -w /app -e BUNDLE_PATH=/bundle ruby bash
```
