X-GM-THRID: 6666827183901638656
X-Received: by 2002:aca:4911:: with SMTP id w17mr30612967oia.5.1552241664100;
        Sun, 10 Mar 2019 11:14:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3de5:: with SMTP id l92ls4585481otc.0.gmail; Sun, 10 Mar
 2019 11:14:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyeGwmwYDdWWm5+tm9ue0DfOIjOnpc+20lJmRtGWD0zF5dPF5aYczAHO3mpeXCw9fRzj6jx
X-Received: by 2002:a05:6830:110:: with SMTP id i16mr16852246otp.38.1552241663257;
        Sun, 10 Mar 2019 11:14:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552241663; cv=none;
        d=google.com; s=arc-20160816;
        b=QCMclI4yWpiksLjGVqLlaZ0E1cFO/IOKBzI7MqRmxjG2ASYV1k17YrPs56zsXQRYhE
         Mf4t3b3dWzyKHgLJYplx0fajqWQ+IfAAMNl0Ez/7pd7ndWJSiiwddVgMd3cmhskKoCmt
         9wurbkt75VFGuJgxGLmJzpgRqu/CynCnNUCwcKM+bFdXftQiZIm428VsgqNlNqOAF8sZ
         H+DSImThVxQra5vjwtjuqOeSJQ+ZUzYy8QMZcPr8K+I8TONYzwljYyqwfqHQmy8A8+lb
         DKLNweyRZj0yg53fjGDJqkRrDaLfSAZAzUNAQDLY5eSqdhCptio3jBMEGpG9vVhM/WTo
         Ha+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=dxcVg0EsTdQqcQjHiL/J/5c8lJ51yOoPrv5hCDBi8Vo=;
        b=Vr5rOlD04QzOJ1gA0yTWpVjcSm2WgiO3EkyheTrcMloPkYQ08uHQ8EKJiSRDkoj5gO
         0ufBOdZYoOpNKi9fcau6X3O6GTCRIL/e94aJo5ExQVJHfuBhm43mR/kWUmVkqTXUnY1W
         aMdA2+5Vb1fr0IXC4eI7314mxMJMRObh1yb0g7Uf9WmQkYBB/NzjxTYN4dQ+5QVU3vBL
         pNOGU96P9QaWhpbfOBqcYmylfCVFiHLok2Ok+M2Swhp5/lAOVqWZ/FE5uxjLpmaJBPl1
         eEC71sJl6fDNoco4A7FcciQ6S++r0oROAcBroOD4Q/iX/4+oDQCYxeTtyu5IE22rp4xv
         paNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SzOtELcX;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id m3si83335otc.3.2019.03.10.11.14.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 11:14:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SzOtELcX;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id d25so1977131pfn.8
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Mar 2019 11:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=dxcVg0EsTdQqcQjHiL/J/5c8lJ51yOoPrv5hCDBi8Vo=;
        b=SzOtELcXXngcAmRAYUacn7BPWpyF59ZmxjoaVME5Ns5ugrf9EYA+Fo8aA/auqfLle2
         FTLl2gIVWz2g76CKrc9GpkX9BKrE/qw5o+KQpoH2nYN+DNTLF2hYxTrzhFw94JWM6TMP
         +wQZ8nNuaPyG1v+gxodniG9FdKwNvQTBJt4vA/lFULk+JAihxOz+ViPZIio4lMd+yqHO
         5YRRelCpV2FWixz6iMrIJDPo4EJyWihegq8u1pJnxE6HuI+CDjLxXY8F/0yzxHsjTOZy
         MsgqP71BJahX9wgTuvEGvwjQgMslBmh7DG0EOBW6Uje3JsQNHRdvHUuOJmf49axtXYGL
         rYhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=dxcVg0EsTdQqcQjHiL/J/5c8lJ51yOoPrv5hCDBi8Vo=;
        b=VQLZBn5+it2JxL8dcuaa4wvb0PkQcjiGjCnc+OacNpCupI1rDpacx/zQcz0TvLz6Pr
         z2nUOtbgv9NXYj6CFNq6ae2PzRK2GEmPKpaFard8it+C+35Llt8R6S9sRqBKPsONBH5t
         Dxk0ys2HTkCN9Mltu6e7c/bCKkBdUsi9EOY3m1hwVP2kiKo9+zG+CrI/xND1kYk2fP9L
         Q05dU9OJRD+rs8Q5NFu8zC/oH30GprIoqbY2jZ+wHEPbucCMeKPHDNRf16zIRRuxzK0B
         yQGQIgBsqFruUau8tDtejtzYI6ePL6gtImPH1kld+hMhZP67da4c5nlY3vwVxOosmtCX
         vjTQ==
