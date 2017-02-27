X-GM-THRID: 6388897294904721408
X-Received: by 10.157.56.251 with SMTP id k56mr4458242ote.28.1488173405935;
        Sun, 26 Feb 2017 21:30:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.194 with SMTP id f63ls3184817ioi.26.gmail; Sun, 26 Feb
 2017 21:30:05 -0800 (PST)
X-Received: by 10.99.100.6 with SMTP id y6mr5668364pgb.81.1488173405142;
        Sun, 26 Feb 2017 21:30:05 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id u12si3125526pfd.3.2017.02.26.21.30.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 21:30:05 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id j5so1268092pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 21:30:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=UmV7OadtaDUPhqpceJUumErE1P0hVKLO96XLpn03w4g=;
        b=b1OhlAOMovM8rVUtHnEJko6WqXw8kPt/hOhQRZqqKDSm+5wUa5EZOoBetGqj+ODa3W
         kEJlWznu8vGs3Z8AsoH7r4IUdmRqSNnSuMFjoy9xw2OMGHiXzU3ragT6uaNqZuSjxAhD
         Xl5mD22liH6Pvl4CUj/PtX0pA1znexkuVVBDPFgiGNsZ/ZGFIS/nT4uKqHNPdFqAP6rI
         NZRH2pnwTtge911KPNzzkyqU9uTYCtZ9iaQNyNf3IR2QYsdpM3dcuE0YdiUbFLgErn/C
         FOvu8LCMwhQqnvbGAbKbVJxoy5Dfj8MhzdDr+eCFKakO5yS/IrnCmaZfbFbzeHztqSbj
         8EKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=UmV7OadtaDUPhqpceJUumErE1P0hVKLO96XLpn03w4g=;
        b=bHRu4FBPZLT+5N1V5K4urxm9ReI4Wl2T5ZrkH4+ZcarNt9NGIF6eIExQqcns6gd/Lq
         m3EGVGr3DhzKVWZAyGBMrgx8aYe0dpJeYffNQV+3M32XYTn+SHhGZU/Ndfk908g5sfm4
         GHZh94qlohA35hG4NAA4Eq9F8xjxA/txxCasTIsCXMRNWrTm8HHv2SefK7x8eSxpWO8c
         A/Ap6Hxc+zBy9vnpwL6JHqU+2ngau6vGN3R43mrwczmzVsEjQBXwGv7otcdcK/GHniuF
         6hLgGBr+ypPG3tyvUpRCUSmh/kpV3oxmtkHZzlH8YEXvAGPDCZNmRal3Au+03I84deIA
         gavw==
X-Gm-Message-State: AMke39mby5ZCsAvcAvOFzhBoa3ijGvX9Yy8COD8Of/so61263VTFKYZ44Cn1dKoSWTkkmg==
X-Received: by 10.99.45.3 with SMTP id t3mr18721114pgt.162.1488173404911;
        Sun, 26 Feb 2017 21:30:04 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id i15sm27572950pfj.0.2017.02.26.21.30.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 21:30:04 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v5] staging: rtl8192u: Remove ternary operator
Date: Mon, 27 Feb 2017 10:57:50 +0530
Message-Id: <1488173270-12445-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Relational and logical operators evaluate to either true or false.
Lines with ternary operators were found using coccinelle script. In a
few cases using logical && operator would suffice. Hence those were
changed to improve readability.

Coccinelle Script:
@r@
expression A,B;
symbol true,false;
binary operator b = {==,!=,&&,||,>=,<=,>,<};
@@
- (A b B) ? true : false
+ A b B

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
Changes in v5:
	- Removed if statement under comments.
Changes in v4:
        - Aligned operands for && and added a newline.
Changes in v3:
        - Converted ? operator to &&.
Changes in v2:
        - Converted ? operator to if else statements.
---
 drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
index c27397b..6072099 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
@@ -976,17 +976,16 @@ void HTOnAssocRsp(struct ieee80211_device *ieee)
 	//
 	HTSetConnectBwMode(ieee, (HT_CHANNEL_WIDTH)(pPeerHTCap->ChlWidth), (HT_EXTCHNL_OFFSET)(pPeerHTInfo->ExtChlOffset));
 
-//	if (pHTInfo->bCurBW40MHz)
-		pHTInfo->bCurTxBW40MHz = ((pPeerHTInfo->RecommemdedTxWidth == 1)?true:false);
+	pHTInfo->bCurTxBW40MHz = (pPeerHTInfo->RecommemdedTxWidth == 1);
 
 	//
 	// Update short GI/ long GI setting
 	//
 	// TODO:
-	pHTInfo->bCurShortGI20MHz=
-		((pHTInfo->bRegShortGI20MHz)?((pPeerHTCap->ShortGI20Mhz==1)?true:false):false);
-	pHTInfo->bCurShortGI40MHz=
-		((pHTInfo->bRegShortGI40MHz)?((pPeerHTCap->ShortGI40Mhz==1)?true:false):false);
+	pHTInfo->bCurShortGI20MHz = pHTInfo->bRegShortGI20MHz &&
+				    (pPeerHTCap->ShortGI20Mhz == 1);
+	pHTInfo->bCurShortGI40MHz = pHTInfo->bRegShortGI40MHz &&
+				   (pPeerHTCap->ShortGI40Mhz == 1);
 
 	//
 	// Config TX STBC setting
@@ -997,8 +996,8 @@ void HTOnAssocRsp(struct ieee80211_device *ieee)
 	// Config DSSS/CCK  mode in 40MHz mode
 	//
 	// TODO:
-	pHTInfo->bCurSuppCCK =
-		((pHTInfo->bRegSuppCCK)?((pPeerHTCap->DssCCk==1)?true:false):false);
+	pHTInfo->bCurSuppCCK = pHTInfo->bRegSuppCCK &&
+			       (pPeerHTCap->DssCCk == 1);
 
 
 	//
-- 
2.7.4


