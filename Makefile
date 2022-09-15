obj-m := gpio_kern.o
all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
install:  
	sudo insmod gpio_kern.ko
    sudo chmod a+rwx /dev/gpio-eg
    
