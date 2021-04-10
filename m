X-GM-THRID: 6949336717140688896
X-Received: by 2002:a37:8c1:: with SMTP id 184mr17272544qki.472.1618018540887;
        Fri, 09 Apr 2021 18:35:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:5810:: with SMTP id g16ls4554721qtg.11.gmail; Fri, 09
 Apr 2021 18:35:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJydndGN2QyJLGndTLNoyvZSmnGQkoq4FbnDo+2+J/oGyFKaj490HAVHiHc05POqohD5wavC
X-Received: by 2002:ac8:5557:: with SMTP id o23mr15050156qtr.327.1618018540108;
        Fri, 09 Apr 2021 18:35:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618018540; cv=none;
        d=google.com; s=arc-20160816;
        b=A3ph+niyBxFXwlLXLznZhw0xYdxPxfxRukMgABh+ie+Spx0L70wfLtVPOAxhygwIir
         GDX4tcey3LFHwTyzTk2gEY7W3v74UG3fivENUe4oYwezepAQj9SdnYQmjY03FRmT81SG
         rZs0OOh6LOovQa66PqIMm76gsyWoG8hW7ZNM5Hl4IsLzhkYNSOpNtSgZ/Oaho213K8IV
         qLG4MMDEz7wahZcOLRiArUebqw9PR5Ea3G4eDeQasVQDF9XcOc0jHtYPn1IU2561k6BJ
         yhZSUC8aOtJC0JtEytch3dsIwD36Ppmi5qglafYtj6cOZ3P7JomSKDN91T3On9vBAwnx
         81fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=UypD/qBMLUB6o+gYkcDEMH+/YYMDUSAMeMwPH9I+xZM=;
        b=XmoLc48LMv6SMxgp8GDhk54y9G6bLZaSBFx6UOZmJHZnz2L+g7882n8nQS59PmES+V
         tzAybRZUy8JzdnwmgG9fqg+qKKUaFY6PQWzGAoS68KGKLM/eLlwObpFtdUExz4fZ5U4m
         Bqg63WPpktJFySYo6Ths51zznkWP2bB2TuiTwu87tA4RQ1ggYbB4cBLkl3of2qx/GmWT
         t8OEE8JzcakzQjxVRuodbeVThRN2p5oIXg9/JtvHr3rJFdDLyIZ0QoAddDVMTtiYfcL5
         NKG8vO7fgGRtxi/1eRr4Opv95JCI0eDb5fTA1MzNdqyW9yzC/2+BYzout2UiHAw6du6i
         0Irg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GsvFfEE+;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com. [2607:f8b0:4864:20::635])
        by gmr-mx.google.com with ESMTPS id w22si592082qtt.0.2021.04.09.18.35.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 18:35:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) client-ip=2607:f8b0:4864:20::635;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GsvFfEE+;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x635.google.com with SMTP id ay2so3589043plb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 18:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=UypD/qBMLUB6o+gYkcDEMH+/YYMDUSAMeMwPH9I+xZM=;
        b=GsvFfEE+y9TWs8iItPTW1QOD0A/A/DaDpzhKO86OcIYBj1qzNdOB1dbdsWfeWu6ZS4
         BWOdznuh1HBlhARQtZS0NC7xRURaVFH87nsZ0U0BWm76xdtvipaV44WRuUBnhk22uS/C
         SdwP0gVA9/DbO+g+eEVI6H6XoF812gZxyygh798ZjRNgpuwgLDns11TVY6+ZYXOZZEC4
         FGAeiEQtxExvJdxy7rLScE65q4SZCy/TTE/K1LUxZOWnW0V4QE6rpkozfHLAT8AfNDL2
         8AGlGEvBrLUrcrMIBozPMYItM4irGm5T0Vy+WHUim+1F94dl8pJrvl7NrMvtCVFkGX/F
         qFCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=UypD/qBMLUB6o+gYkcDEMH+/YYMDUSAMeMwPH9I+xZM=;
        b=jQNqHQeDpCbZLTPYVig7Q3nR4rMC8bj+HvX0tJ3HhepkyTi99uk27iL8AC9AGnPfpT
         f/ANQN3MBLUoLgTyTBfbODDP2FFSy3nWq8W2pDw07D/NNzuCJ/c372vbxtcSAq2uqsyS
         pVt6nCLHLfxAHBN5KbOtN5T6pCkzpUDMu+HETgr5aZPP+SI7FbF//97jnu06lO8MwTMl
         eamFKIVno+lMpHqxPpFrm3eKx4jseM/oX++mQH5X4e4UNXlTxhA7XTWe4JZgKLdjPm1Y
         AGtVblGACf6a+tOPNwflVcwhJHzPEpqge3aJh9qnD/PuR4lWt7urepr1WphakRR9TpkA
         3v8A==
X-Gm-Message-State: AOAM533rUkZMSk/ajJ1A/p1YH9TMJNCrHGidR2zqvoJguuqIhj7fYnFR
	qTvJ19t2xV+O67Qt+RQXn1Y=
X-Received: by 2002:a17:90b:33c7:: with SMTP id lk7mr16681837pjb.95.1618018539509;
        Fri, 09 Apr 2021 18:35:39 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id m7sm3312883pfd.52.2021.04.09.18.35.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 18:35:39 -0700 (PDT)
Date: Sat, 10 Apr 2021 07:05:33 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH 5/6] staging: rtl8192e: removed multiple blank lines
Message-ID: <YHEA5QW6kbhfZ4k+@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Removed multiple blank lines to make code better and neater.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/rtl8192e/rtl819x_HTProc.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index 12f31ba9aa13..2b9e275f42bb 100644
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
@@ -752,7 +746,6 @@ void HTResetSelfAndSavePeerSetting(struct rtllib_device *ieee,
 		if (bIOTAction)
 			pHTInfo->IOTAction |= HT_IOT_ACT_DISABLE_ALL_2SS;
 
-
 		bIOTAction = HTIOTActIsDisableEDCATurbo(ieee, pNetwork->bssid);
 		if (bIOTAction)
 			pHTInfo->IOTAction |= HT_IOT_ACT_DISABLE_EDCA_TURBO;
-- 
2.30.2


