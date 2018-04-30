# Задача 3. Игра.

[Оригинальное условие задачи для Java](https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxuZ3Vvb3B8Z3g6NjEzMjc5Y2FkNzNiMzIyNA)

### Дополнительные материалы по графическим приложениям java

- Как сделать свой "canvas" с отрисовкой чего-либо.

[stackoverflow](https://stackoverflow.com/questions/776180/how-to-make-canvas-with-swing):
```
In order to make a custom 'Canvas' in swing you usually write a subclass of a JPanel. Then, you must overwrite the protected paintComponent(Graphics g) method of JPanel.

In the paint method, you can call methods on the Graphics object to actually draw on the JPanel.
```
As always, the Java Tutorials have a [great reference](http://docs.oracle.com/javase/tutorial/uiswing/painting/)
on this to get you started.
Example from there:
```
class MyPanel extends JPanel {

    public MyPanel() {
        setBorder(BorderFactory.createLineBorder(Color.black));
    }

    public Dimension getPreferredSize() {
        return new Dimension(250,200);
    }

    public void paintComponent(Graphics g) {
        super.paintComponent(g);       

        // Draw Text
        g.drawString("This is my custom Panel!",10,20);
    }  
}
```
