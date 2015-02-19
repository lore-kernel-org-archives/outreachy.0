X-GM-THRID: 566645227520
X-Received: by 10.112.181.198 with SMTP id dy6mr334109lbc.22.1424325518026;
        Wed, 18 Feb 2015 21:58:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.6.42 with SMTP id cr10ls121526lad.91.gmail; Wed, 18 Feb
 2015 21:58:37 -0800 (PST)
X-Received: by 10.152.45.7 with SMTP id i7mr319113lam.9.1424325517547;
        Wed, 18 Feb 2015 21:58:37 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id ev8si6323512wib.3.2015.02.18.21.58.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 21:58:37 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x230.google.com with SMTP id h11so45630815wiw.3
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 21:58:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Lim+zfNBR6U39FUV6pkj81mBPJZdaWrCJt2Ur6sht1M=;
        b=CgjnnL5ACTx2ZvfQwZ2oyniCE4BQ53DIp1l9yQ2WR2FzDRxFtF4AuP5YIuZWb7uvoD
         AcJ9XBUoNrYOIw4Z8ymdn74dYjWpxyJkoDozbOEZdK8yk5LJ7y45zW2QdQJzddrcQMRh
         a7myvI9OdhlEs6asXCY4OZXtKR3zH5apm+91GF/SR+60gG5MPSARKwgv6o0vmvEcFTyh
         pckSI8Os2DyiuG8b09XXim0c1vz53XSjfwQuAyNVzmVZhC0FyvOozOu4cI4Ogcb6fXD0
         uhheIIYaLe5yNdetPc8fQI21lR+d9Tx0bUHuq3aTj3tzodKT5fLRVJApwGMgPJBSadIr
         nlOQ==
X-Received: by 10.194.134.68 with SMTP id pi4mr5507076wjb.101.1424325517471;
        Wed, 18 Feb 2015 21:58:37 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.198])
        by mx.google.com with ESMTPSA id hg7sm35794340wjb.44.2015.02.18.21.58.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 21:58:36 -0800 (PST)
Date: Thu, 19 Feb 2015 07:58:29 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/5] staging: panel: replace init_timer by setup_timer
Message-ID: <c1c43af168146242ba09e8a2444c7b4c4796ef1a.1424324574.git.mahfouz.saif.elyazal@gmail.com>
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
 drivers/staging/panel/panel.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/panel/panel.c b/drivers/staging/panel/panel.c
index 6ed35b6..4da854c 100644
--- a/drivers/staging/panel/panel.c
+++ b/drivers/staging/panel/panel.c
@@ -2010,10 +2010,8 @@ static void init_scan_timer(void)
 	if (scan_timer.function != NULL)
 		return;		/* already started */
 
-	init_timer(&scan_timer);
+	setup_timer(&scan_timer, (void *)&panel_scan_timer, 0);
 	scan_timer.expires = jiffies + INPUT_POLL_TIME;
-	scan_timer.data = 0;
-	scan_timer.function = (void *)&panel_scan_timer;
 	add_timer(&scan_timer);
 }
 
-- 
1.9.3


