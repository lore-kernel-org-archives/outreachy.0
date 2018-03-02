X-GM-THRID: 6528466201738215424
X-Received: by 10.202.213.6 with SMTP id m6mr3178943oig.75.1520026990330;
        Fri, 02 Mar 2018 13:43:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.231.17 with SMTP id e17ls1319481oih.2.gmail; Fri, 02 Mar
 2018 13:43:09 -0800 (PST)
X-Google-Smtp-Source: AG47ELt+LSPLF5eQppRMGLCYEw8eONDQi0Z5yDI6foqECqDD5IX62GM6VFfCZQZAvw41Eixx5utx
X-Received: by 10.202.206.198 with SMTP id e189mr3071628oig.79.1520026989755;
        Fri, 02 Mar 2018 13:43:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520026989; cv=none;
        d=google.com; s=arc-20160816;
        b=iu4VVtOPyNTEKhnfJaJl1ium2jJ0d1Uzg3JmkwQEAOqzKfJPV5frAB0cV2qf0gxNMD
         Hqmym/AocrAJ0M1uibmjifyIBvb35u6oN4mihWD42hLjhv+4s2nZ+YUZKQgK5zosv91P
         ozSD0eZLxidNGYnCAdpKv86dlvdaIzlnyEsB9aMAN57/F/d830r4QkwZFD3XhbgHKwxJ
         +j4S7fhY2x2rrt313eEQrgQpF68zY3JAojA5NMwpb2JtlXMOf23yOQZAHN+8veBSbZ7B
         xupN4YpcP05So4Z1TubZf38sKucbZEDpV2MLKzEl8R52Q6z0GrVFeHk59HFaKVPGhp+o
         FHdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=BgeHgiq7n+Bba4nM8I01EsX+OxgexDwJSVjsS65gSmk=;
        b=uKDVHzdqw5FNq/u17LqcUNK4flWD8SWfJSwvuASdRAGgNjNDA3TLttxuXfMIqZsxQR
         jnHEpPgi76IiNOVNkv+n2+1Fe/fqYiAhaKILNUHvS2bFenzbbfNRJ0S/Zyf9NGjWBy9L
         IPtMc0Rhp1Fs7SX+eA3e2vzNIm5wxvRCGidH0bEhio4Av5ZxGUaYfCQrI9V3ipVikT40
         DJ5ITUFtLjhx1AfSlpTDbq9EeoVlethHlaPMu0FGsgJBG0Qu/uJ/dn1P4MsyK2T2WOCr
         My8VFmW7eB/y+ZY4pLtmhXujCdKOSWeEi0LD4V3nNIqLlGdRot85YciqS2uCr6YxBU8h
         WDLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uIivrW4Q;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::233 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x233.google.com (mail-pg0-x233.google.com. [2607:f8b0:400e:c05::233])
        by gmr-mx.google.com with ESMTPS id e10si500832oii.2.2018.03.02.13.43.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 13:43:09 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::233 as permitted sender) client-ip=2607:f8b0:400e:c05::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uIivrW4Q;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::233 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x233.google.com with SMTP id y8so4290033pgr.9
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Mar 2018 13:43:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=BgeHgiq7n+Bba4nM8I01EsX+OxgexDwJSVjsS65gSmk=;
        b=uIivrW4QepLaPicFM2p/nl+341vEZQmHP+uOVLyd7Ni22XW2W5ivtwDE7LFk+WuM6T
         aMTOSXFoC2NOuSJwAK95u0rOT0Waro7xRFDUy9KRLgEYy9SdLwVWKxtsgFlDd+s5YJ5j
         LdHhkCgw8GzT3qtbVMAJG/syd/JogwTGZW22wWTPCtsq2YNOymMkOWu5ACNhJRw5++I+
         4GdiIamDDd/SxQXXva3AHRszlI44jhlaO2Uvczir5oRoXxc6sJvVw7Q8otwGy7pyA20n
         v3lyjIkdSUVeBvVpeFShHRol2qgdZGiSuChT/nngZI8wSRgrlhRXt1nCBNR4YE2kmpoy
         MnKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=BgeHgiq7n+Bba4nM8I01EsX+OxgexDwJSVjsS65gSmk=;
        b=iyfu/R0hAfDp0CApCsANfzkziVOwHd2eFXQoBO56HBEMa0sFojpCoRnWuOKOhQ35Ko
         picZ0hlHI9uwoTL8bvOVsRWde902Z7xfx0qmYPCRYbcSscelWCgc1O2XKyRGE2SoJeEh
         eoBcP69+pKwM40QDt7KCTxbIhkzEpMfJF3NVJTfW5++Oei4827wSf+lSu74IOgZ49bBp
         7nW3y9+ZZoHHQLTbORBUuwI8FqyRt65Dxntodeh3etIFCqjNql2omMZh4Giyl8CL5Yma
         +35klc0gl+czW6FAphp1Nd30W09csfzRaZWbvyFD9xzVVxb9U0leYlUYt027Jg+io1b/
         hnXw==
