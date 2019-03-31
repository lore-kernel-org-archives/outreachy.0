X-GM-THRID: 6674450234072891392
X-Received: by 2002:a63:2c89:: with SMTP id s131mr835095pgs.120.1554029381112;
        Sun, 31 Mar 2019 03:49:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:164d:: with SMTP id 74ls2795273pfw.7.gmail; Sun, 31 Mar
 2019 03:49:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw7fbYMkHeGrML3zMQq7XoYxyYIY/ViEeI3HWnB1wO7nnPRFGeumBxGPMlUx2JyMJUqjQgb
X-Received: by 2002:a63:6bc4:: with SMTP id g187mr632981pgc.42.1554029380526;
        Sun, 31 Mar 2019 03:49:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554029380; cv=none;
        d=google.com; s=arc-20160816;
        b=nfSNc45lK5vZSwC/XhKR2gJfQ3G/AYU2TwMrLXr2hbH6jp4KfwFuxyavAEDYWlZBAZ
         xataSMqynVZml9EjZa87D1ihE2xi/Df+dw/ZEQPH1oo9wY/Bk86CRX+L1G9avDAsSmda
         mkhtFcdLcjoqYtXmR9m7RxnO8qiAH/EDMiv+4ph7zjWcqpHP2xvd77AX8vRJljC7NkV8
         IX+UKs73V2IrtGstvcLyIpiCXWJpzyPRX/zkKwpz/aqgN+yZvoLJhyIZzAA2BVrKgwQh
         4hkLR0whq0svLZKo2Rnf6p8YNxYMmv45/qNN9mYQhO5T9KmhUCeAC1PUPCYANOUWktCG
         hhqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=eY0aSEqZnZTsMPR6ycbYqAB0ZJAvDp9HL7G5o147kKo=;
        b=hkSO5C4hYF51jGvrkoAV14ZiomXOL8VlZYeK7gKr3rEBPxxcfz3aNzjNLlDhe6gKti
         fUZmaPMTLN7xfWHI+mifUa3UoPoDOk4Wny1F+p7fuSEWnAA1EbAlOdeCLSUnaVXrppau
         vBUzmybdJSOC2Dk3xTrTdnqWpurQsDAad7a7B3qIOXBdV9hekqI7+UqOQIzkqPhhB607
         yYd6j6D8tQ9a3C5A8hUpfNfClCItxB6hVBGv8HK8b4mNHOkMuEWHTUMFB/iVRr3CQ8yy
         PfZcwZMDcz6DAQI0yIHjMiZacLUrXLcI2hUeCbaThSJnRcIL50ot73H95jphW0mcMkCF
         N++g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZKybsZDS;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id cu1si576138plb.4.2019.03.31.03.49.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:49:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZKybsZDS;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id y6so3082836plt.1
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 03:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=eY0aSEqZnZTsMPR6ycbYqAB0ZJAvDp9HL7G5o147kKo=;
        b=ZKybsZDSfzJDU2cmvIDmruM2nYi6uwMOIe09+gXigrpBWi6+wG4mpF3oLeMSWAflLO
         R+G7Wu8HMsoXrJQ8Y+//D0GZChjCdbexyoVwHZaI5/iMJcdRFXrz6C/Nuh/c0q+RBXd7
         e1DwNDRSPD3DkLmg5yH5EJQC25MWjAUEk7UtzldPZfEkYX8q0RE1KLOnOhLV/sSENfHT
         P/Bh9LiWxByTIrplfLEWXcqxzXPMkV3y36p0k5sYbUm9aUrZe0fC+EyH2VUxQvQ92s+5
         rUiID8F60VDMtBYmoetFZ+vE1Hyv5CPQVJXLKs0bF05WcMARzankaePwcAdNmSmMUXk+
         uQsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=eY0aSEqZnZTsMPR6ycbYqAB0ZJAvDp9HL7G5o147kKo=;
        b=A/yXHHJl82z2VNz8TaLh3+nGYqXLVn1HtGUL8FuzlfJzp5JWFv7RirvIjFXFAmsQZs
         MvOEvvODj3b1o6iLND1+CaTA+4BdJNaXjo4vM/PwIJLUB3mDBrUtlxbz5gpd+BX3yVqY
         qDl5qYbA9+MTOMBs3nigenNGCYe82kb5LVqzOU4e/eMV0q95ZtHrbvw/JrbKJLRlIuke
         LUNR12C1SC8OTgMlhWCy4ReMwdp3w+QvbsIhVBiOfGvmROqAK3/kD7mjrVUiiG3VCbiK
         BP8SqzGct0BNFXlxIkM6aXLR8rTreVTPIjXy7Luy1n9fmTvwpVCVmKxaCswsiixQMnPK
         48Pw==
