X-GM-THRID: 6466286074791460864
X-Received: by 10.202.229.129 with SMTP id c123mr15160293oih.114.1505549548500;
        Sat, 16 Sep 2017 01:12:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.145.68 with SMTP id t65ls8116843iod.50.gmail; Sat, 16 Sep
 2017 01:12:28 -0700 (PDT)
X-Received: by 10.107.138.222 with SMTP id c91mr4505979ioj.138.1505549548046;
        Sat, 16 Sep 2017 01:12:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505549548; cv=none;
        d=google.com; s=arc-20160816;
        b=TSsVLgfyQQheg5MThpxp0psgZxdU9lANXLIeXbn4AJaENK1zjZfEEwS0T+VxF27EFg
         cwyr7vRYegf9f3IY4nu4oi8Q6eIt3q/Z3NVl5b+e4sC662Zcz4hd2svXaILlTrvIRBmm
         /YAaNEOne5DIz6YxKEK3tDpQo70oXkqZ8mSSJY79mmtEajV3u7mDFNbBNrLT4bPhdiGg
         exXk6JCEhbORCzXtfxUxfsgzMd8gnPBw5qR9cxRR7aRmZDT1Qc4v/VGTyc+QXNv7BjFP
         G3VEnMRJIJ2tcaLpMxx5Be4rqXoX94jbZopk99/mz6jH7ODV6C8pHwB9UkgWuuyBxZex
         IfXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=rcHMHJpeS8iB6KdlWSgb0jWp5nCf+jrC4LX6+BhoKcg=;
        b=Kr4cCxaVNjDHRxUPOGo220/7XBivqtRkJp9Q6kNA8fSqJxR0iTvmi7DL5PZqGqw4Te
         aNQP5IU2SA8Nz/DNYddzopVlupCK1ImGdIpnSVoOuS2DhXhEr5dr+4bAX0YWm1p2LeyK
         CZLv79x/SxJdVa7pEomSqJr8tpxH+PKy5LGvzgDubsLG/X7sz8XLbo29KgMLTrUyHO1m
         hMchWoHDUSAM5k6kOFXxzorKJUk1u7Nl4oXQMPl+TRR9+Et/uPyDUoui45UWxf17XYIL
         n0+GvR8vP1rEYCff9/MN0mqT2n2346liWWgTTgbs9vJHEFmza/Slt/003hjDdR8ZnX5X
         IdMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FPSRtKnD;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id d207si248134pfd.16.2017.09.16.01.12.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 01:12:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FPSRtKnD;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id f84so2269158pfj.3
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 01:12:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=rcHMHJpeS8iB6KdlWSgb0jWp5nCf+jrC4LX6+BhoKcg=;
        b=FPSRtKnDUa2yN1rcuBCZtM7a6g068QunHimcagRNHbPmDNfP8wMUM0OBo2A8c1uGEZ
         rIz3mhRuTGIdjJzKVeo6xS4iYuoxzjql4dIyKJGKFA3hpDDCgf1FJ6WAvTYbqxX4v+be
         CAqCGpdUVtc0KMruLqWYtPAk2a4A8k7a/A241WPCwPueeS+RCFd7laSRbxcoxGftXfkB
         JFn8gc7qAMmqwDmrcQM2b5DWG7S8kZV8oZ6znbajmqLB4Vei/H8bNIjeudAO5SGAZegR
         w28KoGm5qmsCj8eDX4zvdT/bQ0Nx3lK+kl8dfyPUfb71ImuN1ErIctLVqwonxCc7cLPc
         5Pgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=rcHMHJpeS8iB6KdlWSgb0jWp5nCf+jrC4LX6+BhoKcg=;
        b=MsMxkouSYH3slfsa3hHuxh2ooPRobR8KxFyvjH0VBQoj3vLY6BbzUm/OxgPQgKunAp
         Rph6FiALR+H7ZLV6TmYBuv3tSiVjbvdNAjGgpTEtbzTRhJzSMG6eIOHGaddiIF8xYlAS
         vfqlJ+D82Vm/tbQnPMeJEeIY/kZs063/LvwbuRwJSFvX88utI02wKrOgZyKmb0OAr0sS
         G+bavCbvJyy7oJ8r1Ug7HxvlXmEtlv0DHms8erwqyZYryk8olXBakpGleGY/ktDm/HKq
         BZeGeNENDGVhPZhCuWFUySQ2nbuBx82e5pYpdBs48jO15atFxQUppTxi6jppUp8tq59H
         tL9w==
