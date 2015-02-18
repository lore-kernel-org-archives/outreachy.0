X-GM-THRID: 260132831232
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,a7312e608237771f,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.45.7 with SMTP id i7mr2972089lam.9.1424233835724;
        Tue, 17 Feb 2015 20:30:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.84.98 with SMTP id x2ls1106355wiy.51.canary; Tue, 17 Feb
 2015 20:30:35 -0800 (PST)
X-Received: by 10.180.39.164 with SMTP id q4mr49578wik.5.1424233835417;
        Tue, 17 Feb 2015 20:30:35 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id o3si3841251wib.2.2015.02.17.20.30.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 20:30:35 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id l15so38242811wiw.5
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Feb 2015 20:30:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=NC3tr7abZ2S27OC3G8nFGFcNqd/Fwd2D3StsHmHE3Dg=;
        b=wf7aX8TwLr7fSsBkjPgHIAqPZkeblOKvuNSoQiJ1etRmTdB02G2DUBt15syMD4uLL+
         FofwIWUKM2YFWoJ+NhJ4b5r1BEPuP6otuLKH3+sDtnJ6spqLqlszaubIEozB3aqiaYpI
         vofl1dpQmYIUS1v+xqwO4nKhhQYa+Lma5q7cX4g2J63ZHS2D/lneZXX5GoDoXOndL0SJ
         ljUv2+9wvErUvLZADW2cz6hAZoD9a81ik8zdC9szcZz8oinpkf9IbyJfS62JSfkM8nvu
         HJnS3vUnkvEIYa3Cd6+X6SL9tYTk1Y+9kQlZzxbC7VLvS2KGqJb8stEC4WjeK6io3+y2
         UvLg==
X-Received: by 10.180.76.133 with SMTP id k5mr1071299wiw.30.1424233835363;
        Tue, 17 Feb 2015 20:30:35 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.150])
        by mx.google.com with ESMTPSA id qb8sm24332184wjc.4.2015.02.17.20.30.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 17 Feb 2015 20:30:34 -0800 (PST)
Date: Wed, 18 Feb 2015 06:30:30 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: line6: replace init_timer by setup_timer
Message-ID: <20150218043030.GA21690@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch replaces init_timer and 2 step initialization of
function and data by setup_timer using the following coccinelle
script:

@@
expression ds, e1, e2;
@@

-init_timer (&ds);
+setup_timer (&ds, e1, e2);
...
-ds.function = e1;
...
-ds.data = e2;


Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/line6/toneport.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/line6/toneport.c b/drivers/staging/line6/toneport.c
index 6943715..f6035ce 100644
--- a/drivers/staging/line6/toneport.c
+++ b/drivers/staging/line6/toneport.c
@@ -396,10 +396,9 @@ static int toneport_try_init(struct usb_interface *interface,
 
 	toneport_setup(toneport);
 
-	init_timer(&toneport->timer);
+	setup_timer(&toneport->timer, toneport_start_pcm,
+		    (unsigned long)toneport);
 	toneport->timer.expires = jiffies + TONEPORT_PCM_DELAY * HZ;
-	toneport->timer.function = toneport_start_pcm;
-	toneport->timer.data = (unsigned long)toneport;
 	add_timer(&toneport->timer);
 
 	return 0;
-- 
1.9.3


