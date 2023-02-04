# flutter_practice_buildcontext

# buildContext

- 부모의 요소에 접근하고 싶을때 사용됨
# lifecycle
```
  @override
  void initState() {
    // widget이 렌더링 될때 처음 딱한번만 실행된다.
    super.initState();
    print("initState");
  }

  @override
  void dispose() {
    // widget이 사라질때 한번만 실행된다.
    super.dispose();
    print("depose");
  }
```