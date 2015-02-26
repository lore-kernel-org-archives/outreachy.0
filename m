X-GM-THRID: 3635562938368
X-Received: by 10.180.72.44 with SMTP id a12mr1172763wiv.0.1424943977713;
        Thu, 26 Feb 2015 01:46:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.78.167 with SMTP id c7ls1171924wix.33.canary; Thu, 26 Feb
 2015 01:46:17 -0800 (PST)
X-Received: by 10.180.91.76 with SMTP id cc12mr1170759wib.7.1424943977521;
        Thu, 26 Feb 2015 01:46:17 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id ev8si1309288wib.3.2015.02.26.01.46.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:46:17 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22e.google.com with SMTP id x12so8867689wgg.11
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:46:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ccwcVKi1J3NmwWd6TlB5hnomg5k7xdyMiv5QMGYT/As=;
        b=vXQvdIU+6efDWZbaxdEW/irnAdtE30sEDTIpQ473qiFUyH2Jcwp4c8TYmbjZVlymD8
         4mnu9FY4ZWzSetkxXoALOSDfFG4cHQTSaq1jtTv9fjAXUMNW2nUesxx/E3Sp47A9m92Q
         qoGbfxWUDS68YVkh+S6siXMC8/VsAVpxPxnrUuUaqizC33+dDQhy0ftJyAguD4lxwyx2
         PEZW3OQ4xZtkGw/lKbzNN+JMGbHPRFRs0K7aQSl8j8xk7bEUQA1rL04tCEfAHlWqCfvU
         JppyogfGdsM+iYXUsRq//+8aBWZ+Hp5tPU2pdb2dGVViqZzH/tTzuSgJHuVcmTZjcVwe
         Pd/A==
X-Received: by 10.180.106.103 with SMTP id gt7mr48454245wib.59.1424943977466;
        Thu, 26 Feb 2015 01:46:17 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.167])
        by mx.google.com with ESMTPSA id dj5sm545790wjb.28.2015.02.26.01.46.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:46:16 -0800 (PST)
Date: Thu, 26 Feb 2015 11:46:12 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 24/24] staging: comedi: rewrite the right hand side of an
 assignment
Message-ID: <fe374801e9b87a4c938382d356b51a638a1b4bd8.1424942340.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch rewrites the right hand side of an assignment for
expressions of the form:
a = (a <op> b);
to be:
a <op>= b;
where <op> = << | >>.

This issue was detected and resolved using the following
coccinelle script:

@@
identifier i;
expression e;
@@

-i = (i >> e);
+i >>= e;

@@
identifier i;
expression e;
@@

-i = (i << e);
+i <<= e;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/comedi/drivers/rtd520.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/drivers/rtd520.c b/drivers/staging/comedi/drivers/rtd520.c
index c94ad12..a7255d1 100644
--- a/drivers/staging/comedi/drivers/rtd520.c
+++ b/drivers/staging/comedi/drivers/rtd520.c
@@ -579,7 +579,7 @@ static int rtd_ai_rinsn(struct comedi_device *dev,
 
 		/* read data */
 		d = readw(devpriv->las1 + LAS1_ADC_FIFO);
-		d = d >> 3;	/* low 3 bits are marker lines */
+		d >>= 3;	/* low 3 bits are marker lines */
 
 		/* convert bipolar data to comedi unsigned data */
 		if (comedi_range_is_bipolar(s, range))
@@ -616,7 +616,7 @@ static int ai_read_n(struct comedi_device *dev, struct comedi_subdevice *s,
 		}
 
 		d = readw(devpriv->las1 + LAS1_ADC_FIFO);
-		d = d >> 3;	/* low 3 bits are marker lines */
+		d >>= 3;	/* low 3 bits are marker lines */
 
 		/* convert bipolar data to comedi unsigned data */
 		if (comedi_range_is_bipolar(s, range))
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

