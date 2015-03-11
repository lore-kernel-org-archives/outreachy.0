X-GM-THRID: 7650196586496
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d5f5fa2ef5938719
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.157.129 with SMTP id wm1mr37108306pab.15.1426073672606;
        Wed, 11 Mar 2015 04:34:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.51.17.7 with SMTP id ga7ls389849igd.7.gmail; Wed, 11 Mar 2015
 04:34:32 -0700 (PDT)
X-Received: by 10.43.90.6 with SMTP id bg6mr30748312icc.11.1426073672352;
        Wed, 11 Mar 2015 04:34:32 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pd0-x22f.google.com (mail-pd0-x22f.google.com. [2607:f8b0:400e:c02::22f])
        by gmr-mx.google.com with ESMTPS id gb13si645888pac.2.2015.03.11.04.34.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 04:34:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) client-ip=2607:f8b0:400e:c02::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22f.google.com with SMTP id y10so10504024pdj.12
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 04:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=UWk9EpdWm/akkNgqtO4fZeZoHmMddox/oeeLDlr5cgU=;
        b=D1f0cjJ+Bc+w9U5LwPjEiZsU7+JDdEnbR/RKhrvz5X4dmzfppURpzHModZOd1P5cbn
         ZD7z/4+1Q5KkKiPgUTeqpV+cUmvBNHx2b43VwT/RkBZ9zkkXx4e+wEt5PXwJ3DX0ozpb
         AQPfLYT2pH+qPL+idfoF+FfeJWfAjMfMETmXXh49Ff2vHuPxNMOnMAxaIvBlnQTajlRj
         yJ5mlsBPVAWv5OPeWJ4pxk33m2Zs3spx+CFFpHL5x/1IF1u5Voph1LbvzSaRP47q7Gyw
         ZbwUTAgY2F6s6r686HZpphJaWNNpELnJVKYPDrFGkN4HPLwwu96OI7k+AqiWkoMduFSY
         c4fQ==
X-Received: by 10.66.118.198 with SMTP id ko6mr78172037pab.16.1426073671286;
        Wed, 11 Mar 2015 04:34:31 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.43.101])
        by mx.google.com with ESMTPSA id kd9sm5815097pab.0.2015.03.11.04.34.01
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Mar 2015 04:34:30 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH v2 2/5] Staging: comedi: Use function setup_timer for combining initialization
Date: Wed, 11 Mar 2015 17:02:13 +0530
Message-Id: <1426073536-22122-2-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426073536-22122-1-git-send-email-somyaanand214@gmail.com>
References: <1426073536-22122-1-git-send-email-somyaanand214@gmail.com>

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
+ setup_timer(&E1, E2, 0);
)

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
Changes since v1:
 * Change the coccinelle script by replacing NULL with 0.
 * Reword the commit message.

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