X-Gm-Message-State: APjAAAVsdqS/k48TdgMTLgfcVizX5vPnmFFr2HA8LE9zJmqGgX9+zTCw
	pvNOvIyYteBHe5qTp7MFlOU7GyqD
X-Received: by 2002:a17:902:8345:: with SMTP id z5mr5378691pln.197.1554029379994;
        Sun, 31 Mar 2019 03:49:39 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id g4sm10014361pfo.38.2019.03.31.03.49.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 03:49:39 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 8/9] staging: rtl8723bs: os_dep: ioctl_linux.c: Avoid CamelCase "pPMK"
Date: Sun, 31 Mar 2019 16:18:43 +0530
Message-Id: <b3dc160e002c8ce058dcfce5bdb7d20ace0fe5ca.1554028003.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>

Change variable name "pPMK" to "pmk" to avoid camelcase style issue.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 21b2065..0fe11dd 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -946,7 +946,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 	u8 j, inserted = false;
 	int ret = false;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
-	struct iw_pmksa *pPMK = (struct iw_pmksa *)extra;
+	struct iw_pmksa *pmk = (struct iw_pmksa *)extra;
 	u8 strZeroMacAddress[ETH_ALEN] = { 0x00 };
 	u8 strIssueBssid[ETH_ALEN] = { 0x00 };
 
@@ -957,8 +957,8 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 	If cmd is IW_PMKSA_REMOVE, it means the wpa_supplicant wants to remove a PMKID/BSSID from driver.
 	*/
 
-	memcpy(strIssueBssid, pPMK->bssid.sa_data, ETH_ALEN);
-	if (pPMK->cmd == IW_PMKSA_ADD) {
+	memcpy(strIssueBssid, pmk->bssid.sa_data, ETH_ALEN);
+	if (pmk->cmd == IW_PMKSA_ADD) {
 		DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
 		if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))
 			return ret;
@@ -972,7 +972,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 			if (!memcmp(psecuritypriv->PMKIDList[j].Bssid, strIssueBssid, ETH_ALEN)) {
 				/*  BSSID is matched, the same AP => rewrite with new PMKID. */
 				DBG_871X("[rtw_wx_set_pmkid] BSSID exists in the PMKList.\n");
-				memcpy(psecuritypriv->PMKIDList[j].PMKID, pPMK->pmkid, IW_PMKID_LEN);
+				memcpy(psecuritypriv->PMKIDList[j].PMKID, pmk->pmkid, IW_PMKID_LEN);
 				psecuritypriv->PMKIDList[j].bUsed = true;
 				psecuritypriv->PMKIDIndex = j+1;
 				inserted = true;
@@ -985,13 +985,13 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 			DBG_871X("[rtw_wx_set_pmkid] Use the new entry index = %d for this PMKID.\n",
 				  psecuritypriv->PMKIDIndex);
 			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].Bssid, strIssueBssid, ETH_ALEN);
-			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].PMKID, pPMK->pmkid, IW_PMKID_LEN);
+			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].PMKID, pmk->pmkid, IW_PMKID_LEN);
 			psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].bUsed = true;
 			psecuritypriv->PMKIDIndex++;
 			if (psecuritypriv->PMKIDIndex == 16)
 				psecuritypriv->PMKIDIndex = 0;
 		}
-	} else if (pPMK->cmd == IW_PMKSA_REMOVE) {
+	} else if (pmk->cmd == IW_PMKSA_REMOVE) {
 		DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_REMOVE!\n");
 		ret = true;
 		for (j = 0 ; j<NUM_PMKID_CACHE; j++) {
@@ -1002,7 +1002,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 				break;
 			}
 		}
-	} else if (pPMK->cmd == IW_PMKSA_FLUSH) {
+	} else if (pmk->cmd == IW_PMKSA_FLUSH) {
 		DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_FLUSH!\n");
 		memset(&psecuritypriv->PMKIDList[0], 0x00, sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
 		psecuritypriv->PMKIDIndex = 0;
-- 
2.7.4


