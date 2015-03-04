X-GM-THRID: 6557663232000
X-Received: by 10.68.65.8 with SMTP id t8mr4130812pbs.1.1425469560503;
        Wed, 04 Mar 2015 03:46:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.211 with SMTP id t80ls532182ioi.43.gmail; Wed, 04 Mar
 2015 03:46:00 -0800 (PST)
X-Received: by 10.50.55.102 with SMTP id r6mr26896217igp.1.1425469560323;
        Wed, 04 Mar 2015 03:46:00 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pd0-x22e.google.com (mail-pd0-x22e.google.com. [2607:f8b0:400e:c02::22e])
        by gmr-mx.google.com with ESMTPS id hs7si483369pad.1.2015.03.04.03.46.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 03:46:00 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) client-ip=2607:f8b0:400e:c02::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22e.google.com with SMTP id p10so19647442pdj.10
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 03:46:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=aORareBrcdl7gXAc1tp7VSiH1qUEky5r9LKsxbJc92w=;
        b=OsLbWrb+KdEXqiH23ygfbLdj6smNd3ICWQoIFlfWxwUm2AF7uMtjzDbAFqCCas8DzQ
         BD44ydWGEpLfhgmJCmCF/El5kFtIfI4zdT2QbKDxUT3i2/nRpDik16zvPYXawYfhYJLu
         bwdiVOS7AiGglGD8dqWq82aXioukC7M8s0qtcmivIxb9HyNrmeL0W/SuZGO/4tCnbiEG
         wIQyAcZkQI7/qPZpjiiwP1LlaHiNyOMpAzPLlPpijSTdS0HJ4ETsCu6lmxH7O+tV7EIt
         X5UOdc800W8lUgsBLrGrlB+HkjNarBiGGni7/730fStw3T0oSnHDjz/hxFwt/PaqpX84
         cqWg==
X-Received: by 10.68.138.194 with SMTP id qs2mr6390851pbb.8.1425469560194;
        Wed, 04 Mar 2015 03:46:00 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.41.48])
        by mx.google.com with ESMTPSA id fy2sm3826164pbb.30.2015.03.04.03.45.54
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 04 Mar 2015 03:45:59 -0800 (PST)
From: Somya Anand <somyaanand214@gmail.com>
To: julia.lawall@lip6.fr
Cc: outreachy-kernel@googlegroups.com,
	Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 4/6] staging: rtl8188eu: Remove unneeded parentheses
Date: Wed,  4 Mar 2015 17:14:00 +0530
Message-Id: <1425469442-32412-5-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425469442-32412-1-git-send-email-somyaanand214@gmail.com>
References: <1425469442-32412-1-git-send-email-somyaanand214@gmail.com>

This patch removes unneeded parentheses from a if statement
for better readability.

This issue is identified by checkpatch.pl

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index 074f48a..d5ebd52 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -1297,7 +1297,7 @@ int support_short_GI(struct adapter *padapter, struct HT_caps_element *pHT_caps)
 	if (!(pmlmeinfo->HT_enable))
 		return _FAIL;
 
-	if ((pmlmeinfo->assoc_AP_vendor == HT_IOT_PEER_RALINK))
+	if (pmlmeinfo->assoc_AP_vendor == HT_IOT_PEER_RALINK)
 		return _FAIL;
 
 	bit_offset = (pmlmeext->cur_bwmode & HT_CHANNEL_WIDTH_40) ? 6 : 5;
-- 
1.9.1


