X-GM-THRID: 7021822549853995008
X-Received: by 2002:a7b:cb92:: with SMTP id m18mr14462338wmi.15.1634895475941;
        Fri, 22 Oct 2021 02:37:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2983:: with SMTP id p125ls1790875wmp.2.canary-gmail;
 Fri, 22 Oct 2021 02:37:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzXD5AFi7U5eBOfAxP0Nx9cKhYY3bwPXEDgKeB5Q7ymzA93Q8mapUZVe8pStQEnmQxKMm60
X-Received: by 2002:a7b:cd15:: with SMTP id f21mr27549028wmj.76.1634895474507;
        Fri, 22 Oct 2021 02:37:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634895474; cv=none;
        d=google.com; s=arc-20160816;
        b=JMxeZuHLYFTFW85s6D9D2F4dSRkKy0OTmCxtYrs0zfZl7WLRb/cYsUPeLPwc7fvOIf
         to9Dw0T/6lPTAUKI5gXngYXArSNjU3Y5QlN7vbkAGz9ubqx7devfaG0N2qcX7eAre+Y6
         rbzwbT8GArh8eBjIGM7XisXJeKgGOdcCQn6XxwdwzXbdZzm07nQ0qLrVRwb/8B2TuSqc
         y42yOj9ZpBtYQOeYp9ucQFOlaowepBS76CBX8BwpMgLHWc76Z6iU6rz9o+5xBP06UgXr
         9qb0TLIKTr8OoAssfnW7wiLNzhAgUXMDs4QqI0SJ8DvwGdfAzU0PwBI/Gnycmhwmh17l
         pd1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Eui2f6xiYAJe7Go/+jIeHmtQh5FPkhPyZFMuoXCPPAU=;
        b=vaIJLAgOR1SQ6TkE96HGPYXYLpLZ+gD82pxsEPFUDfhw01zUntc5Wrr/0vbTobr6up
         +LQVC10etIHjh7wukMhuSR1v7nijY2xUtLJEnPvzt3n1y4ZvE8LUhDH5Hhhb/jfc7Syz
         ZHjcczjA7Ti5xk4XdGFalEDLjNrcqoyzF49MBZtadFFpOTtxrtabwiKWHJ9ilUR3Br6G
         1HXKE6LW3oYcNP42W1PC/vvsV9yZJuRuY32e1JVc7UbZ2yZoOqTvkYzs4kocBlc1X9+M
         icwoiUwe4pAsqwVl3Vr3InYQPA6BdIt6PH73gGlKQUKokl85SLXNGESZskdmAKVydL3h
         QGBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=lYEH8PNC;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com. [2a00:1450:4864:20::334])
        by gmr-mx.google.com with ESMTPS id g2si767302wmc.4.2021.10.22.02.37.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Oct 2021 02:37:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::334 as permitted sender) client-ip=2a00:1450:4864:20::334;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=lYEH8PNC;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x334.google.com with SMTP id 193-20020a1c01ca000000b00327775075f7so2659214wmb.5
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Oct 2021 02:37:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Eui2f6xiYAJe7Go/+jIeHmtQh5FPkhPyZFMuoXCPPAU=;
        b=lYEH8PNC1nNFdMr0lNdlph0+qzNXFQwEWemaPl5UigmQIFzn/r2jABQ2kya4fs5HQ7
         YiDg7kQOxylBUkJqzrTXNlO4buLcsc5SNZZnQMRfVfeIc8IwaYGpE37OE4CjVGS+/qLG
         hQNdmdtkwwMu0CpSYofCCqa1xW1Z6nbgND0Keu/ylT5mvU8cDD60EkyNkYYJUWVYzXvu
         IIUUfyoUFavVK/lMy9WaizLr8MN63NWxTF8YGD/7ZrfCLPRQYWOVFCf2zE9+Z3fAZFlm
         QbTI6C5V2HvKFnGmmBpBjV5CaEqaxiXDcyBQyRFIJrz2W20VEJEXsSS7he9Ytc6A9CQ+
         vzfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Eui2f6xiYAJe7Go/+jIeHmtQh5FPkhPyZFMuoXCPPAU=;
        b=hWUzAIW+b/M8SPWT6W4uy+rVABCW7kJJP4k2nnXJ9QtFz0VtR29zbDk+rm0PZW6Yc5
         68wwzGCAzlkXtzHio0QHzI0qbVc8M4mcB/dcqaWFbz7kT1BT6jMKexafgAhu621CeRse
         InqCJkLXPWTsA9CnVZ2Ep+zX4BLvqhjGPgBFaDgumyP3vAfK1nyUxLSe6iI8DNUQ3FtF
         vUhXPIidSOejZ/gOaTzApGEVzPFbOvCt9IYF9leMDxgdQsPKOtqKrf1Fl4f6H4MM87EH
         M3/Jd/GVHqBpzhDJYSWyguib1advMorgBiDatzi9c8he4/2/Wg7Mh0bOfGeDwG6BFA5H
         kvJA==
