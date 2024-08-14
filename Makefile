snd-soc-tas2563-objs := tas2563-regmap.o tas2563-codec.o tas2563-misc.o tiload.o
ccflags-y := -DCONFIG_TAS2563_REGMAP=1 -DCONFIG_TAS2563_CODEC=1 -DCONFIG_TAS2563_MISC=1 -DCONFIG_OF=1 -DCONFIG_COMPAT=1
obj-m += snd-soc-tas2563.o
SRC := $(shell pwd)

all:
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules

modules_install:
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install
