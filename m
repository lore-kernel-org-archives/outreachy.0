X-GM-THRID: 6950332332596264960
X-Received: by 2002:a05:6512:3e20:: with SMTP id i32mr20183468lfv.257.1618250353364;
        Mon, 12 Apr 2021 10:59:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:48c6:: with SMTP id v189ls205971lfa.0.gmail; Mon, 12 Apr
 2021 10:59:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzyZn5TIMuuJZtRCDQfQ79PrJW9CesPNHQw3082mJipjpTSzw04U64yQDrNgkHlC7gagqFu
X-Received: by 2002:a19:7d89:: with SMTP id y131mr8834233lfc.394.1618250351477;
        Mon, 12 Apr 2021 10:59:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618250351; cv=none;
        d=google.com; s=arc-20160816;
        b=WuBUWx3/xSEkCn7YMhCJELqW690Pzm9VAzPvjAfyExu1Vh+bf1NZnCxoWpkXLsnAnG
         B5sEEoYb2wq8Y0nj4RmPAZyDMJTcm+gfndXwyUkn2VZ1f+whqOhAIHs6u2+SrEB2Yf7X
         mJ2aMdR6IzljMhFgn4kxFukuqi89mLl25efxlOUgT1R/fp2JhQVtJy/d6+Mcx85P07ri
         hoCA5+Ikq71DeKUtN9/sADLjFtxDmga5KXPWdvEnmqHpV2mE1WR2/Rr6D3/8WhTGB36V
         x/0K1VgUctPQZAcAPoDmKGU7Yv3fOLIlg9JuKCuqFQTZPu9OXb+aWbEtC22m6TIYcdW7
         O+gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vpHzwr+heS9t2NcYSyICKCt14obVPA73oKjnrQ9jx7A=;
        b=RjX6Qi6lvsagojzYMEEEyDHlpDI8rdlupVNEsWkm8m6JTafuHW83sKxSJDmmRcmxFK
         DQx0z5YhcmTplCKoqDd1k9uvQWVouEf4tEzm/58gvFqmumKWkICcovHPni59P6rBCM+F
         xf6RzihweI/vAUD5lgwiOVaHgLe9DLAxyQaz59AFYp9Y/divuHqF/zhKh3z6rKazOQoM
         ARjQRoKTVhucsmSPOenV6AcdNdldWNIMs5UkVai5Do/Fy26oJKLuYy74St6iAj8VGoWr
         qnM5wYxVv9gqyQbfRQPAditIBDDm2qpRYkia2U9TI8gA4cr9ENqWBy3WF8IuTeaWef/K
         CYjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tk6amiVL;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com. [2a00:1450:4864:20::529])
        by gmr-mx.google.com with ESMTPS id n13si819384lfi.5.2021.04.12.10.59.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 10:59:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) client-ip=2a00:1450:4864:20::529;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tk6amiVL;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x529.google.com with SMTP id g17so15418754edm.6
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 10:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vpHzwr+heS9t2NcYSyICKCt14obVPA73oKjnrQ9jx7A=;
        b=tk6amiVLI1YZwnjzPKMpyDPVslNhfiTBnYoS2Sv4JgDekur2tBaZ6/86m0rXlUzQUn
         45lxW1LWM8dmgXj1RAdiWb+6jSfOocjpqPWvrLdnPg0gY+XvgnAjEN3SjWbkPr3EFp2a
         BKvQYLdHvDvn6pd4ThMT1HjT5XD6uyOl7Zt/M/dtnOjPeGLJWGshdAZZ34GShG1iLkid
         BmfvmBBl6zlZv9zd/HGdK0ZEXEDG5up/g/8UWH3FbS+SIfRfA57epZLjv271h4G7UX3l
         nmpSAGRUD8zzTWlv3q1pz4uZVKc4fJkedSkVPupzUkpxixf6VwPhYHgbYhXMCLDnyKoh
         WQXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vpHzwr+heS9t2NcYSyICKCt14obVPA73oKjnrQ9jx7A=;
        b=Md+jMQkwhuJ5z2j8zYHRgjen+Z33lYHzfBQGCNwpI0WLhfb1PC3MpA0K1bPDtREvrT
         1h4RGOC6vYK0qkRq1bPYTUk8z8oBWcJqyUPibjwYmTYJaBlGf5FPQYvb12gZjq7SUTwP
         1qLpN/prSC/UHY7UQAGITyTYbOAhgtCGJgFzfYGzwoT5eoWgQ4kCI648eSC7G9A1QejU
         MvfRXEBhX2OzRcchSVx/Nh0Mx9xMNjXGzTh5EITZStrnURnL97vXp8tyJIKajsyq1uXE
         d+EECKsFN3gWwyyFKswlkgyzfBbEIfoCjpxGjJbVZWQM/5U28x5i/YLj+KaBW1r4yuLp
         vFWQ==
X-Gm-Message-State: AOAM5318rXm8JvgnvxRNYd6nfeJKxjwIqMHUicVZhEvuFezLhPV16ACp
	goAJSVnTuLbO71ls4BAZme0xWYhbahFqge5L
X-Received: by 2002:a05:6402:95b:: with SMTP id h27mr30593847edz.93.1618250350767;
        Mon, 12 Apr 2021 10:59:10 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id gz20sm6300534ejc.25.2021.04.12.10.59.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 10:59:10 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH 1/2] staging: rtl8723bs: hal: Remove spaces before tabs
