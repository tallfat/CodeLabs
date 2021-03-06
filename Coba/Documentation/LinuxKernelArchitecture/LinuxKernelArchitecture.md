# Linux Kernel Architecture

> The Linux kernel is an open source monolithic Unix-like computer operating system kernel. The Linux family of operating systems is based on this kernel and deployed on both traditional computer systems such as personal computers and servers, usually in the form of Linux distributions,[9] and on various embedded devices such as routers, wireless access points, PBXes, set-top boxes, FTA receivers, smart TVs, PVRs, and NAS appliances. [Wikipedia](https://en.wikipedia.org/wiki/Linux_kernel)

- [Anatomy of the Linux kernel](https://www.ibm.com/developerworks/library/l-linux-kernel/index.html)
- https://www.slideshare.net/dominiquec/architecture-of-the-linux-kernel-1851975
- https://cse.yeditepe.edu.tr/~kserdaroglu/spring2014/cse331/termproject/BOOKS/ProfessionalLinuxKernelArchitecture-WolfgangMauerer.pdf
- http://www.informit.com/articles/article.aspx?p=389712&seqNum=3
- https://0xax.gitbooks.io/linux-insides/content/index.html
- Ask a Kernel Developer Lwn

- User Space
  - User Applications
  - GNU C Library
    - Glibc aims to be POSIX/SUS-compatible
    - uClibc targets embedded systems
    - bionic written for Android
- Kernel Space
  - System Call Interface
    - read()
    - write()
  - Kernel
    - Architecture independent kernel code
    - Common to all processor architectures
  - Architecture Dependent Kernel Code
    - Processor and Platform specific code
    - Aka Board Support Package

- Kernel Subsystems
  - Inter-Process Communication Interface
  - System Call Interface
    - linux/kernel/
    - linux/arch/
  - Process Management
    - Scheduler
      - linux/kernel/
      - linux/arch/
  - Virtual File System
    - Ext3 .. NFS .. /proc
    - Buffer Cache
    - Device Drivers
    - Physical Devices
    - linux/fs/
  - Memory Management
    - linux/mm/
    - Statically, Boot Time
    - Dinamically, Page Collector
  - Network Stack
    - linux/net/
  - Arch
    - linux/arch
  - Device Drivers
    - linux/drivers
    - Types
      - Character
      - Block
      - Network

