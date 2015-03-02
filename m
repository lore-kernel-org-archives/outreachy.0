X-GM-THRID: 5931983175680
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bd66ad1392ef0d48
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.224.42 with SMTP id qz10mr28002557pac.0.1425321041434;
        Mon, 02 Mar 2015 10:30:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.102.167 with SMTP id fp7ls724729obb.79.gmail; Mon, 02 Mar
 2015 10:30:41 -0800 (PST)
X-Received: by 10.182.171.2 with SMTP id aq2mr27250076obc.23.1425321041186;
        Mon, 02 Mar 2015 10:30:41 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pd0-x234.google.com (mail-pd0-x234.google.com. [2607:f8b0:400e:c02::234])
        by gmr-mx.google.com with ESMTPS id ri9si1647205pdb.1.2015.03.02.10.30.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 10:30:41 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) client-ip=2607:f8b0:400e:c02::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x234.google.com with SMTP id g10so41586051pdj.1
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 10:30:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=syizkuG1XOtMsrQZzTt4+G/oLiF7lmJfTJjIvjcBox0=;
        b=khS3RAzeNawzSyBFERm8EhAPSwCVq/owb49bvbG2FRw/oS/cgI4I3Uu5UhRNx7OV9G
         CrAc+Sii0rq6iXTQE9iWBTXeUm//zd4XT9nHU/7o/exVSX4zLrW4FZNvp0fO5VmkAFIS
         ipCWiQe6YUp/TWVF/z/AkTWgnxe9iIhOnHP9CyJLMMxbPIGkQit3I32Rg6WYxhymw+5V
         L838P2reVevYNo58OObvlYkhuTrYXd0j8UFk+SPwVdYld5/+NSxl3iHdYq7x9PFLuodb
         /T4ut79FpjZYDGIjwomLsqfWzRXRL8DWJ9Ne3zjKdvAEQTNCdCw9wlF4x0VMwbGKNZZA
         y6mw==
X-Received: by 10.70.119.3 with SMTP id kq3mr37110030pdb.85.1425321041038;
        Mon, 02 Mar 2015 10:30:41 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([223.176.33.155])
        by mx.google.com with ESMTPSA id r9sm12713113pdl.20.2015.03.02.10.30.37
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 02 Mar 2015 10:30:40 -0800 (PST)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH V2 1/2] Staging: media: Add a blank line after declaration
Date: Tue,  3 Mar 2015 00:00:26 +0530
Message-Id: <1425321027-20698-1-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes checkpatch.pl warning by adding a blank line after
declaration for better readability.

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
Changes since v1:
* Remove some of the false positive warnings

 drivers/staging/media/davinci_vpfe/dm365_isif.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
index 0d535b0..b077d951 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
@@ -1602,6 +1602,7 @@ isif_pad_get_crop(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh,
 
 	if (crop->which == V4L2_SUBDEV_FORMAT_TRY) {
 		struct v4l2_rect *rect;
+
 		rect = v4l2_subdev_get_try_crop(fh, ISIF_PAD_SINK);
 		memcpy(&crop->rect, rect, sizeof(*rect));
 	} else {
-- 
1.9.1


