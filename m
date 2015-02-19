X-GM-THRID: 262267731968
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,658add94603fb134
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.1.5 with SMTP id 5mr231923lai.4.1424304469183;
        Wed, 18 Feb 2015 16:07:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.242.164 with SMTP id wr4ls102719lac.79.gmail; Wed, 18 Feb
 2015 16:07:48 -0800 (PST)
X-Received: by 10.152.4.229 with SMTP id n5mr226520lan.1.1424304468625;
        Wed, 18 Feb 2015 16:07:48 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-f179.google.com (mail-we0-f179.google.com. [74.125.82.179])
        by gmr-mx.google.com with ESMTPS id ev8si6286696wib.3.2015.02.18.16.07.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 16:07:48 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 74.125.82.179 as permitted sender) client-ip=74.125.82.179;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 74.125.82.179 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesw62 with SMTP id w62so4242299wes.12
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 16:07:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Pna/k3j3GHvH/+7fGKrYhPWE0cxTyebjWrCrQEBdnUc=;
        b=qUYhCfzxlo44c7klgbxUCQM3FkyibWovL+WGdgHhTv0bW7x2GghPL2u4/fp/U0/Wjv
         ZWGv2x6vdgXOLHDnrC2E/yV3oON8Xs+MOtNAVdIRhYyXGUl9O5eAFqQMPvoNwdRabb2D
         2IoknsyUv7u21MtinqnQvlrMVUnCta1tRZsN5ApyZ0zDt4TY9oOYHwsFlLSyuirvJrq0
         LrgXDRyGk/XQCq4mXs+4FZrYhc3m1TG/mrb5fVrwS0Pi+xTMFLz0mguXrRqWiIenjRL0
         ZHz53QumVAKdfr2ILJazuDKXSD8D1ux2JohXSdO1shMEF7HhpOovj/Y3PncyVHYV5yDy
         BwBQ==
X-Received: by 10.194.90.210 with SMTP id by18mr3688160wjb.80.1424304468506;
        Wed, 18 Feb 2015 16:07:48 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.190.76])
        by mx.google.com with ESMTPSA id q10sm34922855wjr.41.2015.02.18.16.07.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 16:07:47 -0800 (PST)
Date: Thu, 19 Feb 2015 02:07:36 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: comedi: drivers: replace init_timer by
 setup_timer
Message-ID: <20150219000733.GA14360@localhost.localdomain>
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
 drivers/staging/comedi/drivers/comedi_test.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/drivers/comedi_test.c b/drivers/staging/comedi/drivers/comedi_test.c
index e56525a..fbc4342 100644
--- a/drivers/staging/comedi/drivers/comedi_test.c
+++ b/drivers/staging/comedi/drivers/comedi_test.c
@@ -420,9 +420,8 @@ static int waveform_attach(struct comedi_device *dev,
 	for (i = 0; i < s->n_chan; i++)
 		devpriv->ao_loopbacks[i] = s->maxdata / 2;
 
-	init_timer(&devpriv->timer);
-	devpriv->timer.function = waveform_ai_interrupt;
-	devpriv->timer.data = (unsigned long)dev;
+	setup_timer(&devpriv->timer, waveform_ai_interrupt,
+		    (unsigned long)dev);
 
 	dev_info(dev->class_dev,
 		 "%s: %i microvolt, %li microsecond waveform attached\n",
-- 
1.9.3


