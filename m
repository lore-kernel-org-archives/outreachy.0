X-GM-THRID: 6674450234072891392
X-Received: by 2002:a25:24c:: with SMTP id 73mr4996098ybc.15.1554016564814;
        Sun, 31 Mar 2019 00:16:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:1582:: with SMTP id 124ls1999315ybv.5.gmail; Sun, 31 Mar
 2019 00:16:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyks8d5OQuN9r9wuCMpW8nRcIo9jKBijzDaX8s6YoPlophgls3MnRM7CrD8cpoTtMeV1Mwu
X-Received: by 2002:a25:911:: with SMTP id 17mr5223527ybj.67.1554016564336;
        Sun, 31 Mar 2019 00:16:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554016564; cv=none;
        d=google.com; s=arc-20160816;
        b=IztMOj0Fq4YNZX+Eu+0N1EJ7A5eGGBrfkIK8kfG9Dp36VaNAiC4OtdmUX/c7hiAorI
         nrNYQndR155NkfKrB727tZkhORGcvHx12jVuPpMiOOXRZJVs9qyL4CaAysX7C3SEHBDI
         sH35JaC3HiI2mhG6BZba/jCtrkOlAB5SSeOqMoZPijiW0agblgHOR2U7lSOP0ZCa8V81
         l0ynSjdH147Tcqp4W01H7O2JaBf0bTd5MkFJlEsWuM5+YKJSH+eqtkgAqVGDRGJ4eYX8
         bLub+853eSW1nnlU5+XNxw1AqKXVAg360teJeOrDYDRK20aEwi0S4WnqysEaTtG5zmvF
         n20g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=QDVOgJJNBoKjaDkecjGhmo6dkeyMk/NMMF7iy7jwi24=;
        b=zx4QgfHpuGyDlYQ8rMnvgnA5SWRo0F+Qg64YtmBJdnKQU4Oc8o388Ezsk8nfmaDezZ
         4V4pfpTk13DRJKrw49qb4gbPDZUZ/V33U5zPe9bAip8s+NvItmf29NFMlLynQ6lkohnF
         Jg1A8aHkr5ifVwilxhbXDZE9p5yvrlaLzlX88vaYetadUA+QGk+SkcR/30aTce6YFT0M
         ajhpFtyuyi3J2F1jKk0VlBYd9jhXq/o9ol7P0RfoV57keWT5M/vGz3LTMiayABO7dHA3
         Ls6DDawF8rHWR8IaIajPBWYOwAWrHzRxvefikwEdDdBlnNPMNAhlQqwJY+boRVPBtPjz
         Kdug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DMIVfsx1;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id i204si273377yba.5.2019.03.31.00.16.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 00:16:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DMIVfsx1;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id e24so2987461pfi.12
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 00:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=QDVOgJJNBoKjaDkecjGhmo6dkeyMk/NMMF7iy7jwi24=;
        b=DMIVfsx1CGLsjchubtX1TJ01RTQPh6PBtKil+ev+BwOo7PUIRrEaATeYudLXi0bg8q
         4XQ73lWmURw6M9xV19WAoNFbpmmaspRU3F2s/0ZjM8DC0FA91QlozMzcW1CcakQfdiFb
         Ph6AVTQjkoPiVRqWHF2Koh11lb/1e+ykkAS9tAQZslmlBWAmw70igwk/FUJzI34XA7TO
         w+pU5+JSdltk4bT2Dkc2n99tpIY5hHvo9ZJTVhptdBXbxGLTUvF1vNrnxKT0nReE8o4i
         cMSg7AK/c5Zp3AqaOMzS8YvbgwZry6un4Ses1QKaKbSyIGtDQCwlJgmsNqqNI5H24mbj
         2Bww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=QDVOgJJNBoKjaDkecjGhmo6dkeyMk/NMMF7iy7jwi24=;
        b=bmiiY/mvjH3KkZ6GOIiAyD6sk0VPtLlEUDv8tGM2QA4nqclOOinMw0jdUl0IdinKB7
         agXNl5rrudg9Gi7kyvPK1R9XyMqdrtZgm0G3J67mxrovc69x9ljofSXlBn1ZWtsiQLDb
         9oU+D2RR1GgRzKxzQvZymzXko71QZhkX+PS69fj1kjUWp6/yRCQtVJRx+WZcXYLGXqBM
         i9GH9iZ3+LXInD8m/QZr9klEhEs2HaKMxItyvvoglg2YsFz28edzROageX0B4bFoMG3f
         XYJkfw+8D88V7+/owadQTGh99UDu3OGdarQvkfAbqO/8tZ6CNaR+dxOXG39nuVnvYOkz
         vVGg==
X-Gm-Message-State: APjAAAU7CNwVg/05mhwsbaR0NL4yaeE6b+rsbrfsJx6LChdkqgR4SckK
	QLpWsKDfxtBVWpw9ML7ah/DG+Qed
X-Received: by 2002:a63:f244:: with SMTP id d4mr6100749pgk.433.1554016563295;
        Sun, 31 Mar 2019 00:16:03 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.206.28])
        by smtp.gmail.com with ESMTPSA id j19sm3373843pfh.41.2019.03.31.00.16.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 00:16:02 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 5/9] staging: rtl8723bs: os_dep: ioctl_linux.c: Avoid CamelCase "blInserted"
Date: Sun, 31 Mar 2019 12:45:16 +0530
Message-Id: <262f9fa05d845ba0b407eb2f887ffa62d546c54c.1554016131.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>

Change variable name "blInserted" to "bl_insetred"
to avoid camelcase style issue.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 86c7c9d..99e02c4 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -943,7 +943,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 			    union iwreq_data *wrqu, char *extra)
 {
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	u8 j, blInserted = false;
+	u8 j, bl_inserted = false;
 	int intReturn = false;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 	struct iw_pmksa *pPMK = (struct iw_pmksa *)extra;
@@ -965,7 +965,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 		else
 			intReturn = true;
 
-		blInserted = false;
+		bl_inserted = false;
 
 		/* overwrite PMKID */
 		for (j = 0 ; j<NUM_PMKID_CACHE; j++) {
@@ -975,12 +975,12 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 				memcpy(psecuritypriv->PMKIDList[j].PMKID, pPMK->pmkid, IW_PMKID_LEN);
 				psecuritypriv->PMKIDList[j].bUsed = true;
 				psecuritypriv->PMKIDIndex = j+1;
-				blInserted = true;
+				bl_inserted = true;
 				break;
 			}
 		}
 
-		if (!blInserted) {
+		if (!bl_inserted) {
 			/*  Find a new entry */
 			DBG_871X("[rtw_wx_set_pmkid] Use the new entry index = %d for this PMKID.\n",
 				  psecuritypriv->PMKIDIndex);
-- 
2.7.4


