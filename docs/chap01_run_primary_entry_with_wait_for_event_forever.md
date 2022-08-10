# Run primary_entry() with wait-for-event forever
It goes to the infinite loop by itself.  
And I'm trying to make the directory hierachy to be similar to linux at the moment :
```bash
nook_os/src$ tree  
src  
├── arch  
│   └── aarch64  
│       └── kernel  
│           ├── head.rs  
│           ├── head.S
│           └── kernel.ld
├── bsp
│   └── raspberrypi
├── kernel.rs
└── main.rs
```

All of the interface code will be placed directly under the `src` directory.  
For example, `src/kernel.rs` is the interface of `src/arch/aarch64/kernel/*`.  
(But the hierachy maybe changed later. As you know, the plan can be changed haha..)

## Output
```bash
$ make qemu
...
IN:
0x00080000:  d503205f  wfe
0x00080004:  17ffffff  b        #0x80000
```
