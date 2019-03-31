X-GM-THRID: 6674450234072891392
X-Received: by 2002:a05:6830:11c3:: with SMTP id v3mr5046610otq.31.1554016575855;
        Sun, 31 Mar 2019 00:16:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:7399:: with SMTP id j25ls1752983otk.0.gmail; Sun, 31 Mar
 2019 00:16:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwGp6KL0zvaUHRFofz7Pqm2VfJrMEi8s+BAyZqwsDQfHMzkJY45rKF94QyqsNHBQUe50QUl
X-Received: by 2002:a9d:749a:: with SMTP id t26mr4509554otk.73.1554016575144;
        Sun, 31 Mar 2019 00:16:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554016575; cv=none;
        d=google.com; s=arc-20160816;
        b=DVndymBGNQfA/jmKVoAkL3Gm+uL8BfJmRpyMtVVxIeNFheru8I7D79nw37FVUTrnc1
         vQaVovv08QwOb/QJrXN545tDgNJtECFmQARzDZVIiV+yGGzPrHn4+GrxsLKmbzenBbtN
         j3yUp0AfjR7NWAoY1S72kfL5QfYeum9XrGtl7r+mKxjvtEyADaYVnOSqz0i4js86khzJ
         hmsj4aa7LJPtuDOoMz7oDhT5nOkS0LyV6MYs0a3jkAufzayBfErvHCKyG8P+HBlKSAlT
         33AFj9iX5GBXtFyIJE3xax8pV5Y4nkyTmZekYqqL4zQXF7QO7YqlkGvgtgfXg73xYsEc
         FG8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=ITSFjRwzgm7bShMk1KiqXDkGi5kE6BYxRnkSUEg4wgY=;
        b=rnvosaf8t4U2O4+3yvuFpihcniOmNOTp9ZuSewOBoYetzt9eX36DX8bLov6IML1v0q
         cmsbGlx4LnFJCLep+KxFbEgp8lCckM5lrZAs5uCRmGlKD1U78SHkSD8IGG/f5Bvf0Z22
         4GZIp3kqJx+S4zgzgL9DPzMlrj2zmHSfUWushGQvH86EW7ckjqbBO96PRfojviUR5And
         EG8/AUKp0TugFXl2d/eG11FvGoUGq/y8ECzUYBx63AHlPV/Y2gPY6Gq0qHT3wFilsn+m
         oa7Hz9cp0hpbJvc7oJ6OmC2bpp814RURzkdXiIlJVRmmVAnJq/o4K76C6fBI7Hc55cUO
         iwtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iC6r6J1+;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id d12si329053oib.0.2019.03.31.00.16.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 00:16:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iC6r6J1+;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x634.google.com with SMTP id g12so2943930pll.11
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 00:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=ITSFjRwzgm7bShMk1KiqXDkGi5kE6BYxRnkSUEg4wgY=;
        b=iC6r6J1+2F+HshDGdXnqaZV045DaUjlPHSu64hr7lyOsU6SC7o6546mVbgZ8Q0g2AH
         1aZm2tEq6y4Pt+OofrP3h/mta3kFcvXIkNfx3gpEpeo+z9jFXDSVV40Xc5YB6qtn4i+m
         GHt7OpkUe3qqln4fjS656ev8Spoctoz621Ves/POpqF85sq7hU7WWYv+aTHVkKQsgkBu
         Mv33bUq6PiCaxOblbPthbRXxPDLPv2ArOY3UpLN6TnXNyvbwol7l4DKXbPJmapw2JauS
         WAl8pD9jZnwbav7bmdVH3vhFespwjF1O/J/OwLWzV8OifYGs042z8FqPXlAnhAHCpoOc
         Yvaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=ITSFjRwzgm7bShMk1KiqXDkGi5kE6BYxRnkSUEg4wgY=;
        b=P7KHLIXC6BStJFNGlX0ANV7Fb4MFhIm0li5eV59SrrF/xtAHT4WBngC+GH31XGBjLs
         YOn/7wHHqnJfyIhVklUOz800uoh7jK3Zm7opgTB81xoxHGXkLsnvoGj87y9u5gpZu67Z
         xaX6KgsEfehxdaE7eEoZ4oONQf6Dni743PsuJcDMX6LQRXpqZN9RM8XyGtjjeP7Y5P7i
         9tBy4LpG73erzoOmZgcb7vEfDSdM21K8T/SAGWEo6ls811WveuiLs829Nslm0UfmRGrn
         ytJfk9ofeVAVd+4TQiPRum/6JJg822ncOphIihyQJPGiNz3wMT5SswAOYs4HfDHt/HEe
         Y7Ew==
