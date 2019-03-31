X-GM-THRID: 6674450234072891392
X-Received: by 2002:a25:949:: with SMTP id u9mr5192226ybm.8.1554016568647;
        Sun, 31 Mar 2019 00:16:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:cec3:: with SMTP id x186ls691879ybe.13.gmail; Sun, 31
 Mar 2019 00:16:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwsSXbdIO1l63+hlskOb5TSiR/NDHMVHOKUBNe//O6cP2EHdfcwjtDtVifeEBa71P4gJecC
X-Received: by 2002:a25:cd82:: with SMTP id d124mr4441985ybf.92.1554016568057;
        Sun, 31 Mar 2019 00:16:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554016568; cv=none;
        d=google.com; s=arc-20160816;
        b=G5aqL5qYJlX9YL+zXYTE7BSX6Q9js3THHYEn6YJmXOoPzhI5t5I3hStkwa2kg61hSq
         wLFErxIZ15Y00CVQ3p0mHFCyZznk1gMNbPo0yneQOi5qMhTjgX85yp4JpTSaK1sMZChn
         9xDbYQlPaYd5i6kqX5SRGqo4sClb/FemaRTfaLaydlb3X6JnVx+aaXtyvIMcy2Zcm1Td
         2cd03ufLRinKDAk70d9e8d+/BTisy6OFCfSrMsutEB4vhtAoGicDgqUBFImwTMmJKC3b
         ZzEuKTgRPzJyWptKUiUYYOxULaodtbHhkcioFPV6xy7ER/0sP8h09cZQnDLbK9YyXVR/
         Z0UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=nj/yPVmobHa8SEMhPUBckwmo6iMhGWNgwALg3YbqDIM=;
        b=Xhl5zWB9X4dx+F9cvy4xqgH/XexYmf9ybwKn2bW0O3/mF1yBdREnj6AxvIUTl59+RX
         XskZvIs64nG8rUrOXf0EMIA2iZVHX4IJicE8a3t8/fZ873CvFwoYz8RYwfL4TkH2B7iB
         8UsPpBbQzFsCW0cpAAjfhd56vDgUQ4snptYujAozQqL6JgiK36d2ZBYbx/9XyXLOQ3SW
         y2C1VphW35ZrheDtgeW1WtF3kpBSBI+yP+zvPnU78CsKWqnvek19UeiZ2ykc3AIByI2M
         P7CPsUCkIt2TFTFNOTDxOyxTYEpKrnzmPJ0A+QnhJ6hAz/vuBXnSGEHN1elI1CjD0oLq
         S8+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JrVctWIC;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id s11si368717ywg.3.2019.03.31.00.16.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 00:16:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JrVctWIC;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id y3so3163651pgk.12
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 00:16:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=nj/yPVmobHa8SEMhPUBckwmo6iMhGWNgwALg3YbqDIM=;
        b=JrVctWIC1rqxms5lqZP2E9er2AySBCWgDf+VKpF6EDG7RXU/P4dKII1vn5xOMuqQ3C
         EP8k3WQdIxKvuiAvTcONjFSMUxFFFTFZ9chPPwbnF0V+A9Hqb6Fe4XjROFIiQNnn74Ym
         SWFcLaHiu8WliINksBo0xU48z63OHDE0wT9HExd+GHA1Xvl5o8Kng1kOIsdFTbHdFzeo
         ipyRGRQ4LJmhw2GTPDlrDGEfyiScnudMT/DmiMQGQGyMDtSv50PtAF+bCOb/6H38DlEO
         fTClHY1UCF+NzFtMXzhr3Y/yHMOriN+wS+mu/2txZB5pLKOum/xfP3tDiJ93L9gjkE8M
         deeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=nj/yPVmobHa8SEMhPUBckwmo6iMhGWNgwALg3YbqDIM=;
        b=FrRx2L5+OQieKPxz/L9v+2zFQt+IdXxkcTTDqQcOXSvxBuGTdOePQcDkd1HLseOKi+
         T4ICfrnUlxsTpeWryBmMgdHPa+SkJtlsA9M79oxId3eWuUPnDaF0mTcFW9zrmUyatfMm
         JT4fUY8QWYkobznZUdOMf7lQREq4+3R7FRmSAnTnQLoBXYoRM7fND6Ay7z/zTn0pmHB/
         oMmduJK5rGwyhlmT1K2LcQ1R68UHKPVBDKeBPN0zNudyMS+t6tbEPhW2i53NUfdHjqmj
         NPbHVyVN179PJj9PH0T1Jrr4z+Yp6GJehOCbfQWStc7CLtiNBEliq6OTwDempfV8xWaj
         fEIQ==
X-Gm-Message-State: APjAAAXZkjF7VQ43xlxkrCEKTJcChPsKAia3HrSKLKxZfYvXq9pnRuDI
	14xcQuPoBGRPIyWw5gdLVG0ZC6UQ
X-Received: by 2002:a63:744b:: with SMTP id e11mr36767028pgn.327.1554016566985;
        Sun, 31 Mar 2019 00:16:06 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.206.28])
        by smtp.gmail.com with ESMTPSA id j19sm3373843pfh.41.2019.03.31.00.16.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 00:16:06 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 6/9] staging: rtl8723bs: os_dep: ioctl_linux.c: Avoid CamelCase "intReturn"
Date: Sun, 31 Mar 2019 12:45:17 +0530
Message-Id: <97ba5a38e386011ce2c46eb9668d44ef257da020.1554016131.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>

Change variable name "intReturn" to "ret" to avoid camelcase style
issue.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 99e02c4..98a91ce 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -944,7 +944,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 {
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 	u8 j, bl_inserted = false;
-	int intReturn = false;
+	int ret = false;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 	struct iw_pmksa *pPMK = (struct iw_pmksa *)extra;
 	u8 strZeroMacAddress[ETH_ALEN] = { 0x00 };
@@ -961,9 +961,9 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 	if (pPMK->cmd == IW_PMKSA_ADD) {
 		DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
 		if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))
-			return intReturn;
+			return ret;
 		else
-			intReturn = true;
+			ret = true;
 
 		bl_inserted = false;
 
@@ -993,7 +993,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 		}
 	} else if (pPMK->cmd == IW_PMKSA_REMOVE) {
 		DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_REMOVE!\n");
-		intReturn = true;
+		ret = true;
 		for (j = 0 ; j<NUM_PMKID_CACHE; j++) {
 			if (!memcmp(psecuritypriv->PMKIDList[j].Bssid, strIssueBssid, ETH_ALEN)) {
 				/*  BSSID is matched, the same AP => Remove this PMKID information and reset it. */
@@ -1006,9 +1006,9 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 		DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_FLUSH!\n");
 		memset(&psecuritypriv->PMKIDList[0], 0x00, sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
 		psecuritypriv->PMKIDIndex = 0;
-		intReturn = true;
+		ret = true;
 	}
-	return intReturn;
+	return ret;
 }
 
 static int rtw_wx_get_sens(struct net_device *dev,
-- 
2.7.4


