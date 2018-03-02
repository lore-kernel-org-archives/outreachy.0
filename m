X-GM-THRID: 6528466201738215424
X-Received: by 10.107.35.144 with SMTP id j138mr4794615ioj.62.1520026998721;
        Fri, 02 Mar 2018 13:43:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.226 with SMTP id 95ls1992820ios.21.gmail; Fri, 02 Mar
 2018 13:43:17 -0800 (PST)
X-Google-Smtp-Source: AG47ELtW3JJUcE1pgr6SRT8NAec/6MwMDahPlz7p8cnJwkwQeh21Z9+Gh5034vwIrxCYaxvv9fYs
X-Received: by 10.107.173.227 with SMTP id m96mr5037972ioo.70.1520026997744;
        Fri, 02 Mar 2018 13:43:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520026997; cv=none;
        d=google.com; s=arc-20160816;
        b=BTXha751dFHNV47aGDdWiVDYr5HeNWEEl5DSA0K1tND56zsJyHhBLW1pWyAdW5HN+A
         3WCLBZIuA6ANvjeD/dMB3t7O+dPosY7EjjSn0V0aIl9hpCJRlVCAeJ4F6Z5WYd9cXLi8
         zgH9E3pBiX9MxUhgmTpk8HjBGTDoGMSWGwr08m3Y+Zng/y/cCMOjawCALIPh0Lx0Jja+
         lwT9kms1OSDpOEf/Ipr/cDVZcfvQvzPCslXnNpTUde1BDprNIMbh+2+2VjbkFSnnFizc
         Ty3Kjz+5suyfFRPQoNyraj/4Ov3wznZqlXW6qEdBi/UuJi/uaJFAHWaedCrDzOG2P6eQ
         I0DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=FbZzLYhzNleddCSdiUqfXFQMdxI+hvzuKxlNGuzH+1U=;
        b=tJuHa6T3Slg0L6d0OH8eXS/AgZyFq/oYlGzg4ItpqRAKnO+OtZ++B7AYWX6qXfAYIK
         z0cIHOUCthEwwagqTO/+SWbRf7X4yOi+ndpzFDZUdWfMTfDL0d5jeovfUtfzWY/VKCd9
         qqgKrHLAwtlrlC7yrMe6dPOKRkn6+eYKoKiq+Atj7lYHwdlEJhM45hvm7gJHUm+3/gLP
         iKbiGCu93SwVc5fBwJlSlrcqU7MlIna87Krp6X6RONrqLrCkRuA7VFpiNH6p8y8cVGF2
         8YoVs99140M5Wjc2Hlm+/Z6+KtUDhJA1LNaCOsurLCEbgOi9DcNle3GIiZb6qmKtK4rm
         xTPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KVglC6sI;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pl0-x243.google.com (mail-pl0-x243.google.com. [2607:f8b0:400e:c01::243])
        by gmr-mx.google.com with ESMTPS id n15si119908ith.0.2018.03.02.13.43.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 13:43:17 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::243 as permitted sender) client-ip=2607:f8b0:400e:c01::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KVglC6sI;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x243.google.com with SMTP id c11-v6so6429888plo.0
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Mar 2018 13:43:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=FbZzLYhzNleddCSdiUqfXFQMdxI+hvzuKxlNGuzH+1U=;
        b=KVglC6sII6XL8w/YsXjqRN2sv2+w8jN1GJMedx75zkncFOWyhKgdkJ12vieqqGg0su
         baszKLU4x6HLhRU8jl30phm3TO1K/z4wmzN9ig2cZ1J32YxlS0hUHtNBWyfS5eEo/FZ0
         ztf/mYdBTCZwTaFBLgyMJmGCtPIXQZ0L/QkgfEIxkBJ2lXcbFdEY56cdPaxCoDCH/dmB
         PQwWzkXgS3wEQvnSjdSN+H1UTsw9DHCgsirAp8/dcgaTUSebRHloJejw5MugGSAwFnLY
         17KgDuRGtsi2g31jUpDs4uv/8TKNO/m05iwLrbegOolANzA6ENt5PpYS7x4echpNyVjE
         Ve9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=FbZzLYhzNleddCSdiUqfXFQMdxI+hvzuKxlNGuzH+1U=;
        b=TKa3xQ/LZZX2VARmniWj1WIFK+/tE6RTTvNTm9bQovxKijD7ZFlEy7VMnZC8jfjitU
         CXyQDMeQcm9/IK+L9XHfYlf32dd42JzrXMA0RJ/On8pInp+Z7IMtWDvGFHxft+T1u950
         Mskt/A13bjWVfgowg5G52gWXDjb3V/WopJazlOSypx5isvru2SE7dJhLTvHJMbtQbH9p
         bkMLmGY4kT5PKweQP6IohZoHF+uAx9sFi6AHUyhEj9QlKt3cQyO5NX68O+RWxaItoYHK
         wQoM+IG6cDQxU85GzX++EdB4vzaKVRbudooKuIc1v4qZnsjSq8vmoLXyfQALnQ8DRopX
         1b5g==
