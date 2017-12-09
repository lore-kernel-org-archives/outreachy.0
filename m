X-GM-THRID: 6475592721521180672
X-Received: by 10.28.189.85 with SMTP id n82mr879745wmf.23.1512828577750;
        Sat, 09 Dec 2017 06:09:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.66.139 with SMTP id k11ls705300wmi.9.canary-gmail; Sat, 09
 Dec 2017 06:09:36 -0800 (PST)
X-Google-Smtp-Source: AGs4zMacZ0prBHLvlG2aTaIe9CKHtZ+zEx6qXZm7qQ2QNXGcLP9cb/094TLJm4kJnvfe93Jm5k2d
X-Received: by 10.28.54.38 with SMTP id d38mr894045wma.3.1512828576383;
        Sat, 09 Dec 2017 06:09:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1512828576; cv=none;
        d=google.com; s=arc-20160816;
        b=vZ4sWzlgGqUoM6kHAjYbx9F4LzuM7/FZ1fofJP4dAoz2lihpgd8qAIK4IsFDD9nIBg
         9HEA7SEkXVv36dzXNY4cNOdG3fUyXnha8jwCrEyKsXw864ISWzlXf0x2vWFFFr1hxwnk
         d/Xj1jPuynXWV3iWiy9ysH5KRs7BJ+Oi1FGkoCjJV6YwGKIW2OYPmXJfsrFnmcdyPkn1
         BC/hZN9KLlqC7tfX/P7LO+g7VIfJs0fTfwIx6i0jqpt6x7I7S35F4pf30SMcw9D/ZH/F
         VAV9/MsaC3hUTaPM/KKmC/8V8iw9TZi3GyHYsb27UROoJx1HzttP7XorcyZH1RoUL5AU
         7q+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:arc-authentication-results;
        bh=UG5k4AFfIsWU+w+dyuQ2LyXqA/IsZFV/uSEqHgjyJ+8=;
        b=emueVqoB897FBV7hRrwPtCMZ1Pv7PUSLEqg39+7DTEJ9N5OJl5Vq1EOncspfx1Ka4c
         O7MQFXjmfoJonvzPUUSPISWb1qBZi94KAuReM15cP2sXMtaQ6/g3NiwSw8fCJ0LyiaXB
         d4rI7GbTKE7FiZ8+PMqTB51a4Vony0evh5bvspfKG2g88M0FHiMi2QQhWUM+T4NiSylA
         TLXwHUjxgYxuTcYepTOHwsJWA+Cc8cpUFRyF6/tsei3CNc3UNthYppIBFL5pF/7nJlEh
         j0xxHCjhH25G1f1Psg7KsZTWJ1O+DnRGHEir3Xh10rz6oBw24C8YL695DSGSDCaqmq2y
         VL+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id r134si689491wmd.3.2017.12.09.06.09.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Dec 2017 06:09:36 -0800 (PST)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:60420 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1eNfos-0006bM-Uo; Sat, 09 Dec 2017 15:09:34 +0100
Subject: Re: [PATCH v14 0/3] Move backlight helper functions from
 tinydrm-helpers to linux/backlight
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
 outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org,
 daniel.thompson@linaro.org, jani.nikula@linux.intel.com
References: <cover.1508586429.git.meghana.madhyastha@gmail.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <1b896ac5-578d-3755-9139-a39d64282b8e@tronnes.org>
Date: Sat, 9 Dec 2017 15:09:28 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <cover.1508586429.git.meghana.madhyastha@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


Den 21.10.2017 13.55, skrev Meghana Madhyastha:
> Changes in v14:
> - s/backlight_get/of_find_backlight/ in patch 2/3
> - Change commit message in patch 3/3 from requiring to acquiring
>
> Meghana Madhyastha (3):
>    drm/tinydrm: Move helper functions from tinydrm-helpers to backlight.h
>    drm/tinydrm: Move tinydrm_of_find_backlight to backlight.c
>    drm/tinydrm: Add devres versions of of_find_backlight

I tried the patchset and this is what I got:

