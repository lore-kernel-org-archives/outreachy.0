X-GM-THRID: 6470708862295998464
X-Received: by 10.99.121.77 with SMTP id u74mr864683pgc.140.1506725952160;
        Fri, 29 Sep 2017 15:59:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.234.137 with SMTP id n9ls2502969plk.15.gmail; Fri, 29 Sep
 2017 15:59:11 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAui7XzWzkPhiG4lyZD/gcDYgpyzje0frZgr4ByguwNXAGuKrdmg8Zt2xtv1OidM0hQkGYi
X-Received: by 10.159.234.68 with SMTP id c4mr206793plr.55.1506725951079;
        Fri, 29 Sep 2017 15:59:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506725951; cv=none;
        d=google.com; s=arc-20160816;
        b=qe9lDwbDy/E9hsSrpeBbEVEMHGpIqbJXtVUzbxnLYzQ2rIzMZp3TbIi5yU0bVUWzBl
         z3O3Pj67Q9aGKDNJH+H73/Vxf33ilnXuErolBnouXU9L/WtOrrCm1C3CufxTHnoUlyOd
         6W24UdERW1gCSdQsZIWSgcZmL+u+flAxDYUXHIjmmDGzTZbw21aaWdlbycr1xLCLICoM
         1I9daTjplhFpdYQOqDAPqfsRDvdCqkHmQobOBo+n3VpKYB0E52BichB73LiYqEl1tJEl
         14t4CqYtClLndj0fPYehJ+rL77SDcyO05mnuWp5mvvW34DTVenYpkW/CHQqGjFfP0VzQ
         VXpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:message-id
         :subject:cc:to:from:date:arc-authentication-results;
        bh=iIDY3bdp3agGT7bXizbQFL3CKYXOotemUzWbzYbn8NE=;
        b=wjFjJ2UD18C9DyZr2NEdH0wrkyjW9mX+Va7xY6q0fsW/mOm6LexqJJlXth6At3FlhD
         yEew39FRsRbabN52fmZseThJUhiV4ptkV65Uq/oe+B2kqr9G/TH3ScCNP0DcQHXFmBAz
         Nt2Jg+GWBYqowgESIdiqHoxgjq4bwI5Y4WzlLfpEzW4jQmgnV5kf7IAzBC+eNWcPLCbf
         wssHJlE72ZypdXJvYb/UcVoLqQmHIMj1eQ4aNa43oucZocNBLDptkcappy+bMfmRCPoD
         fMf2QLiL1wM9PiYcpp6ikhvKsKEfnhpJJuUIighHBb2lRSLo1PyXS+LvruVzf9evx1gF
         Ps8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of fengguang.wu@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=fengguang.wu@intel.com
Return-Path: <fengguang.wu@intel.com>
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id d207si573398pfd.16.2017.09.29.15.59.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 15:59:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of fengguang.wu@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of fengguang.wu@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=fengguang.wu@intel.com
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Sep 2017 15:59:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,454,1500966000"; 
   d="gz'50?scan'50,208,50";a="1225353095"
Received: from bee.sh.intel.com (HELO bee) ([10.239.97.14])
  by fmsmga002.fm.intel.com with ESMTP; 29 Sep 2017 15:59:08 -0700
Received: from kbuild by bee with local (Exim 4.84_2)
	(envelope-from <fengguang.wu@intel.com>)
	id 1dy4KV-000RsS-GI; Sat, 30 Sep 2017 07:04:23 +0800
Date: Sat, 30 Sep 2017 06:58:44 +0800
From: kbuild test robot <lkp@intel.com>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: kbuild-all@01.org, daniel@ffwll.ch, noralf@tronnes.org,
	outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 3/3] drm/tinydrm: Add devres versions of
 drm_of_find_backlight
Message-ID: <201709300642.P1QtvAiG%fengguang.wu@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="YiEDa0DAkWCtVeE4"
Content-Disposition: inline
In-Reply-To: <20170928061456.GA30919@meghana-HP-Pavilion-Notebook>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: fengguang.wu@intel.com
X-SA-Exim-Scanned: No (on bee); SAEximRunCond expanded to false


