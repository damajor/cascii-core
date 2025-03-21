<h1 align="center">
<br>
<img src="https://i.postimg.cc/FzK68HLQ/cascii-logo.png" width="150">
<br>
Cascii v1.0.3 (beta)

</h1>
<p align="center">
<b>Cascii is a web-based ASCII and Unicode diagram builder written in vanilla Javascript.</b>
<br><br>
It has zero dependencies on any servers, web packing, libraries, and is no-markup and no-stylesheets. You can start building diagrams by simply opening the <a href="https://github.com/casparwylie/cascii-core/blob/main/cascii.html">cascii.html</a> file in a browser. Cascii is also hosted at <a href="https://cascii.app">cascii.app</a> where you can get short links to your diagrams, open an account, etc (see the <a href="https://github.com/casparwylie/cascii-server">Cascii server repo</a>).

## Examples

Here is a diagram built with Cascii that loosely explains how Cascii is structured internally:

</p>

```
                                   ┌╶╶╶╶╶╶╶╶╶╶╶╶╶╶┐
                                   ╷ GroupManager ╷
                                   └╶╶╶╶╶╶╶╶╶╶╶╶╶╶┘
               ┌─────────────┐    /                  ┌─────────────┐
               │EventManager │   /           ┌───────│SquareLayer  │
               └─────────────┘  /            │       │─────────────│        ┌───────────────┐
                      \        /             │───────│CircleLayer  │   ┌────│SwitchLineLayer│
                       \      /              │       │─────────────│   │    │───────────────│
                        ┏━━━━━━━━━━━━┓       │───────│BaseLineLayer│◀──┐────│FreeLineLayer  │
                        ┃LayerManager┃◀──────┘       │─────────────│   │    │───────────────│
                        ┗━━━━━━━━━━━━┛       │───────│DiamondLayer │   └────│StepLineLayer  │
        ┌────────────┐ /      /       \      │       │─────────────│        └───────────────┘
        │CharManager │/      /         \     │───────│FreeLayer    │
        └────────────┘      /           \    │       │─────────────│
                           /             \   └───────│TableLayer   │
                     ┌────────────┐       \          └─────────────┘            Pixels!
                     │ ModeMaster │        •
                     └────────────┘      •   •                                     ▲
                                       •       •                                   │
                                     •           •                                 │
                                   •   CanvasCom   ────────────────────────────────┘
                                     •           •
                                       •       •
                                         •   •
                                           •
Edit/view: https://cascii.app/7c24a
```

<p align="center">
<img src="https://s3.gifyu.com/images/bbjaw.gif" width=400>
<img src="https://s3.gifyu.com/images/bbjV1.gif" width=400>
<img src="https://s3.gifyu.com/images/bbjfv.gif" width=400>
<img src="https://s3.gifyu.com/images/bbjf7.gif" width=400>
</p>

## Installation

Simply download and open the `cascii.html` file!

<b>...Literally...</b>

`curl https://cascii.app -o cascii.html && open cascii.html`

<b>...Or...</b>

If you are not making changes, it's recommended to use <a href="https://cascii.app">cascii.app</a>
directly so you can take advantage of short links and save your work. Locally, short links will not appear in your exports.

## Features

- Basic drawing
- Selection (area selection, multi-selection, resize, move)
- Joints
- Grouping
- Ordering
- Duplicating
- Dynamic tables
- Free draw / erase
- Auto save (browser local storage)
- Paste / import text
- Layers: Free, Switch Lines, Steps Lines, Free Lines, Square, Circle, Diamond, Text, Table
- History (undo/redo)
- Line styling
- ASCII and Unicode
- Themes
- Base64 import / export for offline work
- Optional grid view

## Shortcuts

- `ctrl-g` Group
- `ctrl-c` Copy layer
- `ctrl-z` Undo
- `ctrl-shift-z` Redo
- `ctrl-a` Select all
- `backspace/delete` Delete layer
- `shift-click` Multi-select | single-select member of group
- `arrow keys` Move layer
- `ctrl-v` Paste text (when editing text), or paste as a layer in any other mode

## Contributing

Contributions are very welcomed. Please feel free to submit proposals directly in the form of a PR or Issue.

## License

Licensed under the Apache License, Version 2.0
