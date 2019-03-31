X-GM-THRID: 6674450234072891392
X-Received: by 2002:a24:1c4a:: with SMTP id c71mr4488355itc.11.1554016548549;
        Sun, 31 Mar 2019 00:15:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:d06:: with SMTP id 6ls1903968itx.5.gmail; Sun, 31 Mar
 2019 00:15:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxJudiYRR/qKk0ZT/eHR50oJPtAhktaTR6F7JCPZNQwFn05FUd1U9A0saGbY0gVXdzi0Wz/
X-Received: by 2002:a24:628b:: with SMTP id d133mr3296899itc.2.1554016547621;
        Sun, 31 Mar 2019 00:15:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554016547; cv=none;
        d=google.com; s=arc-20160816;
        b=Hzb6OVUd/l4TPz1xewGd0ebYLQfTNeFdpeyW1OvVFhp4Qk+Ex4oO3T6ImTjGX31fFl
         YR/mHqCVexTEHJ1F5Gm2ZERvuSu8KmAg5J86to0oM4xueiVZN2yt+LSZtHuLIONZhEQ2
         VOwO46Zo0UAsfK5HUQVsBR0g82eCxuznPm9XvF8e0klypwHJpMWaFfhFbNPTJZLCPBQE
         yIiVWHPQ/U/dL0QCmEOl0GLKMZ+iFDzcQd0pedTRXi6W4oKUr1W+q0tv7jIpSK8OLKG1
         S9pajuVtrLQjJ06/fyJs4YIt1TG2eO79JFi/OIxqF5yaxoAgg5aGnVtvJ8yoVw0DXy3a
         TrbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=627qxIhOm4OvLesy55147n/nCM+FFkAEW7RtWJ5wylM=;
        b=nw7BUOVvn1eX4xW1uZAiihg5iwNiVoLtefACNO3BktLNATH4x3TSZO1obtE+nJ9XDK
         eVD6vWMTTY6IOthz095D+YWF2WTSTysGEcc1Qu8nxvGr+titwaWGXfLizik2oxvwj6g2
         krpYtNqanlOM8QpDtWaPb3DxMEpnj3GjjKj3toeEN/kGLZS+buFO8SItpvHPxZPz076h
         Nngj1Dj4o871g7NQaqsdYNXlj0YiN7JXEDtyi51bMex+3TDypEWnxbJ1uovYKPeqK9tg
         KYnxXkuOMPVbZaCrUyjrasvMhipz57ATBwz9H2xtJnKH5EB2j2WpsyhthpHvVLQHxiyi
         7z+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OcCM95Ul;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id w136si332062itb.2.2019.03.31.00.15.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 00:15:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OcCM95Ul;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id t16so1072040plo.0
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 00:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=627qxIhOm4OvLesy55147n/nCM+FFkAEW7RtWJ5wylM=;
        b=OcCM95UlkuHNYQnHJDFdJACZvcKDdbJ21oLRy0t1iRtqU8BbnEKoK41cc8E6jM2zSw
         xo5WxtxcpUo8cF5k56PqyN8eCGNIwQESUyjY3WXJYSPxJpIonfOPUjvXwRwQhaUCx2Aq
         dHjD44wySoXRyHV05SRUEiXWO5dAsja1jy4QNYszb+s1nT5Q5djMvrEGw/qZaAXphWGe
         tBPK8nOoa2xYUjNEQxxd2Uq3U46p67OOo6BgfP6NrYE1qDaOh6eH+WyUW4c7S9Mzhw22
         kmrTCQ8wShzTlSXdEjrTVUA9LX58pptYE2JH/TThuVYI+VNSjRXXENC8nHqy0yuc6Lh2
         6Ivw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=627qxIhOm4OvLesy55147n/nCM+FFkAEW7RtWJ5wylM=;
        b=dQW7d52NdC/LFtJeWFGPk+nvtOFLgcIA1xKAcbwznjcinuFpzGzQ8AI9Gl6VXvT0a3
         5qu1VotkE6u4z5voz9ICXw/Zeb35A4NZLaaxqGs0yaFPWNB1fuK+BSOSvYWaSUVQXJpt
         GXo8OUlnUhs/ecDVTve2gcK4r+GpownVnhzv9vfclZiQZpXstwaQkL1vnLckgJOJHHWQ
         EVAxzZn0VBeODJMZsQZYuWER176LCJCNqLbob3UisFH6Htv5YPVIYZCzRINLZxXY7r9D
         H7+T/ko2anMoOYOsdTxs54yYL55xp5kbWzhUWx5yO0ZVitYZHgQQTLLei6TFZl7IfWGY
         IO6Q==
X-Gm-Message-State: APjAAAU3lIMXUSJ4DwqvBcOaFA7Jomd5MieaiIgYbtpqscT5q6C6R08v
	gbs08BjGHEekDLFsi18zv1pD7Ns8
X-Received: by 2002:a17:902:469:: with SMTP id 96mr56410750ple.46.1554016546688;
        Sun, 31 Mar 2019 00:15:46 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.206.28])
        by smtp.gmail.com with ESMTPSA id j19sm3373843pfh.41.2019.03.31.00.15.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 00:15:46 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 1/9] staging: rtl8723bs: os_dep: ioctl_linux.c: Fix indentation issue.
Date: Sun, 31 Mar 2019 12:45:12 +0530
Message-Id: <c1a8790575615dcf3af1fc5bb75092c3f93a3c68.1554016131.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>

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