X-Gm-Message-State: APjAAAVWFPOmUIB/k74daryUEpimuKFyvlG35IG24NE+sbGrYsE9GDiC
	QlCFNBdFrk5A9W4ey/X8Rf1ov7sdYVg=
X-Received: by 2002:a63:5d48:: with SMTP id o8mr26735525pgm.297.1552241661851;
        Sun, 10 Mar 2019 11:14:21 -0700 (PDT)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2e8d:68c7:f828:5bfa:d9dc:e4ec])
        by smtp.gmail.com with ESMTPSA id 1sm12519483pfy.68.2019.03.10.11.14.19
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 10 Mar 2019 11:14:21 -0700 (PDT)
Date: Sun, 10 Mar 2019 23:44:13 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: rtl8712: Multiple blank lines.
Message-ID: <20190310181412.GA29653@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix coding style issues, which is detected by checkpatch.pl
"CHECK: Please don't use multiple blank lines".

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_cmd.h              |  1 -
 drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h   |  1 -
 drivers/staging/rtl8712/rtl8712_efuse.h            |  1 -
 drivers/staging/rtl8712/rtl8712_led.c              |  1 -
 .../staging/rtl8712/rtl8712_macsetting_bitdef.h    |  3 --
 drivers/staging/rtl8712/rtl8712_ratectrl_regdef.h  |  1 -
 drivers/staging/rtl8712/rtl8712_recv.h             |  1 -
 drivers/staging/rtl8712/rtl8712_security_bitdef.h  |  1 -
 drivers/staging/rtl8712/rtl8712_spec.h             | 33 ----------------------
 drivers/staging/rtl8712/rtl8712_syscfg_bitdef.h    |  4 ---
 drivers/staging/rtl8712/rtl8712_syscfg_regdef.h    |  2 --
 drivers/staging/rtl8712/rtl8712_timectrl_bitdef.h  |  1 -
 drivers/staging/rtl8712/rtl8712_wmac_bitdef.h      |  1 -
 drivers/staging/rtl8712/rtl8712_wmac_regdef.h      |  1 -
 drivers/staging/rtl8712/rtl8712_xmit.c             |  1 -
 drivers/staging/rtl8712/rtl8712_xmit.h             |  3 --
 drivers/staging/rtl8712/rtl871x_cmd.h              |  2 --
 drivers/staging/rtl8712/rtl871x_debug.h            |  2 --
 drivers/staging/rtl8712/rtl871x_ioctl.h            |  1 -
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c      |  2 --
 drivers/staging/rtl8712/rtl871x_ioctl_rtl.c        |  1 -
 drivers/staging/rtl8712/rtl871x_ioctl_set.c        |  1 -
 drivers/staging/rtl8712/rtl871x_mlme.c             |  3 --
 drivers/staging/rtl8712/rtl871x_mp_ioctl.h         |  1 -
 drivers/staging/rtl8712/rtl871x_mp_phy_regdef.h    |  3 --
 drivers/staging/rtl8712/rtl871x_pwrctrl.h          |  2 --
 drivers/staging/rtl8712/rtl871x_recv.c             |  1 -
 drivers/staging/rtl8712/rtl871x_recv.h             |  1 -
 drivers/staging/rtl8712/rtl871x_security.c         |  1 -
 drivers/staging/rtl8712/rtl871x_sta_mgt.c          |  1 -
 drivers/staging/rtl8712/rtl871x_xmit.c             |  1 -
 drivers/staging/rtl8712/sta_info.h                 |  1 -
 drivers/staging/rtl8712/wifi.h                     | 11 --------
 drivers/staging/rtl8712/xmit_linux.c               |  1 -
 34 files changed, 92 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_cmd.h b/drivers/staging/rtl8712/rtl8712_cmd.h
index 92fb776..366b90a 100644
--- a/drivers/staging/rtl8712/rtl8712_cmd.h
+++ b/drivers/staging/rtl8712/rtl8712_cmd.h
@@ -128,7 +128,6 @@ enum rtl8712_h2c_cmd {
 	MAX_H2CCMD
 };
 
-
 #define _GetBBReg_CMD_		_Read_BBREG_CMD_
 #define _SetBBReg_CMD_		_Write_BBREG_CMD_
 #define _GetRFReg_CMD_		_Read_RFREG_CMD_
