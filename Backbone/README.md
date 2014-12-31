```js
$(this.el) => $('#myViewElement') if this.el refers to <div id="myViewElement"></div>
// This is the return of document.getElementById
this.$el   => a cached reference
// A cached jQuery object for the view's element.
// A handy reference instead of re-wrapping the DOM element all the time.

```

```javascript
template_.template(templateString, [settings])
// Compiles JavaScript templates into functions that can be evaluated for rendering.
```




