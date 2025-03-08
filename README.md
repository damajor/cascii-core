<center><img src="https://i.postimg.cc/FzK68HLQ/cascii-logo.png" width="100">
<h1>Cascii</h1>
<b>Cascii is a web-based ASCII and Unicode diagram builder built in vanilla Javascript</b> with 0 dependencies on a server, web packing, libraries, or anything else. It's also no-html and no-stylesheets. You can start building diagrams by simply opening the index.html file in this core repo. Cascii is also hosted at [cascii.app](cascii.app) where you can get short links to your diagrams, or open an account for saving diagrams.
</center>


```
                                                          ──────────────                      
                        ┌────────────────┐          ──────              ──────                
                        │                │        ──          Layers          ──              
                        │  GroupManager  │    ────                              ────          
                        │                │  ─│                                      ─│        
┏━━━━━━━━━━━━━━━━┓      /────────────────┘ │                                           │      
┃                ┃     /                   │                                           │      
┃  EventManager  ┃    /                  │                                               │    
┃                ┃   /                 │               ┌─────────────┐                     │  
┗━━━━━━━━━━━━━━━━┛  /                  │ ┌─────────────│SquareLayer  │                     │  
        \          /                   │ │             │─────────────│   ┌───────────────┐ │  
         \        /                  │   ┌─────────────│CircleLayer  │ ┌─│SwitchLineLayer│   │
          ┏━━━━━━━━━━━━━━━━┓         │   │             │─────────────│ │ │───────────────│   │
          ┃                ┃         │   ┌─────────────│BaseLineLayer│───│FreeLineLayer  │   │
          ┃  LayerManager  ┃◀────────│───┐             │─────────────│ │ │───────────────│   │
          ┃                ┃         │   │─────────────│DiamondLayer │ └─│StepLineLayer  │   │
          ┗━━━━━━━━━━━━━━━━┛         │   │             │─────────────│   └───────────────┘   │
                  / \                │   │─────────────│FreeLayer    │                       │
                 /   \                 │ │             │─────────────│                     │  
                /     \                │ └─────────────│TableLayer   │                     │  
               /       \               │               └─────────────┘                     │  
              /         \                │                                               │    
             /           \                 │                                           │      
     ┌────────────────┐   \                │                                           │      
     │                │    \                ─│                                      ─│        
     │   ModeMaster   │     \                 ────                              ────          
     │                │      \                    ──                          ──              
     └────────────────┘       ·                     ──────              ──────                
                            /   \                         ──────────────                      
                          /       \                                                           
                        /           \                                                         
                      ·    Canvas     ·                                                       
                        \           /                                                         
                          \       /                                                           
                            \   /                                                             
                              ·                                                               


Edit/view: https://cascii.app/60fd1
```
