X-GM-THRID: 6674450234072891392
X-Received: by 2002:a1f:2409:: with SMTP id k9mr2063556vkk.19.1554029352970;
        Sun, 31 Mar 2019 03:49:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:bd04:: with SMTP id y4ls1409493vsq.2.gmail; Sun, 31 Mar
 2019 03:49:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxjK/iOfd3qwRH1zXw8YRGta83esVZsaWLoU7/FzrnJKTTyMcmFA5uVRwHfvTmznFu1/khV
X-Received: by 2002:a67:83c1:: with SMTP id f184mr6388067vsd.42.1554029352463;
        Sun, 31 Mar 2019 03:49:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554029352; cv=none;
        d=google.com; s=arc-20160816;
        b=JC0ARbwC9swhLU2KKOYp1DalWc3nHCdf7WngAp7fmC4dBH8qKvULvLt2R6QS8+mBIN
         A3exkGmGm0ZkLgwV6T8EWv2y9i5aQrnlAiMD4xBBGjimxbSWz8q4aw3H1apjKTTVqk5N
         9dPrHZeQ80wvTvoAdNAkPt0xfYnIzBnndwLxV0nYOs/DaMD/FBhwK0BsgpExHTOGl55R
         u2VJt8WSqHzsTLHUilVLlSqYQ4J5kZqyxLKlg9CluEYMfKyRRqDZv00KDz4Z5cwecjxI
         5+4j/tggL3xmUoO5k1pBSOFbNndh+gor5UC0SWT4EWA4HM+COA666sFmwFUKvPRVc7a4
         NFPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=627qxIhOm4OvLesy55147n/nCM+FFkAEW7RtWJ5wylM=;
        b=QBL1ZhUwzccCMv9kiB4aqEVE9i1BGKo+jef2dYEbRwfmun5uoAnS4pBJ1ph80TNecq
         g9v/b9VgABirqGG8fKiZ9RI0J+o2BlNZ64jB0yeN0DXKYFQaocjyu7IH9KyYyFGCpXD8
         7Prrfn/IcCghsj3+xq8c7tpcLNDxNfv2oNZjQgWZpuXV49CaOuI1FOgwZYAZt7sgCcZH
         12KrjmbGxv8sbjdKTxEH3DbI8p60DCejOA4xbZsgqQ20zXbgShXtj44ZpYBbaS6z50xo
         ahzdg9T2ot2VSmsRE1lBRVFm99TrHGwzJdkFsk2+Irku1yKtXszemJhize3Gg+WYvXqd
         qrbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OjsVBXC7;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id n74si547998vke.2.2019.03.31.03.49.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:49:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OjsVBXC7;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id i19so3128170pfd.0
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 03:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=627qxIhOm4OvLesy55147n/nCM+FFkAEW7RtWJ5wylM=;
        b=OjsVBXC78esfSNhoiV9u6mJoIKGWcjgj91T87IpiNnp+8g36AJkZEIdjvZLcjS25Np
         iNmUwqdMHYyeaE49XtPevbgQJ30khSioQesJ2w5oWsJgWhxumHV9EZotUz8iN+0SZ2nB
         ianGeVOYBX4jmPNiRVkS/OOMODLUbeMSp65M1Re5RCLQZ0Pg78JlvW7wB89rYo+e3vNp
         JTtedQQ2Jv6N5Sj9SQ/xVPQdcIIbTaeHTD76ENYkNrIj/woMrCijyfe8lfKqkuU54u9W
         tvCedXckGyrztPKC/lqjTSKs+nXDnd7PVx0xDbc2KA56KX5ZhYr0XdXNRHWsvi2A+wHx
         HWSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=627qxIhOm4OvLesy55147n/nCM+FFkAEW7RtWJ5wylM=;
        b=LZOi/DHxQDIUFs4vOkjKqyJytoEG0Adqdte0oKvrIdSWlaYwyE35qX4LCCRgAovhXe
         oKeABUFhcZjdavPIinFzYRLs3+RqXV/5TU/rInzWX2keoT+SZxKo+W+Grn8bKBiGsPQ0
         CPpHOVnm5GB0FdokQNkKWidZlebbFEGWgnFWOul2j+OAKzuebNQsO1VhRXSJAkl082H4
         KubyMM5EqRDo+hrQ4lbSan7a5tHBZx4UCOstnrLauFFkZxzORIaGpKftLJ6cj/PIJp/M
         L+l2dTVDXzmLj6HzaUfMLmhDBltdOouG4vFKYjgh5o1TL4qbvTfOwNdVmC6/xnHP4BS1
         0t0g==
