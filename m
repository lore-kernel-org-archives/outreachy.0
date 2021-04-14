X-GM-THRID: 6950903323792769024
X-Received: by 2002:a17:902:ed87:b029:eb:a96:7892 with SMTP id e7-20020a170902ed87b02900eb0a967892mr12028054plj.47.1618383390406;
        Tue, 13 Apr 2021 23:56:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b7c7:: with SMTP id v7ls724576plz.0.gmail; Tue, 13
 Apr 2021 23:56:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw7Z4GjoYR021DmUVpu2hb+Q3Utd5UdUCofuHutxNQ0vv39Xmq9WJov/YixuChmFXBf84Ar
X-Received: by 2002:a17:903:31cc:b029:e4:bd48:c8e3 with SMTP id v12-20020a17090331ccb02900e4bd48c8e3mr35593172ple.40.1618383389174;
        Tue, 13 Apr 2021 23:56:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618383389; cv=none;
        d=google.com; s=arc-20160816;
        b=RCWTcqR7KA3P+cZ+0k+k+gjFAuHFWe2dbnOcBGoKVithccSI2hUSGacRtbLSkjNTCl
         pr3Nx9uw10xvlsVyTwUmnmWyVtxgKep6aVjo3MmnJq5uRfsTc7+HNOmKah/zuszbsyO6
         NEF3yWsi9ZCrGlL4DdZZuTPZbrHfcUaLFYvYDWIc8EQ49BgXdzF+KUU5AilEeQWCPOit
         RfAe6i2I9looO7LbKo/tPGgUz0JIJZ/8Ln3KD+RKPBH6qu62PpZxZv7QERpkCRbdrV8d
         oz9kW41ml3Sx4d4hW7J1KF22b0tD/O9P4ff8B0S34u5yxnjQMNoIEJcbLwdGCX5HB7+J
         NKEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=QAdy8nO8sPO8ys8krsfaC4uTkzbD3JcH3dkMY189rx4=;
        b=P5YEQu6bIvd35FVkpfoiMeTuzzy8gRnNmoTuAhe5V43aQ4S2xRQU9pwjGHPDIrOLX5
         BUZPxWDO84DpcZoE9whgEQQk3ivqMnen0Bdb7p9jeH+mYVtx0QIOBb8I3QQwrFX+Aq0d
         vTFtkLzY0mxG6dsal9ja/uXFuKV+oBNzF32z5Z77m32o3a8gkdI3Fse5fcCSxY+Gqi/a
         gWa9v0TUqbIeUViK2fMDeFodrgKnbx9mmAh9Cp4UId3vwAWzliFrF7Qj+DBiGQK5cpsj
         PhtOothCQxpuEOUkH6tQcOz4SS/ab4y6koCscMemv29oUh/UU4pA/NpeOxVA24fV1/1w
         Z/7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Ps0hH/LU";
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id t5si1538357pgv.4.2021.04.13.23.56.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 23:56:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Ps0hH/LU";
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42d.google.com with SMTP id y16so13103495pfc.5
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 23:56:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=QAdy8nO8sPO8ys8krsfaC4uTkzbD3JcH3dkMY189rx4=;
        b=Ps0hH/LUdoDEUpfQpfyZNEhz4kWUppQUJJkxmfLlhtWchAhGJ2f/CfwFFg2cU4cjoF
         9o8fbNgAkf3X4fcSAxQUoPrRHvHJqSjwCtePv0LgtRqvZEn9/h505kJcgbFVXrJ8RBe+
         5YwbBYDLpQ1TYbO4baCrVCbZgIW1JKIWnT8hlNWe3gWdk5/UApWTDkRvAXolsCyutQEX
         K7K9VOrrWpSh+gGdKwNVkFbSaoAgER3O5lkM0wJsmx2UOub45Qc81/vNIzlTag1LDHf7
         IxW5GYpPBXrfGNYkL0EzHp0GPTgNSTG+ULEFCeuMn/x1aPPbVN5R7iD0nXlX90cXO7A4
         sNlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=QAdy8nO8sPO8ys8krsfaC4uTkzbD3JcH3dkMY189rx4=;
        b=FEQjgRLCnhjBBgj8gBWqfJD9ecaabjGvJJGH0Cst9M0dmdAOPV+OzkuK0SuyxrTsjJ
         HDVtEzQdfGUoIh/B16QUzpt/8LlVoAb/3rF784jfdZUMEhFwlaDOnlTaEK3ikw0E9QXm
         7D8v9axxW+wF2TSUjsgsYirAlbQPrCIJdgoVcSLDYUxh24q9hydKF7qVdhVqnK5gRSgO
         wXee0Aqq+wOh2yx+uFOv3ZtzUvZEqWnwr6M8V50DOlLcmcobULtOaTfUJKs00my3xw5E
         e0kcTf2FHgzrXcobcqXDUIOAuCnmfF2uVWwmiVDBfbB2+wVXudxChpmZc5LouGBXuDkJ
         eLAw==