diff --git a/drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h b/drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h
index e125c72..68bdec0 100644
--- a/drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h
@@ -91,6 +91,5 @@
 #define	_BCNSPACE_MSK			0x0FFF
 #define	_BCNSPACE_SHT			0
 
-
 #endif /* __RTL8712_CMDCTRL_BITDEF_H__*/
 
diff --git a/drivers/staging/rtl8712/rtl8712_efuse.h b/drivers/staging/rtl8712/rtl8712_efuse.h
index 37dea0f..4969d30 100644
--- a/drivers/staging/rtl8712/rtl8712_efuse.h
+++ b/drivers/staging/rtl8712/rtl8712_efuse.h
@@ -4,7 +4,6 @@
 
 #include "osdep_service.h"
 
-
 #define _REPEAT_THRESHOLD_	3
 
 #define EFUSE_MAX_SIZE		512
diff --git a/drivers/staging/rtl8712/rtl8712_led.c b/drivers/staging/rtl8712/rtl8712_led.c
index d79ec09..64045af 100644
--- a/drivers/staging/rtl8712/rtl8712_led.c
+++ b/drivers/staging/rtl8712/rtl8712_led.c
@@ -1704,7 +1704,6 @@ static void SwLedControlMode5(struct _adapter *padapter,
 	}
 }
 