X-Gm-Message-State: APjAAAWo3f3yvJmA6f/rsRqMdKcxeKJ+QP2dQ2odv77Kfn7PC3WCATmP
	8z6OGDcJ3Rpy5IAXjaO69i1pqc94
X-Received: by 2002:a63:1659:: with SMTP id 25mr11744124pgw.275.1554029351258;
        Sun, 31 Mar 2019 03:49:11 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id g4sm10014361pfo.38.2019.03.31.03.49.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 03:49:10 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 1/9] staging: rtl8723bs: os_dep: ioctl_linux.c: Fix indentation issue.
Date: Sun, 31 Mar 2019 16:18:36 +0530
Message-Id: <c1a8790575615dcf3af1fc5bb75092c3f93a3c68.1554028003.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>

To fix the indentation issue remove spaces and add tabs.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 85 +++++++++++++-------------
 1 file changed, 41 insertions(+), 44 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index ec336a5..e6f24b8 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -939,30 +939,30 @@ static int rtw_wx_get_mode(struct net_device *dev, struct iw_request_info *a,
 
 
 static int rtw_wx_set_pmkid(struct net_device *dev,
-	                     struct iw_request_info *a,
-			     union iwreq_data *wrqu, char *extra)
+			    struct iw_request_info *a,
+			    union iwreq_data *wrqu, char *extra)
 {
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	u8          j, blInserted = false;
-	int         intReturn = false;
+	u8 j, blInserted = false;
+	int intReturn = false;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
-        struct iw_pmksa*  pPMK = (struct iw_pmksa*)extra;
-        u8     strZeroMacAddress[ ETH_ALEN ] = { 0x00 };
-        u8     strIssueBssid[ ETH_ALEN ] = { 0x00 };
+	struct iw_pmksa*  pPMK = (struct iw_pmksa*)extra;
+	u8 strZeroMacAddress[ ETH_ALEN ] = { 0x00 };
+	u8 strIssueBssid[ ETH_ALEN ] = { 0x00 };
 
 	/*
-        There are the BSSID information in the bssid.sa_data array.
-        If cmd is IW_PMKSA_FLUSH, it means the wpa_suppplicant wants to clear all the PMKID information.
-        If cmd is IW_PMKSA_ADD, it means the wpa_supplicant wants to add a PMKID/BSSID to driver.
-        If cmd is IW_PMKSA_REMOVE, it means the wpa_supplicant wants to remove a PMKID/BSSID from driver.
-        */
+	There are the BSSID information in the bssid.sa_data array.
+	If cmd is IW_PMKSA_FLUSH, it means the wpa_suppplicant wants to clear all the PMKID information.
+	If cmd is IW_PMKSA_ADD, it means the wpa_supplicant wants to add a PMKID/BSSID to driver.
+	If cmd is IW_PMKSA_REMOVE, it means the wpa_supplicant wants to remove a PMKID/BSSID from driver.
+	*/
 
 	memcpy(strIssueBssid, pPMK->bssid.sa_data, ETH_ALEN);
-        if (pPMK->cmd == IW_PMKSA_ADD) {
-                DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
-                if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))
+	if (pPMK->cmd == IW_PMKSA_ADD) {
+		DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
+		if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))
 			return intReturn;
-                else
+		else
 			intReturn = true;
 
 		blInserted = false;
