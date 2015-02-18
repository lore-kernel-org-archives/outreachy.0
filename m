X-GM-THRID: 262267731968
X-Received: by 10.112.130.70 with SMTP id oc6mr100514lbb.13.1424284189141;
        Wed, 18 Feb 2015 10:29:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.38 with SMTP id p6ls32880lap.17.gmail; Wed, 18 Feb 2015
 10:29:47 -0800 (PST)
X-Received: by 10.112.162.135 with SMTP id ya7mr106565lbb.14.1424284187535;
        Wed, 18 Feb 2015 10:29:47 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-f175.google.com (mail-we0-f175.google.com. [74.125.82.175])
        by gmr-mx.google.com with ESMTPS id i7si6245245wif.0.2015.02.18.10.29.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 10:29:47 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 74.125.82.175 as permitted sender) client-ip=74.125.82.175;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 74.125.82.175 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-f175.google.com with SMTP id p10so2893645wes.2
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 10:29:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=BYWjRxiENgTkk63vbi5yqOgd47Gt18wkKkDyQtEaiHg=;
        b=aP2NvzNf1GJTD8aN+oOIoYTRsBk3ooKxW1ak9FhOqbvX8mwV2F3RC50y1IbU4Kkt27
         SUX1s471GaimAJk4I6vkyQ917nXOnqMS0ZCeWZ+dfXJtT+2l63Se0XzgaxvvmAtnNIZ7
         0rcxN9Wt2s1NjGKqg8IjlNPxQpRTWhQfKbGg1VMUGhXcddUX8qztm1GtcR2NTjWUAJfr
         Qp8M5TeVHQFoQzedbbWB10NKa0+auqWoLx6H94vav+9b46wdn99mUCCc37RCqkWd2ybQ
         cIQOBwmHG9jvAqNybpBisEHE/GOO8n6a+7vZkbXxHkdQvPC5O5C35uCpdUEmeCtRTDmy
         w7wg==
X-Received: by 10.194.175.202 with SMTP id cc10mr1089073wjc.27.1424284187443;
        Wed, 18 Feb 2015 10:29:47 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.234.24])
        by mx.google.com with ESMTPSA id kj8sm33788123wjc.29.2015.02.18.10.29.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 10:29:46 -0800 (PST)
Date: Wed, 18 Feb 2015 20:29:36 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: comedi: drivers: replace init_timer by
 setup_timer
Message-ID: <20150218182936.GA4225@localhost.localdomain>
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


