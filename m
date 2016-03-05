X-GM-THRID: 6258683815797981184
X-Received: by 10.66.147.106 with SMTP id tj10mr11255535pab.30.1457213381749;
        Sat, 05 Mar 2016 13:29:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.13.34 with SMTP id e2ls661023igc.44.canary; Sat, 05 Mar
 2016 13:29:40 -0800 (PST)
X-Received: by 10.50.66.205 with SMTP id h13mr4501893igt.0.1457213380795;
        Sat, 05 Mar 2016 13:29:40 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x235.google.com (mail-pf0-x235.google.com. [2607:f8b0:400e:c00::235])
        by gmr-mx.google.com with ESMTPS id ff2si2265367pad.2.2016.03.05.13.29.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 13:29:40 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) client-ip=2607:f8b0:400e:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x235.google.com with SMTP id 129so11801647pfw.1
        for <outreachy-kernel@googlegroups.com>; Sat, 05 Mar 2016 13:29:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=fnYNdKLAr949t8Yl5u/+8T1cUs7TQEMReGuuNWi2jCg=;
        b=JY9Us2eKEkzfdBOvVigYq2etcFx4/Y2VErfziCmqIKFeJ8hKf+/AiRlIXQeS846rme
         DziJ4vZ6DGUEtwYEmxVHaV+UATCc8wp/llWHC1Js+PFlTP6xBG9cjXV3hTlhR7h/+L5f
         y6XzMN8Uf+mRu46XHhuR4phLBrxl++9CERtylGOP01f39wm2WjVKPYTZFie8IMhIYD0X
         Uv8H+r9fHXJg7BZa2IdHbZk4iCiIiWqiAYVDHHnilGGmGTBrwProEcbf4SxB0Zhly9Kn
         2PbX6qn0ZxilyKH/EhQ8TjWfawAi8B8yqQUfh3Axq/p15YBrNAkzQGZxZaKcKufepHhs
         vTVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=fnYNdKLAr949t8Yl5u/+8T1cUs7TQEMReGuuNWi2jCg=;
        b=nC8IkGuzt8LB2csyty6/dVGLzzO3kuW2vg882xatSTNzwVwPjwnb7eDsXwXAynI7cN
         WXjlVtFifYTtitPJdZLwqvvimjXDjSHev5onA6Ax7xRmcrtqnDA2yKY9mybLPLMfMOWC
         uVrS3+zWcul0A1TSk/HIBLnIHKl4TeWf6yZl++4GvzJc3nimViOOxwDQ7YmwlhVgqffo
         DvEjuWvaRRrfzewVgGJ0QYycxevLWV+c1Palw/QoPG+FlZ1eTNiE/Esacn4nnlHPoZ9/
         aa2CHJRERp5YEneQ3SDcM2y8yQLYWCWbI8bMHd6HYt1DvgYPtS75iM6WqeH41v60sMvO
         tjVw==
X-Gm-Message-State: AD7BkJIwBtGaxfgomQ4IgG1IcqmwRerzYaLQ/qLGHphNg/8LBayzI3Z40nTB249Dud5JZg==
X-Received: by 10.98.0.84 with SMTP id 81mr22507210pfa.67.1457213380628;
        Sat, 05 Mar 2016 13:29:40 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id i23sm14323090pfj.68.2016.03.05.13.29.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 05 Mar 2016 13:29:40 -0800 (PST)
Date: Sun, 6 Mar 2016 02:47:23 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723au: core: rtw_sta_mgt: Change form of NULL
 comparisons
Message-ID: <20160305211723.GA25814@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Change null comparisons of the form x == NULL to !x.
This was done using Coccinelle.

@@
expression e;
@@
- e == NULL
+ !e

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_sta_mgt.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_sta_mgt.c b/drivers/staging/rtl8723au/core/rtw_sta_mgt.c
index 22d857b..f997d24 100644
--- a/drivers/staging/rtl8723au/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8723au/core/rtw_sta_mgt.c
@@ -200,7 +200,7 @@ int rtw_free_stainfo23a(struct rtw_adapter *padapter, struct sta_info *psta)
 	struct hw_xmit *phwxmit;
 	int i;

-	if (psta == NULL)
+	if (!psta)
 		goto exit;

 	spin_lock_bh(&psta->lock);
@@ -350,7 +350,7 @@ struct sta_info *rtw_get_stainfo23a(struct sta_priv *pstapriv, const u8 *hwaddr)
 	u32 index;
 	const u8 *addr;

-	if (hwaddr == NULL)
+	if (!hwaddr)
 		return NULL;

 	if (is_multicast_ether_addr(hwaddr))
@@ -381,7 +381,7 @@ int rtw_init_bcmc_stainfo23a(struct rtw_adapter *padapter)
 	int res = _SUCCESS;

 	psta = rtw_alloc_stainfo23a(pstapriv, bc_addr, GFP_KERNEL);
-	if (psta == NULL) {
+	if (!psta) {
 		res = _FAIL;
 		RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_err_,
 			 "rtw_alloc_stainfo23a fail\n");
--
2.1.4


