X-GM-THRID: 3575464853504
X-Received: by 10.194.239.41 with SMTP id vp9mr1040917wjc.5.1424935021990;
        Wed, 25 Feb 2015 23:17:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.193 with SMTP id t1ls1105272wia.30.canary; Wed, 25 Feb
 2015 23:17:01 -0800 (PST)
X-Received: by 10.180.89.194 with SMTP id bq2mr1077665wib.4.1424935021742;
        Wed, 25 Feb 2015 23:17:01 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id cl5si52820wib.3.2015.02.25.23.17.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 23:17:01 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x235.google.com with SMTP id r20so10332468wiv.2
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 23:17:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=HzZKiHfP7A8LNMuJtx0CHEk3gUFXALiyapvPmx+8Iaw=;
        b=knrjgRiHtwLtC2h2JmwnCbqDq4bdN7H6DQ4uN1sgfxMYK/HNJBKEKy1TZ0cW8+0yoZ
         0VHQnKMMqiipe56DbxyYpmsRMsuL3sYe8OFFqIv5lyEZ6r8d4h/qTkRhsu/oAnTQtE4o
         HEKUYRLM1YY+RCddEUTuOnwwhITRQmw96CA8xvTErq5mO50mqNkUb8ZhqhcPboaaubBb
         iHnPVL1GqVbMRvl/3+MSmlWBNnEmcsHeueinfNkcG9lasNesNUuJocjnRjMyuoa6OuL3
         enyCflWn5FslxdwTHmA7gy/QW93exjdtoR6aTH7EuPaYOmu13xL1B+qLlr3XHzjw9WvU
         LQNg==
X-Received: by 10.194.109.9 with SMTP id ho9mr13353720wjb.29.1424935021685;
        Wed, 25 Feb 2015 23:17:01 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id d10sm68194163wjn.45.2015.02.25.23.17.00
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 23:17:00 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH] Staging: rtl872au: merged  consecutive string fragments.
Date: Thu, 26 Feb 2015 09:16:19 +0200
Message-Id: <1424934979-14299-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

WARNING: Consecutive strings are generally better as a single string
That was found by running checkpatch.

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
index 9e1304f..dda9c6e 100644
--- a/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
@@ -1966,7 +1966,7 @@ static int cfg80211_rtw_connect(struct wiphy *wiphy, struct net_device *ndev,
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 	struct rtw_queue *queue = &pmlmepriv->scanned_queue;
 
-	DBG_8723A("=>" "%s(%s)\n", __func__, ndev->name);
+	DBG_8723A("=> %s(%s)\n", __func__, ndev->name);
 	DBG_8723A("privacy =%d, key =%p, key_len =%d, key_idx =%d\n",
 		  sme->privacy, sme->key, sme->key_len, sme->key_idx);
 
-- 
1.8.3.2