X-Gm-Message-State: AOAM5325GnqTBx2z398He8yuJPQdOeI2FbpW6YCnEtoyOYjnuraf3vZT
	Tt+eW0NDjBgoUYMg+pZIAnA=
X-Received: by 2002:a65:4887:: with SMTP id n7mr36018509pgs.14.1618383388867;
        Tue, 13 Apr 2021 23:56:28 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id g24sm14123731pgn.18.2021.04.13.23.56.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 23:56:28 -0700 (PDT)
Date: Wed, 14 Apr 2021 12:26:20 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org, davem@davemloft.net, kuba@kernel.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v2 5/5] staging: rtl8192e: removed multiple blank lines
Message-ID: <2bfe551f152a611cc49a71a4984f41ef7ee69df5.1618380932.git.mitaliborkar810@gmail.com>
References: <cover.1618380932.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618380932.git.mitaliborkar810@gmail.com>

Removed multiple blank lines to make code better and neater.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 
Changes from v1:- No changes.

 drivers/staging/rtl8192e/rtl819x_HTProc.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index b11b0054d8cb..955442b95bdc 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -214,7 +214,6 @@ static u8 HTIOTActIsDisableMCS14(struct rtllib_device *ieee, u8 *PeerMacAddr)
 	return 0;
 }
 
-
 static bool HTIOTActIsDisableMCS15(struct rtllib_device *ieee)
 {
 	return false;
@@ -236,7 +235,6 @@ static u8 HTIOTActIsMgntUseCCK6M(struct rtllib_device *ieee,
 {
 	u8	retValue = 0;
 
-
 	if (ieee->pHTInfo->IOTPeer == HT_IOT_PEER_BROADCOM)
 		retValue = 1;
 
@@ -315,7 +313,6 @@ void HTConstructCapabilityElement(struct rtllib_device *ieee, u8 *posHTCap,
 	pCapELE->PSMP = 0;
 	pCapELE->LSigTxopProtect = 0;
 
-
 	netdev_dbg(ieee->dev,
 		   "TX HT cap/info ele BW=%d MaxAMSDUSize:%d DssCCk:%d\n",
 		   pCapELE->ChlWidth, pCapELE->MaxAMSDUSize, pCapELE->DssCCk);
@@ -390,7 +387,6 @@ void HTConstructInfoElement(struct rtllib_device *ieee, u8 *posHTInfo,
 
 		memset(pHTInfoEle->BasicMSC, 0, 16);
 
-
 		*len = 22 + 2;
 
 	} else {
@@ -541,7 +537,6 @@ void HTOnAssocRsp(struct rtllib_device *ieee)
 	else
 		pPeerHTInfo = (struct ht_info_ele *)(pHTInfo->PeerHTInfoBuf);
 
-
 #ifdef VERBOSE_DEBUG
 	print_hex_dump_bytes("%s: ", __func__, DUMP_PREFIX_NONE,
 			     pPeerHTCap, sizeof(struct ht_capab_ele));
@@ -562,7 +557,6 @@ void HTOnAssocRsp(struct rtllib_device *ieee)
 			       ((pPeerHTCap->DssCCk == 1) ? true :
 			       false) : false);
 
-
 	pHTInfo->bCurrent_AMSDU_Support = pHTInfo->bAMSDU_Support;
 
 	nMaxAMSDUSize = (pPeerHTCap->MaxAMSDUSize == 0) ? 3839 : 7935;
@@ -750,7 +744,6 @@ void HTResetSelfAndSavePeerSetting(struct rtllib_device *ieee,
 		if (bIOTAction)
 			pHTInfo->IOTAction |= HT_IOT_ACT_DISABLE_ALL_2SS;
 
-
 		bIOTAction = HTIOTActIsDisableEDCATurbo(ieee, pNetwork->bssid);
 		if (bIOTAction)
 			pHTInfo->IOTAction |= HT_IOT_ACT_DISABLE_EDCA_TURBO;
-- 
2.30.2