X-Gm-Message-State: APf1xPDUv7o7oAsQP81fq1xI0nCmLIADaAmEgt0mK5hZq6IOgH8Zyrve
	rZ3se4iJohuRrIP8wvemscw=
X-Received: by 2002:a17:902:7b85:: with SMTP id w5-v6mr6589084pll.131.1520026997106;
        Fri, 02 Mar 2018 13:43:17 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567.iiit.ac.in ([14.139.82.6])
        by smtp.googlemail.com with ESMTPSA id a28sm13774531pfe.70.2018.03.02.13.43.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Mar 2018 13:43:15 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: outreachy-kernel@googlegroups.com,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal@gmail.com>,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 3/4] staging: rtl8712: Add spaces around '|'
Date: Sat,  3 Mar 2018 03:12:20 +0530
Message-Id: <1520026941-16548-4-git-send-email-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1520026941-16548-1-git-send-email-arushisinghal19971997@gmail.com>
References: <1520026941-16548-1-git-send-email-arushisinghal19971997@gmail.com>

From: Arushi Singhal <arushisinghal@gmail.com>

Add spaces around '|' to fix the checkpatch issue.
CHECK: spaces preferred around that '|'.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h | 2 +-
 drivers/staging/rtl8712/rtl8712_gp_bitdef.h      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h b/drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h
index b7dda90..4b8985d 100644
--- a/drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h
@@ -63,7 +63,7 @@
 #define _IMEM_CHK_RPT			BIT(1)
 #define _IMEM_CODE_DONE			BIT(0)
 
-#define	_TXDMA_INIT_VALUE	(_IMEM_CHK_RPT|_EMEM_CHK_RPT)
+#define	_TXDMA_INIT_VALUE	(_IMEM_CHK_RPT | _EMEM_CHK_RPT)
 
 /*RCR*/
 #define	_ENMBID				BIT(27)
diff --git a/drivers/staging/rtl8712/rtl8712_gp_bitdef.h b/drivers/staging/rtl8712/rtl8712_gp_bitdef.h
index 44c9060..66c35c9 100644
--- a/drivers/staging/rtl8712/rtl8712_gp_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_gp_bitdef.h
@@ -70,7 +70,7 @@
 #define		GPIOSEL_PHYDBG	1	/* PHYDBG*/
 #define		GPIOSEL_BT	2	/* BT_coex*/
 #define		GPIOSEL_WLANDBG	3	/* WLANDBG*/
-#define		GPIOSEL_GPIO_MASK	(~(BIT(0)|BIT(1)))
+#define		GPIOSEL_GPIO_MASK	(~(BIT(0) | BIT(1)))
 /* HW Radio OFF switch (GPIO BIT) */
 #define		HAL_8192S_HW_GPIO_OFF_BIT	BIT(3)
 #define		HAL_8192S_HW_GPIO_OFF_MASK	0xF7
-- 
2.7.4