[    8.057792] Unable to handle kernel paging request at virtual address 
fffffe6b
[    8.069118] pgd = 93817cf7
[    8.075704] [fffffe6b] *pgd=1bfd7861, *pte=00000000, *ppte=00000000
[    8.086047] Internal error: Oops: 37 [#1] ARM
[    8.094285] Modules linked in: mi0283qt(+) mipi_dbi tinydrm backlight 
bcm2835_rng rng_core
[    8.110535] CPU: 0 PID: 121 Comm: systemd-udevd Not tainted 
4.15.0-rc2+ #2
[    8.121531] Hardware name: BCM2835
[    8.128964] task: 85dc6e21 task.stack: 4d8f2d19
[    8.137482] PC is at kobject_put+0x18/0x1dc
[    8.145556] LR is at put_device+0x24/0x28
[    8.153312] pc : [<c076a1b4>]    lr : [<c048edb8>] psr: a0000013
[    8.163321] sp : d6d33c18  ip : d6d33c40  fp : d6d33c3c
[    8.172238] r10: c0496d38  r9 : 00000000  r8 : d6e46680
[    8.181108] r7 : 00000004  r6 : d766bc00  r5 : d6d33c70  r4 : fffffe4b
[    8.191237] r3 : bf0113b8  r2 : d766bd2c  r1 : d6e46710  r0 : fffffe4b
[    8.201248] Flags: NzCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM 
Segment none
[    8.211869] Control: 00c5387d  Table: 16d20008  DAC: 00000051
[    8.221141] Process systemd-udevd (pid: 121, stack limit = 0xa0ab0c84)
[    8.231264] Stack: (0xd6d33c18 to 0xd6d34000)
[    8.239228] 
3c00:                                                       bf011858 
c049728c
[    8.254539] 3c20: d7737010 d6e46700 d6d33c70 d766bc00 d6d33c4c 
d6d33c40 c048edb8 c076a1a8
[    8.270045] 3c40: d6d33c5c d6d33c50 bf0113dc c048eda0 d6d33c6c 
d6d33c60 c0496fc4 bf0113c4
[    8.285883] 3c60: d6d33ca4 d6d33c70 c04979f0 c0496fb4 d7737000 
d6e46700 d6d33c9c d766bc00
[    8.301819] 3c80: 00000000 bf030100 c0d369dc c0d369e0 0000000e 
fffffdfb d6d33cb4 d6d33ca8
[    8.317917] 3ca0: c0497ad0 c0497858 d6d33cec d6d33cb8 c0493efc 
c0497a94 c057e738 c057d26c
[    8.334043] 3cc0: d6d33cec d766bc00 d766bc34 bf030100 c0c4a5d8 
00000001 d6e46464 00000028
[    8.350344] 3ce0: d6d33d0c d6d33cf0 c049414c c0493c4c 00000001 
00000000 bf030100 c04940b0
[    8.367036] 3d00: d6d33d34 d6d33d10 c0492018 c04940bc d754f28c 
d76afbb0 d6dca534 bf030100
[    8.383997] 3d20: 00000000 d6dca500 d6d33d44 d6d33d38 c0493750 
c0491fa8 d6d33d6c d6d33d48
[    8.401301] 3d40: c0493124 c0493734 bf02f4d6 d6d33d58 bf030100 
bf033000 c0c04048 00000000
[    8.418938] 3d60: d6d33d84 d6d33d70 c0494954 c0493048 bf030140 
bf033000 d6d33d94 d6d33d88
[    8.436692] 3d80: c04c8794 c04948b4 d6d33da4 d6d33d98 bf033020 
c04c8748 d6d33e1c d6d33da8
[    8.454638] 3da0: c0101a30 bf03300c d6d33dcc d6d33db8 c01013f4 
c03f7c64 c0221690 60000013
[    8.472918] 3dc0: d6d33e44 d6d33dd0 c010d04c c01013e0 d7401e40 
014000c0 0000000c c0221770
[    8.491185] 3de0: d6d33e1c d6d33df0 c0221770 c021e29c 00000001 
fc36740d bf030140 00000001
[    8.509455] 3e00: d6e46500 d6e46440 00000001 d6e46464 d6d33e44 
d6d33e20 c0178628 c0101978
[    8.527727] 3e20: bf030140 d6e46440 d6d33e44 d6d33f40 00000001 
bf030140 d6d33f1c d6d33e48
[    8.546000] 3e40: c0177810 c01785c8 bf03014c 00007fff bf030140 
c0174ae8 d6d33f38 d6d33eb8
[    8.564264] 3e60: d6d33e9c b6d4f004 dcb059a4 c0c1619c bf030324 
d6e46448 bf030188 dcad6000
[    8.582529] 3e80: 00000000 d6ca3e40 00000000 00000000 00000000 
00000000 00000000 00000000
[    8.600797] 3ea0: 00000000 00000000 00000000 00000000 6e72656b 
00006c65 00000000 00000000
[    8.619065] 3ec0: 00000000 00000000 00000000 00000000 00000000 
00000000 00000000 00000000
[    8.637319] 3ee0: 00000000 00000000 00000000 fc36740d 7fffffff 
00000000 b6d4f004 0000000d
[    8.655582] 3f00: 0000017b c0108044 d6d32000 00000000 d6d33fa4 
d6d33f20 c0177f94 c0175d00
[    8.673835] 3f20: 7fffffff 00000000 00000003 00000000 00000000 
dcad6000 0002f9f4 00000000
[    8.692093] 3f40: dcad6b80 dcad6000 0002f9f4 dcb05274 dcaf9e6a 
dcafa860 00003000 00003240
[    8.710350] 3f60: 00000000 00000000 00000000 00001e34 0000002e 
0000002f 00000019 00000000
[    8.728612] 3f80: 00000013 00000000 00000000 1ef80900 00000000 
00000000 00000000 d6d33fa8
[    8.746870] 3fa0: c0107e60 c0177f04 1ef80900 00000000 0000000d 
b6d4f004 00000000 b6d4f928
[    8.765132] 3fc0: 1ef80900 00000000 00000000 0000017b b6d4f004 
00020000 00af6e18 00000000
[    8.783394] 3fe0: bec95200 bec951f0 b6d4709c b6ea3c40 60000010 
0000000d 00000000 00000000
[    8.801685] [<c076a1b4>] (kobject_put) from [<c048edb8>] 
(put_device+0x24/0x28)
[    8.814234] [<c048edb8>] (put_device) from [<bf0113dc>] 
(devm_backlight_put+0x24/0x28 [backlight])
[    8.833323] [<bf0113dc>] (devm_backlight_put [backlight]) from 
[<c0496fc4>] (devm_action_release+0x1c/0x20)
[    8.853182] [<c0496fc4>] (devm_action_release) from [<c04979f0>] 
(release_nodes+0x1a4/0x1cc)
[    8.871702] [<c04979f0>] (release_nodes) from [<c0497ad0>] 
(devres_release_all+0x48/0x54)
[    8.889956] [<c0497ad0>] (devres_release_all) from [<c0493efc>] 
(driver_probe_device+0x2bc/0x470)
[    8.908937] [<c0493efc>] (driver_probe_device) from [<c049414c>] 
(__driver_attach+0x9c/0x100)
[    8.927557] [<c049414c>] (__driver_attach) from [<c0492018>] 
(bus_for_each_dev+0x7c/0xa0)
[    8.945822] [<c0492018>] (bus_for_each_dev) from [<c0493750>] 
(driver_attach+0x28/0x30)
[    8.963916] [<c0493750>] (driver_attach) from [<c0493124>] 
(bus_add_driver+0xe8/0x240)
[    8.981929] [<c0493124>] (bus_add_driver) from [<c0494954>] 
(driver_register+0xac/0xf0)
[    9.000048] [<c0494954>] (driver_register) from [<c04c8794>] 
(__spi_register_driver+0x58/0x6c)
[    9.018823] [<c04c8794>] (__spi_register_driver) from [<bf033020>] 
(mi0283qt_spi_driver_init+0x20/0x1000 [mi0283qt])
[    9.039575] [<bf033020>] (mi0283qt_spi_driver_init [mi0283qt]) from 
[<c0101a30>] (do_one_initcall+0xc4/0x184)
[    9.059727] [<c0101a30>] (do_one_initcall) from [<c0178628>] 
(do_init_module+0x6c/0x1fc)
[    9.078036] [<c0178628>] (do_init_module) from [<c0177810>] 
(load_module+0x1b1c/0x2090)
[    9.096248] [<c0177810>] (load_module) from [<c0177f94>] 
(SyS_finit_module+0x9c/0xcc)
[    9.114284] [<c0177f94>] (SyS_finit_module) from [<c0107e60>] 
(ret_fast_syscall+0x0/0x54)
[    9.132673] Code: e24cb004 e24dd00c e2504000 0a00005e (e5d43020)
[    9.144181] ---[ end trace 149c05934b6a6dcc ]---

Noralf.

>   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 95 --------------------------
>   drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
>   drivers/gpu/drm/tinydrm/mipi-dbi.c             |  5 +-
>   drivers/video/backlight/backlight.c            | 68 ++++++++++++++++++
>   include/drm/tinydrm/tinydrm-helpers.h          |  4 --
>   include/linux/backlight.h                      | 56 +++++++++++++++
>   6 files changed, 129 insertions(+), 102 deletions(-)
>


