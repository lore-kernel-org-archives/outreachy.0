X-GM-THRID: 6950309311564218368
X-Received: by 2002:a2e:9945:: with SMTP id r5mr1048993ljj.14.1618245008770;
        Mon, 12 Apr 2021 09:30:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3b95:: with SMTP id g21ls1719212lfv.1.gmail; Mon,
 12 Apr 2021 09:30:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwKuzrL7X+YQVEVwRsUOKK6leidjRggq4XJrEg16smpPlRZr+iXRGv5OA919CKlCc9NP0F5
X-Received: by 2002:a19:7f88:: with SMTP id a130mr18945697lfd.412.1618245006445;
        Mon, 12 Apr 2021 09:30:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618245006; cv=none;
        d=google.com; s=arc-20160816;
        b=rDSIbYZKaOGh/nBw7AREC9OFQls8iIADmR1vjeF03Idjvs+x5Jw+jAfnhHbJtPXrnD
         Z02ll+Fpysee1R+ijjOKEObk7o7jIEpUmxqOoE7H6T605Fsx8Gp+UGCMUF7uDzl2LUv5
         8/XaxtG2CeKepEDa51sRwbgQkiEp30+KzivgIGnFKbFMqO8MZBdQ0SVBGWXqrntOu22Y
         iGGjXPB4Qb3KKRSLPy2pKpmS9ltoN8U7sEvjxnFeFM2EObw95PR08PjQiIVT7ykWMurV
         VtqKojMDw8e+BJNTkQZfGf5bwxGbBRrf5AFtR4IBQX7qBiRrFQ2e/znOA8O6WEvFSjWV
         Fzaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=sKFmckhJz1VQS6Awob+qO1rgj7w9RZgnwYkma6KaDks=;
        b=AAoIOrccQ31YzO0VRS8j0EhALs+nxXG9kqt+v2xHzsbxNMLYDTV5Pa3Jp7GKdWfaOr
         WHxKnoRYmfuf5NomTOC4xwFQcb3ffiPOEnGUxrG7p0O8lbbZKX2omvcCPdM5kg5PrK87
         mxX97mO5odYGSjYer/R2WjWqHo/YLECcw8r4N4h6PmBFHs0DPcwfG/un68rx8etCP8h/
         7tWbGlfU/Q2kuen/NfSrUEibcAzau6i8ASk+25mwzuDKwDkhhqdPoAdVZMf6YTmNKJI4
         joNbdTAiQ6S0D26kNBaw7P6mCvRqhHWzAHESS6CWeNPn9NS24GmYIuEJ6M9x8uzM/gBm
         1mBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ecZVrX28;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com. [2a00:1450:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id l11si678243lfg.13.2021.04.12.09.30.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 09:30:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) client-ip=2a00:1450:4864:20::42e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ecZVrX28;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42e.google.com with SMTP id w4so9848704wrt.5
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 09:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=sKFmckhJz1VQS6Awob+qO1rgj7w9RZgnwYkma6KaDks=;
        b=ecZVrX285qWlOUfKCveyPLbvKpIuiTuqI0EHT3oh5gbDaxMPsPdq2ieycXoduoZcAB
         b1QZuJoFjuMG7ba8awJAiRR4WwNCEYvD4CUGaO1cvtHm7u9kB2lJDrt+JZP+hrDr107+
         oXYxKNC9VmNWu0jL1U9xWrCZnMKvoZ5yB1eORPex+1IhZ+vrxBXZBZjR4ztpoxNtNsa+
         yhnuFDJJkEj+Nyt8XUTvN526yEfreyyjpWfSpbu44fZpWdQpVNBAdydygU5jqkcYZ24W
         TY4XYrugvEp9I9kbQZ8BqBQm3+RA5c3/ej/H4uvv99ziNAOqo6Z/zC5hHCEzjzf/f0Eo
         VI0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sKFmckhJz1VQS6Awob+qO1rgj7w9RZgnwYkma6KaDks=;
        b=qQYQ435ylWa8ZrG6OLiCnddaRorWA/d8eWtRkkE/ZgazLNZKJYhyCmR7oLoFY/08hP
         eMNwTYMuNNjM0HlDuCm/IiuUJeWS+y7pahlLq/VUENtmww6sw/a+kDdDtQdV8x8ncCnQ
         dQtJ6a2LGB779jEdmgFNHdcUlm24tPVXXs1jUkISgcxBowZgItXWSaQs+8B0asa8j/SS
         x7zyX5fNC95wMv3lsFeDjYQbfGaT7NWPN4JcwOzzoDgsh/EZXgXA0TgJv+dyFTt77Wab
         rR4aiCfytIC/KJ2XuTaqFjhs3m81zobodwA5V4iI3LHbb74XVFz3Qs5Er0TWiT3agJfL
         HEjg==