@@ -971,46 +971,43 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 		for (j = 0 ; j<NUM_PMKID_CACHE; j++) {
 			if (!memcmp(psecuritypriv->PMKIDList[j].Bssid, strIssueBssid, ETH_ALEN)) {
 				/*  BSSID is matched, the same AP => rewrite with new PMKID. */
-                                DBG_871X("[rtw_wx_set_pmkid] BSSID exists in the PMKList.\n");
-
+				DBG_871X("[rtw_wx_set_pmkid] BSSID exists in the PMKList.\n");
 				memcpy(psecuritypriv->PMKIDList[j].PMKID, pPMK->pmkid, IW_PMKID_LEN);
-                                psecuritypriv->PMKIDList[ j ].bUsed = true;
+				psecuritypriv->PMKIDList[ j ].bUsed = true;
 				psecuritypriv->PMKIDIndex = j+1;
 				blInserted = true;
 				break;
 			}
-	        }
-
-	        if (!blInserted) {
-		    /*  Find a new entry */
-                    DBG_871X("[rtw_wx_set_pmkid] Use the new entry index = %d for this PMKID.\n",
-                            psecuritypriv->PMKIDIndex);
-
-	            memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].Bssid, strIssueBssid, ETH_ALEN);
-		    memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].PMKID, pPMK->pmkid, IW_PMKID_LEN);
+		}
 
-                    psecuritypriv->PMKIDList[ psecuritypriv->PMKIDIndex ].bUsed = true;
-		    psecuritypriv->PMKIDIndex++ ;
-		    if (psecuritypriv->PMKIDIndex == 16)
-		        psecuritypriv->PMKIDIndex = 0;
+		if (!blInserted) {
+			/*  Find a new entry */
+			DBG_871X("[rtw_wx_set_pmkid] Use the new entry index = %d for this PMKID.\n",
+				  psecuritypriv->PMKIDIndex);
+			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].Bssid, strIssueBssid, ETH_ALEN);
+			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].PMKID, pPMK->pmkid, IW_PMKID_LEN);
+			psecuritypriv->PMKIDList[ psecuritypriv->PMKIDIndex ].bUsed = true;
+			psecuritypriv->PMKIDIndex++ ;
+			if (psecuritypriv->PMKIDIndex == 16)
+				psecuritypriv->PMKIDIndex = 0;
 		}
-        } else if (pPMK->cmd == IW_PMKSA_REMOVE) {
-                DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_REMOVE!\n");
-                intReturn = true;
+	} else if (pPMK->cmd == IW_PMKSA_REMOVE) {
+		DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_REMOVE!\n");
+		intReturn = true;
 		for (j = 0 ; j<NUM_PMKID_CACHE; j++) {
 			if (!memcmp(psecuritypriv->PMKIDList[j].Bssid, strIssueBssid, ETH_ALEN)) {
 				/*  BSSID is matched, the same AP => Remove this PMKID information and reset it. */
-                                eth_zero_addr(psecuritypriv->PMKIDList[j].Bssid);
-                                psecuritypriv->PMKIDList[ j ].bUsed = false;
+				eth_zero_addr(psecuritypriv->PMKIDList[j].Bssid);
+				psecuritypriv->PMKIDList[ j ].bUsed = false;
 				break;
 			}
-	        }
-        } else if (pPMK->cmd == IW_PMKSA_FLUSH) {
-            DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_FLUSH!\n");
-            memset(&psecuritypriv->PMKIDList[ 0 ], 0x00, sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
-            psecuritypriv->PMKIDIndex = 0;
-            intReturn = true;
-        }
+		}
+	} else if (pPMK->cmd == IW_PMKSA_FLUSH) {
+		DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_FLUSH!\n");
+		memset(&psecuritypriv->PMKIDList[ 0 ], 0x00, sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
+		psecuritypriv->PMKIDIndex = 0;
+		intReturn = true;
+	}
 	return intReturn;
 }
 
-- 
2.7.4