--YiEDa0DAkWCtVeE4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Meghana,

[auto build test ERROR on drm/drm-next]
[also build test ERROR on v4.14-rc2 next-20170929]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Meghana-Madhyastha/drm-tinydrm-Move-tinydrm_of_find_backlight-into-drm_of-c/20170930-055009
base:   git://people.freedesktop.org/~airlied/linux.git drm-next
config: i386-randconfig-x073-201739 (attached as .config)
compiler: gcc-6 (Debian 6.2.0-3) 6.2.0 20160901
reproduce:
        # save the attached .config to linux build tree
        make ARCH=i386 

All error/warnings (new ones prefixed by >>):

   drivers/gpu//drm/i2c/tda998x_drv.c:1721:10: error: 'tda998x_bind' undeclared (first use in this function)
     .bind = tda998x_bind,
             ^~~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1722:12: error: 'tda998x_unbind' undeclared (first use in this function)
     .unbind = tda998x_unbind,
               ^~~~~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1727:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu//drm/i2c/tda998x_drv.c:1736:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu//drm/i2c/tda998x_drv.c:1742:34: error: storage class specified for parameter 'tda998x_dt_ids'
    static const struct of_device_id tda998x_dt_ids[] = {
                                     ^~~~~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1742:21: error: parameter 'tda998x_dt_ids' is initialized
    static const struct of_device_id tda998x_dt_ids[] = {
                        ^~~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1743:2: warning: braces around scalar initializer
     { .compatible = "nxp,tda998x", },
     ^
   drivers/gpu//drm/i2c/tda998x_drv.c:1743:2: note: (near initialization for 'tda998x_dt_ids')
   drivers/gpu//drm/i2c/tda998x_drv.c:1743:4: error: field name not in record or union initializer
     { .compatible = "nxp,tda998x", },
       ^
   drivers/gpu//drm/i2c/tda998x_drv.c:1743:4: note: (near initialization for 'tda998x_dt_ids')
   drivers/gpu//drm/i2c/tda998x_drv.c:1743:18: error: initialization from incompatible pointer type [-Werror=incompatible-pointer-types]
     { .compatible = "nxp,tda998x", },
                     ^~~~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1743:18: note: (near initialization for 'tda998x_dt_ids')
   drivers/gpu//drm/i2c/tda998x_drv.c:1744:2: warning: braces around scalar initializer
     { }
     ^
   drivers/gpu//drm/i2c/tda998x_drv.c:1744:2: note: (near initialization for 'tda998x_dt_ids')
   drivers/gpu//drm/i2c/tda998x_drv.c:1744:2: error: empty scalar initializer
   drivers/gpu//drm/i2c/tda998x_drv.c:1744:2: note: (near initialization for 'tda998x_dt_ids')
   drivers/gpu//drm/i2c/tda998x_drv.c:1744:2: warning: excess elements in scalar initializer
   drivers/gpu//drm/i2c/tda998x_drv.c:1744:2: note: (near initialization for 'tda998x_dt_ids')
   drivers/gpu//drm/i2c/tda998x_drv.c:1746:40: error: expected declaration specifiers before ';' token
    MODULE_DEVICE_TABLE(of, tda998x_dt_ids);
                                           ^
   drivers/gpu//drm/i2c/tda998x_drv.c:1749:35: error: storage class specified for parameter 'tda998x_ids'
    static const struct i2c_device_id tda998x_ids[] = {
                                      ^~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1749:21: error: parameter 'tda998x_ids' is initialized
    static const struct i2c_device_id tda998x_ids[] = {
                        ^~~~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1750:2: warning: braces around scalar initializer
     { "tda998x", 0 },
     ^
   drivers/gpu//drm/i2c/tda998x_drv.c:1750:2: note: (near initialization for 'tda998x_ids')
   drivers/gpu//drm/i2c/tda998x_drv.c:1750:4: error: initialization from incompatible pointer type [-Werror=incompatible-pointer-types]
     { "tda998x", 0 },
       ^~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1750:4: note: (near initialization for 'tda998x_ids')
   drivers/gpu//drm/i2c/tda998x_drv.c:1750:15: warning: excess elements in scalar initializer
     { "tda998x", 0 },
                  ^
   drivers/gpu//drm/i2c/tda998x_drv.c:1750:15: note: (near initialization for 'tda998x_ids')
   drivers/gpu//drm/i2c/tda998x_drv.c:1751:2: warning: braces around scalar initializer
     { }
     ^
   drivers/gpu//drm/i2c/tda998x_drv.c:1751:2: note: (near initialization for 'tda998x_ids')
   drivers/gpu//drm/i2c/tda998x_drv.c:1751:2: error: empty scalar initializer
   drivers/gpu//drm/i2c/tda998x_drv.c:1751:2: note: (near initialization for 'tda998x_ids')
   drivers/gpu//drm/i2c/tda998x_drv.c:1751:2: warning: excess elements in scalar initializer
   drivers/gpu//drm/i2c/tda998x_drv.c:1751:2: note: (near initialization for 'tda998x_ids')
   drivers/gpu//drm/i2c/tda998x_drv.c:1753:38: error: expected declaration specifiers before ';' token
    MODULE_DEVICE_TABLE(i2c, tda998x_ids);
                                         ^
   drivers/gpu//drm/i2c/tda998x_drv.c:1755:26: error: storage class specified for parameter 'tda998x_driver'
    static struct i2c_driver tda998x_driver = {
                             ^~~~~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1755:15: error: parameter 'tda998x_driver' is initialized
    static struct i2c_driver tda998x_driver = {
                  ^~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1756:11: error: 'tda998x_probe' undeclared (first use in this function)
     .probe = tda998x_probe,
              ^~~~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1757:12: error: 'tda998x_remove' undeclared (first use in this function)
     .remove = tda998x_remove,
               ^~~~~~~~~~~~~~
   In file included from include/linux/hdmi.h:28:0,
                    from drivers/gpu//drm/i2c/tda998x_drv.c:19:
   include/linux/device.h:1503:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    { \
    ^
   include/linux/i2c.h:780:2: note: in expansion of macro 'module_driver'
     module_driver(__i2c_driver, i2c_add_driver, \
     ^~~~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1765:1: note: in expansion of macro 'module_i2c_driver'
    module_i2c_driver(tda998x_driver);
    ^~~~~~~~~~~~~~~~~
   In file included from include/linux/printk.h:5:0,
                    from include/linux/kernel.h:13,
                    from include/linux/list.h:8,
                    from include/linux/kobject.h:20,
                    from include/linux/device.h:17,
                    from include/linux/hdmi.h:28,
                    from drivers/gpu//drm/i2c/tda998x_drv.c:19:
>> include/linux/init.h:165:20: error: storage class specified for parameter '__initcall_tda998x_driver_init6'
     static initcall_t __initcall_##fn##id __used \
                       ^
   include/linux/init.h:195:30: note: in expansion of macro '__define_initcall'
    #define device_initcall(fn)  __define_initcall(fn, 6)
                                 ^~~~~~~~~~~~~~~~~
   include/linux/init.h:200:24: note: in expansion of macro 'device_initcall'
    #define __initcall(fn) device_initcall(fn)
                           ^~~~~~~~~~~~~~~
   include/linux/module.h:85:24: note: in expansion of macro '__initcall'
    #define module_init(x) __initcall(x);
                           ^~~~~~~~~~
   include/linux/device.h:1506:1: note: in expansion of macro 'module_init'
    module_init(__driver##_init); \
    ^~~~~~~~~~~
   include/linux/i2c.h:780:2: note: in expansion of macro 'module_driver'
     module_driver(__i2c_driver, i2c_add_driver, \
     ^~~~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1765:1: note: in expansion of macro 'module_i2c_driver'
    module_i2c_driver(tda998x_driver);
    ^~~~~~~~~~~~~~~~~
   In file included from include/linux/hdmi.h:28:0,
                    from drivers/gpu//drm/i2c/tda998x_drv.c:19:
>> include/linux/device.h:1503:1: error: parameter '__initcall_tda998x_driver_init6' is initialized
    { \
    ^
   include/linux/i2c.h:780:2: note: in expansion of macro 'module_driver'
     module_driver(__i2c_driver, i2c_add_driver, \
     ^~~~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1765:1: note: in expansion of macro 'module_i2c_driver'
    module_i2c_driver(tda998x_driver);
    ^~~~~~~~~~~~~~~~~
   include/linux/device.h:1503:1: warning: '__used__' attribute ignored [-Wattributes]
    { \
    ^
   include/linux/i2c.h:780:2: note: in expansion of macro 'module_driver'
     module_driver(__i2c_driver, i2c_add_driver, \
     ^~~~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1765:1: note: in expansion of macro 'module_i2c_driver'
    module_i2c_driver(tda998x_driver);
    ^~~~~~~~~~~~~~~~~
   In file included from include/linux/printk.h:5:0,
                    from include/linux/kernel.h:13,
                    from include/linux/list.h:8,
                    from include/linux/kobject.h:20,
                    from include/linux/device.h:17,
                    from include/linux/hdmi.h:28,
                    from drivers/gpu//drm/i2c/tda998x_drv.c:19:
>> include/linux/init.h:165:20: error: section attribute not allowed for '__initcall_tda998x_driver_init6'
     static initcall_t __initcall_##fn##id __used \
                       ^
   include/linux/init.h:195:30: note: in expansion of macro '__define_initcall'
    #define device_initcall(fn)  __define_initcall(fn, 6)
                                 ^~~~~~~~~~~~~~~~~
   include/linux/init.h:200:24: note: in expansion of macro 'device_initcall'
    #define __initcall(fn) device_initcall(fn)
                           ^~~~~~~~~~~~~~~
   include/linux/module.h:85:24: note: in expansion of macro '__initcall'
    #define module_init(x) __initcall(x);
                           ^~~~~~~~~~
   include/linux/device.h:1506:1: note: in expansion of macro 'module_init'
    module_init(__driver##_init); \
    ^~~~~~~~~~~
   include/linux/i2c.h:780:2: note: in expansion of macro 'module_driver'
     module_driver(__i2c_driver, i2c_add_driver, \
     ^~~~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1765:1: note: in expansion of macro 'module_i2c_driver'
    module_i2c_driver(tda998x_driver);
    ^~~~~~~~~~~~~~~~~
>> drivers/gpu//drm/i2c/tda998x_drv.c:1765:19: error: 'tda998x_driver_init' undeclared (first use in this function)
    module_i2c_driver(tda998x_driver);
                      ^
   include/linux/init.h:166:58: note: in definition of macro '__define_initcall'
     __attribute__((__section__(".initcall" #id ".init"))) = fn;
                                                             ^~
   include/linux/init.h:200:24: note: in expansion of macro 'device_initcall'
    #define __initcall(fn) device_initcall(fn)
                           ^~~~~~~~~~~~~~~
   include/linux/module.h:85:24: note: in expansion of macro '__initcall'
    #define module_init(x) __initcall(x);
                           ^~~~~~~~~~
   include/linux/device.h:1506:1: note: in expansion of macro 'module_init'
    module_init(__driver##_init); \
    ^~~~~~~~~~~
   include/linux/i2c.h:780:2: note: in expansion of macro 'module_driver'
     module_driver(__i2c_driver, i2c_add_driver, \
     ^~~~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1765:1: note: in expansion of macro 'module_i2c_driver'
    module_i2c_driver(tda998x_driver);
    ^~~~~~~~~~~~~~~~~
   In file included from drivers/gpu//drm/i2c/tda998x_drv.c:20:0:
   include/linux/module.h:85:37: error: expected declaration specifiers before ';' token
    #define module_init(x) __initcall(x);
                                        ^
   include/linux/device.h:1506:1: note: in expansion of macro 'module_init'
    module_init(__driver##_init); \
    ^~~~~~~~~~~
   include/linux/i2c.h:780:2: note: in expansion of macro 'module_driver'
     module_driver(__i2c_driver, i2c_add_driver, \
     ^~~~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1765:1: note: in expansion of macro 'module_i2c_driver'
    module_i2c_driver(tda998x_driver);
    ^~~~~~~~~~~~~~~~~
   In file included from include/linux/hdmi.h:28:0,
                    from drivers/gpu//drm/i2c/tda998x_drv.c:19:
   include/linux/device.h:1506:29: error: expected declaration specifiers before ';' token
    module_init(__driver##_init); \
                                ^
   include/linux/i2c.h:780:2: note: in expansion of macro 'module_driver'
     module_driver(__i2c_driver, i2c_add_driver, \
     ^~~~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1765:1: note: in expansion of macro 'module_i2c_driver'
    module_i2c_driver(tda998x_driver);
    ^~~~~~~~~~~~~~~~~
   include/linux/device.h:1508:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    { \
    ^
   include/linux/i2c.h:780:2: note: in expansion of macro 'module_driver'
     module_driver(__i2c_driver, i2c_add_driver, \
     ^~~~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1765:1: note: in expansion of macro 'module_i2c_driver'
    module_i2c_driver(tda998x_driver);
    ^~~~~~~~~~~~~~~~~
   In file included from include/linux/printk.h:5:0,
                    from include/linux/kernel.h:13,
                    from include/linux/list.h:8,
                    from include/linux/kobject.h:20,
                    from include/linux/device.h:17,
                    from include/linux/hdmi.h:28,
                    from drivers/gpu//drm/i2c/tda998x_drv.c:19:
>> include/linux/init.h:203:20: error: storage class specified for parameter '__exitcall_tda998x_driver_exit'
     static exitcall_t __exitcall_##fn __exit_call = fn
                       ^
   include/linux/module.h:97:24: note: in expansion of macro '__exitcall'
    #define module_exit(x) __exitcall(x);
                           ^~~~~~~~~~
   include/linux/device.h:1511:1: note: in expansion of macro 'module_exit'
    module_exit(__driver##_exit);
    ^~~~~~~~~~~
   include/linux/i2c.h:780:2: note: in expansion of macro 'module_driver'
     module_driver(__i2c_driver, i2c_add_driver, \
     ^~~~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1765:1: note: in expansion of macro 'module_i2c_driver'
    module_i2c_driver(tda998x_driver);
    ^~~~~~~~~~~~~~~~~
   In file included from include/linux/hdmi.h:28:0,
                    from drivers/gpu//drm/i2c/tda998x_drv.c:19:
>> include/linux/device.h:1508:1: error: parameter '__exitcall_tda998x_driver_exit' is initialized
    { \
    ^
   include/linux/i2c.h:780:2: note: in expansion of macro 'module_driver'
     module_driver(__i2c_driver, i2c_add_driver, \
     ^~~~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1765:1: note: in expansion of macro 'module_i2c_driver'
    module_i2c_driver(tda998x_driver);
    ^~~~~~~~~~~~~~~~~
   include/linux/device.h:1508:1: warning: '__used__' attribute ignored [-Wattributes]
    { \
    ^
   include/linux/i2c.h:780:2: note: in expansion of macro 'module_driver'
     module_driver(__i2c_driver, i2c_add_driver, \
     ^~~~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1765:1: note: in expansion of macro 'module_i2c_driver'
    module_i2c_driver(tda998x_driver);
    ^~~~~~~~~~~~~~~~~
   In file included from include/linux/printk.h:5:0,
                    from include/linux/kernel.h:13,
                    from include/linux/list.h:8,
                    from include/linux/kobject.h:20,
                    from include/linux/device.h:17,
                    from include/linux/hdmi.h:28,
                    from drivers/gpu//drm/i2c/tda998x_drv.c:19:
>> include/linux/init.h:203:20: error: section attribute not allowed for '__exitcall_tda998x_driver_exit'
     static exitcall_t __exitcall_##fn __exit_call = fn
                       ^
   include/linux/module.h:97:24: note: in expansion of macro '__exitcall'
    #define module_exit(x) __exitcall(x);
                           ^~~~~~~~~~
   include/linux/device.h:1511:1: note: in expansion of macro 'module_exit'
    module_exit(__driver##_exit);
    ^~~~~~~~~~~
   include/linux/i2c.h:780:2: note: in expansion of macro 'module_driver'
     module_driver(__i2c_driver, i2c_add_driver, \
     ^~~~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1765:1: note: in expansion of macro 'module_i2c_driver'
    module_i2c_driver(tda998x_driver);
    ^~~~~~~~~~~~~~~~~
>> drivers/gpu//drm/i2c/tda998x_drv.c:1765:19: error: 'tda998x_driver_exit' undeclared (first use in this function)
    module_i2c_driver(tda998x_driver);
                      ^
   include/linux/init.h:203:50: note: in definition of macro '__exitcall'
     static exitcall_t __exitcall_##fn __exit_call = fn
                                                     ^~
   include/linux/device.h:1511:1: note: in expansion of macro 'module_exit'
    module_exit(__driver##_exit);
    ^~~~~~~~~~~
   include/linux/i2c.h:780:2: note: in expansion of macro 'module_driver'
     module_driver(__i2c_driver, i2c_add_driver, \
     ^~~~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1765:1: note: in expansion of macro 'module_i2c_driver'
    module_i2c_driver(tda998x_driver);
    ^~~~~~~~~~~~~~~~~
   In file included from include/linux/hdmi.h:28:0,
                    from drivers/gpu//drm/i2c/tda998x_drv.c:19:
   include/linux/device.h:1511:29: error: expected declaration specifiers before ';' token
    module_exit(__driver##_exit);
                                ^
   include/linux/i2c.h:780:2: note: in expansion of macro 'module_driver'
     module_driver(__i2c_driver, i2c_add_driver, \
     ^~~~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1765:1: note: in expansion of macro 'module_i2c_driver'
    module_i2c_driver(tda998x_driver);
    ^~~~~~~~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1765:34: error: expected declaration specifiers before ';' token
    module_i2c_driver(tda998x_driver);
                                     ^
   In file included from include/linux/module.h:18:0,
                    from drivers/gpu//drm/i2c/tda998x_drv.c:20:
   include/linux/moduleparam.h:27:3: warning: empty declaration
      struct __UNIQUE_ID(name) {}
      ^
   include/linux/module.h:160:32: note: in expansion of macro '__MODULE_INFO'
    #define MODULE_INFO(tag, info) __MODULE_INFO(tag, tag, info)
                                   ^~~~~~~~~~~~~
   include/linux/module.h:204:32: note: in expansion of macro 'MODULE_INFO'
    #define MODULE_AUTHOR(_author) MODULE_INFO(author, _author)
                                   ^~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1767:1: note: in expansion of macro 'MODULE_AUTHOR'
    MODULE_AUTHOR("Rob Clark <robdclark@gmail.com");
    ^~~~~~~~~~~~~
   include/linux/moduleparam.h:27:3: warning: empty declaration
      struct __UNIQUE_ID(name) {}
      ^
   include/linux/module.h:160:32: note: in expansion of macro '__MODULE_INFO'
    #define MODULE_INFO(tag, info) __MODULE_INFO(tag, tag, info)
                                   ^~~~~~~~~~~~~
   include/linux/module.h:207:42: note: in expansion of macro 'MODULE_INFO'
    #define MODULE_DESCRIPTION(_description) MODULE_INFO(description, _description)
                                             ^~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1768:1: note: in expansion of macro 'MODULE_DESCRIPTION'
    MODULE_DESCRIPTION("NXP Semiconductors TDA998X HDMI Encoder");
    ^~~~~~~~~~~~~~~~~~
   include/linux/moduleparam.h:27:3: warning: empty declaration
      struct __UNIQUE_ID(name) {}
      ^
   include/linux/module.h:160:32: note: in expansion of macro '__MODULE_INFO'
    #define MODULE_INFO(tag, info) __MODULE_INFO(tag, tag, info)
                                   ^~~~~~~~~~~~~
   include/linux/module.h:198:34: note: in expansion of macro 'MODULE_INFO'
    #define MODULE_LICENSE(_license) MODULE_INFO(license, _license)
                                     ^~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1769:1: note: in expansion of macro 'MODULE_LICENSE'
    MODULE_LICENSE("GPL");
    ^~~~~~~~~~~~~~
   In file included from drivers/gpu//drm/i2c/tda998x_drv.c:29:0:
   include/drm/drm_of.h:33:26: error: old-style parameter declarations in prototyped function definition
    struct backlight_device *devm_drm_of_find_backlight(struct device *dev)
                             ^~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from include/uapi/linux/stddef.h:1:0,
                    from include/linux/stddef.h:4,
                    from include/linux/component.h:4,
                    from drivers/gpu//drm/i2c/tda998x_drv.c:18:
   include/linux/compiler-gcc.h:190:45: error: expected '{' at end of input
    #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
                                                ^
   include/linux/compiler.h:52:23: note: in definition of macro '___PASTE'
    #define ___PASTE(a,b) a##b
                          ^
   include/linux/compiler-gcc.h:190:29: note: in expansion of macro '__PASTE'
    #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
                                ^~~~~~~
   include/linux/compiler.h:53:22: note: in expansion of macro '___PASTE'
    #define __PASTE(a,b) ___PASTE(a,b)
                         ^~~~~~~~
   include/linux/compiler-gcc.h:190:37: note: in expansion of macro '__PASTE'
    #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
                                        ^~~~~~~
   include/linux/moduleparam.h:27:10: note: in expansion of macro '__UNIQUE_ID'
      struct __UNIQUE_ID(name) {}
             ^~~~~~~~~~~
   include/linux/module.h:160:32: note: in expansion of macro '__MODULE_INFO'
    #define MODULE_INFO(tag, info) __MODULE_INFO(tag, tag, info)
                                   ^~~~~~~~~~~~~
   include/linux/module.h:198:34: note: in expansion of macro 'MODULE_INFO'
    #define MODULE_LICENSE(_license) MODULE_INFO(license, _license)
                                     ^~~~~~~~~~~
   drivers/gpu//drm/i2c/tda998x_drv.c:1769:1: note: in expansion of macro 'MODULE_LICENSE'
    MODULE_LICENSE("GPL");
..

vim +/__initcall_tda998x_driver_init6 +165 include/linux/init.h

^1da177e Linus Torvalds            2005-04-16  147  
b67067f1 Nicholas Piggin           2016-08-24  148  /*
b67067f1 Nicholas Piggin           2016-08-24  149   * initcalls are now grouped by functionality into separate
^1da177e Linus Torvalds            2005-04-16  150   * subsections. Ordering inside the subsections is determined
^1da177e Linus Torvalds            2005-04-16  151   * by link order. 
^1da177e Linus Torvalds            2005-04-16  152   * For backwards compatibility, initcall() puts the call in 
^1da177e Linus Torvalds            2005-04-16  153   * the device init subsection.
735a7ffb Andrew Morton             2006-10-27  154   *
735a7ffb Andrew Morton             2006-10-27  155   * The `id' arg to __define_initcall() is needed so that multiple initcalls
735a7ffb Andrew Morton             2006-10-27  156   * can point at the same handler without causing duplicate-symbol build errors.
b67067f1 Nicholas Piggin           2016-08-24  157   *
b67067f1 Nicholas Piggin           2016-08-24  158   * Initcalls are run by placing pointers in initcall sections that the
b67067f1 Nicholas Piggin           2016-08-24  159   * kernel iterates at runtime. The linker can do dead code / data elimination
b67067f1 Nicholas Piggin           2016-08-24  160   * and remove that completely, so the initcall sections have to be marked
b67067f1 Nicholas Piggin           2016-08-24  161   * as KEEP() in the linker script.
^1da177e Linus Torvalds            2005-04-16  162   */
^1da177e Linus Torvalds            2005-04-16  163  
7929d407 Matthew Leach             2012-12-17  164  #define __define_initcall(fn, id) \
3ff6eecc Adrian Bunk               2008-01-24 @165  	static initcall_t __initcall_##fn##id __used \
b67067f1 Nicholas Piggin           2016-08-24  166  	__attribute__((__section__(".initcall" #id ".init"))) = fn;
^1da177e Linus Torvalds            2005-04-16  167  
b3438f82 Linus Torvalds            2006-11-20  168  /*
c2147a50 Eduard - Gabriel Munteanu 2008-07-25  169   * Early initcalls run before initializing SMP.
c2147a50 Eduard - Gabriel Munteanu 2008-07-25  170   *
c2147a50 Eduard - Gabriel Munteanu 2008-07-25  171   * Only for built-in code, not modules.
c2147a50 Eduard - Gabriel Munteanu 2008-07-25  172   */
7929d407 Matthew Leach             2012-12-17  173  #define early_initcall(fn)		__define_initcall(fn, early)
c2147a50 Eduard - Gabriel Munteanu 2008-07-25  174  
c2147a50 Eduard - Gabriel Munteanu 2008-07-25  175  /*
b3438f82 Linus Torvalds            2006-11-20  176   * A "pure" initcall has no dependencies on anything else, and purely
b3438f82 Linus Torvalds            2006-11-20  177   * initializes variables that couldn't be statically initialized.
b3438f82 Linus Torvalds            2006-11-20  178   *
b3438f82 Linus Torvalds            2006-11-20  179   * This only exists for built-in code, not for modules.
96263d28 Jim Cromie                2012-06-14  180   * Keep main.c:initcall_level_names[] in sync.
b3438f82 Linus Torvalds            2006-11-20  181   */
7929d407 Matthew Leach             2012-12-17  182  #define pure_initcall(fn)		__define_initcall(fn, 0)
7929d407 Matthew Leach             2012-12-17  183  
7929d407 Matthew Leach             2012-12-17  184  #define core_initcall(fn)		__define_initcall(fn, 1)
7929d407 Matthew Leach             2012-12-17  185  #define core_initcall_sync(fn)		__define_initcall(fn, 1s)
7929d407 Matthew Leach             2012-12-17  186  #define postcore_initcall(fn)		__define_initcall(fn, 2)
7929d407 Matthew Leach             2012-12-17  187  #define postcore_initcall_sync(fn)	__define_initcall(fn, 2s)
7929d407 Matthew Leach             2012-12-17  188  #define arch_initcall(fn)		__define_initcall(fn, 3)
7929d407 Matthew Leach             2012-12-17  189  #define arch_initcall_sync(fn)		__define_initcall(fn, 3s)
7929d407 Matthew Leach             2012-12-17  190  #define subsys_initcall(fn)		__define_initcall(fn, 4)
7929d407 Matthew Leach             2012-12-17  191  #define subsys_initcall_sync(fn)	__define_initcall(fn, 4s)
7929d407 Matthew Leach             2012-12-17  192  #define fs_initcall(fn)			__define_initcall(fn, 5)
7929d407 Matthew Leach             2012-12-17  193  #define fs_initcall_sync(fn)		__define_initcall(fn, 5s)
7929d407 Matthew Leach             2012-12-17  194  #define rootfs_initcall(fn)		__define_initcall(fn, rootfs)
7929d407 Matthew Leach             2012-12-17  195  #define device_initcall(fn)		__define_initcall(fn, 6)
7929d407 Matthew Leach             2012-12-17  196  #define device_initcall_sync(fn)	__define_initcall(fn, 6s)
7929d407 Matthew Leach             2012-12-17  197  #define late_initcall(fn)		__define_initcall(fn, 7)
7929d407 Matthew Leach             2012-12-17  198  #define late_initcall_sync(fn)		__define_initcall(fn, 7s)
^1da177e Linus Torvalds            2005-04-16  199  
^1da177e Linus Torvalds            2005-04-16  200  #define __initcall(fn) device_initcall(fn)
^1da177e Linus Torvalds            2005-04-16  201  
^1da177e Linus Torvalds            2005-04-16  202  #define __exitcall(fn)						\
^1da177e Linus Torvalds            2005-04-16 @203  	static exitcall_t __exitcall_##fn __exit_call = fn
^1da177e Linus Torvalds            2005-04-16  204  

:::::: The code at line 165 was first introduced by commit
:::::: 3ff6eecca4e5c49a5d1dd8b58ea0e20102ce08f0 remove __attribute_used__

:::::: TO: Adrian Bunk <bunk@kernel.org>
:::::: CC: Sam Ravnborg <sam@ravnborg.org>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--YiEDa0DAkWCtVeE4
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
iT8WxQEA

--YiEDa0DAkWCtVeE4--

