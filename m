X-GM-THRID: 7020422968837668864
X-Received: by 2002:a2e:a378:: with SMTP id i24mr374152ljn.64.1634569598829;
        Mon, 18 Oct 2021 08:06:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3499:: with SMTP id v25ls355451lfr.0.gmail; Mon, 18
 Oct 2021 08:06:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwhAvD+zxWngo83Y1ROYZ4tiU5mii7Hr/vFBLRm5sHt09qqQCzt5ccs+J49g63ImzpeavI3
X-Received: by 2002:a05:6512:3a8b:: with SMTP id q11mr249779lfu.519.1634569597246;
        Mon, 18 Oct 2021 08:06:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634569597; cv=none;
        d=google.com; s=arc-20160816;
        b=lRvrGecrNg8OQ4BN1xQhycHX68ycsTrzxXzcUDWJjpIsyRvd7juRHyaR1Vmcg/OogW
         uxsj07auXwHAaWPjsw5+kk68lwx+Agi9XuNoSPzjNqtzH3DgB+LSwIRJTCawAtPC3IQv
         uFcpeyYKyWsRmOKBvBvCCJLljhTG8ZFvstN0O4LsO1BZY+xleV/lg/jeyKqlPMXx55gx
         j+lVMzrdX4MgBFFrf88ele+/RaMxr1bzcWhgvHTz+RWYcS62ExyInhuvP9nqV+VWuxjC
         wnvYPQFQtmDI1cXDbrKuoeAFoN2EuTzbfXhG9BHufbAvW5WyYSLTeAkBlOwsacvOwi5W
         xGGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=2lpX8MzHrofB767bBYDr4EpmpygqZoVr7h7+rRjUfhk=;
        b=acGvEOEJ1r1kD0Yi2J2ayWUO5MRe0gXusqDpq7KYLmiBn4C2jD3TR1OFf3gi14ZFPf
         GyQK3vYgMhSnhZ2xI0tz36C9yTn/vktGAFlI8uaABERysIqMXUYZRv8R3bSWFd7OZqwI
         eY6Qn8cGBa8jGmoJjGRCu3J136skSZo9Z4SwrnTTmd5d1ZmnW9CYFJaq7eD/Ofst7kIZ
         kToTPxUd5IV6k5mfxUUFy9pNeiuqw0amVLTrIhH1kWdsYrkj7t/iLee8JITGlhDxYNC1
         zSz/zCqgUqX7XqMH4PWfw9JWa4JGIMBNGJwdQwt15wcX2lc/7OKR/FNO1gs1BObriTon
         7Zqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=IasgMAV6;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com. [2a00:1450:4864:20::334])
        by gmr-mx.google.com with ESMTPS id z21si782116ljn.1.2021.10.18.08.06.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Oct 2021 08:06:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::334 as permitted sender) client-ip=2a00:1450:4864:20::334;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=IasgMAV6;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x334.google.com with SMTP id v127so9039811wme.5
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Oct 2021 08:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2lpX8MzHrofB767bBYDr4EpmpygqZoVr7h7+rRjUfhk=;
        b=IasgMAV6elCuzOLnYMKqhANSzWVEPIhSizJDwNbvzrKq1kU1xnURIlII5tsZDotTWu
         mViYQeckGsLA8b+2lieuSLvz/wyUpK9ePCEo3yjNzXLC37+pTSFAMuEhnL6YpJdeCwRE
         h7srdipUdcG4ZUVNV/vHbcKSXq4ZEt1L6ufKNmBubuKwtfraSnD+pzMpFTLu+CENm09X
         fo9/aWJvbaYD7ez9zdGI27DpLcDTjCtvyP7yZAYfEBWKfa0SC91hL6WKIcQEc/ESeZUe
         RD70Omx2GzeWhnhz7n9+uiU51QWf04XFddYw3LL+tNSwIYjwawZr5O5rzjeEOK50r5KD
         NUsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2lpX8MzHrofB767bBYDr4EpmpygqZoVr7h7+rRjUfhk=;
        b=LQAJo7m24CAAk7mAVSjZtjk2itYkE8Us6P+Z9XpZX4JgkC8eN7meG1BrGNCvLqurki
         +5vhxwLDSV0Fpf7MQ+bYgbHn5QaxusC3BpxODjzJAOhJPP2GW8p4l33SGGRePF51bn03
         LfUK8bWODKsjbEb9VRHh1imQ38bMyy3iMSwsFu5zbuQDyTZd7WzSTBA9qjPVQTHLlZGu
         vtMWn40vgdW69r3yLE2rCj0ZOA87tMP/EJ4M40k+CPUHZtzIySY0BIc5Rakf84OLJKkG
         8Cr/M4fDWejE4nE0cI0bOV8NuqCoHp3ldQH4ZQrkoOGs+6qwKc4YBEOOrlaJCXKs0wb/
         GoQg==
X-Gm-Message-State: AOAM531GgjICGvlxLMqoLf/j5HfXmk8PXWty//z4ENvZAQ1/DZYk+ZnM
	rlNJTtgqWdsfCPX69q20IMJsMAejYAatHP3j
X-Received: by 2002:a1c:2b81:: with SMTP id r123mr22101493wmr.136.1634569596688;
        Mon, 18 Oct 2021 08:06:36 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id u13sm4543646wri.50.2021.10.18.08.06.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Oct 2021 08:06:36 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH] staging: vt6655: Fix line wrapping in rf.c file
Date: Mon, 18 Oct 2021 16:05:26 +0100
Message-Id: <20211018150526.9718-1-karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix line length warnings raised by checkpatch.pl in
rf.c file for `RFvWriteWakeProgSyn`,`RFbRawSetPower`
and `RFbAL7230SelectChannelPostProcess`functions.

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 66 +++++++++++++++++++++++++++----------
 1 file changed, 49 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index a6f17162d017..206d34b555bc 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -699,11 +699,17 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 			return false;
 
 		for (ii = 0; ii < CB_AL2230_INIT_SEQ; ii++)
