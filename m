X-GM-THRID: 260132831232
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,a7312e608237771f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.50.106 with SMTP id b10mr230107lbo.8.1424304197521;
        Wed, 18 Feb 2015 16:03:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.23.98 with SMTP id l2ls91982laf.73.gmail; Wed, 18 Feb 2015
 16:03:17 -0800 (PST)
X-Received: by 10.152.28.137 with SMTP id b9mr226294lah.8.1424304197059;
        Wed, 18 Feb 2015 16:03:17 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x233.google.com (mail-wg0-x233.google.com. [2a00:1450:400c:c00::233])
        by gmr-mx.google.com with ESMTPS id ev8si6286222wib.3.2015.02.18.16.03.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 16:03:17 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) client-ip=2a00:1450:400c:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f51.google.com with SMTP id y19so4207530wgg.10
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 16:03:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=WeNYYH05Hg6PTkPV5rHwOa57DrsMQyEODlmbUSudD5Y=;
        b=Gz7XKBZ32PGpxASYFbFRCcgH0WeAvZMca2G0AJNLvYtd5Ucgg73yNdxz3czJH7l0uA
         8gkmUbelmvz6MdYPjoIohZJvxTf484AOUOVfBuvkSQfF0MSmYI/4V6bdoW6hY43+Zjmt
         5X07UjBS6czIKI0wuI0vL3/Vi5be6QabZoMEQitpCRgT2h/lOLhD3eSsXGX3c5GZ3d/Y
         5jJZWnr4LNSmmVbhRdUtu2NE5vhMbPpYeeX5nOBoE5wCN8FV53b1cs89RShWGm4hoOFB
         /C2wi1IvaQPU3dEVU17euTk2V33rZ6kLIlC2j2y9/ctuKWHuN1nkMZwawVI9dt5oorwU
         KM/g==
X-Received: by 10.180.91.47 with SMTP id cb15mr4954082wib.39.1424304196947;
        Wed, 18 Feb 2015 16:03:16 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([82.201.178.121])
        by mx.google.com with ESMTPSA id vq9sm34928656wjc.6.2015.02.18.16.03.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 16:03:16 -0800 (PST)
Date: Thu, 19 Feb 2015 02:02:42 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: line6: replace init_timer by setup_timer
Message-ID: <20150219000242.GA14071@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch replaces init_timer and 2 step initialization of function and
data by setup_timer to make the code  more concise.

The issue was discovered using the following coccinelle script:

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


