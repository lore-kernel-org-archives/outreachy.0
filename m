X-GM-THRID: 6674450234072891392
X-Received: by 2002:a05:620a:1212:: with SMTP id u18mr5496510qkj.39.1554016552140;
        Sun, 31 Mar 2019 00:15:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:314c:: with SMTP id h12ls3184078qtb.7.gmail; Sun, 31 Mar
 2019 00:15:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxPMZ4n5POYGUXFje59Cbz8D3dksXzhi3L3KJkCBwHLVKtaY3VVV+3Etg/sUrhX4fbV27b4
X-Received: by 2002:ac8:35ad:: with SMTP id k42mr6031467qtb.54.1554016551614;
        Sun, 31 Mar 2019 00:15:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554016551; cv=none;
        d=google.com; s=arc-20160816;
        b=ovL2KYJ2+Z4NsE/GNBl3nxEq1y0Tm1pwwz4+xE4IXVAXulwqBXv8YnS9ZVd0i/s0zj
         bWyfthoSXcxCsaZOn1GweLO7zWWvVXSwDeItIVAw8XfQckD46By7/P5aoYbkQfLteZew
         C38N7zOXerOeCGoxdLocqkOgDzO4UY4xM3tKdPeUlS9Xf2wJTZ+fKKGjOMuBQQM/2j3w
         jBtQX6QzH2kl3/YCkfDVHkfsPm4ySXXAIlfy8gfqKZq6yFapXd0ZUR6bs3It4UibSIoZ
         J+Y5vFmVZBoqxwHT7j1aKRyljfhZVRgseG3JCSYh/X4Cx3uTA5tjejFdvl3HdpDm+Wv6
         eEHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=W0y1+Zz5Lasmrt26146chDnRm+DPaMRhihr63h5hK08=;
        b=JF8NdgUjIa/sR+aPaxFYeS5N2ca+DPLy7rTwewE7EHLvIGrbyqHr8QtGubvOvdbq3n
         MgZ06t70Lznxx293hK/ZegTq/3EimSqcog4ELNJmxYI4Zz+8ADfJC8nNWDH4U3fR6g17
         WagqIOXwXqdSGOptSNhdH/Imh67UzYGm5u7LD+26M5KgGwXBnj8O5eTPJL1kSwnClGpI
         rw0NOaGSDDvH2F9GhGTsnK/J0ReYdG8qCUS2PAbYyBT3Bvbo8gHvOFw8KvU6ryCILI7k
         JOxz3doAb3pgd9zM8LNcaEcdq26XQltmH3P3e3ckDfFjo2t+Oe7TumDKyifSL3c0158F
         mw5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iokMgFT4;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id t17si406347qtq.0.2019.03.31.00.15.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 00:15:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iokMgFT4;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id v12so3192569pgq.1
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 00:15:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=W0y1+Zz5Lasmrt26146chDnRm+DPaMRhihr63h5hK08=;
        b=iokMgFT4b4XAlaieeQsYa7prSNzwQhZsrJX88C8igI1wcIrUAKfUOi9Nz/TxAOF7va
         V4QF3P2wvoCwJPx9ynuy8l1FbYuIRXNTZYqYyA5cSUKcCVjnDGIYLWp/NZcQkJr4p7mS
         IJ2lImG/YyL1OUbrHZFgUbu3uy5SlxtM6IXniwhYQAxOWUL5qKYrdIk97XdPWsVBR6uq
         ULOvnpwnnedeGOYGaEfmZF2JO0cKpfq7QCknBxR7SxgUZAy5TdmE+3xmFXcM3RNmLSYb
         isvx3xVDEpIrGld8eEBjgLGxO9rCa3+Nomr6LMvG2Jq0CiHxeOnALusXijBmyDR/ZDaQ
         1e+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=W0y1+Zz5Lasmrt26146chDnRm+DPaMRhihr63h5hK08=;
        b=SS+SX9Fc+x1Uzc5MgfRYW664WS2/ObViS9iCW9YHsNd9n1RAjWgsj/NR3yWXgYFdEt
         cQRbthuxEujU6L8CaxCNAcTyBrAn+YYTXS+fFhZqtha5ZWiTt+UNkSNvOzQ2kdcEWbIh
         /dmSoq39Q2NsF7devbEYvyJjx8AaI5fEf0I5gGzPlkkY+aqec1LQCqucZBSQeN1UWoCj
         xZCk9aPGn0cke5soKlBuiUCsgA4FqQkkpMxEr018YHGcKX2S7QDQBgdSohegUcmYEzlV
         59oXOtX1PdYuwBuyYIiqOugAlHERwfPx4khwlU42IBLL+GvZTJ/e+lCmRQUEeVBfclQ1
         r1Aw==
