X-GM-THRID: 7021822549853995008
X-Received: by 2002:adf:a30c:: with SMTP id c12mr14577874wrb.366.1634895467064;
        Fri, 22 Oct 2021 02:37:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:508a:: with SMTP id a10ls1102038wrt.1.gmail; Fri, 22 Oct
 2021 02:37:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyy7eeC4+w5QKkrxIiIgpTTdQ051H/IxhterwYKOuZADdK0pJ4EWJcO4jO3DiIyLE7iAC79
X-Received: by 2002:adf:e746:: with SMTP id c6mr13976304wrn.367.1634895465623;
        Fri, 22 Oct 2021 02:37:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634895465; cv=none;
        d=google.com; s=arc-20160816;
        b=a620pNBJ302njKjBYLEpEPmtPef/2C6/mpgZ0DRXHuuGqUXxEqGEGtr1m6jDDEjKyU
         duLDQJEKWCJyirbJEMfJpMoiODD5WWNtnH6akKrjx5augbFnz8ikK+1iaRXK0MxXN/+o
         XPLDmEEnbr1BXxFn8f+xN1V7YCGE3EmRz7aLwyYYKNHqJX9/vqODW4xvkA2WPy/jEuL1
         N2OF9CDJnBouyBMDZZZtV45mC47TfYrC+k5j1FtcJLvYptbEjiC//WBcrqJ3UjKbbptw
         22SkfbVDF+aS8XA7hqxlb7Jx2QtW+dmxhbYvra6BNUPTg0o3Rdz2z9wjT4aU5l1cy9I4
         luqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=V57x0MEr6fuE5L3vURExVJ6RMqS7xwkhHXyJYTkcluM=;
        b=wSQqSISfK6KlYtSpplplHMYchMw7SuE+XiKHAj5kAxB0B+L+JTmFevnmj6OQo7DFBY
         o4Rok49wNFm5V4PrvQVpXgCIH3A67gZ3QJU9GTGJxWaFhnWNFhcxQGmWrUVFXfDKp3DY
         zrPwezolTxabPk8GylPtfiCqkkZbj71yGZNOLxr0F4EoNF+lhZGA5EkQXGv6LFlZeHZi
         NeSnkWhQ3r/IIWK3mbfow9LaRnJrDTFplc60t40sOI3lHwux8BF8GXUa/55h64n+XIip
         Da860utDucss9ht1qNeFiYrng8QCah13B/Zm7bhYK1ogSom4Ae3e1rCHldDQuIZXHL8o
         5xDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=d3zqbzBk;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com. [2a00:1450:4864:20::331])
        by gmr-mx.google.com with ESMTPS id f9si700503wmg.2.2021.10.22.02.37.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Oct 2021 02:37:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::331 as permitted sender) client-ip=2a00:1450:4864:20::331;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=d3zqbzBk;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x331.google.com with SMTP id y22-20020a1c7d16000000b003231ea3d705so2662884wmc.4
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Oct 2021 02:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=V57x0MEr6fuE5L3vURExVJ6RMqS7xwkhHXyJYTkcluM=;
        b=d3zqbzBkMTaMN+TQfvkijPPkv8G4hEufMVUiYKmqQaecIbqqDBlf6sdbonICXPubU4
         FCSbsdbrLOhcZYVnI0fLzr4QL7/ReF/4vCRNHL+bgLeBJvzJpMUqv0iiASu51wqzmrAq
         QzbCFzT5NKnuygO8Mkje4BuN+GoHLUkdoktjcePMkt+dwTmKDct52Gb9TQRytCVKHx9C
         0K0snlfZ4qQyGt/GiZK4i4p46utLgbXX4HX9eujI1oNxCXq26urPotJ5w2FDtLTOaZTG
         EIX7KEXB9QyG5NE7kH/xXactMiTCY96YLBIWIK8+TjAM8dNoVn1ILEjTRjeuBEh7r3tQ
         J4Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=V57x0MEr6fuE5L3vURExVJ6RMqS7xwkhHXyJYTkcluM=;
        b=vwIxu50x9LXl5mZdjyC2rIlzJrAl1MYPLCJFiOv4OMSTYrD99eSLowBPJd3hyNWWNU
         XtbrDvVDla0p6poTvwvYXDM+p3K70ztoBptTV152w038Qf0aQLTiWwkQ6NhJXoezJszf
         c0X9fh+/vcR9IRtAScie40LT1klpcbW31KCNE0VcqvZhjhu7smD18Ay+3kqvdPy9jHRl
         JrQYMVJ6+L8K5CEVDYhkcv7HHujzYjoJpA7qjR2Fo5YL7nDyV3+nSEllLCOrTGzH3ttF
         a4x2kp4YMj1+nw90pngbGloMSrXUTLxRZEYyTvpTjQVxECpncin0N1Q/CQ3eH8takX9G
         fpbQ==
