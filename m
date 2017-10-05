X-GM-THRID: 6473412482924806144
X-Received: by 10.98.246.15 with SMTP id x15mr832694pfh.53.1507208814472;
        Thu, 05 Oct 2017 06:06:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.176.1 with SMTP id h1ls5062250pgf.12.gmail; Thu, 05 Oct
 2017 06:06:53 -0700 (PDT)
X-Received: by 10.99.149.66 with SMTP id t2mr1157448pgn.93.1507208813675;
        Thu, 05 Oct 2017 06:06:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507208813; cv=none;
        d=google.com; s=arc-20160816;
        b=wC8IZ++btr1Nu2R5INp2TfUBzBr49s2Y06YbrLn9EPS5bSEgMQaA1YFPt3DbQILFF4
         rpdeY2fEucLKim+HrLFIsx15GIfbSTs1oh9fnTNcTdV1iyMgiCrVw78eT/VjMDSWkuUM
         9MLUjCJRwvNo4wmjqaMHXAQWNpWzFYy+aBt1oe+MkUWGWH0+uOknZyJxuacrMgOPOru+
         eoTzWEU2Niz3h6VDLJFMj539UfV6ozqqTVav+WBmo/pW243a93+xJ6N1iwflMgUYnn+A
         zqjhqYWo5Xydr0GaIY+hefyVSfFp3eswXgLgATdzuU6Y8u5YxIWrLRw0DDcaLsFQqeZT
         +jLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=yq4h+EAvqPcPlI1CQn5wPVjfWx/lp+qRd9I4O600ZPE=;
        b=tOABGpUn4VIMa2mb6BbaUrjONI/Qe6621AzOw4Hv/O9GSgMsH3klLKwjQ7Zy3zUhSm
         POok70kzv5t9REu1/gVn8/3VuJteC51IY03BO7q6UCm1d/vHNi0HQ+u4GJe2Hn3To9/Z
         1tT7lng/hZzIN3/+sxkGpTMkb75fR6AZnqxFotwluqbunds/+eRUy4X/iRcKKYkdxE25
         9IzONANlGFGEO2B1ai1OhNNIX3qVDlFXG5LRhMyFCcjEaIqSQf+3ij5ySoGEKxvb5U+w
         6tbUFHRTMBUoXJeDAuiw4OOKgy5JWtmVTFnUp86nFOxruT8CUaLiKhAUOG5pMxPIvMWV
         D8ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ii2QQoJk;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id x124si1124373pfx.20.2017.10.05.06.06.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 06:06:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ii2QQoJk;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id a7so14596787pfj.5
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Oct 2017 06:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=yq4h+EAvqPcPlI1CQn5wPVjfWx/lp+qRd9I4O600ZPE=;
        b=ii2QQoJkr1RsQzLq3V5JJv1jGP0IDyCty3E303goL0utNbafyCehxEYOoxN9ACRidd
         XgxqJdgKhqvcbR0pA3ruTRs+NIyn5WZlsxoBXUhOCP1G9wkHgK93x/808tWW59IUQLAt
         N8nA/rbR2wp2i3HQmMKkLDA7NSbvluaR5jkJLII2ujYPjjVDJ2SKRCzKQ7msaXvwSXbx
         IgusH9TpCNPjVTIvAQGioeGGxhCBcA0W8CnKbWC3JCbR4juk0fLZeLLaKhgkWl+rxXFo
         vq+FfgTEj+NsqkPcq/8rB+qcI49ODj2l5hcrdGzliU5PnJwfszUs5tjfEaj1FMlfhjbW
         OOew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=yq4h+EAvqPcPlI1CQn5wPVjfWx/lp+qRd9I4O600ZPE=;
        b=fCFOfk2TJhFe+O1+s++zVtluZGCpPQwye/jm44qfjV3L/Jv+DG6agL8mD8eFT/7dw7
         yEwn+CjOJOrQGfNTzwozB90exQiu+mEqBLiVKPYgqi/47hHCbAUAsNB4dUWxUyuUk1uK
         5sMyDQ8OdbpgnLugMyWbsqEsoyTc1HG8GPbnHn12AD4zmTQcaq1T4QkwNqVqW8rghofr
         DPSx8/KO/7XjjGj/j83UcNDTdDcA94lO38L7X5nIV+usnQl8kyjLOAJbtwBKSl38FZXz
         zp4BosgaajyR1lJ1/Zs9o2t96pH4ISWGo4HbFfX4dDrbA8jKI/ddczieJL056SdnRN6g
         IFRg==
X-Gm-Message-State: AHPjjUjwNjxmGQIPhYtPLj5vThTUJjxWvyLFFFM8EwfPC9VSD/qCpZrt
	6Aa3kj7tqwjPGpGv2rcyc4A=
X-Google-Smtp-Source: AOwi7QB3MwGte+Yo+/bdLFgTcLHz2fvr66jE7wHX4KLRyG3QvaUZ5HqUZUWNZiV4bXJ/1S2X7lb3Tw==
X-Received: by 10.84.129.193 with SMTP id b59mr23499031plb.30.1507208813379;
        Thu, 05 Oct 2017 06:06:53 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.229])
        by smtp.gmail.com with ESMTPSA id u66sm31813114pfd.33.2017.10.05.06.06.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 05 Oct 2017 06:06:52 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 5/7] staging: rtl8188eu: add spaces around algebric and boolean operators
Date: Thu,  5 Oct 2017 18:36:25 +0530
Message-Id: <1507208787-18008-6-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507208787-18008-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507208787-18008-1-git-send-email-aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warnings about preferring spaces around
algebric and boolean operators.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8188eu/include/rtl8188e_spec.h | 36 +++++++++++------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/rtl8188e_spec.h b/drivers/staging/rtl8188eu/include/rtl8188e_spec.h
index 03e5382..71e2b81 100644
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


