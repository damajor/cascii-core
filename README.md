<h1 align="center">
<br>
<img src="https://i.postimg.cc/FzK68HLQ/cascii-logo.png" width="150">
<br>
Cascii
<br>
</h1>
<p align="center">
<b>Cascii is a web-based ASCII and Unicode diagram builder written in vanilla Javascript.</b>
<br><br>
It has zero dependencies on any servers, web packing, libraries, and is no-markup and no-stylesheets. You can start building diagrams by simply opening the <a href="https://github.com/casparwylie/cascii-core/blob/main/cascii.html">cascii.html</a> file in this core repository. Cascii is also hosted at <a href="cascii.app">cascii.app</a> where you can get short links to your diagrams, open an account, etc. 
<br><br>
Here is a diagram built with Cascii that loosely explains how Cascii is structured internally:
</p>

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
