X-GM-THRID: 7650196586496
X-Received: by 10.42.254.202 with SMTP id nf10mr30230006icb.23.1426068408826;
        Wed, 11 Mar 2015 03:06:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.8 with SMTP id 8ls366281iog.100.gmail; Wed, 11 Mar 2015
 03:06:48 -0700 (PDT)
X-Received: by 10.70.131.81 with SMTP id ok17mr36525451pdb.6.1426068408629;
        Wed, 11 Mar 2015 03:06:48 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pd0-x234.google.com (mail-pd0-x234.google.com. [2607:f8b0:400e:c02::234])
        by gmr-mx.google.com with ESMTPS id pc4si633987pac.0.2015.03.11.03.06.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 03:06:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) client-ip=2607:f8b0:400e:c02::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbnh10 with SMTP id nh10so10052460pdb.4
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 03:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=KY4yGQwBY7mGXEpyny8jUPochdanJ8n1yQsSp32RSdE=;
        b=bX37I4dZ6Uw5cme91LmBzgJtGwZewHs2ZDk/loPt5f/ckrQW9E51W4ZmY6elzC0Bro
         8OfF69zsCmdmsvwCHT/qNuvTf2q2Io0DQId8UNS6Gw+XODQ7gwnwNPwoFFh4c9GC3sLT
         yBJD2ng6C43F1b6XodSrm0leAB07NLbkgiBG90BuXfpAkl9pYHMGmFgkvYzqfbjdFxVh
         gujF4qtQtFxDtUhhYKOkhK06dgOqZ3+4hUq2ywRGPY0VJwiFfYPGiDJq2WF574t3qctZ
         anuhv470nbplH1kTKDacR9Z6foTHWQQeLiBfp0F5XvTstfQvDtLRIhTCas9jqfj4ASIC
         Bkuw==
X-Received: by 10.66.249.68 with SMTP id ys4mr76661223pac.82.1426068408512;
        Wed, 11 Mar 2015 03:06:48 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([27.62.203.100])
        by mx.google.com with ESMTPSA id qa3sm5297711pab.16.2015.03.11.03.06.33
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Mar 2015 03:06:47 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 2/5] Staging: comedi: Use function setup_timer for combining initialization
Date: Wed, 11 Mar 2015 15:34:49 +0530
Message-Id: <1426068292-20348-2-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426068292-20348-1-git-send-email-somyaanand214@gmail.com>
References: <1426068292-20348-1-git-send-email-somyaanand214@gmail.com>

The function setup_timer combines the initialization of a timer with the
initialization of the timer's function and data fields.

So, this patch combines the multiline code for timer initialization using the function
setup_timer. This issue is identified via coccinelle script.

@@
expression E1, E2, E3;
type T;
@@
- init_timer(&E1);
...
(
- E1.function = E2;
...
- E1.data = (T)E3;
+ setup_timer(&E1, E2, (T)E3);
|
- E1.data = (T)E3;
...
- E1.function = E2;
+ setup_timer(&E1, E2, (T)E3);
|
- E1.function = E2;
+ setup_timer(&E1, E2, NULL);
)

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 drivers/staging/comedi/drivers/das16.c   | 5 ++---
 drivers/staging/comedi/drivers/jr3_pci.c | 5 +----
 2 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/comedi/drivers/das16.c b/drivers/staging/comedi/drivers/das16.c
index be6277a..f66db97 100644
--- a/drivers/staging/comedi/drivers/das16.c
+++ b/drivers/staging/comedi/drivers/das16.c
@@ -935,9 +935,8 @@ static void das16_alloc_dma(struct comedi_device *dev, unsigned int dma_chan)
 	devpriv->dma = comedi_isadma_alloc(dev, 2, dma_chan, dma_chan,
 					   DAS16_DMA_SIZE, COMEDI_ISADMA_READ);
 	if (devpriv->dma) {
-		init_timer(&devpriv->timer);
-		devpriv->timer.function = das16_timer_interrupt;
-		devpriv->timer.data = (unsigned long)dev;
+		setup_timer(&devpriv->timer, das16_timer_interrupt,
+			    (unsigned long)dev);
 	}
 }
 
diff --git a/drivers/staging/comedi/drivers/jr3_pci.c b/drivers/staging/comedi/drivers/jr3_pci.c
index 81fab2d..282c37f 100644
--- a/drivers/staging/comedi/drivers/jr3_pci.c
+++ b/drivers/staging/comedi/drivers/jr3_pci.c
@@ -706,8 +706,6 @@ static int jr3_pci_auto_attach(struct comedi_device *dev,
 	if (!devpriv)
 		return -ENOMEM;
 
-	init_timer(&devpriv->timer);
-
 	ret = comedi_pci_enable(dev);
 	if (ret)
 		return ret;
@@ -775,8 +773,7 @@ static int jr3_pci_auto_attach(struct comedi_device *dev,
 		spriv->next_time_max = jiffies + msecs_to_jiffies(2000);
 	}
 
-	devpriv->timer.data = (unsigned long)dev;
-	devpriv->timer.function = jr3_pci_poll_dev;
+	setup_timer(&devpriv->timer, jr3_pci_poll_dev, (unsigned long)dev);
 	devpriv->timer.expires = jiffies + msecs_to_jiffies(1000);
 	add_timer(&devpriv->timer);
 
-- 
1.9.1


