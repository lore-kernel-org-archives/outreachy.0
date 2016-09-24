X-GM-THRID: 6333917468410511360
Date: Sat, 24 Sep 2016 08:14:41 -0700 (PDT)
From: Yajushi Srivastava <yajushi.sri@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <5c55ec89-a0de-47f8-8c4e-08601b6b8578@googlegroups.com>
Subject: Error "Pattern not found" in Step: Make a driver change (Test your
 changes).
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_738_2035858755.1474730081740"
X-Google-Token: EOGwmr8FEJNAE1Vh0WM0
X-Google-IP: 61.0.31.222

------=_Part_738_2035858755.1474730081740
Content-Type: multipart/alternative; 
	boundary="----=_Part_739_1460843017.1474730081740"

------=_Part_739_1460843017.1474730081740
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



/* Step: Make a driver change
            Modifying a driver under native Linux
              Modifying a driver under VM */

static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
        struct net_device *netdev;
        struct e1000_adapter *adapter;
        struct e1000_hw *hw;
        printk(KERN_DEBUG "I can modify the Linux kernel!\n");
        static int cards_found = 0;
        static int global_quad_port_a;

--------------------------------------------------------------------------------


/* Step: Make a driver change
           Install your changes 
              sudo make modules_install install */
  INSTALL /lib/firmware/yam/9600.bin
  DEPMOD  4.8.0-rc6+
sh ./arch/x86/boot/install.sh 4.8.0-rc6+ arch/x86/boot/bzImage \
	System.map "/boot"
run-parts: executing /etc/kernel/postinst.d/apt-auto-removal 4.8.0-rc6+ /boot/vmlinuz-4.8.0-rc6+
run-parts: executing /etc/kernel/postinst.d/initramfs-tools 4.8.0-rc6+ /boot/vmlinuz-4.8.0-rc6+
update-initramfs: Generating /boot/initrd.img-4.8.0-rc6+
W: Possible missing firmware /lib/firmware/i915/kbl_dmc_ver1_01.bin for module i915
W: Possible missing firmware /lib/firmware/i915/kbl_guc_ver9_14.bin for module i915
W: Possible missing firmware /lib/firmware/i915/bxt_guc_ver8_7.bin for module i915
W: Possible missing firmware /lib/firmware/i915/skl_guc_ver6_1.bin for module i915
run-parts: executing /etc/kernel/postinst.d/pm-utils 4.8.0-rc6+ /boot/vmlinuz-4.8.0-rc6+
run-parts: executing /etc/kernel/postinst.d/unattended-upgrades 4.8.0-rc6+ /boot/vmlinuz-4.8.0-rc6+
run-parts: executing /etc/kernel/postinst.d/update-notifier 4.8.0-rc6+ /boot/vmlinuz-4.8.0-rc6+
run-parts: executing /etc/kernel/postinst.d/zz-update-grub 4.8.0-rc6+ /boot/vmlinuz-4.8.0-rc6+
Generating grub configuration file ...
Found linux image: /boot/vmlinuz-4.8.0-rc6+
Found initrd image: /boot/initrd.img-4.8.0-rc6+
Found linux image: /boot/vmlinuz-4.8.0-rc6+.old
Found initrd image: /boot/initrd.img-4.8.0-rc6+
Found linux image: /boot/vmlinuz-4.4.0-38-generic
Found initrd image: /boot/initrd.img-4.4.0-38-generic
Found linux image: /boot/vmlinuz-4.4.0-36-generic
Found initrd image: /boot/initrd.img-4.4.0-36-generic
Adding boot menu entry for EFI firmware configuration
done

--------------------------------------------------------------------------------

/* Step: Make a driver change
            Test your changes 
                dmesg | less */

[ 1875.202235] FAT-fs (sda3): bogus number of reserved sectors
[ 1875.202240] FAT-fs (sda3): Can't find a valid FAT filesystem
[ 1875.206091] VFS: Can't find a Minix filesystem V1 | V2 | V3 on device sda3.
[ 1875.209869] hfsplus: unable to find HFS+ superblock
[ 1875.211439] qnx4: no qnx4 filesystem (no root dir).
[ 1875.212781] ufs: You didn't specify the type of your ufs filesystem
               
               mount -t ufs -o ufstype=sun|sunx86|44bsd|ufs2|5xbsd|old|hp|nextstep|nextstep-cd|openstep ...
               
               >>>WARNING<<< Wrong ufstype may corrupt your filesystem, default is ufstype=old
