# Cuis-Smalltalk-LayoutAlgebra
A small extension to simplify creating morph layouts.

Try this in a Workspace:

![image](https://github.com/drdavidf/Cuis-Smalltalk-LayoutAlgebra/assets/115069219/703548a0-b168-4674-8c07-360d65e65d92)

The `+` operator arranges the morphs in a row layout. `fh:` and `fw:` set the morph's fixed height and width. `align:` determines the morph's relative position in the contrary direction. Finally, the `@` operator sets the separation space between the morphs.

Now try this:

![image](https://github.com/drdavidf/Cuis-Smalltalk-LayoutAlgebra/assets/115069219/97204a6b-55d6-42e3-8368-3685962fdf87)

The `/` operator arranges the morphs in a column layout.

Or this:

![image](https://github.com/drdavidf/Cuis-Smalltalk-LayoutAlgebra/assets/115069219/50aed039-7ce5-4095-bd29-207c250cf084)

The `</>` operator arranges the morphs in a column layout with an adjuster morph between them (`<+>` arranges them in a row layout). `ph:` and `pw:` set the morph's proportional height and width.