X-Gm-Message-State: AOAM532kJYMaiTZqVzPj+BLqeTFxXUYro5FInHg7HXmLMkRclcaCopJA
	ChTWwqBkFcvsTIo7OqpO4MU=
X-Received: by 2002:a05:6000:18cd:: with SMTP id w13mr31946331wrq.20.1618245006273;
        Mon, 12 Apr 2021 09:30:06 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from bcarvalho-Ubuntu.lan ([2001:818:de85:7e00:813f:b20e:675a:834d])
        by smtp.gmail.com with ESMTPSA id b5sm16786524wri.57.2021.04.12.09.30.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 09:30:05 -0700 (PDT)
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: gregkh@linuxfoundation.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Subject: [PATCH 1/3] staging: rtl8723bs: hal: remove space before tabs
Date: Mon, 12 Apr 2021 17:29:36 +0100
Message-Id: <9694aafb614bdcbb15fdea614502c1b31a534871.1618243073.git.martinsdecarvalhobeatriz@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1618243073.git.martinsdecarvalhobeatriz@gmail.com>
References: <cover.1618243073.git.martinsdecarvalhobeatriz@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove unnecessary space before tabs to conform with Linux kernel
coding style.
Reported by checkpatch in file Hal8723BReg.h

Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
---
 drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 26 ++++++++++-----------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/Hal8723BReg.h b/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
index 616d20106392..68a56627546f 100644
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
@@ -263,10 +263,10 @@
 #define REG_RD_CTRL_8723B				0x0524
 /*  */
 /*  Format for offset 540h-542h: */
-/* 	[3:0]:   TBTT prohibit setup in unit of 32us. The time for HW getting beacon content before TBTT. */
-/* 	[7:4]:   Reserved. */
-/* 	[19:8]:  TBTT prohibit hold in unit of 32us. The time for HW holding to send the beacon packet. */
-/* 	[23:20]: Reserved */
+/*	[3:0]:	TBTT prohibit setup in unit of 32us. The time for HW getting beacon content before TBTT. */
+/*	[7:4]:	Reserved. */
+/*	[19:8]:	TBTT prohibit hold in unit of 32us. The time for HW holding to send the beacon packet. */
+/*	[23:20]: Reserved */
 /*  Description: */
 /* 	              | */
 /*      |<--Setup--|--Hold------------>| */
@@ -300,7 +300,7 @@
 #define REG_ACMHWCTRL_8723B		0x05C0
 #define REG_SCH_TXCMD_8723B		0x05F8
 
-/* 	0x0600h ~ 0x07FFh	WMAC Configuration */
+/*	0x0600h ~ 0x07FFh	WMAC Configuration */
 #define REG_MAC_CR_8723B		0x0600
 #define REG_TCR_8723B			0x0604
 #define REG_RCR_8723B			0x0608
@@ -356,7 +356,7 @@
 #define REG_SND_PTCL_CTRL_8723B		0x0718
 
 
-/* 	Redifine 8192C register definition for compatibility */
+/*	Redifine 8192C register definition for compatibility */
 
 /*  TODO: use these definition when using REG_xxx naming rule. */
 /*  NOTE: DO NOT Remove these definition. Use later. */
-- 
2.25.1


