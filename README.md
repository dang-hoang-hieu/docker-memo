## Docker memo
This is for testing docker feature & guide for daily usages

I. **Daily used commands**
1. Check container running & already existed
```
docker ps
docker ps -f status=exited
```
2. How to use Binding.pry or Byebug:

set 2 options to service in docker-compose & reset service
```
tty: true
stdin_open: true

```
```
docker ps # to get the id or name of container
docker attach name_of_container/or id
# after the execution stop at the `byebug` line, you can start debug
```

To correctly exit debug and `detach`, type `exit` to exit debug and then type CTRL + p + q to detach

3. How to access container and run commands:

```
docker ps
docker exec -it conciergeu_dialog bash # now you are inside container, you can start running `rails console` 
```
☆＼(￣ー￣)／☆

II. **Scenerios**

1. binding current dir to using current dir code, mount sharing volume for bundle:
    
```
docker volume create test_ruby_volume
docker run -it --rm -v test_ruby_volume:/bundle -v ${PWD}:/app -w /app -e BUNDLE_PATH=/bundle ruby bash
```
