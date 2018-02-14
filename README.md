## Docker memo
This is for testing docker feature

I. **Quick command**
1. binding current dir to using current dir code, mount sharing volume for bundle:
```
docker run -it --rm -v test_ruby_volume:/bundle -v ${PWD}:/app -w /app -e BUNDLE_PATH=/bundle ruby bash
```
