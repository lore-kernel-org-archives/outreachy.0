X-GM-THRID: 566645227520
X-Received: by 10.180.87.166 with SMTP id az6mr77072wib.1.1424325601635;
        Wed, 18 Feb 2015 22:00:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.13.74 with SMTP id ew10ls206867wid.20.gmail; Wed, 18 Feb
 2015 22:00:01 -0800 (PST)
X-Received: by 10.180.8.67 with SMTP id p3mr770973wia.7.1424325601360;
        Wed, 18 Feb 2015 22:00:01 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id r6si4431316wix.0.2015.02.18.22.00.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 22:00:01 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x234.google.com with SMTP id h11so6804155wiw.1
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 22:00:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=GzKyhK9a45wspHPCS7bVvYUPReUiXcNxOhoW6QrAIbg=;
        b=Qx5JnwrHb4+GwYSsYTj3i2mzzoqBDYVBFyG/+d0OLWPEQebPJXzxZAAG0KW/zlAVEK
         cpquEjG8P3hhAY8DooOjpYzuuAWDYFxDtazN1ArZIEpEf4V+r3Hxut2KZPKjE2eS6Mej
         Pk9fwoW+30GVyaCHlEDSJ/Rc37mzOzi1LqY2atdvMlIhqgpSPnTvgHo1xKi4CXaCWAms
         nU/p1B3jq+LrgDOJcBp5i3EyJPnhh+rlnS4/czjiwhjL23696MH24nO7hayn7Tj7xPkV
         SKIbbw4iZjcitJGA48qeK0VaGXZTn1jJpJS8AiTRs95t/uOWP2LttYYCfgQp6WU9oaCP
         j8uA==
X-Received: by 10.194.205.228 with SMTP id lj4mr5432310wjc.77.1424325601294;
        Wed, 18 Feb 2015 22:00:01 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.198])
        by mx.google.com with ESMTPSA id ax10sm35808201wjc.26.2015.02.18.21.59.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 22:00:00 -0800 (PST)
Date: Thu, 19 Feb 2015 07:59:51 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/5] staging: rtl8192u: ieee80211: replace init_timer by
 setup_timer
Message-ID: <711be79000139843ca6da00b837256a84e10d4af.1424324574.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424324574.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424324574.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch replaces init_timer and the 2 step initialization of function
and data by setup_timer to make the code more concise.

The issue was discovered using the following coccinelle script:

@@
expression ds, e1, e2;
@@

-init_timer (&ds);
+setup_timer (&ds, e1, e2);
...
(
-ds.function = e1; 
...
-ds.data = e2; 
|
-ds.data = e2; 
...
-ds.function = e1; 
)

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index d147187..3a54071 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -2722,13 +2722,11 @@ void ieee80211_softmac_init(struct ieee80211_device *ieee)
 	ieee->enable_rx_imm_BA = 1;
 	ieee->tx_pending.txb = NULL;
 
-	init_timer(&ieee->associate_timer);
-	ieee->associate_timer.data = (unsigned long)ieee;
-	ieee->associate_timer.function = ieee80211_associate_abort_cb;
+	setup_timer(&ieee->associate_timer, ieee80211_associate_abort_cb,
+		    (unsigned long)ieee);
 
-	init_timer(&ieee->beacon_timer);
-	ieee->beacon_timer.data = (unsigned long) ieee;
-	ieee->beacon_timer.function = ieee80211_send_beacon_cb;
+	setup_timer(&ieee->beacon_timer, ieee80211_send_beacon_cb,
+		    (unsigned long)ieee);
 
 	ieee->wq = create_workqueue(DRV_NAME);
 
-- 
1.9.3