X-Gm-Message-State: AHPjjUhCrAATwksv8rp6yG223lX5Sv4yskLiLlZh1v+IeZz0eSmsDOrX
	WdxRQrWYbGRWeA==
X-Google-Smtp-Source: ADKCNb5MRtdSTy3AH31QP3K6gUMMAJKBPhhUM8GJRuaiQecKcqVyAuKrIh9iAz4QxwFBHjgNAek0iQ==
X-Received: by 10.84.217.138 with SMTP id p10mr30320702pli.400.1505549547743;
        Sat, 16 Sep 2017 01:12:27 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id n10sm5747675pfh.121.2017.09.16.01.12.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 01:12:27 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] staging: rtl8188eu: add spaces around algebric and boolean operators
Date: Sat, 16 Sep 2017 13:42:22 +0530
Message-Id: <1505549542-20166-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch fixes checkpatch.pl warnings about preferring spaces around
algebric and boolean operators.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8188eu/include/rtl8188e_spec.h | 36 +++++++++++------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/rtl8188e_spec.h b/drivers/staging/rtl8188eu/include/rtl8188e_spec.h
index 262e3f2..a09a4db 100644
--- a/drivers/staging/rtl8188eu/include/rtl8188e_spec.h
+++ b/drivers/staging/rtl8188eu/include/rtl8188e_spec.h
@@ -123,9 +123,9 @@
 #define REG_FWISR			0x0134
 #define REG_PKTBUF_DBG_CTRL		0x0140
 #define REG_PKTBUF_DBG_ADDR		(REG_PKTBUF_DBG_CTRL)
-#define REG_RXPKTBUF_DBG		(REG_PKTBUF_DBG_CTRL+2)
-#define REG_TXPKTBUF_DBG		(REG_PKTBUF_DBG_CTRL+3)
-#define REG_RXPKTBUF_CTRL		(REG_PKTBUF_DBG_CTRL+2)
+#define REG_RXPKTBUF_DBG		(REG_PKTBUF_DBG_CTRL + 2)
+#define REG_TXPKTBUF_DBG		(REG_PKTBUF_DBG_CTRL + 3)
+#define REG_RXPKTBUF_CTRL		(REG_PKTBUF_DBG_CTRL + 2)
 #define REG_PKTBUF_DBG_DATA_L		0x0144
 #define REG_PKTBUF_DBG_DATA_H		0x0148
 
@@ -461,12 +461,12 @@
 /*  GPIO pins input value */
 #define	GPIO_IN				REG_GPIO_PIN_CTRL
 /*  GPIO pins output value */
-#define	GPIO_OUT			(REG_GPIO_PIN_CTRL+1)
+#define	GPIO_OUT			(REG_GPIO_PIN_CTRL + 1)
 /*  GPIO pins output enable when a bit is set to "1"; otherwise,
  *  input is configured.
  */
-#define	GPIO_IO_SEL			(REG_GPIO_PIN_CTRL+2)
-#define	GPIO_MOD			(REG_GPIO_PIN_CTRL+3)
+#define	GPIO_IO_SEL			(REG_GPIO_PIN_CTRL + 2)
+#define	GPIO_MOD			(REG_GPIO_PIN_CTRL + 3)
 
 /* 8723/8188E Host System Interrupt Mask Register (offset 0x58, 32 byte) */
 #define	HSIMR_GPIO12_0_INT_EN		BIT(0)
