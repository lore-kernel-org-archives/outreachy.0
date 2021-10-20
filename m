X-GM-THRID: 7021139911434567680
X-Received: by 2002:a05:600c:378d:: with SMTP id o13mr8706098wmr.41.1634736524002;
        Wed, 20 Oct 2021 06:28:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2983:: with SMTP id p125ls2772514wmp.2.canary-gmail;
 Wed, 20 Oct 2021 06:28:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzT6uW/KQ6M5e/wYPpiZlZMB212v1MqggXWaq28s/FRh7WpPPpDel/YiIbMgPoh8qtlgPEz
X-Received: by 2002:a05:600c:21c4:: with SMTP id x4mr13811930wmj.111.1634736522460;
        Wed, 20 Oct 2021 06:28:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634736522; cv=none;
        d=google.com; s=arc-20160816;
        b=JOIY9MOkXesUTSjMSU5jLPdVsQT9/qBoIkudcktP75msQOj/EolWJmTtu139O9zuYS
         b+6gkYapOYFxyzcye/YrvQTHqIgPhnIR92KlFv7EeHWAQFrrSk2wnNJ8SK9u0ekLI9G+
         r4nhcogZjlSnjv5Go7+YY4AOdJGXovBpiaIa8oN5kdiZHoB3j+h+b+DResH2J+HFQL4o
         MNc7wNwcyXa1+hXRPQtXrd8JKi7s2X0hMrINdkb1zMC+KMtQ6eNJu5QhqoR6p8+ojbSD
         vuriMVJj5VIDpbrUptS8yCNNekeGSOtpLDDzYXeiWZTJk0uC9wOHeamnO0BZNcMsQJIb
         fGYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=1Bd0wj+p+9TRlN1ZXP/TSahnjo8YS2SPX8pyBePDyCc=;
        b=cYwR0clQaddSVeRBdxi7UX7nuMwCy6o2l8MNhMOmZEXXb++25zUnOKUvwVs3Z8+2TS
         1BgGVH2gaSwBpMz1LK/e778FPJQF0s/hyik3PPkIie9PErsV3TPn4rkcEnVwmZ7SvkS1
         CPuhOEPm615VQVg/82R5fa85cC+Yop1iHmloaV519BBCtOMjOoBRqrBMgayJZl8F67/k
         U632wMz+wOjZkcTvKKIMtlBhIVaK6LeRXa7mnzEiLeOSfCct+b0X6mydzSqhV8DK0PyW
         llegFdLvfy7e1ZENtrmVIfFO6AKRS8IoSB3jlxCRdLrRfpArck9ZBAVJrOiZT82i1f5P
         xANQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=F0ZS43EW;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com. [2a00:1450:4864:20::336])
        by gmr-mx.google.com with ESMTPS id r3si148845wrc.2.2021.10.20.06.28.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Oct 2021 06:28:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) client-ip=2a00:1450:4864:20::336;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=F0ZS43EW;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x336.google.com with SMTP id l38-20020a05600c1d2600b0030d80c3667aso10240794wms.5
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Oct 2021 06:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1Bd0wj+p+9TRlN1ZXP/TSahnjo8YS2SPX8pyBePDyCc=;
        b=F0ZS43EWDOllEFrcmG5QFNCOD6Xo2np6Nh2MDNP76gKqkXmn/cjijdlZAhmtSXOzHd
         07ev4RT9ZJgGD7KhM2zVgUwrZvJSQLBXwv1qvOwErvRr3bSlXlrylvZtKSB4CaFL0MTs
         UNxyHYTpwLS/AxALC//Kz6+G6u93fvqVmSi2eljeOhhyJUpsjIFjuOiFehxQnkd7ZYlj
         tk1wAq3JVnUpPVyqMbHYmoT96BwsdQ2oFnIY0tXcvE92vDjSsmrGlT10bBMrTLuwiyDA
         M2Bt8/Nu8j9UlrY/b9fGFzXHnEJizPAhCWoV9B2sLz6kK1V+t0+DrD0YGHZyC4YXc6wg
         chuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1Bd0wj+p+9TRlN1ZXP/TSahnjo8YS2SPX8pyBePDyCc=;
        b=PCoPOefzRmXgpWKGPLWeaDMs014wDG0niHi0NeiSWflBNDPc92VEGG9JSs52XtJV1U
         zUCR6pes+CVe8r/CpgVcvenF9tzKV9fpQ5yCu68pC0DeJgV4JHPpdqSNN+s+OO4ad+/S
         u7FGObBo91qB5JKL1T5PrmWJbrnNttHVfV2flAbiJx4DpgjRKoPS67XOD9iNMpoZEtOs
         vC53omg1NLyI/RWT8O3r+ZtZDDc0qENbVtT9mViMb9cr7e45y8vTr4LY53U8F/I4nb8k
         j0zElrzlHpeG6Cv7rfndsQ+XkB8CAcNd4Mo9re7rkbxdBU3/MTWnMlztILdGUDmLeZgB
         7ifw==
