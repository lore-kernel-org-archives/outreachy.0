X-GM-THRID: 6254213518182055936
X-Received: by 10.107.11.222 with SMTP id 91mr30115195iol.7.1456172558171;
        Mon, 22 Feb 2016 12:22:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.39.166 with SMTP id v35ls1556628qgv.59.gmail; Mon, 22 Feb
 2016 12:22:37 -0800 (PST)
X-Received: by 10.140.240.129 with SMTP id l123mr1658948qhc.8.1456172557590;
        Mon, 22 Feb 2016 12:22:37 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id 12si3309738pfb.1.2016.02.22.12.22.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 12:22:37 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fy10so96376179pac.1
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 12:22:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=S5CxK9pRsiv3QdBHM9jEpRMUnIKKe7YT6FRcO5PhMIg=;
        b=AMK1HDIMHEWSJd8IRFIqTqKovSlrEUaG5uls+OMmV0kGMoBYXfc7s+mjgA8u82X35D
         J6NKM1GgOud2uW7rTwts2T7u7zaNm1h/PYeFdh/LV7FeAVmZTNdlve0kgZDLZi/KH7n9
         LUbN1uuPUf8XmFujoZdv36zP4fqia5DQYkOQelUDTmDsPzS5j0rm/+4hlFe8U7uJolaA
         xWOZcTLMcLSZwZ3pjV2xf62r4BCIMT51mBFTQEvEr2RwiECD30cwA5u0epnZy/oSg75K
         plfbu3rRK41wuUuWV+TdGRpUiXkLsNTjvCRHhBVUR/JXzUb1XYI/rirjVPGr2kymG3et
         loIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=S5CxK9pRsiv3QdBHM9jEpRMUnIKKe7YT6FRcO5PhMIg=;
        b=U9b9cRNxJNq71JjxR9xxWKSm7v1+M5XteeQOS2YwsomnPe0rrlqQ0F6g39rYrlEi99
         64MwHteMmTZ8HGAWvnGiUfOH9NkZBgjkDxmTGx4E5qLhZme3d0vtGkoHpZOPTzEii5Tf
         +v9gZJyUH/ulH/2jgojE6Ef3BKTeAV1iofvS/V/BJQiSlpfvqnhUFZuH9GeneVNb/Kd1
         CjYzPI/SwT/fv+IhPfV2Q+V7EmSTwC4IdMUTbZrAyC7cagpAYGC51F7xt/M8/t1eTXkm
         k0wxx3odKlWTwu/L/B+HCINd3QS6/JngMIPzILciIxAAh7TerqiSAv9kC6dNCRkwKJ2c
         Ehiw==
X-Gm-Message-State: AG10YOSdg6vDMV5sEKZVbNv8DpbyTNp5q1V4qUGrWBVn1A7RoMTrLcGJtcdo6coMoemzjQ==
X-Received: by 10.66.193.226 with SMTP id hr2mr40608130pac.20.1456172557395;
        Mon, 22 Feb 2016 12:22:37 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.170.221])
        by smtp.gmail.com with ESMTPSA id 82sm38740229pfn.89.2016.02.22.12.22.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 12:22:36 -0800 (PST)
Date: Tue, 23 Feb 2016 01:52:33 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vme: devices: Replace kzalloc with devm_kzalloc
Message-ID: <20160222202233.GA21774@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Devm_ functions allocate memory that is released when a driver
detaches. Replace kzalloc with devm_kzalloc and remove corresponding
kfrees from probe and remove functions of a platform
device.

Also, unnecessary labels have been removed.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/vme/devices/vme_pio2_core.c | 24 ++++++------------------
 1 file changed, 6 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/vme/devices/vme_pio2_core.c b/drivers/staging/vme/devices/vme_pio2_core.c
index 4f3cdbc..28a4568 100644
--- a/drivers/staging/vme/devices/vme_pio2_core.c
+++ b/drivers/staging/vme/devices/vme_pio2_core.c
@@ -215,11 +215,9 @@ static int pio2_probe(struct vme_dev *vdev)
 	u8 reg;
 	int vec;
 
-	card = kzalloc(sizeof(*card), GFP_KERNEL);
-	if (!card) {
-		retval = -ENOMEM;
-		goto err_struct;
-	}
+	card = devm_kzalloc(&vdev->dev, sizeof(*card), GFP_KERNEL);
+	if (!card)
+		return -ENOMEM;
 
 	card->id = vdev->num;
 	card->bus = bus[card->id];
@@ -232,8 +230,7 @@ static int pio2_probe(struct vme_dev *vdev)
 	for (i = 0; i < PIO2_VARIANT_LENGTH; i++) {
 		if (!isdigit(card->variant[i])) {
 			dev_err(&card->vdev->dev, "Variant invalid\n");
-			retval = -EINVAL;
-			goto err_variant;
+			return -EINVAL;
 		}
 	}
 
@@ -244,8 +241,7 @@ static int pio2_probe(struct vme_dev *vdev)
 	if (card->irq_vector & ~PIO2_VME_VECTOR_MASK) {
 		dev_err(&card->vdev->dev,
 			"Invalid VME IRQ Vector, vector must not use lower 4 bits\n");
-		retval = -EINVAL;
-		goto err_vector;
+		return -EINVAL;
 	}
 
 	/*
@@ -284,8 +280,7 @@ static int pio2_probe(struct vme_dev *vdev)
 	if (!card->window) {
 		dev_err(&card->vdev->dev,
 			"Unable to assign VME master resource\n");
-		retval = -EIO;
-		goto err_window;
+		return -EIO;
 	}
 
 	retval = vme_master_set(card->window, 1, card->base, 0x10000, VME_A24,
@@ -430,11 +425,6 @@ err_read:
 	vme_master_set(card->window, 0, 0, 0, VME_A16, 0, VME_D16);
 err_set:
 	vme_master_free(card->window);
-err_window:
-err_vector:
-err_variant:
-	kfree(card);
-err_struct:
 	return retval;
 }
 
@@ -466,8 +456,6 @@ static int pio2_remove(struct vme_dev *vdev)
 
 	vme_master_free(card->window);
 
-	kfree(card);
-
 	return 0;
 }
 
-- 
1.9.1


