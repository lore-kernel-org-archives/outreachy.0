X-GM-THRID: 6388897294904721408
X-Received: by 10.129.78.73 with SMTP id c70mr38151ywb.152.1487575439968;
        Sun, 19 Feb 2017 23:23:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.21.124 with SMTP id z57ls9598198otz.38.gmail; Sun, 19 Feb
 2017 23:23:59 -0800 (PST)
X-Received: by 10.157.45.231 with SMTP id g94mr6824929otb.146.1487575439663;
        Sun, 19 Feb 2017 23:23:59 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id u12si2298378pfd.3.2017.02.19.23.23.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 23:23:59 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 1so4589034pgz.2
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Feb 2017 23:23:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=BdYPa8WgG97nyvlAqE1i6kRW/YD0ail7aYVfwfVZyhw=;
        b=vf5L89SgSt6h3tdJsbzl1nmvuwOWTEyompJ8mKpNDajWlfJ5SO73ViTkbQBqJhx5pU
         XboyMqm5lSKTtdEH7PmBCdO25pMHE6Z7r50x/iuxOsavkWejbtity0ZCeXBedt+kMFS/
         CIHklcyrFCj+plojYTqB+q0tkBzosUXI2kEgFezQtpTNfHKu1c73la6xF8zZXlF3gSb4
         hiepKOeiV6Bll+ncLllLXAgYeWe92G2chp1C/nthYBBS7MA3u7rCsUVvUIEm8fb5ur+P
         ONH3oxHFMeE2jCJ7mt4zMajyVJbIvwUsdAJYYHyaJYsitnUWOUwEVeJjGizY58Nqg0mL
         r5MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=BdYPa8WgG97nyvlAqE1i6kRW/YD0ail7aYVfwfVZyhw=;
        b=b/qghF6WW3zknNi86vDDb0MfnWN27xQDO6bllHEkTI8AK8RpXcsspleDJxY8Ibj9cc
         BKf1HX2RZEsy20FiFvEd0svDBb26Hs86EcwVb5sPkMBkff1RmWKTN9jpo/I6uSdH+g0l
         DGkFn0AjmiyGBldm6ahs3fXFkJ9ZNVq9CcfX9HrATEB71GqWlxVzoN9Y3UZjsFlau/MX
         TuN2qee0mkyKuRdbY/QH6jgkA4tPzUI6O8XZkNgRk4GVLRIvfCWkHpQEqbLaDko24zI7
         wVJ36W7+kfztX74lSBtox3HkXjg0/TEVCr1H0fQvS7PQiIsy94ktuwhv7ivjzdljVT4S
         ZiHw==
X-Gm-Message-State: AMke39lnZXrKTBm6V3GUzrpT+EvMkWj3eixvLba8Kwg6e92xeZDzHZ40LAsAVV7EQ38L8w==
X-Received: by 10.99.228.69 with SMTP id i5mr26106101pgk.63.1487575439311;
        Sun, 19 Feb 2017 23:23:59 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id i15sm11794092pfj.0.2017.02.19.23.23.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Feb 2017 23:23:58 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v4] staging: rtl8192u: Remove ternary operator
Date: Mon, 20 Feb 2017 12:51:42 +0530
Message-Id: <1487575302-12460-1-git-send-email-gs051095@gmail.com>
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
Changes in v4:
        - Aligned operands for && and added a newline.
Changes in v3:
        - Converted ? operator to &&.
Changes in v2:
        - Converted ? operator to if else statements.

---
---
 drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
index c27397b..b17bdf9 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
@@ -977,16 +977,18 @@ void HTOnAssocRsp(struct ieee80211_device *ieee)
 	HTSetConnectBwMode(ieee, (HT_CHANNEL_WIDTH)(pPeerHTCap->ChlWidth), (HT_EXTCHNL_OFFSET)(pPeerHTInfo->ExtChlOffset));
 
 //	if (pHTInfo->bCurBW40MHz)
-		pHTInfo->bCurTxBW40MHz = ((pPeerHTInfo->RecommemdedTxWidth == 1)?true:false);
+
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
+
+	pHTInfo->bCurShortGI40MHz = pHTInfo->bRegShortGI40MHz &&
+				    (pPeerHTCap->ShortGI40Mhz == 1);
 
 	//
 	// Config TX STBC setting
@@ -997,9 +999,8 @@ void HTOnAssocRsp(struct ieee80211_device *ieee)
 	// Config DSSS/CCK  mode in 40MHz mode
 	//
 	// TODO:
-	pHTInfo->bCurSuppCCK =
-		((pHTInfo->bRegSuppCCK)?((pPeerHTCap->DssCCk==1)?true:false):false);
-
+	pHTInfo->bCurSuppCCK = pHTInfo->bRegSuppCCK &&
+			       (pPeerHTCap->DssCCk == 1);
 
 	//
 	// Config and configure A-MSDU setting
-- 
2.7.4


