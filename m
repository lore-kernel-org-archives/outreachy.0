X-GM-THRID: 6211302879745015808
X-Received: by 10.13.203.76 with SMTP id n73mr4673119ywd.15.1446182817429;
        Thu, 29 Oct 2015 22:26:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.28.9 with SMTP id x9ls340778obg.71.gmail; Thu, 29 Oct 2015
 22:26:57 -0700 (PDT)
X-Received: by 10.182.76.37 with SMTP id h5mr4681071obw.4.1446182817049;
        Thu, 29 Oct 2015 22:26:57 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id el2si579817pbb.0.2015.10.29.22.26.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 22:26:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id z6so62902635pas.2
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 22:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Id7yS7NS1Ff4ic+WTwJYy3sMHT7kLtOzWQPaHqp0mzs=;
        b=cpPoznkgvH20yup0T5TJQ/7zME1sS9v1UgIygrz0CRqOTyYLiLQESGypO2MA82HwFk
         6sZKJWzt2kUKOsGCLf1hV8Cs/hu8z2YVpB7wpWxYZ8N5OZ2Uih5jlNoCOHaS2XdwG04G
         2ypu/M71pyFzNnmSTrS2nILN8Y1KO0qUJJyoVWcCNSFm3zQEXVo7pGY5FWX1Eqzv7Tba
         b6/yNGdQw4WmfAs1MEcLMrO9YBY3cOxndUQ2VytYewtQIvhOmMoz8X6qo8sc3E6zNiLu
         dl43/HDkEhmc38UDRVRqLVxvowKQLfarllPCi/AG8KeGMrD6+Dv3ioBXis0KJJ3BLqLR
         lvfQ==
X-Received: by 10.66.63.34 with SMTP id d2mr6409392pas.80.1446182816918;
        Thu, 29 Oct 2015 22:26:56 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (ip68-108-246-21.sb.sd.cox.net. [68.108.246.21])
        by smtp.gmail.com with ESMTPSA id fl1sm1451674pab.10.2015.10.29.22.26.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 29 Oct 2015 22:26:56 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 2/2] Staging: comedi: adl_pci9118: Fix endian sparse warning
Date: Thu, 29 Oct 2015 22:26:49 -0700
Message-Id: <30b3af5699835706812a60aeb4bb266c72eda156.1446181130.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1446181130.git.ksenija.stanojevic@gmail.com>
References: <cover.1446181130.git.ksenija.stanojevic@gmail.com>

Fix following sparse warning:
warning: cast to restricted __be16

Data is pointer of type void and can be used to store any type of data.
barray and array have the same 16 bit offset.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/comedi/drivers/adl_pci9118.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/adl_pci9118.c b/drivers/staging/comedi/drivers/adl_pci9118.c
index 0dff1db..4437ea3 100644
--- a/drivers/staging/comedi/drivers/adl_pci9118.c
+++ b/drivers/staging/comedi/drivers/adl_pci9118.c
@@ -603,10 +603,11 @@ static void pci9118_ai_munge(struct comedi_device *dev,
 	unsigned short *array = data;
 	unsigned int num_samples = comedi_bytes_to_samples(s, num_bytes);
 	unsigned int i;
+	__be16 *barray = data;
 
 	for (i = 0; i < num_samples; i++) {
 		if (devpriv->usedma)
-			array[i] = be16_to_cpu(array[i]);
+			array[i] = be16_to_cpu(barray[i]);
 		if (s->maxdata == 0xffff)
 			array[i] ^= 0x8000;
 		else
-- 
1.9.1