-			MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230InitTable[ii]);
+			MACvSetMISCFifo(priv,
+					(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
+					dwAL2230InitTable[ii]);
 
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable0[uChannel - 1]);
+		MACvSetMISCFifo(priv,
+				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
+				dwAL2230ChannelTable0[uChannel - 1]);
 		ii++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable1[uChannel - 1]);
+		MACvSetMISCFifo(priv,
+				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
+				dwAL2230ChannelTable1[uChannel - 1]);
 		break;
 
 		/* Need to check, PLLON need to be low for channel setting */
@@ -716,17 +722,28 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 
 		if (uChannel <= CB_MAX_CHANNEL_24G) {
 			for (ii = 0; ii < CB_AL7230_INIT_SEQ; ii++)
-				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230InitTable[ii]);
+				MACvSetMISCFifo(priv,
+						(unsigned short)(MISCFIFO_SYNDATA_IDX
+						+ ii), dwAL7230InitTable[ii]);
 		} else {
 			for (ii = 0; ii < CB_AL7230_INIT_SEQ; ii++)
-				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230InitTableAMode[ii]);
+				MACvSetMISCFifo(priv,
+						(unsigned short)(MISCFIFO_SYNDATA_IDX
+						+ ii),
+					dwAL7230InitTableAMode[ii]);
 		}
 
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable0[uChannel - 1]);
+		MACvSetMISCFifo(priv,
+				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
+				dwAL7230ChannelTable0[uChannel - 1]);
 		ii++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable1[uChannel - 1]);
+		MACvSetMISCFifo(priv,
+				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
+				dwAL7230ChannelTable1[uChannel - 1]);
 		ii++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable2[uChannel - 1]);
+		MACvSetMISCFifo(priv,
+				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
+				dwAL7230ChannelTable2[uChannel - 1]);
 		break;
 
 	case RF_NOTHING:
@@ -736,7 +753,8 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 		return false;
 	}
 
-	MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX, (unsigned long)MAKEWORD(bySleepCount, byInitCount));
+	MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX,
+			(unsigned long)MAKEWORD(bySleepCount, byInitCount));
 
 	return true;
 }
@@ -836,20 +854,32 @@ bool RFbRawSetPower(struct vnt_private *priv, unsigned char byPwr,
 	case RF_AIROHA:
 		ret &= IFRFbWriteEmbedded(priv, dwAL2230PowerTable[byPwr]);
 		if (rate <= RATE_11M)
-			ret &= IFRFbWriteEmbedded(priv, 0x0001B400 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
+			ret &= IFRFbWriteEmbedded(priv, 0x0001B400
+					+ (BY_AL2230_REG_LEN << 3)
+					+ IFREGCTL_REGW);
 		else
-			ret &= IFRFbWriteEmbedded(priv, 0x0005A400 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
+			ret &= IFRFbWriteEmbedded(priv, 0x0005A400
+					+ (BY_AL2230_REG_LEN << 3)
+					+ IFREGCTL_REGW);
 
 		break;
 
 	case RF_AL2230S:
 		ret &= IFRFbWriteEmbedded(priv, dwAL2230PowerTable[byPwr]);
 		if (rate <= RATE_11M) {
-			ret &= IFRFbWriteEmbedded(priv, 0x040C1400 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
-			ret &= IFRFbWriteEmbedded(priv, 0x00299B00 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
+			ret &= IFRFbWriteEmbedded(priv, 0x040C1400
+					+ (BY_AL2230_REG_LEN << 3)
+					+ IFREGCTL_REGW);
+			ret &= IFRFbWriteEmbedded(priv, 0x00299B00
+					+ (BY_AL2230_REG_LEN << 3)
+					+ IFREGCTL_REGW);
 		} else {
-			ret &= IFRFbWriteEmbedded(priv, 0x0005A400 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
-			ret &= IFRFbWriteEmbedded(priv, 0x00099B00 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
+			ret &= IFRFbWriteEmbedded(priv, 0x0005A400
+					+ (BY_AL2230_REG_LEN << 3)
+					+ IFREGCTL_REGW);
+			ret &= IFRFbWriteEmbedded(priv, 0x00099B00
+					+ (BY_AL2230_REG_LEN << 3)
+					+ IFREGCTL_REGW);
 		}
 
 		break;
@@ -921,7 +951,8 @@ bool RFbAL7230SelectChannelPostProcess(struct vnt_private *priv,
 	 * register
 	 * Channel Index 1~14
 	 */
-	if ((byOldChannel <= CB_MAX_CHANNEL_24G) && (byNewChannel > CB_MAX_CHANNEL_24G)) {
+	if ((byOldChannel <= CB_MAX_CHANNEL_24G) &&
+	    (byNewChannel > CB_MAX_CHANNEL_24G)) {
 		/* Change from 2.4G to 5G [Reg] */
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[2]);
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[3]);
@@ -930,7 +961,8 @@ bool RFbAL7230SelectChannelPostProcess(struct vnt_private *priv,
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[10]);
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[12]);
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[15]);
-	} else if ((byOldChannel > CB_MAX_CHANNEL_24G) && (byNewChannel <= CB_MAX_CHANNEL_24G)) {
+	} else if ((byOldChannel > CB_MAX_CHANNEL_24G) &&
+		   (byNewChannel <= CB_MAX_CHANNEL_24G)) {
 		/* Change from 5G to 2.4G [Reg] */
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[2]);
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[3]);
-- 
2.30.2


