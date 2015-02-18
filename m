X-GM-THRID: 262267731968
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,658add94603fb134,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.77.101 with SMTP id r5mr3401544lbw.4.1424234384613;
        Tue, 17 Feb 2015 20:39:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.42.178 with SMTP id p18ls279666lal.97.gmail; Tue, 17 Feb
 2015 20:39:44 -0800 (PST)
X-Received: by 10.112.162.135 with SMTP id ya7mr3057350lbb.14.1424234384012;
        Tue, 17 Feb 2015 20:39:44 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id l8si6078021wia.0.2015.02.17.20.39.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 20:39:43 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f173.google.com with SMTP id bs8so38301245wib.0
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Feb 2015 20:39:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=34O1JNEetNzeZkneOnR2vi8xG236KLLBl9LqKfU9WIc=;
        b=j0AS5Y4GLFmNGXZceC/2E5JpIshvGWlEyOksy8JeBUFFe+OghSA57lM9hokQ8RVRJd
         msVheo9eVTvigNWYg5sNwmJ+xwKno+I4TKqqBSa13GcAnnEsPizDzcnoRvNCNokMQyLC
         3Lf8E+i8BWAKy1YmbAl+efy92UL3+FkfJCR4nAk7Y/Wdt3lccbRMit9qgCCSRIwkOSqk
         pYkJ81Sb35GNjWKOmvR70IZW3qls5+Mly1OgcFq9ECypZancfu85OZbj26CbfplhrvTp
         NjIn9aV+MQxcH70vVcnkf8IrYjzgXhGgWww1vCt1VRMg9RukzJCALExH8SvUriSFEvlE
         c2wg==
X-Received: by 10.194.234.40 with SMTP id ub8mr69588769wjc.100.1424234383922;
        Tue, 17 Feb 2015 20:39:43 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.150])
        by mx.google.com with ESMTPSA id a1sm23265153wiy.10.2015.02.17.20.39.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 17 Feb 2015 20:39:43 -0800 (PST)
Date: Wed, 18 Feb 2015 06:39:39 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: comedi: drivers: replace init_timer by setup_timer
Message-ID: <20150218043939.GA21970@localhost.localdomain>
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