[ 1875.212999] ufs: ufs_fill_super(): bad magic number
[ 1875.215828] hfs: can't find a HFS filesystem on dev sda3
Pattern not found  (press RETURN)     //Error on typing "/I can modify"


------=_Part_739_1460843017.1474730081740
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr"><pre>/* Step: Make a driver change
            Modifying a driver under native Linux
              Modifying a driver under VM */

static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
        struct net_device *netdev;
        struct e1000_adapter *adapter;
        struct e1000_hw *hw;
        printk(KERN_DEBUG &quot;I can modify the Linux kernel!\n&quot;);
        static int cards_found = 0;
        static int global_quad_port_a;

--------------------------------------------------------------------------------


/* Step: Make a driver change
           Install your changes 
              sudo make modules_install install */
  INSTALL /lib/firmware/yam/9600.bin
  DEPMOD  4.8.0-rc6+
sh ./arch/x86/boot/install.sh 4.8.0-rc6+ arch/x86/boot/bzImage \
	System.map &quot;/boot&quot;
run-parts: executing /etc/kernel/postinst.d/apt-auto-removal 4.8.0-rc6+ /boot/vmlinuz-4.8.0-rc6+
run-parts: executing /etc/kernel/postinst.d/initramfs-tools 4.8.0-rc6+ /boot/vmlinuz-4.8.0-rc6+
update-initramfs: Generating /boot/initrd.img-4.8.0-rc6+
W: Possible missing firmware /lib/firmware/i915/kbl_dmc_ver1_01.bin for module i915
W: Possible missing firmware /lib/firmware/i915/kbl_guc_ver9_14.bin for module i915
W: Possible missing firmware /lib/firmware/i915/bxt_guc_ver8_7.bin for module i915
W: Possible missing firmware /lib/firmware/i915/skl_guc_ver6_1.bin for module i915
run-parts: executing /etc/kernel/postinst.d/pm-utils 4.8.0-rc6+ /boot/vmlinuz-4.8.0-rc6+
run-parts: executing /etc/kernel/postinst.d/unattended-upgrades 4.8.0-rc6+ /boot/vmlinuz-4.8.0-rc6+
run-parts: executing /etc/kernel/postinst.d/update-notifier 4.8.0-rc6+ /boot/vmlinuz-4.8.0-rc6+
run-parts: executing /etc/kernel/postinst.d/zz-update-grub 4.8.0-rc6+ /boot/vmlinuz-4.8.0-rc6+
Generating grub configuration file ...
Found linux image: /boot/vmlinuz-4.8.0-rc6+
Found initrd image: /boot/initrd.img-4.8.0-rc6+
Found linux image: /boot/vmlinuz-4.8.0-rc6+.old
Found initrd image: /boot/initrd.img-4.8.0-rc6+
Found linux image: /boot/vmlinuz-4.4.0-38-generic
Found initrd image: /boot/initrd.img-4.4.0-38-generic
Found linux image: /boot/vmlinuz-4.4.0-36-generic
Found initrd image: /boot/initrd.img-4.4.0-36-generic
Adding boot menu entry for EFI firmware configuration
done

--------------------------------------------------------------------------------

/* Step: Make a driver change
            Test your changes 
                dmesg | less */

[ 1875.202235] FAT-fs (sda3): bogus number of reserved sectors
[ 1875.202240] FAT-fs (sda3): Can&#39;t find a valid FAT filesystem
[ 1875.206091] VFS: Can&#39;t find a Minix filesystem V1 | V2 | V3 on device sda3.
[ 1875.209869] hfsplus: unable to find HFS+ superblock
[ 1875.211439] qnx4: no qnx4 filesystem (no root dir).
[ 1875.212781] ufs: You didn&#39;t specify the type of your ufs filesystem
               
               mount -t ufs -o ufstype=sun|sunx86|44bsd|ufs2|5xbsd|old|hp|nextstep|nextstep-cd|openstep ...
               
               &gt;&gt;&gt;WARNING&lt;&lt;&lt; Wrong ufstype may corrupt your filesystem, default is ufstype=old
[ 1875.212999] ufs: ufs_fill_super(): bad magic number
[ 1875.215828] hfs: can&#39;t find a HFS filesystem on dev sda3
Pattern not found  (press RETURN)     //Error on typing &quot;/I can modify&quot;</pre></div>
------=_Part_739_1460843017.1474730081740--

------=_Part_738_2035858755.1474730081740--