X-Gm-Message-State: AOAM532fEhGmWgzat3Vlqf8X6lZe0JMPm1pYhrixbMFjW5RwMpX8P9aX
	TR2E8TEuSxDb+pzVcRA26Yxyq5UKbvp4fEkP
X-Received: by 2002:a7b:c441:: with SMTP id l1mr12589021wmi.69.1634895474182;
        Fri, 22 Oct 2021 02:37:54 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id r15sm1643602wru.9.2021.10.22.02.37.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Oct 2021 02:37:53 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH 4/5] staging: vt6655: Rename `uChannel` variable
Date: Fri, 22 Oct 2021 10:37:17 +0100
Message-Id: <09881aacf6b399e3bce2de658133553c78c5b1ab.1634826774.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1634826774.git.karolinadrobnik@gmail.com>
References: <cover.1634826774.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Drop Hungarian notation in `uChannel` variable in
`RFvWriteWakeProgSyn` function. Change it to use snake case.

Fix issue detected by checkpatch.pl:
  CHECK: Avoid CamelCase: <uChannel>

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 18 +++++++++---------
 drivers/staging/vt6655/rf.h |  2 +-
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index a30ffacf720a..0dd91b0433f6 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -670,14 +670,14 @@ bool RFbSelectChannel(struct vnt_private *priv, unsigned char byRFType,
  * Parameters:
  *  In:
  *      iobase      - I/O base address
- *      uChannel    - channel number
+ *      channel     - channel number
  *      bySleepCnt  - SleepProgSyn count
  *
  * Return Value: None.
  *
  */
 bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
-			 u16 uChannel)
+			 u16 channel)
 {
 	void __iomem *iobase = priv->port_offset;
 	int i;
@@ -689,7 +689,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 	case RF_AIROHA:
 	case RF_AL2230S:
 
-		if (uChannel > CB_MAX_CHANNEL_24G)
+		if (channel > CB_MAX_CHANNEL_24G)
 			return false;
 
 		 /* Init Reg + Channel Reg (2) */
@@ -701,9 +701,9 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 		for (i = 0; i < CB_AL2230_INIT_SEQ; i++)
 			MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al2230_init_table[i]);
 
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL2230ChannelTable0[uChannel - 1]);
+		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL2230ChannelTable0[channel - 1]);
 		i++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL2230ChannelTable1[uChannel - 1]);
+		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL2230ChannelTable1[channel - 1]);
 		break;
 
 		/* Need to check, PLLON need to be low for channel setting */
@@ -714,7 +714,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 		if (init_count > (MISCFIFO_SYNDATASIZE - sleep_count))
 			return false;
 
-		if (uChannel <= CB_MAX_CHANNEL_24G) {
+		if (channel <= CB_MAX_CHANNEL_24G) {
 			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
 				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL7230InitTable[i]);
 		} else {
@@ -722,11 +722,11 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL7230InitTableAMode[i]);
 		}
 
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL7230ChannelTable0[uChannel - 1]);
+		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL7230ChannelTable0[channel - 1]);
 		i++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL7230ChannelTable1[uChannel - 1]);
+		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL7230ChannelTable1[channel - 1]);
 		i++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL7230ChannelTable2[uChannel - 1]);
+		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL7230ChannelTable2[channel - 1]);
 		break;
 
 	case RF_NOTHING:
diff --git a/drivers/staging/vt6655/rf.h b/drivers/staging/vt6655/rf.h
index d499aed45c9f..d3f2b8dd6afc 100644
--- a/drivers/staging/vt6655/rf.h
+++ b/drivers/staging/vt6655/rf.h
@@ -60,7 +60,7 @@
 bool IFRFbWriteEmbedded(struct vnt_private *priv, unsigned long dwData);
 bool RFbSelectChannel(struct vnt_private *priv, unsigned char byRFType, u16 byChannel);
 bool RFbInit(struct vnt_private *priv);
-bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType, u16 uChannel);
+bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType, u16 channel);
 bool RFbSetPower(struct vnt_private *priv, unsigned int rate, u16 uCH);
 bool RFbRawSetPower(struct vnt_private *priv, unsigned char byPwr,
 		    unsigned int rate);
-- 
2.30.2