@@ -809,7 +809,7 @@ So the following defines for 92C is not entire!!!!!!
 /* 2 EFUSE_TEST (For RTL8723 partially) */
 #define EF_TRPT				BIT(7)
 /*  00: Wifi Efuse, 01: BT Efuse0, 10: BT Efuse1, 11: BT Efuse2 */
-#define EF_CELL_SEL			(BIT(8)|BIT(9))
+#define EF_CELL_SEL			(BIT(8) | BIT(9))
 #define LDOE25_EN			BIT(31)
 #define EFUSE_SEL(x)			(((x) & 0x3) << 8)
 #define EFUSE_SEL_MASK			0x300
@@ -846,7 +846,7 @@ So the following defines for 92C is not entire!!!!!!
 #define BD_MAC2				BIT(9)
 #define BD_MAC1				BIT(10)
 #define IC_MACPHY_MODE			BIT(11)
-#define CHIP_VER			(BIT(12)|BIT(13)|BIT(14)|BIT(15))
+#define CHIP_VER			(BIT(12) | BIT(13) | BIT(14) | BIT(15))
 #define BT_FUNC				BIT(16)
 #define VENDOR_ID			BIT(19)
 #define PAD_HWPD_IDN			BIT(22)
@@ -860,9 +860,9 @@ So the following defines for 92C is not entire!!!!!!
 #define CHIP_VER_RTL_SHIFT		12
 
 /* 2REG_GPIO_OUTSTS (For RTL8723 only) */
-#define	EFS_HCI_SEL			(BIT(0)|BIT(1))
-#define	PAD_HCI_SEL			(BIT(2)|BIT(3))
-#define	HCI_SEL				(BIT(4)|BIT(5))
+#define	EFS_HCI_SEL			(BIT(0) | BIT(1))
+#define	PAD_HCI_SEL			(BIT(2) | BIT(3))
+#define	HCI_SEL				(BIT(4) | BIT(5))
 #define	PKG_SEL_HCI			BIT(6)
 #define	FEN_GPS				BIT(7)
 #define	FEN_BT				BIT(8)
@@ -879,7 +879,7 @@ So the following defines for 92C is not entire!!!!!!
 #define	UPHY_SUSB			BIT(21)
 #define	PCI_SUSEN			BIT(22)
 #define	USB_SUSEN			BIT(23)
-#define	RF_RL_ID			(BIT(31)|BIT(30)|BIT(29)|BIT(28))
+#define	RF_RL_ID			(BIT(31) | BIT(30) | BIT(29) | BIT(28))
 
 /* 2SYS_CFG */
 #define RTL_ID				BIT(23)	/*  TestChip ID, 1:Test(RLE); 0:MP(RL) */
@@ -942,12 +942,12 @@ So the following defines for 92C is not entire!!!!!!
 #define HQSEL_HIQ			BIT(5)
 
 /*  For normal driver, 0x10C */
-#define _TXDMA_HIQ_MAP(x)		(((x)&0x3) << 14)
-#define _TXDMA_MGQ_MAP(x)		(((x)&0x3) << 12)
-#define _TXDMA_BKQ_MAP(x)		(((x)&0x3) << 10)
-#define _TXDMA_BEQ_MAP(x)		(((x)&0x3) << 8)
-#define _TXDMA_VIQ_MAP(x)		(((x)&0x3) << 6)
-#define _TXDMA_VOQ_MAP(x)		(((x)&0x3) << 4)
+#define _TXDMA_HIQ_MAP(x)		(((x) & 0x3) << 14)
+#define _TXDMA_MGQ_MAP(x)		(((x) & 0x3) << 12)
+#define _TXDMA_BKQ_MAP(x)		(((x) & 0x3) << 10)
+#define _TXDMA_BEQ_MAP(x)		(((x) & 0x3) << 8)
+#define _TXDMA_VIQ_MAP(x)		(((x) & 0x3) << 6)
+#define _TXDMA_VOQ_MAP(x)		(((x) & 0x3) << 4)
 
 #define QUEUE_LOW			1
 #define QUEUE_NORMAL			2
-- 
2.7.4


