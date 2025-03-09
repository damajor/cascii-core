<h1 align="center">
<br>
<img src="https://i.postimg.cc/FzK68HLQ/cascii-logo.png" width="150">
<br>
Cascii
  <br>
</h1>
<p align="center"><b>Cascii is a web-based ASCII and Unicode diagram builder built in vanilla Javascript</b>. It has 0 dependencies on a server, web packing, libraries, and is also no-html and no-stylesheets. You can start building diagrams by simply opening the index.html file in this core repository. Cascii is also hosted at <a href="cascii.app">cascii.app</a> where you can get short links to your diagrams, or open an account for saving diagrams.</p>

Here is a diagram built with Cascaii that loosely explains how cascii is structured internally:

```
                        ┌╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶┐                                                                      
                        ╷                ╷                                                                      
                        ╷  GroupManager  ╷                                                                      
                        ╷                ╷                                                                      
┌────────────────┐      └╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶┘                                                                      
│                │     /                                                                                        
│  EventManager  │    /                                                                                         
│                │   /                                      ┌─────────────┐                                     
└────────────────┘  /                       ┌───────────────│SquareLayer  │                                     
        \          /                        │               │─────────────│                    ┌───────────────┐
         \        /                         │───────────────│CircleLayer  │          ┌─────────│SwitchLineLayer│
          ┏━━━━━━━━━━━━━━━━┓                │               │─────────────│          │         │───────────────│
          ┃                ┃                │───────────────│BaseLineLayer│────────────────────│FreeLineLayer  │
          ┃  LayerManager  ┃◀───────────────┐               │─────────────│          │         │───────────────│
          ┃                ┃                │───────────────│DiamondLayer │          └─────────│StepLineLayer  │
          ┗━━━━━━━━━━━━━━━━┛                │               │─────────────│                    └───────────────┘
                  /         \               │───────────────│FreeLayer    │                                     
                 /           \              │               │─────────────│                                     
                /             \             └───────────────│TableLayer   │                                     
               /               \                            └─────────────┘                                     
              /                 \                                                                               
             /                   \                                                                              
     ┌────────────────┐           •                                                                             
     │                │         •   •                                                                           
     │   ModeMaster   │       •       •                                                                         
     │                │     •           •                                                                       
     └────────────────┘   •    Canvas     •                                                                     
                            •           •                                                                       
                              •       •                                                                         
                                •   •                                                                           
                                  •                                                                             


Edit/view: https://cascii.app/930da
```