X-Gm-Message-State: APf1xPAN9QV+xurTMKGFdkh96QHsfIvgYA4g50OpSGefga/UN+HW5qbb
	cmPEi61Wt2v7M1d6J1ktEgY=
X-Received: by 10.101.101.217 with SMTP id y25mr5553740pgv.165.1520026989343;
        Fri, 02 Mar 2018 13:43:09 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567.iiit.ac.in ([14.139.82.6])
        by smtp.googlemail.com with ESMTPSA id a28sm13774531pfe.70.2018.03.02.13.43.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Mar 2018 13:43:08 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: outreachy-kernel@googlegroups.com,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal@gmail.com>,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 1/4] staging: rtl8712: Remove multiple blank line(s)
Date: Sat,  3 Mar 2018 03:12:18 +0530
Message-Id: <1520026941-16548-2-git-send-email-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1520026941-16548-1-git-send-email-arushisinghal19971997@gmail.com>
References: <1520026941-16548-1-git-send-email-arushisinghal19971997@gmail.com>

From: Arushi Singhal <arushisinghal@gmail.com>

Remove extra blank line(s) that were causing checkpatch issues.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/rtl8712/os_intfs.c                 | 1 -
 drivers/staging/rtl8712/rtl8712_bitdef.h           | 1 -
 drivers/staging/rtl8712/rtl8712_cmdctrl_regdef.h   | 2 --
 drivers/staging/rtl8712/rtl8712_debugctrl_bitdef.h | 1 -
 drivers/staging/rtl8712/rtl8712_debugctrl_regdef.h | 2 --
 drivers/staging/rtl8712/rtl8712_fifoctrl_bitdef.h  | 1 -
 drivers/staging/rtl8712/rtl8712_fifoctrl_regdef.h  | 2 --
 drivers/staging/rtl8712/rtl8712_gp_regdef.h        | 1 -
 drivers/staging/rtl8712/rtl8712_interrupt_bitdef.h | 1 -
 9 files changed, 12 deletions(-)

diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index d6d27da..ff4e451 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -347,7 +347,6 @@ u8 r8712_free_drv_sw(struct _adapter *padapter)
 	return _SUCCESS;
 }
 
