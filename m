X-GM-THRID: 6388897294904721408
X-Received: by 10.129.44.197 with SMTP id s188mr6327539yws.143.1487535726594;
        Sun, 19 Feb 2017 12:22:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.16.34 with SMTP id h31ls8591425ote.3.gmail; Sun, 19 Feb
 2017 12:22:06 -0800 (PST)
X-Received: by 10.237.62.180 with SMTP id n49mr5572842qtf.85.1487535726277;
        Sun, 19 Feb 2017 12:22:06 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id s64si1230016pfk.0.2017.02.19.12.22.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 12:22:06 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id p185so449090pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Feb 2017 12:22:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=qN6W8VwRZMjD/oe0Nlw2ZbhwWNZ3E/6ar6HS6MDZRp0=;
        b=ksyuplrhE7ttzpdq/NWsWzt4cue7mEoHqJaIb1PHRyqWWIaIi8f/1ZwUrgJRKa+638
         0o3ZVq9RwC3mYF10ufgx0QXNy1C2BhjszRa002Iu42Q6Qvg1zYnWmbHNlLjDMtp1dtTq
         jHoSnbl1GX757ImwngzvboZjJMDc9rgUbxUaCSa/fF8jbNzjWn5CxGX34tOUxvLVqS8E
         qxypa9NbiAa0gWVxR6mwg0+fbEZGxlliYuYTwGwCS1rw7kAj+y8Nm9Eka3Xubsi8C3JS
         UI7XCQ2rR5Cp4QSlOQAeX14/rkFu5YiIipnq2C2z1GCpbJ2yLdbQcYEgcsWIcW8Fkvzt
         fRoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=qN6W8VwRZMjD/oe0Nlw2ZbhwWNZ3E/6ar6HS6MDZRp0=;
        b=TqMf7q+UZSTJdAnWcdPyKKSlXeYiPO7FY8Lja+Kk1/adv4MXtbDjJwcz6sPQ1pn3c4
         TR5zXMbgfWiVI9uo8UweDmpMZiBnCyfV2vzQuq6OPccVvf6bnG2+AeXgq/cbAvju2c5h
         4DBMvs5vwRNQ6kcNXgj1mzyx6VJPRI+tUbTK2Hxv0q4xUJ7YILO4Y7SHAc0Tl/rznhyv
         BtRuPmyPzKk/AaxMNr+PBWXSH+U52omufcf5H0cCpsX/mtAe1tcnTPQxaPo1QUeHU3+d
         vGBl9gedi99iuZ7OcD2RWurlbLXJJm3fHPtHNBnVdUH2kSZxW9r5xQk2rAbzSX59r1zT
         BM6A==
X-Gm-Message-State: AMke39nAqXsSUSJ13aJTplhDPzNHAbtANNPEfD3DWHcO7Gw7WJB7WvWvcqyF13ClWR9c0g==
X-Received: by 10.98.215.70 with SMTP id v6mr21681903pfl.141.1487535725927;
        Sun, 19 Feb 2017 12:22:05 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id 10sm30728352pfs.113.2017.02.19.12.22.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Feb 2017 12:22:05 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2] staging: rtl8192u: Remove ternary operator
Date: Mon, 20 Feb 2017 01:49:49 +0530
Message-Id: <1487535589-22437-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Relational and logical operators evaluate to either true or false.
Lines with ternary operators were found using coccinelle script and
conversion to if else statements was done manually to improve
readability.

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
Changes in v2:
        - Converted ? operator to if else statements.
---
 .../staging/rtl8192u/ieee80211/rtl819x_HTProc.c    | 24 +++++++++++++++-------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
index c27397b..cc4394e 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
@@ -977,16 +977,24 @@ void HTOnAssocRsp(struct ieee80211_device *ieee)
 	HTSetConnectBwMode(ieee, (HT_CHANNEL_WIDTH)(pPeerHTCap->ChlWidth), (HT_EXTCHNL_OFFSET)(pPeerHTInfo->ExtChlOffset));
 
 //	if (pHTInfo->bCurBW40MHz)
-		pHTInfo->bCurTxBW40MHz = ((pPeerHTInfo->RecommemdedTxWidth == 1)?true:false);
+	if (pPeerHTInfo->RecommemdedTxWidth == 1)
+		pHTInfo->bCurTxBW40MHz = true;
+	else
+		pHTInfo->bCurTxBW40MHz = false;
 
 	//
 	// Update short GI/ long GI setting
 	//
 	// TODO:
-	pHTInfo->bCurShortGI20MHz=
-		((pHTInfo->bRegShortGI20MHz)?((pPeerHTCap->ShortGI20Mhz==1)?true:false):false);
-	pHTInfo->bCurShortGI40MHz=
-		((pHTInfo->bRegShortGI40MHz)?((pPeerHTCap->ShortGI40Mhz==1)?true:false):false);
+	if (pHTInfo->bRegShortGI20MHz == 1)
+		pHTInfo->bCurShortGI20MHz = (pPeerHTCap->ShortGI20Mhz == 1);
+	else
+		pHTInfo->bCurShortGI20MHz = false;
+
+	if (pHTInfo->bRegShortGI40MHz == 1)
+		pHTInfo->bCurShortGI40MHz = (pPeerHTCap->ShortGI40Mhz == 1);
+	else
+		pHTInfo->bCurShortGI40MHz = false;
 
 	//
 	// Config TX STBC setting
@@ -997,9 +1005,11 @@ void HTOnAssocRsp(struct ieee80211_device *ieee)
 	// Config DSSS/CCK  mode in 40MHz mode
 	//
 	// TODO:
-	pHTInfo->bCurSuppCCK =
-		((pHTInfo->bRegSuppCCK)?((pPeerHTCap->DssCCk==1)?true:false):false);
 
+	if (pHTInfo->bRegSuppCCK == 1)
+		pHTInfo->bCurSuppCCK = (pPeerHTCap->DssCCk == 1);
+	else
+		pHTInfo->bCurSuppCCK = false;
 
 	//
 	// Config and configure A-MSDU setting
-- 
2.7.4


