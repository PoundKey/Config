## Python notes

### Generator

> Generator is a specifial function that contains 'yield' expression, and can return a series of values along with time.

> Normal functions that contain 'return' statement end when the functions hit that statement, whereas a generator will not directly end the function flow. Instead, it saves its internal status information, hangs up, and call be invoked again from the current calling point.


```python

# Example 1
def myGenerator():
    for i in range(3):
        yield i

for i in myGenerator():
    print i

#Output: 0 1 2

# Example 2
def myGenerator():
    for i in range(3):
        yield i

f = myGenerator()

print f.next()  # 0
print f.next()  # 1
print f.next()  # 2
print f.next()  # StopIteration

```
[Reference](http://www.wangzhili.net/2014/11/19/python_generator.html)