-
 static void enable_video_mode(struct _adapter *padapter, int cbw40_value)
 {
 	/*   bit 8:
diff --git a/drivers/staging/rtl8712/rtl8712_bitdef.h b/drivers/staging/rtl8712/rtl8712_bitdef.h
index bff57a8..dee35fe 100644
--- a/drivers/staging/rtl8712/rtl8712_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_bitdef.h
@@ -18,7 +18,6 @@
  *
  ******************************************************************************/
 
-
 #ifndef __RTL8712_BITDEF_H__
 #define __RTL8712_BITDEF_H__
 
diff --git a/drivers/staging/rtl8712/rtl8712_cmdctrl_regdef.h b/drivers/staging/rtl8712/rtl8712_cmdctrl_regdef.h
index 9374f1c..8df42a7 100644
--- a/drivers/staging/rtl8712/rtl8712_cmdctrl_regdef.h
+++ b/drivers/staging/rtl8712/rtl8712_cmdctrl_regdef.h
@@ -20,7 +20,6 @@
 #ifndef __RTL8712_CMDCTRL_REGDEF_H__
 #define __RTL8712_CMDCTRL_REGDEF_H__
 
-
 #define CR			(RTL8712_CMDCTRL_ + 0x0000)
 #define TXPAUSE			(RTL8712_CMDCTRL_ + 0x0002)
 #define TCR			(RTL8712_CMDCTRL_ + 0x0004)
@@ -29,6 +28,5 @@
 #define SYSF_CFG		(RTL8712_CMDCTRL_ + 0x000D)
 #define MBIDCTRL		(RTL8712_CMDCTRL_ + 0x000E)
 
-
 #endif /* __RTL8712_CMDCTRL_REGDEF_H__ */
 
diff --git a/drivers/staging/rtl8712/rtl8712_debugctrl_bitdef.h b/drivers/staging/rtl8712/rtl8712_debugctrl_bitdef.h
index 8bd4837..4b34367 100644
--- a/drivers/staging/rtl8712/rtl8712_debugctrl_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_debugctrl_bitdef.h
@@ -51,5 +51,4 @@
 /*FDLOCKFLAG1*/
 #define	_LOCKFLAG1_MSK		0x03
 
-
 #endif /* __RTL8712_DEBUGCTRL_BITDEF_H__ */
diff --git a/drivers/staging/rtl8712/rtl8712_debugctrl_regdef.h b/drivers/staging/rtl8712/rtl8712_debugctrl_regdef.h
index 43630bb..d7c964d 100644
--- a/drivers/staging/rtl8712/rtl8712_debugctrl_regdef.h
+++ b/drivers/staging/rtl8712/rtl8712_debugctrl_regdef.h
@@ -41,7 +41,5 @@
 #define TRXPKTBUF_DBG_CTRL	(RTL8712_DEBUGCTRL_ + 0x38)
 #define DPLL_MON		(RTL8712_DEBUGCTRL_ + 0x3A)
 
-
-
 #endif /* __RTL8712_DEBUGCTRL_REGDEF_H__ */
 
diff --git a/drivers/staging/rtl8712/rtl8712_fifoctrl_bitdef.h b/drivers/staging/rtl8712/rtl8712_fifoctrl_bitdef.h
index c564dc8..bd82404 100644
--- a/drivers/staging/rtl8712/rtl8712_fifoctrl_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_fifoctrl_bitdef.h
@@ -140,6 +140,5 @@
 /*TXFF_PG_NUM*/
 #define	_TXFF_PG_NUM_MSK	0x0FFF
 
-
 #endif	/*	__RTL8712_FIFOCTRL_BITDEF_H__ */
 
diff --git a/drivers/staging/rtl8712/rtl8712_fifoctrl_regdef.h b/drivers/staging/rtl8712/rtl8712_fifoctrl_regdef.h
index 29b89c4..6d52738 100644
--- a/drivers/staging/rtl8712/rtl8712_fifoctrl_regdef.h
+++ b/drivers/staging/rtl8712/rtl8712_fifoctrl_regdef.h
@@ -71,6 +71,4 @@
 #define TXQ_PGADD		(RTL8712_FIFOCTRL_ + 0xB3)
 #define TXFF_PG_NUM		(RTL8712_FIFOCTRL_ + 0xB4)
 
-
-
 #endif	/* __RTL8712_FIFOCTRL_REGDEF_H__ */
diff --git a/drivers/staging/rtl8712/rtl8712_gp_regdef.h b/drivers/staging/rtl8712/rtl8712_gp_regdef.h
index 8fc68f6..a037936 100644
--- a/drivers/staging/rtl8712/rtl8712_gp_regdef.h
+++ b/drivers/staging/rtl8712/rtl8712_gp_regdef.h
@@ -37,6 +37,5 @@
 #define PHY_REG_RPT		(RTL8712_GP_ + 0x13)
 #define PHY_REG_DATA		(RTL8712_GP_ + 0x14)
 
-
 #endif	/*__RTL8712_GP_REGDEF_H__ */
 
diff --git a/drivers/staging/rtl8712/rtl8712_interrupt_bitdef.h b/drivers/staging/rtl8712/rtl8712_interrupt_bitdef.h
index 49598c3..2a561d2 100644
--- a/drivers/staging/rtl8712/rtl8712_interrupt_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_interrupt_bitdef.h
@@ -53,6 +53,5 @@
 #define	_VODOK					BIT(1)
 #define	_RXOK					BIT(0)
 
-
 #endif	/*__RTL8712_INTERRUPT_BITDEF_H__*/
 
-- 
2.7.4