-
 static void SwLedControlMode6(struct _adapter *padapter,
 			      enum LED_CTL_MODE LedAction)
 {
diff --git a/drivers/staging/rtl8712/rtl8712_macsetting_bitdef.h b/drivers/staging/rtl8712/rtl8712_macsetting_bitdef.h
index 3d9f40f..46d758d 100644
--- a/drivers/staging/rtl8712/rtl8712_macsetting_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_macsetting_bitdef.h
@@ -7,7 +7,6 @@
 #ifndef __RTL8712_MACSETTING_BITDEF_H__
 #define __RTL8712_MACSETTING_BITDEF_H__
 
-
 /*MACID*/
 /*BSSID*/
 
@@ -28,7 +27,5 @@
 
 /*BUILDUSER*/
 
-
-
 #endif /* __RTL8712_MACSETTING_BITDEF_H__*/
 
diff --git a/drivers/staging/rtl8712/rtl8712_ratectrl_regdef.h b/drivers/staging/rtl8712/rtl8712_ratectrl_regdef.h
index a3eaee0..9ed5653 100644
--- a/drivers/staging/rtl8712/rtl8712_ratectrl_regdef.h
+++ b/drivers/staging/rtl8712/rtl8712_ratectrl_regdef.h
@@ -39,6 +39,5 @@
 #define MCS_TXAGC7			(RTL8712_RATECTRL_ + 0x67)
 #define CCK_TXAGC			(RTL8712_RATECTRL_ + 0x68)
 
-
 #endif	/*__RTL8712_RATECTRL_REGDEF_H__*/
 
diff --git a/drivers/staging/rtl8712/rtl8712_recv.h b/drivers/staging/rtl8712/rtl8712_recv.h
index 6954c5b..6953b43 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.h
+++ b/drivers/staging/rtl8712/rtl8712_recv.h
@@ -84,7 +84,6 @@ union recvstat {
 	unsigned int value[RXDESC_SIZE>>2];
 };
 
-
 struct recv_buf {
 	struct list_head list;
 	spinlock_t recvbuf_lock;
diff --git a/drivers/staging/rtl8712/rtl8712_security_bitdef.h b/drivers/staging/rtl8712/rtl8712_security_bitdef.h
index 1c26a7e..44275ef 100644
--- a/drivers/staging/rtl8712/rtl8712_security_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_security_bitdef.h
@@ -30,6 +30,5 @@
 #define	_RXUSEDK					BIT(1)
 #define	_TXUSEDK					BIT(0)
 
-
 #endif	/*__RTL8712_SECURITY_BITDEF_H__*/
 
diff --git a/drivers/staging/rtl8712/rtl8712_spec.h b/drivers/staging/rtl8712/rtl8712_spec.h
index c0bab4c..e9415ae 100644
--- a/drivers/staging/rtl8712/rtl8712_spec.h
+++ b/drivers/staging/rtl8712/rtl8712_spec.h
@@ -30,39 +30,6 @@
 
 #define RTL8712_IOBASE_FF	0x10300000 /*IOBASE_FIFO 0x1031000~0x103AFFFF*/
 
-
-/*IOREG Offset for 8712*/
-#define RTL8712_SYSCFG_		RTL8712_IOBASE_IOREG
-#define RTL8712_CMDCTRL_	(RTL8712_IOBASE_IOREG + 0x40)
-#define RTL8712_MACIDSETTING_	(RTL8712_IOBASE_IOREG + 0x50)
-#define RTL8712_TIMECTRL_	(RTL8712_IOBASE_IOREG + 0x80)
-#define RTL8712_FIFOCTRL_	(RTL8712_IOBASE_IOREG + 0xA0)
-#define RTL8712_RATECTRL_	(RTL8712_IOBASE_IOREG + 0x160)
-#define RTL8712_EDCASETTING_	(RTL8712_IOBASE_IOREG + 0x1D0)
-#define RTL8712_WMAC_		(RTL8712_IOBASE_IOREG + 0x200)
-#define RTL8712_SECURITY_	(RTL8712_IOBASE_IOREG + 0x240)
-#define RTL8712_POWERSAVE_	(RTL8712_IOBASE_IOREG + 0x260)
-#define RTL8712_GP_		(RTL8712_IOBASE_IOREG + 0x2E0)
-#define RTL8712_INTERRUPT_	(RTL8712_IOBASE_IOREG + 0x300)
-#define RTL8712_DEBUGCTRL_	(RTL8712_IOBASE_IOREG + 0x310)
-#define RTL8712_OFFLOAD_	(RTL8712_IOBASE_IOREG + 0x2D0)
-
-
-/*FIFO for 8712*/
-#define RTL8712_DMA_BCNQ	(RTL8712_IOBASE_FF + 0x10000)
-#define RTL8712_DMA_MGTQ	(RTL8712_IOBASE_FF + 0x20000)
-#define RTL8712_DMA_BMCQ	(RTL8712_IOBASE_FF + 0x30000)
-#define RTL8712_DMA_VOQ		(RTL8712_IOBASE_FF + 0x40000)
-#define RTL8712_DMA_VIQ		(RTL8712_IOBASE_FF + 0x50000)
-#define RTL8712_DMA_BEQ		(RTL8712_IOBASE_FF + 0x60000)
-#define RTL8712_DMA_BKQ		(RTL8712_IOBASE_FF + 0x70000)
-#define RTL8712_DMA_RX0FF	(RTL8712_IOBASE_FF + 0x80000)
-#define RTL8712_DMA_H2CCMD	(RTL8712_IOBASE_FF + 0x90000)
-#define RTL8712_DMA_C2HCMD	(RTL8712_IOBASE_FF + 0xA0000)
-
-
-/*------------------------------*/
-
 /*BIT 16 15*/
 #define	DID_SDIO_LOCAL			0	/* 0 0*/
 #define	DID_WLAN_IOREG			1	/* 0 1*/
diff --git a/drivers/staging/rtl8712/rtl8712_syscfg_bitdef.h b/drivers/staging/rtl8712/rtl8712_syscfg_bitdef.h
index a328ca9..d92df3f 100644
--- a/drivers/staging/rtl8712/rtl8712_syscfg_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_syscfg_bitdef.h
@@ -117,20 +117,17 @@
 						       * Block's Bandgap.
 						       */
 
-
 /*--------------------------------------------------------------------------*/
 /*       SPS1_CTRL bits				(Offset 0x18-1E, 56bits)*/
 /*--------------------------------------------------------------------------*/
 #define	SPS1_SWEN		BIT(1)	/* Enable vsps18 SW Macro Block.*/
 #define	SPS1_LDEN		BIT(0)	/* Enable VSPS12 LDO Macro block.*/
 
-
 /*----------------------------------------------------------------------------*/
 /*       LDOA15_CTRL bits		(Offset 0x20, 8bits)*/
 /*----------------------------------------------------------------------------*/
 #define	LDA15_EN		BIT(0)	/* Enable LDOA15 Macro Block*/
 
-
 /*----------------------------------------------------------------------------*/
 /*       8192S LDOV12D_CTRL bit		(Offset 0x21, 8bits)*/
 /*----------------------------------------------------------------------------*/
@@ -140,7 +137,6 @@
 /*CLK_PS_CTRL*/
 #define	_CLK_GATE_EN		BIT(0)
 
-
 /* EFUSE_CTRL*/
 #define EF_FLAG			BIT(31)		/* Access Flag, Write:1;
 						 *	        Read:0
diff --git a/drivers/staging/rtl8712/rtl8712_syscfg_regdef.h b/drivers/staging/rtl8712/rtl8712_syscfg_regdef.h
index e95eb58..da5efcd 100644
--- a/drivers/staging/rtl8712/rtl8712_syscfg_regdef.h
+++ b/drivers/staging/rtl8712/rtl8712_syscfg_regdef.h
@@ -14,7 +14,6 @@
 #ifndef __RTL8712_SYSCFG_REGDEF_H__
 #define __RTL8712_SYSCFG_REGDEF_H__
 
-
 #define SYS_ISO_CTRL		(RTL8712_SYSCFG_ + 0x0000)
 #define SYS_FUNC_EN		(RTL8712_SYSCFG_ + 0x0002)
 #define PMC_FSM			(RTL8712_SYSCFG_ + 0x0004)
@@ -39,6 +38,5 @@
 #define RCLK_MON		(RTL8712_SYSCFG_ + 0x003E)
 #define EFUSE_CLK_CTRL		(RTL8712_SYSCFG_ + 0x02F8)
 
-
 #endif /*__RTL8712_SYSCFG_REGDEF_H__*/
 
diff --git a/drivers/staging/rtl8712/rtl8712_timectrl_bitdef.h b/drivers/staging/rtl8712/rtl8712_timectrl_bitdef.h
index 1af5f1d..d7bc9dd 100644
--- a/drivers/staging/rtl8712/rtl8712_timectrl_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_timectrl_bitdef.h
@@ -45,6 +45,5 @@
 /*BCNERRTH*/
 /*MLT*/
 
-
 #endif /* __RTL8712_TIMECTRL_BITDEF_H__*/
 
diff --git a/drivers/staging/rtl8712/rtl8712_wmac_bitdef.h b/drivers/staging/rtl8712/rtl8712_wmac_bitdef.h
index d3b45c6..ea164e4 100644
--- a/drivers/staging/rtl8712/rtl8712_wmac_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_wmac_bitdef.h
@@ -45,6 +45,5 @@
 #define	_RPT_CNT_MSK			0x000FFFFF
 #define	_RPT_CNT_SHT			0
 
-
 #endif	/*__RTL8712_WMAC_BITDEF_H__*/
 
diff --git a/drivers/staging/rtl8712/rtl8712_wmac_regdef.h b/drivers/staging/rtl8712/rtl8712_wmac_regdef.h
index 662383f..dfe3e9f 100644
--- a/drivers/staging/rtl8712/rtl8712_wmac_regdef.h
+++ b/drivers/staging/rtl8712/rtl8712_wmac_regdef.h
@@ -32,6 +32,5 @@
 #define AMPDU_MIN_SPACE			(RTL8712_WMAC_ + 0x37)
 #define	TXOP_STALL_CTRL			(RTL8712_WMAC_ + 0x38)
 
-
 #endif /*__RTL8712_WMAC_REGDEF_H__*/
 
diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index 36ab372..173aa59 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.c
+++ b/drivers/staging/rtl8712/rtl8712_xmit.c
@@ -325,7 +325,6 @@ u8 r8712_append_mpdu_unit(struct xmit_buf *pxmitbuf,
 	return _SUCCESS;
 }
 
-
 u8 r8712_xmitframe_aggr_1st(struct xmit_buf *pxmitbuf,
 			    struct xmit_frame *pxmitframe)
 {
diff --git a/drivers/staging/rtl8712/rtl8712_xmit.h b/drivers/staging/rtl8712/rtl8712_xmit.h
index 5dc8d37..5b00fc3 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.h
+++ b/drivers/staging/rtl8712/rtl8712_xmit.h
@@ -36,10 +36,8 @@
 #define MAX_AMSDU_XMITBUF_SZ 8704
 #define MAX_TXAGG_XMITBUF_SZ 16384 /*16k*/
 
-
 #define tx_cmd tx_desc
 
-
 /*
  *defined for TX DESC Operation
  */
@@ -89,7 +87,6 @@ struct tx_desc {
 	__le32 txdw7;
 };
 
-
 union txdesc {
 	struct tx_desc txdesc;
 	unsigned int value[TXDESC_SIZE>>2];
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index 9cd644e..9f96727 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -316,7 +316,6 @@ enum _RT_CHANNEL_DOMAIN {
 	RT_CHANNEL_DOMAIN_MAX,
 };
 
-
 struct SetChannelPlan_param {
 	enum _RT_CHANNEL_DOMAIN ChannelPlan;
 };
@@ -337,7 +336,6 @@ struct getdatarate_rsp {
 	u8 datarates[NumRates];
 };
 
-
 /*
  *	Caller Mode: Any
  *	AP: AP can use the info for the contents of beacon frame
diff --git a/drivers/staging/rtl8712/rtl871x_debug.h b/drivers/staging/rtl8712/rtl871x_debug.h
index a427547..57f2a38 100644
--- a/drivers/staging/rtl8712/rtl871x_debug.h
+++ b/drivers/staging/rtl8712/rtl871x_debug.h
@@ -17,7 +17,6 @@
 #include "osdep_service.h"
 #include "drv_types.h"
 
-
 #define _drv_emerg_			1
 #define _drv_alert_			2
 #define _drv_crit_			3
@@ -28,7 +27,6 @@
 #define _drv_dump_			8
 #define	_drv_debug_			9
 
-
 #define _module_rtl871x_xmit_c_		BIT(0)
 #define _module_xmit_osdep_c_		BIT(1)
 #define _module_rtl871x_recv_c_		BIT(2)
diff --git a/drivers/staging/rtl8712/rtl871x_ioctl.h b/drivers/staging/rtl8712/rtl871x_ioctl.h
index 634e674..d6332a8 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl.h
+++ b/drivers/staging/rtl8712/rtl871x_ioctl.h
@@ -13,7 +13,6 @@
 	#define OID_802_11_PMKID                        0x0d010123
 #endif
 
-
 /* For DDK-defined OIDs*/
 #define OID_NDIS_SEG1	0x00010100
 #define OID_NDIS_SEG2	0x00010200
diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index 9f275e3..d800ae4 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -36,14 +36,12 @@
 #include <linux/if_arp.h>
 #include <linux/etherdevice.h>
 
-
 #define RTL_IOCTL_WPA_SUPPLICANT	(SIOCIWFIRSTPRIV + 0x1E)
 
 #define SCAN_ITEM_SIZE 768
 #define MAX_CUSTOM_LEN 64
 #define RATE_COUNT 4
 
-
 static const u32 rtl8180_rates[] = {1000000, 2000000, 5500000, 11000000,
 		       6000000, 9000000, 12000000, 18000000,
 		       24000000, 36000000, 48000000, 54000000};
diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_rtl.c b/drivers/staging/rtl8712/rtl871x_ioctl_rtl.c
index 2dc20da..a0d0fd1 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_rtl.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_rtl.c
@@ -367,7 +367,6 @@ uint oid_rt_get_scan_in_progress_hdl(struct oid_par_priv *poid_par_priv)
 	return RNDIS_STATUS_SUCCESS;
 }
 
-
 uint oid_rt_forced_data_rate_hdl(struct oid_par_priv *poid_par_priv)
 {
 	return RNDIS_STATUS_SUCCESS;
diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_set.c b/drivers/staging/rtl8712/rtl871x_ioctl_set.c
index 2a2e5d9..a5f1ec8 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_set.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_set.c
@@ -22,7 +22,6 @@
 #include "usb_osintf.h"
 #include "usb_ops.h"
 
-
 static u8 validate_ssid(struct ndis_802_11_ssid *ssid)
 {
 	u8 i;
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index d441bc9..b532de2 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -124,7 +124,6 @@ static void free_network_nolock(struct mlme_priv *pmlmepriv,
 	pmlmepriv->num_of_scanned--;
 }
 
-
 /* return the wlan_network with the matching addr
  * Shall be called under atomic context...
  * to avoid possible racing condition...
@@ -382,7 +381,6 @@ static void update_scanned_network(struct _adapter *adapter,
 		plist = plist->next;
 	}
 
-
 	/* If we didn't find a match, then get a new network slot to initialize
 	 * with this beacon's information
 	 */
@@ -647,7 +645,6 @@ void r8712_indicate_connect(struct _adapter *padapter)
 			  jiffies + msecs_to_jiffies(60000));
 }
 
-
 /*
  * r8712_ind_disconnect: the caller has to lock pmlmepriv->lock
  */
diff --git a/drivers/staging/rtl8712/rtl871x_mp_ioctl.h b/drivers/staging/rtl8712/rtl871x_mp_ioctl.h
index 44cd911..78d286b 100644
--- a/drivers/staging/rtl8712/rtl871x_mp_ioctl.h
+++ b/drivers/staging/rtl8712/rtl871x_mp_ioctl.h
@@ -277,7 +277,6 @@ extern struct oid_obj_priv oid_rtl_seg_87_12_00[32];
 
 #endif /* _RTL871X_MP_IOCTL_C_ */
 
-
 enum MP_MODE {
 	MP_START_MODE,
 	MP_STOP_MODE,
diff --git a/drivers/staging/rtl8712/rtl871x_mp_phy_regdef.h b/drivers/staging/rtl8712/rtl871x_mp_phy_regdef.h
index d479f73..f68f288 100644
--- a/drivers/staging/rtl8712/rtl871x_mp_phy_regdef.h
+++ b/drivers/staging/rtl8712/rtl871x_mp_phy_regdef.h
@@ -26,7 +26,6 @@
 #ifndef __RTL871X_MP_PHY_REGDEF_H
 #define __RTL871X_MP_PHY_REGDEF_H
 
-
 /*--------------------------Define Parameters-------------------------------*/
 
 /*============================================================
@@ -1008,7 +1007,6 @@
 #define	ANTENNA_C	0x4
 #define	ANTENNA_D	0x8
 
-
 /* accept all physical address */
 #define RCR_AAP		BIT(0)
 #define RCR_APM		BIT(1)		/* accept physical match */
@@ -1032,6 +1030,5 @@
 
 /*--------------------------Define Parameters-------------------------------*/
 
-
 #endif	/*__INC_HAL8192SPHYREG_H */
 
diff --git a/drivers/staging/rtl8712/rtl871x_pwrctrl.h b/drivers/staging/rtl8712/rtl871x_pwrctrl.h
index ba87bdc..df1db30 100644
--- a/drivers/staging/rtl8712/rtl871x_pwrctrl.h
+++ b/drivers/staging/rtl8712/rtl871x_pwrctrl.h
@@ -17,7 +17,6 @@
 #include "osdep_service.h"
 #include "drv_types.h"
 
-
 #define CMD_ALIVE	BIT(2)
 
 enum Power_Mgnt {
@@ -68,7 +67,6 @@ enum Power_Mgnt {
 #define		PS_IS_ACTIVE(x)		((x) & (PS_ST_ACTIVE))
 #define		CLR_PS_STATE(x)	((x) = ((x) & (0xF0)))
 
-
 struct reportpwrstate_parm {
 	unsigned char mode;
 	unsigned char state; /* the CPWM value */
diff --git a/drivers/staging/rtl8712/rtl871x_recv.c b/drivers/staging/rtl8712/rtl871x_recv.c
index 1511832..51f9e6a 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.c
+++ b/drivers/staging/rtl8712/rtl871x_recv.c
@@ -459,7 +459,6 @@ static sint validate_recv_mgnt_frame(struct _adapter *adapter,
 	return _FAIL;
 }
 
-
 static sint validate_recv_data_frame(struct _adapter *adapter,
 				     union recv_frame *precv_frame)
 {
diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/rtl8712/rtl871x_recv.h
index 808dc22..e1797b5 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.h
+++ b/drivers/staging/rtl8712/rtl871x_recv.h
@@ -31,7 +31,6 @@ struct	stainfo_rxcache	{
 #define		PHY_RSSI_SLID_WIN_MAX			100
 #define		PHY_LINKQUALITY_SLID_WIN_MAX		20
 
-
 struct smooth_rssi_data {
 	u32	elements[100];	/* array to store values */
 	u32	index;		/* index to current array to store */
diff --git a/drivers/staging/rtl8712/rtl871x_security.c b/drivers/staging/rtl8712/rtl871x_security.c
index 368038f..1c0e8e8 100644
--- a/drivers/staging/rtl8712/rtl871x_security.c
+++ b/drivers/staging/rtl8712/rtl871x_security.c
@@ -381,7 +381,6 @@ void seccalctkipmic(u8 *key, u8 *header, u8 *data, u32 data_len, u8 *mic_code,
 #define P1K_SIZE         10    /*  80-bit Phase1 key                */
 #define RC4_KEY_SIZE     16    /* 128-bit RC4KEY (104 bits unknown) */
 
-
 /* 2-unsigned char by 2-unsigned char subset of the full AES S-box table */
 static const unsigned short Sbox1[2][256] = {/* Sbox for hash (can be in ROM) */
 	{
diff --git a/drivers/staging/rtl8712/rtl871x_sta_mgt.c b/drivers/staging/rtl8712/rtl871x_sta_mgt.c
index 80dbc35..4c7da66 100644
--- a/drivers/staging/rtl8712/rtl871x_sta_mgt.c
+++ b/drivers/staging/rtl8712/rtl871x_sta_mgt.c
@@ -258,7 +258,6 @@ struct sta_info *r8712_get_bcmc_stainfo(struct _adapter *padapter)
 	return r8712_get_stainfo(pstapriv, bc_addr);
 }
 
-
 u8 r8712_access_ctrl(struct wlan_acl_pool *pacl_list, u8 *mac_addr)
 {
 	return true;
diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index fbe0eee..4a4480d 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -22,7 +22,6 @@
 #include "osdep_intf.h"
 #include "usb_ops.h"
 
-
 static const u8 P802_1H_OUI[P80211_OUI_LEN] = {0x00, 0x00, 0xf8};
 static const u8 RFC1042_OUI[P80211_OUI_LEN] = {0x00, 0x00, 0x00};
 static void init_hwxmits(struct hw_xmit *phwxmit, sint entry);
diff --git a/drivers/staging/rtl8712/sta_info.h b/drivers/staging/rtl8712/sta_info.h
index 45dbed1..da0fcdb 100644
--- a/drivers/staging/rtl8712/sta_info.h
+++ b/drivers/staging/rtl8712/sta_info.h
@@ -21,7 +21,6 @@
 #define NUM_STA 32
 #define NUM_ACL 64
 
-
 /* if mode ==0, then the sta is allowed once the addr is hit.
  * if mode ==1, then the sta is rejected once the addr is non-hit.
  */
diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
index 77346de..200d04b 100644
--- a/drivers/staging/rtl8712/wifi.h
+++ b/drivers/staging/rtl8712/wifi.h
@@ -278,8 +278,6 @@ static inline unsigned char get_tofr_ds(unsigned char *pframe)
 
 #define GetAddr4Ptr(pbuf)	((unsigned char *)((addr_t)(pbuf) + 24))
 
-
-
 static inline int IS_MCAST(unsigned char *da)
 {
 	if ((*da) & 0x01)
@@ -288,7 +286,6 @@ static inline int IS_MCAST(unsigned char *da)
 		return false;
 }
 
-
 static inline unsigned char *get_da(unsigned char *pframe)
 {
 	unsigned char	*da;
@@ -311,7 +308,6 @@ static inline unsigned char *get_da(unsigned char *pframe)
 	return da;
 }
 
-
 static inline unsigned char *get_sa(unsigned char *pframe)
 {
 	unsigned char	*sa;
@@ -357,8 +353,6 @@ static inline unsigned char *get_hdr_bssid(unsigned char *pframe)
 	return sa;
 }
 
-
-
 /*-----------------------------------------------------------------------------
  *		Below is for the security related definition
  *-----------------------------------------------------------------------------
@@ -403,7 +397,6 @@ static inline unsigned char *get_hdr_bssid(unsigned char *pframe)
 
 #define	_RESERVED47_		47
 
-
 /* ---------------------------------------------------------------------------
  *			Below is the fixed elements...
  * ---------------------------------------------------------------------------
@@ -447,7 +440,6 @@ static inline unsigned char *get_hdr_bssid(unsigned char *pframe)
 #define _WMM_IE_Length_				7  /* for WMM STA */
 #define _WMM_Para_Element_Length_		24
 
-
 /*-----------------------------------------------------------------------------
  *			Below is the definition for 802.11n
  *------------------------------------------------------------------------------
@@ -467,7 +459,6 @@ static inline unsigned char *get_hdr_bssid(unsigned char *pframe)
 #define GetOrderBit(pbuf)	(((*(__le16 *)(pbuf)) & \
 				le16_to_cpu(_ORDER_)) != 0)
 
-
 /**
  * struct ieee80211_bar - HT Block Ack Request
  *
@@ -487,7 +478,6 @@ struct ieee80211_bar {
 #define IEEE80211_BAR_CTRL_ACK_POLICY_NORMAL     0x0000
 #define IEEE80211_BAR_CTRL_CBMTID_COMPRESSED_BA  0x0004
 
-
 /*
  * struct ieee80211_ht_cap - HT capabilities
  *
@@ -563,7 +553,6 @@ struct ieee80211_ht_addt_info {
  */
 #define IEEE80211_MIN_AMPDU_BUF 0x8
 
-
 /* Spatial Multiplexing Power Save Modes */
 #define WLAN_HT_CAP_SM_PS_STATIC		0
 #define WLAN_HT_CAP_SM_PS_DYNAMIC	1
diff --git a/drivers/staging/rtl8712/xmit_linux.c b/drivers/staging/rtl8712/xmit_linux.c
index 8bcb077..4f921ab 100644
--- a/drivers/staging/rtl8712/xmit_linux.c
+++ b/drivers/staging/rtl8712/xmit_linux.c
@@ -62,7 +62,6 @@ sint r8712_endofpktfile(struct pkt_file *pfile)
 	return (pfile->pkt_len == 0);
 }
 
-
 void r8712_set_qos(struct pkt_file *ppktfile, struct pkt_attrib *pattrib)
 {
 	struct ethhdr etherhdr;
-- 
2.7.4