Date: Mon, 12 Apr 2021 19:59:02 +0200
Message-Id: <20210412175903.17819-2-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210412175903.17819-1-fmdefrancesco@gmail.com>
References: <20210412175903.17819-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removed spaces before tabs. Issue detected by checkpatch.pl.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 36 ++++++++++-----------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/Hal8723BReg.h b/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
index 616d20106392..1ff2043fb2e2 100644
--- a/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
+++ b/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
@@ -27,7 +27,7 @@
 
 /*  */
 /*  */
-/* 	0x0000h ~ 0x00FFh	System Configuration */
+/*	0x0000h ~ 0x00FFh	System Configuration */
 /*  */
 /*  */
 #define REG_SYS_ISO_CTRL_8723B			0x0000	/*  2 Byte */
@@ -84,7 +84,7 @@
 
 /*  */
 /*  */
-/* 	0x0100h ~ 0x01FFh	MACTOP General Configuration */
+/*	0x0100h ~ 0x01FFh	MACTOP General Configuration */
 /*  */
 /*  */
 #define REG_CR_8723B						0x0100
@@ -131,7 +131,7 @@
 
 /*  */
 /*  */
-/* 	0x0200h ~ 0x027Fh	TXDMA Configuration */
+/*	0x0200h ~ 0x027Fh	TXDMA Configuration */
 /*  */
 /*  */
 #define REG_RQPN_8723B					0x0200
@@ -145,7 +145,7 @@
 
 /*  */
 /*  */
-/* 	0x0280h ~ 0x02FFh	RXDMA Configuration */
+/*	0x0280h ~ 0x02FFh	RXDMA Configuration */
 /*  */
 /*  */
 #define REG_RXDMA_AGG_PG_TH_8723B		0x0280
@@ -161,7 +161,7 @@
 
 /*  */
 /*  */
-/* 	0x0300h ~ 0x03FFh	PCIe */
+/*	0x0300h ~ 0x03FFh	PCIe */
 /*  */
 /*  */
 #define	REG_PCIE_CTRL_REG_8723B		0x0300
@@ -189,7 +189,7 @@
 /*  spec version 11 */
 /*  */
 /*  */
-/* 	0x0400h ~ 0x047Fh	Protocol Configuration */
+/*	0x0400h ~ 0x047Fh	Protocol Configuration */
 /*  */
 /*  */
 #define REG_VOQ_INFORMATION_8723B		0x0400
@@ -243,7 +243,7 @@
 
 /*  */
 /*  */
-/* 	0x0500h ~ 0x05FFh	EDCA Configuration */
+/*	0x0500h ~ 0x05FFh	EDCA Configuration */
 /*  */
 /*  */
 #define REG_EDCA_VO_PARAM_8723B		0x0500
@@ -263,15 +263,15 @@
 #define REG_RD_CTRL_8723B				0x0524
 /*  */
 /*  Format for offset 540h-542h: */
-/* 	[3:0]:   TBTT prohibit setup in unit of 32us. The time for HW getting beacon content before TBTT. */
-/* 	[7:4]:   Reserved. */
-/* 	[19:8]:  TBTT prohibit hold in unit of 32us. The time for HW holding to send the beacon packet. */
-/* 	[23:20]: Reserved */
+/*	[3:0]:   TBTT prohibit setup in unit of 32us. The time for HW getting beacon content before TBTT. */
+/*	[7:4]:   Reserved. */
+/*	[19:8]:  TBTT prohibit hold in unit of 32us. The time for HW holding to send the beacon packet. */
+/*	[23:20]: Reserved */
 /*  Description: */
-/* 	              | */
+/*			| */
 /*      |<--Setup--|--Hold------------>| */
-/* 	--------------|---------------------- */
-/*                 | */
+/*	--------------|---------------------- */
+/*			| */
 /*                TBTT */
 /*  Note: We cannot update beacon content to HW or send any AC packets during the time between Setup and Hold. */
 /*  Described by Designer Tim and Bruce, 2011-01-14. */
@@ -300,7 +300,7 @@
 #define REG_ACMHWCTRL_8723B		0x05C0
 #define REG_SCH_TXCMD_8723B		0x05F8
 
-/* 	0x0600h ~ 0x07FFh	WMAC Configuration */
+/*	0x0600h ~ 0x07FFh	WMAC Configuration */
 #define REG_MAC_CR_8723B		0x0600
 #define REG_TCR_8723B			0x0604
 #define REG_RCR_8723B			0x0608
@@ -356,10 +356,10 @@
 #define REG_SND_PTCL_CTRL_8723B		0x0718
 
 
-/* 	Redifine 8192C register definition for compatibility */
+/*	Redifine 8192C register definition for compatibility */
 
-/*  TODO: use these definition when using REG_xxx naming rule. */
-/*  NOTE: DO NOT Remove these definition. Use later. */
+/*	TODO: use these definition when using REG_xxx naming rule. */
+/*	NOTE: DO NOT Remove these definition. Use later. */
 #define	EFUSE_CTRL_8723B	REG_EFUSE_CTRL_8723B	/*  E-Fuse Control. */
 #define	EFUSE_TEST_8723B	REG_EFUSE_TEST_8723B	/*  E-Fuse Test. */
 #define	MSR_8723B		(REG_CR_8723B + 2)	/*  Media Status register */
-- 
2.31.1


