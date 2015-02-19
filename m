X-GM-THRID: 262267731968
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,658add94603fb134
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.189.227 with SMTP id gl3mr813868lbc.2.1424373286332;
        Thu, 19 Feb 2015 11:14:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.160.230 with SMTP id xn6ls1488198wib.18.canary; Thu, 19
 Feb 2015 11:14:45 -0800 (PST)
X-Received: by 10.180.72.44 with SMTP id a12mr933150wiv.0.1424373285967;
        Thu, 19 Feb 2015 11:14:45 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id ta1si6470480wic.1.2015.02.19.11.14.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 11:14:45 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id hi2so50299476wib.4
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 11:14:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=cSus5TLtv7rI3p3NPy0apj3cqsWuiUbSghaW5DF7BXE=;
        b=PraZYhRJK+WKpXGlxsupomTf3BbnQL96GBMMrk9Irwf9tm89c2KL41BXQDaM4AZ7fV
         h/wx9G/s4Q1R0KLR0vg0HITTIzVYupODvJKJcLcaVpcaJgFFxWIW+mMXGMZLJqn0pKhG
         Qy65uf200rwq2SPAjCIt9cktb/KanU1tIQFY/tGA8e50y0xoz+GXxKUFbEIDqanDEMsN
         H1Ool1Dv6PNQB4cc3JCo8ReZhyDf4y/P85Xi0e0i5+lfZbsjLFL4qKiTHkHR/jCn6Dem
         FwEl/T1zRGFN4Z/J5TJg38DLTuhUOZJbkuNUCXHz4DomMQiWCsTvsWVPHA4qMjoFzseA
         t58Q==
X-Received: by 10.180.96.168 with SMTP id dt8mr9440129wib.82.1424373285844;
        Thu, 19 Feb 2015 11:14:45 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.232.173])
        by mx.google.com with ESMTPSA id hv5sm38675521wjb.16.2015.02.19.11.14.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 11:14:45 -0800 (PST)
Date: Thu, 19 Feb 2015 21:14:41 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4] staging: comedi: drivers: replace init_timer by
 setup_timer
Message-ID: <20150219191441.GA26077@localhost.localdomain>
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
v2: changed commit message and picked Julia'a ack.
v3: changed commit message again but forgot to update the changelog.
v4: placed the changelog missed in v3.

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