X-Gm-Message-State: APjAAAX7N5TBhuZyUoquPgevUDMMwgAXKBzx/pbnl/wzMtI5zAkIBPBr
	OGkqleOKyLL4KgA09agUCfQeueYc
X-Received: by 2002:a17:902:7084:: with SMTP id z4mr57978972plk.305.1554016574514;
        Sun, 31 Mar 2019 00:16:14 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.206.28])
        by smtp.gmail.com with ESMTPSA id j19sm3373843pfh.41.2019.03.31.00.16.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 00:16:13 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 8/9] staging: rtl8723bs: os_dep: ioctl_linux.c: Avoid CamelCase "pPMK"
Date: Sun, 31 Mar 2019 12:45:19 +0530
Message-Id: <2494c4c09f776e7c9b4c80bbeea8d8973a5b69e4.1554016131.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>

Change variable name "pPMK" to "PMK"
to avoid camelcase style issue.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 9f085a3..fbde2eb 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -946,7 +946,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 	u8 j, bl_inserted = false;
 	int ret = false;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
-	struct iw_pmksa *pPMK = (struct iw_pmksa *)extra;
+	struct iw_pmksa *PMK = (struct iw_pmksa *)extra;
 	u8 strZeroMacAddress[ETH_ALEN] = { 0x00 };
 	u8 strIssueBssid[ETH_ALEN] = { 0x00 };
 
@@ -957,8 +957,8 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 	If cmd is IW_PMKSA_REMOVE, it means the wpa_supplicant wants to remove a PMKID/BSSID from driver.
 	*/
 
-	memcpy(strIssueBssid, pPMK->bssid.sa_data, ETH_ALEN);
-	if (pPMK->cmd == IW_PMKSA_ADD) {
+	memcpy(strIssueBssid, PMK->bssid.sa_data, ETH_ALEN);
+	if (PMK->cmd == IW_PMKSA_ADD) {
 		DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
 		if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))
 			return ret;
@@ -972,7 +972,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 			if (!memcmp(psecuritypriv->PMKIDList[j].Bssid, strIssueBssid, ETH_ALEN)) {
 				/*  BSSID is matched, the same AP => rewrite with new PMKID. */
 				DBG_871X("[rtw_wx_set_pmkid] BSSID exists in the PMKList.\n");
-				memcpy(psecuritypriv->PMKIDList[j].PMKID, pPMK->pmkid, IW_PMKID_LEN);
+				memcpy(psecuritypriv->PMKIDList[j].PMKID, PMK->pmkid, IW_PMKID_LEN);
 				psecuritypriv->PMKIDList[j].bUsed = true;
 				psecuritypriv->PMKIDIndex = j+1;
 				bl_inserted = true;
@@ -985,13 +985,13 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 			DBG_871X("[rtw_wx_set_pmkid] Use the new entry index = %d for this PMKID.\n",
 				  psecuritypriv->PMKIDIndex);
 			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].Bssid, strIssueBssid, ETH_ALEN);
-			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].PMKID, pPMK->pmkid, IW_PMKID_LEN);
+			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].PMKID, PMK->pmkid, IW_PMKID_LEN);
 			psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].bUsed = true;
 			psecuritypriv->PMKIDIndex++;
 			if (psecuritypriv->PMKIDIndex == 16)
 				psecuritypriv->PMKIDIndex = 0;
 		}
-	} else if (pPMK->cmd == IW_PMKSA_REMOVE) {
+	} else if (PMK->cmd == IW_PMKSA_REMOVE) {
 		DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_REMOVE!\n");
 		ret = true;
 		for (j = 0 ; j<NUM_PMKID_CACHE; j++) {
@@ -1002,7 +1002,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 				break;
 			}
 		}
-	} else if (pPMK->cmd == IW_PMKSA_FLUSH) {
+	} else if (PMK->cmd == IW_PMKSA_FLUSH) {
 		DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_FLUSH!\n");
 		memset(&psecuritypriv->PMKIDList[0], 0x00, sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
 		psecuritypriv->PMKIDIndex = 0;
-- 
2.7.4


