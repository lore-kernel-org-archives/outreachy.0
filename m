X-GM-THRID: 6674450234072891392
X-Received: by 2002:a5b:44e:: with SMTP id s14mr5626874ybp.100.1554029357117;
        Sun, 31 Mar 2019 03:49:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:1384:: with SMTP id 126ls2089442ybt.1.gmail; Sun, 31 Mar
 2019 03:49:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyFuYOzJNj9rxKH/Z5Tx/p2nn2LKBpnak32iJ88jN9FqxkqbSMZH9JRL5tttS/t02yto0at
X-Received: by 2002:a5b:48a:: with SMTP id n10mr4386274ybp.5.1554029356302;
        Sun, 31 Mar 2019 03:49:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554029356; cv=none;
        d=google.com; s=arc-20160816;
        b=q1fFsQVuG1I0lM7Aqitjsq4HEC+/yt7iIcg23RTdA2CUtekYekt2OgyFcsObqkuajo
         NUOApctiX6eLfUjmLuMDNaRxQwMa4cWLUTbs0h8YCT2/dUpU8tqJe2wRPHab51R3JXBU
         9iQKV7b2vBOsZ1+KSQRrGMnaf8swssjspOfjW4oW4jc/NiDzrQ3zS/Bu+2r+utMrBD7g
         cSUn99RNkamhwlnmfbxUFf/eUm+oh7ab78OaPSQkfNaKZgMMjHfEFOdWrf8wcp0XUqoj
         VhIYv+CBuGo+tET07st/SewGAkK+/pgK8RMOO/pQRjMEltpY+8X8LsCuLAWAbqP13UXN
         +r+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=W0y1+Zz5Lasmrt26146chDnRm+DPaMRhihr63h5hK08=;
        b=s3qaTX+nQGghaZe0fI9xVBywxCJNxJLuWMqf66VxARRD+BxjujYA483zKfJM9LmTvI
         AfDjxrCZL9H5R387zNLLJxnTXny/ruJRh1U/X3Ou80m3FWW8ZJJsMU0ZSMGC1uL5eNS1
         FdBDd95xMF0K4o9ahA2YPpSLf5zAVtxijJb7s20Dpzyl9JV8sIJL8Hzc1ZzYesSccf1i
         CNgKk7heCg5Cn/v8nRVo6U+7bR1wwqnPSpKrjw62zsSpd1otOBlZLnzIbDwSWnPqd1TK
         p9kGJfIFnn3eCxhi1l6kLVQnblaLQoqoacvWCTwaK7JmCwIasfdh7mhHowODet3JRwwV
         tmIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yvq1W61q;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id k11si194441ybf.0.2019.03.31.03.49.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:49:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yvq1W61q;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id y6so3058650pll.13
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 03:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=W0y1+Zz5Lasmrt26146chDnRm+DPaMRhihr63h5hK08=;
        b=Yvq1W61qdrQZy40fB5anBTpWF4HoafQEfks9kafXsNvvMStwTjwdxPbaQfNXVl0KYT
         PpN8iglXmRlvdI7htJhYPb7JYd9nQ5+D0qDkDerG/t+lsMH5YO708nT8dponzOl7HHvg
         +9DDeitcE9jDLyT3c3e+M07Bu1+OqOJRIAEjprZfBb2ceSC+Hp3o+IxpT6yCkQZFR5J5
         3S6JvzlmXnxQjdyfruimCw6TF6s5du1gxRa1GSkJTFc6NA334R+ZbqNmlaRVM7otyfVz
         sqfahpds5YpSA2IAGq7l70u2oryarVRVg/Of3aN8pbB+DG5rBAzUEjweyHVSqGdok1M0
         I7RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=W0y1+Zz5Lasmrt26146chDnRm+DPaMRhihr63h5hK08=;
        b=YRfwSdcIpgcST6PGXKfzK7N67sjHWPhllr31JPdwPMmY0N4fx/kPnmsP5MUaXk/qw6
         n/iLY5kZ4POEvt0Owh3iI16lDH4BeJ/jScN2I+9rMY2N9V7jaEXk7GWzg+KUXH/MrF75
         zFX4UCU5Y89Q0/jRCmoJYuK/pc7c6bYn7FSEPoW6vuA0a+wdRDwkhLoDXQbbGA2rzPvU
         ANyrJx0KPgrrGoIif+54XArtaqjnRu+ySeITXA1PfDEeL6Vi9jTwMsYN2q7rkAivpeyn
         ksXM32NvO9hUcjAK5OpQMZGBlvZilC602GeHT9xXob6vmZOq+OvJi3zFvNMig8YjF32z
         l8Cg==
X-Gm-Message-State: APjAAAUvSnGquv66G2cg5EXJUmgmCiiMYnTGikEmOKoH6JTKF9ccA4FS
	yUeGOyj0v4gGlzoqQ5CibO5bqFKf
X-Received: by 2002:a17:902:4681:: with SMTP id p1mr56573099pld.42.1554029355254;
        Sun, 31 Mar 2019 03:49:15 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id g4sm10014361pfo.38.2019.03.31.03.49.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 03:49:14 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 2/9] staging: rtl8723bs: os_dep: ioctl_linux.c: space prohibited before square brackets
Date: Sun, 31 Mar 2019 16:18:37 +0530
Message-Id: <e5026404612746334dcb2f1bbf02b9cd88c27e66.1554028003.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>

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