X-Gm-Message-State: AOAM532npAhzG1C8mARlK6XraUBS2ngLoqPPiRWWyK7RFypmYMdhuir7
	goeZS/PunVNCRHZEf8/wVZC5IY4bA+oen+mJ
X-Received: by 2002:a7b:c007:: with SMTP id c7mr13816618wmb.101.1634736522212;
        Wed, 20 Oct 2021 06:28:42 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id n26sm3323115wmi.16.2021.10.20.06.28.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 06:28:41 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH] staging: vt6655: Rename `dwAL2230InitTable` array
Date: Wed, 20 Oct 2021 14:28:11 +0100
Message-Id: <20211020132811.417341-1-karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Drop Hungarian notation prefix in `dwAL2230InitTable` array.
Change it to use snake case.

Fix issue detected by checkpatch.pl:
  CHECK: Avoid CamelCase: <dwAL2230InitTable>

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index a6f17162d017..6bdacf8fbc27 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -33,7 +33,7 @@
 #define SWITCH_CHANNEL_DELAY_AL7230 200 /* us */
 #define AL7230_PWR_IDX_LEN    64
 
-static const unsigned long dwAL2230InitTable[CB_AL2230_INIT_SEQ] = {
+static const unsigned long al2230_init_table[CB_AL2230_INIT_SEQ] = {
 	0x03F79000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
 	0x03333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
 	0x01A00200 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
@@ -545,7 +545,7 @@ static bool RFbAL2230Init(struct vnt_private *priv)
 	IFRFbWriteEmbedded(priv, (0x07168700 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW));
 
 	for (ii = 0; ii < CB_AL2230_INIT_SEQ; ii++)
-		ret &= IFRFbWriteEmbedded(priv, dwAL2230InitTable[ii]);
+		ret &= IFRFbWriteEmbedded(priv, al2230_init_table[ii]);
 	MACvTimer0MicroSDelay(priv, 30); /* delay 30 us */
 
 	/* PLL On */
@@ -557,7 +557,7 @@ static bool RFbAL2230Init(struct vnt_private *priv)
 	ret &= IFRFbWriteEmbedded(priv, (0x00780f00 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW));
 	MACvTimer0MicroSDelay(priv, 30);/* 30us */
 	ret &= IFRFbWriteEmbedded(priv,
-				  dwAL2230InitTable[CB_AL2230_INIT_SEQ - 1]);
+				  al2230_init_table[CB_AL2230_INIT_SEQ - 1]);
 
 	MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3    |
 							 SOFTPWRCTL_SWPE2    |
@@ -699,7 +699,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 			return false;
 
 		for (ii = 0; ii < CB_AL2230_INIT_SEQ; ii++)
-			MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230InitTable[ii]);
+			MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), al2230_init_table[ii]);
 
 		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable0[uChannel - 1]);
 		ii++;
-- 
2.30.2


