#include <linux/module.h>
#include <linux/init.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("CeSium");
MODULE_DESCRIPTION("Just a simple LKM");


static int __init hello_module_init(void){
    printk("Hello kernel!\n");
    return 0;
}

static void __exit hello_module_deinit(void){
    printk("Goodbye kernel!\n");
}

module_init(hello_module_init);
module_exit(hello_module_deinit);