X-GM-THRID: 6528466201738215424
X-Received: by 10.107.7.39 with SMTP id 39mr5262688ioh.64.1520055235581;
        Fri, 02 Mar 2018 21:33:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.82.9 with SMTP id g9ls2209871iob.22.gmail; Fri, 02 Mar
 2018 21:33:55 -0800 (PST)
X-Google-Smtp-Source: AG47ELts3Nz3xsvQLriRa0k4UuRyf58I7f3mXyqVhm3zXEE1U2g3KZNepvYZuKwfBfiDbZGI2BKj
X-Received: by 10.107.183.21 with SMTP id h21mr5616111iof.125.1520055235051;
        Fri, 02 Mar 2018 21:33:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520055235; cv=none;
        d=google.com; s=arc-20160816;
        b=rvvVM3bYYmvMkMpdXnLw/bHj944nyKd0O78LgtbBS8jdi3gRXZRv/FjXS4moT5CMew
         7HXJ5s6R853L8zK1DOFh2sOSXgVKT/J1EBgROZAXRND1zNYztdu1QQdU/jI5ij8FqoMQ
         7EVmucmODNpm2tEpWYtkmRUwkvstDU1lEbaEK4S7CzgOGSmgN8AmTREfwh5NHOadaAWo
         OA5eaeGijdEJ4hSAcaOvKhVh27UiQQsKirZFRDBxO8RakGesvjLiv8UDrgaCgV4oRqHV
         8vpOed4HIMRlWzJOGxo2DdrOiQ3bTMUITFXVTgWXVr1L3T/JiHdTzYM8PelG9jvHW+i1
         4lyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=NLtv5h8ex3RULbecGV8n+rPIgwIFJkvnElTPgS+ACHs=;
        b=S4Sczu+4NjMZN755q9I5yKSgG5O5anz0sH/H6YNeimSu3ISE35dzzQ1VPwBT7cYU5g
         QyHIPLmgMckYcilUR+oX/Oui+Ogoxs0WbUknTIrRmDBEauIfhE63M28R7k7Z1pyUyZdm
         LHDQ815rXAz6fv7NM8EDuntjR0cCvYBYxulSBur7jHy6jIkAIi+elDgvsKwvJ/FhC/ez
         YzxsrOM4uBmY01Gglju5B0KuqmijxmRP/YXwWfcMZ4IZ5D2kp8/5xFenkvLUmQJK/qHD
         iGvdsQVoOBJD/3Dph0y7d8NVCjJJNw7T3KsNHYOuqVkBfSBNeAJMBO+ni+8LZCL/ZizN
         6OgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gbne+A8x;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::232 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pl0-x232.google.com (mail-pl0-x232.google.com. [2607:f8b0:400e:c01::232])
        by gmr-mx.google.com with ESMTPS id g10si131567itd.1.2018.03.02.21.33.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 21:33:55 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::232 as permitted sender) client-ip=2607:f8b0:400e:c01::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gbne+A8x;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::232 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x232.google.com with SMTP id 93-v6so6895525plc.9
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Mar 2018 21:33:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=NLtv5h8ex3RULbecGV8n+rPIgwIFJkvnElTPgS+ACHs=;
        b=gbne+A8xEgie38WCBtpZIATK1ZwIATFUKK6s1KvT9TM2q6De3hruEUsjWdXXGzRYsu
         1BFgRiSN5TB3HGhxcvh05tJdbGenEsqVU2NgvyXHVVArV62tJuDZFcEjUyjxHNP2Q8Gu
         6Yd6OPlHZOa4v/bc50YH1iWLknkIUEOvD8exjii/ko9T20gUpZrqk9J6zHkiF+O1s632
         Q4dLK4d+aRCZ04o7Ob/X4bRhqvTszFM2m5yGa9ScmsTmVJ0WdfzGCh7MhyxmSzQ3zyj4
         qYkpWJVDhUI8/XAGAk9VgziT6r7zfoFRBohCPKxEsrJgkxgROhukrkr1JSwZ0+fGs2mR
         Prhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=NLtv5h8ex3RULbecGV8n+rPIgwIFJkvnElTPgS+ACHs=;
        b=Sz936exHRwVV5+7hjAPGwO6yWIFIEGP+7fszKT+903vURNEPplwVLQ/a495rYtK2jJ
         +GiCCOxbNB/vyWIPLSfnRUbFmJFamZG5+jxrEA26fR498+adQYHVEK6IucTDOvOacpq4
         ww3a0ZwkpsA0uPjT1pEwfJOJ4ZrdVwMlQIUR0Gy+XzI0bz8BQfne/yw6baWAHdoqiZjP
         sBP7KlNG89P4ZTk8vZeSHMYHbv5B5x44sG/SFgZ2nBHYov4DIa0Klp/txQxZLuMRPCDR
         4bS7M/cr0u0cGbzkCGwqwOlNDcqiBwl0BkpcdosdqQ/x2DuSlNpTZpYLiSIP6UrbD/lv
         EEBQ==
X-Gm-Message-State: APf1xPDOnfoBzTK8MRr4pxgZCRIzh7EETvB04rDxbjQctLXju0Qo22Gc
	ttNE4yfxRU7n8DpN1rPvUuARiw==
X-Received: by 2002:a17:902:6184:: with SMTP id u4-v6mr7267918plj.390.1520055234195;
        Fri, 02 Mar 2018 21:33:54 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567.iiit.ac.in ([14.139.82.6])
        by smtp.googlemail.com with ESMTPSA id m22sm16008604pfg.188.2018.03.02.21.33.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Mar 2018 21:33:53 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH v2 3/6] staging: rtl8712: Remove multiple blank line(s)
Date: Sat,  3 Mar 2018 11:02:33 +0530
Message-Id: <1520055156-8388-4-git-send-email-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1520055156-8388-1-git-send-email-arushisinghal19971997@gmail.com>
References: <1520055156-8388-1-git-send-email-arushisinghal19971997@gmail.com>

Remove extra blank line(s) to conform to the Linux
kernel coding style. Issue found using checkpatch.

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