X-Gm-Message-State: APjAAAX+x7x1uMlkK9ca49PT9dYW+2x65yMpxgDpgrlQfJAPm/bBVJXB
	EQ7Ze0JvG5xQXrywgi8TvGwcUzcm
X-Received: by 2002:a62:1a06:: with SMTP id a6mr55382138pfa.18.1554016550466;
        Sun, 31 Mar 2019 00:15:50 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.206.28])
        by smtp.gmail.com with ESMTPSA id j19sm3373843pfh.41.2019.03.31.00.15.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 00:15:49 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 2/9] staging: rtl8723bs: os_dep: ioctl_linux.c: space prohibited before square brackets
Date: Sun, 31 Mar 2019 12:45:13 +0530
Message-Id: <e5026404612746334dcb2f1bbf02b9cd88c27e66.1554016131.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>

Remove space before square open and close bracket to fix issue - space
prohibited before square brackets.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index e6f24b8..46fbaac 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -947,8 +947,8 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 	int intReturn = false;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 	struct iw_pmksa*  pPMK = (struct iw_pmksa*)extra;
-	u8 strZeroMacAddress[ ETH_ALEN ] = { 0x00 };
-	u8 strIssueBssid[ ETH_ALEN ] = { 0x00 };
+	u8 strZeroMacAddress[ETH_ALEN] = { 0x00 };
+	u8 strIssueBssid[ETH_ALEN] = { 0x00 };
 
 	/*
 	There are the BSSID information in the bssid.sa_data array.
@@ -973,7 +973,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 				/*  BSSID is matched, the same AP => rewrite with new PMKID. */
 				DBG_871X("[rtw_wx_set_pmkid] BSSID exists in the PMKList.\n");
 				memcpy(psecuritypriv->PMKIDList[j].PMKID, pPMK->pmkid, IW_PMKID_LEN);
-				psecuritypriv->PMKIDList[ j ].bUsed = true;
+				psecuritypriv->PMKIDList[j].bUsed = true;
 				psecuritypriv->PMKIDIndex = j+1;
 				blInserted = true;
 				break;
@@ -986,7 +986,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 				  psecuritypriv->PMKIDIndex);
 			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].Bssid, strIssueBssid, ETH_ALEN);
 			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].PMKID, pPMK->pmkid, IW_PMKID_LEN);
-			psecuritypriv->PMKIDList[ psecuritypriv->PMKIDIndex ].bUsed = true;
+			psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].bUsed = true;
 			psecuritypriv->PMKIDIndex++ ;
 			if (psecuritypriv->PMKIDIndex == 16)
 				psecuritypriv->PMKIDIndex = 0;
@@ -998,13 +998,13 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 			if (!memcmp(psecuritypriv->PMKIDList[j].Bssid, strIssueBssid, ETH_ALEN)) {
 				/*  BSSID is matched, the same AP => Remove this PMKID information and reset it. */
 				eth_zero_addr(psecuritypriv->PMKIDList[j].Bssid);
-				psecuritypriv->PMKIDList[ j ].bUsed = false;
+				psecuritypriv->PMKIDList[j].bUsed = false;
 				break;
 			}
 		}
 	} else if (pPMK->cmd == IW_PMKSA_FLUSH) {
 		DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_FLUSH!\n");
-		memset(&psecuritypriv->PMKIDList[ 0 ], 0x00, sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
+		memset(&psecuritypriv->PMKIDList[0], 0x00, sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
 		psecuritypriv->PMKIDIndex = 0;
 		intReturn = true;
 	}
-- 
2.7.4


