X-GM-THRID: 6339160078188281856
X-Received: by 10.36.237.77 with SMTP id r74mr1249888ith.40.1475950721470;
        Sat, 08 Oct 2016 11:18:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.123.72 with SMTP id q69ls2279892itc.3.canary; Sat, 08 Oct
 2016 11:18:38 -0700 (PDT)
X-Received: by 10.107.52.66 with SMTP id b63mr379539ioa.37.1475950718654;
        Sat, 08 Oct 2016 11:18:38 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id um12si6713999pab.2.2016.10.08.11.18.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 11:18:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 128so3122147pfz.3
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 11:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=eRHtAnxSf9wZr8yMQaLlv84JpgbsJ9/D4SRLbX8HdHk=;
        b=neTaGezWR9JJxJByFwC/P4EhtAeAwY4+k7P7tFeZ8Udgyu/9oAdkpXGv9qPIU4nUM4
         8Xo0UoPp5x3SOwVYxU/tTOyEMr5BYsUjJBnFMGh4vnbTk5T8wNq5qHVymkYSFsEElV+p
         3q1GGR6JojpJMas2Wxn7f3gi7Zix2VHxbr8FBLn2e2ujZJv1keHJd7+x46ByMxfsVOZA
         Hwbdls//XsJxSjV9DURUcIcl7VMY/nybuwbV7BYJErr25QYbQaCkyfOq5ZQy40WZD8X2
         1j2eXiaGUrAlQqWYKfIJ5+vdzCLM8sbmTP/Ub7bE7lhvrqIF570O8UpBfg2cInw371qB
         PE0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eRHtAnxSf9wZr8yMQaLlv84JpgbsJ9/D4SRLbX8HdHk=;
        b=M6YmZa6VcYxRQKGSeYBgKCXCyp1Kksh/MIIIQxndTNwswJ57DIH+buf8I2w9NlVgM1
         ujTTP+hgsSoAIE/+dVfcKoqpVMAPqG1cEjn0Eg6pQvKoPKY11C3k4uZ/K4Cz2nMBwnEs
         JTw7WGmBzHbSjic8VXUv0sgm4kTTobwvx/DyFQrFrlDQA4axtzEOeVsxLdD4fJ/xjxnA
         yuY1RckYzjev4lbSIcnlQ3uYWEZ7NEIphLz4vOidNtNWizWzaGgvT/vUm1ge0mRNoxAU
         Id5I11UxNPwGC/UDwzr/y4YP/f8Ey6HtMGL+OX6H641x4uFx90nX2ZFnZZbYI2gud4d+
         0NoQ==
X-Gm-Message-State: AA6/9RkHagylonZg5R4cni8gSq/6xbKFbPXNoJ5YOmXEkNJWeEF/np9/iFWg1AnDmPI+mw==
X-Received: by 10.98.90.133 with SMTP id o127mr38945651pfb.61.1475950718009;
        Sat, 08 Oct 2016 11:18:38 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.183.226])
        by smtp.gmail.com with ESMTPSA id yx8sm6959636pac.29.2016.10.08.11.18.30
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 11:18:36 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Sat, 08 Oct 2016 23:48:25 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Remove ternary operator
Date: Sat,  8 Oct 2016 23:48:23 +0530
Message-Id: <1475950703-7980-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Relational and logical operators evaluate to either true or false.
Explicit conversion is not needed so remove the ternary operator.
Done using coccinelle:

@r@
expression A,B;
symbol true,false;
binary operator b = {==,!=,&&,||,>=,<=,>,<};
@@
- (A b B) ? true : false
+ A b B

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h      | 2 +-
 drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c | 8 ++++----
 drivers/staging/rtl8192u/ieee80211/rtl819x_Qos.h    | 2 +-
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 077ea13..0466e72 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -411,7 +411,7 @@ typedef struct ieee_param {
 #define IEEE80211_QCTL_TID              0x000F
 
 #define	FC_QOS_BIT					BIT(7)
-#define IsDataFrame(pdu)			( ((pdu[0] & 0x0C)==0x08) ? true : false )
+#define IsDataFrame(pdu)			((pdu[0] & 0x0C) == 0x08)
 #define	IsLegacyDataFrame(pdu)	(IsDataFrame(pdu) && (!(pdu[0]&FC_QOS_BIT)) )
 //added by wb. Is this right?
 #define IsQoSDataFrame(pframe)  ((*(u16 *)pframe&(IEEE80211_STYPE_QOS_DATA|IEEE80211_FTYPE_DATA)) == (IEEE80211_STYPE_QOS_DATA|IEEE80211_FTYPE_DATA))
diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
index c27397b..8faa3d6 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
@@ -977,16 +977,16 @@ void HTOnAssocRsp(struct ieee80211_device *ieee)
 	HTSetConnectBwMode(ieee, (HT_CHANNEL_WIDTH)(pPeerHTCap->ChlWidth), (HT_EXTCHNL_OFFSET)(pPeerHTInfo->ExtChlOffset));
 
 //	if (pHTInfo->bCurBW40MHz)
-		pHTInfo->bCurTxBW40MHz = ((pPeerHTInfo->RecommemdedTxWidth == 1)?true:false);
+		pHTInfo->bCurTxBW40MHz = (pPeerHTInfo->RecommemdedTxWidth == 1);
 
 	//
 	// Update short GI/ long GI setting
 	//
 	// TODO:
 	pHTInfo->bCurShortGI20MHz=
-		((pHTInfo->bRegShortGI20MHz)?((pPeerHTCap->ShortGI20Mhz==1)?true:false):false);
+		((pHTInfo->bRegShortGI20MHz)?(pPeerHTCap->ShortGI20Mhz == 1):false);
 	pHTInfo->bCurShortGI40MHz=
-		((pHTInfo->bRegShortGI40MHz)?((pPeerHTCap->ShortGI40Mhz==1)?true:false):false);
+		((pHTInfo->bRegShortGI40MHz)?(pPeerHTCap->ShortGI40Mhz == 1):false);
 
 	//
 	// Config TX STBC setting
@@ -998,7 +998,7 @@ void HTOnAssocRsp(struct ieee80211_device *ieee)
 	//
 	// TODO:
 	pHTInfo->bCurSuppCCK =
-		((pHTInfo->bRegSuppCCK)?((pPeerHTCap->DssCCk==1)?true:false):false);
+		((pHTInfo->bRegSuppCCK)?(pPeerHTCap->DssCCk == 1):false);
 
 
 	//
diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_Qos.h b/drivers/staging/rtl8192u/ieee80211/rtl819x_Qos.h
index 49c23c7..526123a 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_Qos.h
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_Qos.h
@@ -527,6 +527,6 @@ typedef struct _BSS_QOS{
 //Added by joseph
 //UP Mapping to AC, using in MgntQuery_SequenceNumber() and maybe for DSCP
 //#define UP2AC(up)			((up<3)?((up==0)?1:0):(up>>1))
-#define IsACValid(ac)			((ac<=7 )?true:false )
+#define IsACValid(ac)			(ac <= 7)
 
 #endif // #ifndef __INC_QOS_TYPE_H
-- 
1.9.1


