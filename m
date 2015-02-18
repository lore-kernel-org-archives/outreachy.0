X-GM-THRID: 260132831232
X-Received: by 10.180.91.76 with SMTP id cc12mr215608wib.7.1424283350517;
        Wed, 18 Feb 2015 10:15:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.20.98 with SMTP id m2ls63802lae.5.gmail; Wed, 18 Feb 2015
 10:15:50 -0800 (PST)
X-Received: by 10.112.161.201 with SMTP id xu9mr91638lbb.11.1424283350008;
        Wed, 18 Feb 2015 10:15:50 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id l8si6225454wia.0.2015.02.18.10.15.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 10:15:49 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x231.google.com with SMTP id bs8so4070557wib.4
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 10:15:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=s7yQm/0dPFuzHrjMOIsJ9KySTUa4i4pSuXA7hdGm9dw=;
        b=p8y+zoihEc7KOo6iu0SPEdwzA8NSHicJEgRgHz6zU3XTa+gpBJtH2XdrNW5S2SXxpg
         MCkoGxgZ3v4DjNChmFS5z++hTNSfh1N5wjJwy6xvoNtLQwsaEZsMBby/6wTHnWVLPdaQ
         P3Q3hxTpDQFzlhO0qdzYBwTqJ5Q0JixUSfngrfmQPa5sWl+VArQ4TxR8XaBy/s57SDHh
         w3qbC/kYfO4PAn3YyLFVMGomknc5NGCuKQMnyS+fQbllD08pQUlqbJTcPFclRFaDDRj+
         GmSlY3TbLYqvCsITKu0RW8dLCbO1gte4HTNGA6kUn6YftNYR/Y9zbs+jRGZVWQXisoHo
         koYw==
X-Received: by 10.194.80.40 with SMTP id o8mr1273908wjx.34.1424283349885;
        Wed, 18 Feb 2015 10:15:49 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.234.24])
        by mx.google.com with ESMTPSA id hi6sm33736569wjc.34.2015.02.18.10.15.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 10:15:49 -0800 (PST)
Date: Wed, 18 Feb 2015 20:15:39 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: line6: replace init_timer by setup_timer
Message-ID: <20150218181539.GA3875@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch replaces init_timer and 2 step initialization of
function and data by setup_timer to make the code 
more concise using the following coccinelle script:

@@
expression ds, e1, e2;
@@

-init_timer (&ds);
+setup_timer (&ds, e1, e2);
...
-ds.function = e1;
...
-ds.data = e2;


Acked-by: Julia Lawall <julia.lawall@lip6.fr>
Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
v2: changed commit message and picked Julia'a ack

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