X-Gm-Message-State: AOAM532A8w/iO6yVnoqGRS6QtnDcjIpYWS0kZ1xrovigvts+KPrefY7u
	F32XUwd2xwynHoIf+9rZK5j6CjOh59i77fcv
X-Received: by 2002:a7b:cd15:: with SMTP id f21mr11130877wmj.87.1634895465474;
        Fri, 22 Oct 2021 02:37:45 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id r15sm1643602wru.9.2021.10.22.02.37.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Oct 2021 02:37:45 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH 1/5] staging: vt6655: Rename `ii` variable
Date: Fri, 22 Oct 2021 10:37:14 +0100
Message-Id: <91591b7ca0aaf05d2de1e5ae9477ae3b8f13427f.1634826774.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1634826774.git.karolinadrobnik@gmail.com>
References: <cover.1634826774.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Drop Hungarian notation in the loop counter `ii` in
`RFvWriteWakeProgSyn` function.

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 6bdacf8fbc27..7e441309dd9c 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -680,7 +680,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 			 u16 uChannel)
 {
 	void __iomem *iobase = priv->port_offset;
-	int   ii;
+	int i;
 	unsigned char byInitCount = 0;
 	unsigned char bySleepCount = 0;
 
@@ -698,12 +698,12 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 		if (byInitCount > (MISCFIFO_SYNDATASIZE - bySleepCount))
 			return false;
 
-		for (ii = 0; ii < CB_AL2230_INIT_SEQ; ii++)
-			MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), al2230_init_table[ii]);
+		for (i = 0; i < CB_AL2230_INIT_SEQ; i++)
+			MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al2230_init_table[i]);
 
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable0[uChannel - 1]);
-		ii++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable1[uChannel - 1]);
+		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL2230ChannelTable0[uChannel - 1]);
+		i++;
+		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL2230ChannelTable1[uChannel - 1]);
 		break;
 
 		/* Need to check, PLLON need to be low for channel setting */
@@ -715,18 +715,18 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 			return false;
 
 		if (uChannel <= CB_MAX_CHANNEL_24G) {
-			for (ii = 0; ii < CB_AL7230_INIT_SEQ; ii++)
-				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230InitTable[ii]);
+			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
+				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL7230InitTable[i]);
 		} else {
-			for (ii = 0; ii < CB_AL7230_INIT_SEQ; ii++)
-				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230InitTableAMode[ii]);
+			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
+				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL7230InitTableAMode[i]);
 		}
 
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable0[uChannel - 1]);
-		ii++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable1[uChannel - 1]);
-		ii++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable2[uChannel - 1]);
+		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL7230ChannelTable0[uChannel - 1]);
+		i++;
+		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL7230ChannelTable1[uChannel - 1]);
+		i++;
+		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL7230ChannelTable2[uChannel - 1]);
 		break;
 
 	case RF_NOTHING:
-- 
2.30.2


