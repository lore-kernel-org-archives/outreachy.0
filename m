X-GM-THRID: 6333917468410511360
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.28.168.12 with SMTP id r12mr550175wme.12.1474806925098;
        Sun, 25 Sep 2016 05:35:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.167 with SMTP id e39ls1938453lji.49.gmail; Sun, 25 Sep
 2016 05:35:23 -0700 (PDT)
X-Received: by 10.25.228.71 with SMTP id b68mr780317lfh.0.1474806923719;
        Sun, 25 Sep 2016 05:35:23 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s6si319736wmb.1.2016.09.25.05.35.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Sep 2016 05:35:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,393,1470693600"; 
   d="scan'208";a="194573568"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Sep 2016 14:35:18 +0200
Date: Sun, 25 Sep 2016 14:35:17 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Yajushi Srivastava <yajushi.sri@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Error "Pattern not found" in Step: Make a
 driver change (Test your changes).
In-Reply-To: <5c55ec89-a0de-47f8-8c4e-08601b6b8578@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1609251434480.3391@hadrien>
References: <5c55ec89-a0de-47f8-8c4e-08601b6b8578@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 24 Sep 2016, Yajushi Srivastava wrote:

>
> /* Step: Make a driver change
>             Modifying a driver under native Linux
>               Modifying a driver under VM */
>
> static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent
> )
> {
>         struct net_device *netdev;
>         struct e1000_adapter *adapter;
>         struct e1000_hw *hw;
>         printk(KERN_DEBUG "I can modify the Linux kernel!\n");
>         static int cards_found = 0;
>         static int global_quad_port_a;
>
> ----------------------------------------------------------------------------
> ----
>
>
> /* Step: Make a driver change
>            Install your changes
>               sudo make modules_install install */
>   INSTALL /lib/firmware/yam/9600.bin
>   DEPMOD  4.8.0-rc6+
> sh ./arch/x86/boot/install.sh 4.8.0-rc6+ arch/x86/boot/bzImage \
> 	System.map "/boot"
> run-parts: executing /etc/kernel/postinst.d/apt-auto-removal 4.8.0-rc6+ /boo
> t/vmlinuz-4.8.0-rc6+
> run-parts: executing /etc/kernel/postinst.d/initramfs-tools 4.8.0-rc6+ /boot
> /vmlinuz-4.8.0-rc6+
> update-initramfs: Generating /boot/initrd.img-4.8.0-rc6+
> W: Possible missing firmware /lib/firmware/i915/kbl_dmc_ver1_01.bin for modu
> le i915
> W: Possible missing firmware /lib/firmware/i915/kbl_guc_ver9_14.bin for modu
> le i915
> W: Possible missing firmware /lib/firmware/i915/bxt_guc_ver8_7.bin for modul
> e i915
> W: Possible missing firmware /lib/firmware/i915/skl_guc_ver6_1.bin for modul
> e i915
> run-parts: executing /etc/kernel/postinst.d/pm-utils 4.8.0-rc6+ /boot/vmlinu
> z-4.8.0-rc6+
> run-parts: executing /etc/kernel/postinst.d/unattended-upgrades 4.8.0-rc6+ /
> boot/vmlinuz-4.8.0-rc6+
> run-parts: executing /etc/kernel/postinst.d/update-notifier 4.8.0-rc6+ /boot
> /vmlinuz-4.8.0-rc6+
> run-parts: executing /etc/kernel/postinst.d/zz-update-grub 4.8.0-rc6+ /boot/
> vmlinuz-4.8.0-rc6+
> Generating grub configuration file ...
> Found linux image: /boot/vmlinuz-4.8.0-rc6+
> Found initrd image: /boot/initrd.img-4.8.0-rc6+
> Found linux image: /boot/vmlinuz-4.8.0-rc6+.old
> Found initrd image: /boot/initrd.img-4.8.0-rc6+
> Found linux image: /boot/vmlinuz-4.4.0-38-generic
> Found initrd image: /boot/initrd.img-4.4.0-38-generic
> Found linux image: /boot/vmlinuz-4.4.0-36-generic
> Found initrd image: /boot/initrd.img-4.4.0-36-generic
> Adding boot menu entry for EFI firmware configuration
> done
>
> ----------------------------------------------------------------------------
> ----
>
> /* Step: Make a driver change
>             Test your changes
>                 dmesg | less */
>
> [ 1875.202235] FAT-fs (sda3): bogus number of reserved sectors
> [ 1875.202240] FAT-fs (sda3): Can't find a valid FAT filesystem
> [ 1875.206091] VFS: Can't find a Minix filesystem V1 | V2 | V3 on device sda
> 3.
> [ 1875.209869] hfsplus: unable to find HFS+ superblock
> [ 1875.211439] qnx4: no qnx4 filesystem (no root dir).
> [ 1875.212781] ufs: You didn't specify the type of your ufs filesystem
>
>                mount -t ufs -o ufstype=sun|sunx86|44bsd|ufs2|5xbsd|old|hp|ne
> xtstep|nextstep-cd|openstep ...
>
>                >>>WARNING<<< Wrong ufstype may corrupt your filesystem, defa
> ult is ufstype=old
> [ 1875.212999] ufs: ufs_fill_super(): bad magic number
> [ 1875.215828] hfs: can't find a HFS filesystem on dev sda3
> Pattern not found  (press RETURN)     //Error on typing "/I can modify"

Maybe it's not actually loading the driver you changed?

julia

