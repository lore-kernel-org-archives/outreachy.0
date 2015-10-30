X-GM-THRID: 6211300547065020416
X-Received: by 10.140.157.196 with SMTP id d187mr4128900qhd.11.1446181104357;
        Thu, 29 Oct 2015 21:58:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.17.70 with SMTP id 64ls385109qgc.26.gmail; Thu, 29 Oct
 2015 21:58:23 -0700 (PDT)
X-Received: by 10.13.209.70 with SMTP id t67mr4703804ywd.46.1446181103763;
        Thu, 29 Oct 2015 21:58:23 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id sm2si522486pab.0.2015.10.29.21.58.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 21:58:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id hk11so62157715pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 21:58:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=66+SEMfrKpFSv3Nw5Zx+P1ubpTBBrQ+S2cTVjlIHTFI=;
        b=bA2QyXjM3hhswb46GY8Cn0FZpUO+J0X3a1zAJmSaqcRcinkXdrcDz8OTxRk8Ac8bjS
         eNutNnWEYBZOf5sCU+ZkYzHd2/EKS3RJIupZd30BToXKI9WuvWUkqUzaWF7q7gyqVVEe
         kw8HXh6f8tsPnB87EOAC1km9OKyWv1LGZJDY6OmHfVz0V5LfQDliokDzYATwtO5Qj2mt
         6h27iy3EqYdlegT1+/bElzxATjLIauJ7a/2dVgeD97oiW9j4VH0iHKai+V6LHYd3yt83
         c6HXpJAezjt7QHhFEWQAB57dUMLehOSxyJNdXJBVUtWFJCIwmGP6pVyOng62VbRUjnNR
         NbUg==
X-Received: by 10.68.203.73 with SMTP id ko9mr6349008pbc.139.1446181103602;
        Thu, 29 Oct 2015 21:58:23 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (ip68-108-246-21.sb.sd.cox.net. [68.108.246.21])
        by smtp.gmail.com with ESMTPSA id a5sm4430205pbu.55.2015.10.29.21.58.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 29 Oct 2015 21:58:22 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2] Staging: comedi: das16: Fix sparse endian warning
Date: Thu, 29 Oct 2015 21:58:16 -0700
Message-Id: <1446181096-32132-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix following sparse warning:
warning: cast to restricted __le16

This change is safe because array is pointer of type void and can
be used to store any type of data, also offset of the array would
be the same since unsigned short and __le16 are both 16 bits in size.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
Changes in v2:
 - explain why the change is valid in commit message.

 drivers/staging/comedi/drivers/das16.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/das16.c b/drivers/staging/comedi/drivers/das16.c
index 056bca9..fd8e0b7 100644
--- a/drivers/staging/comedi/drivers/das16.c
+++ b/drivers/staging/comedi/drivers/das16.c
@@ -801,9 +801,10 @@ static void das16_ai_munge(struct comedi_device *dev,
 	unsigned short *data = array;
 	unsigned int num_samples = comedi_bytes_to_samples(s, num_bytes);
 	unsigned int i;
+	__le16 *buf = array;
 
 	for (i = 0; i < num_samples; i++) {
-		data[i] = le16_to_cpu(data[i]);
+		data[i] = le16_to_cpu(buf[i]);
 		if (s->maxdata == 0x0fff)
 			data[i] >>= 4;
 		data[i] &= s->maxdata;
-- 
1.9.1


