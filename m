X-GM-THRID: 5931983175680
X-Received: by 10.236.63.230 with SMTP id a66mr28040673yhd.51.1425310729601;
        Mon, 02 Mar 2015 07:38:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.39.99 with SMTP id o3ls994019igk.12.gmail; Mon, 02 Mar 2015
 07:38:49 -0800 (PST)
X-Received: by 10.66.151.101 with SMTP id up5mr26735566pab.10.1425310729403;
        Mon, 02 Mar 2015 07:38:49 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pd0-x22f.google.com (mail-pd0-x22f.google.com. [2607:f8b0:400e:c02::22f])
        by gmr-mx.google.com with ESMTPS id q9si713653pds.2.2015.03.02.07.38.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 07:38:49 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) client-ip=2607:f8b0:400e:c02::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22f.google.com with SMTP id fp1so3209196pdb.7
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 07:38:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=z6xCce2sS12tNSsrRFdYz2IRk2hsRIz21Xe7us4uffE=;
        b=yFhfwyyBnw59HaxY0JzDdYt+gBoBJhi1uy8ZC1zxl0ZpVhOGQvDxAat71n8fHdiKsG
         B57sc40S6iJicUJM7yPCqcpyvwYdiMjhXsCziesFGX52S36GIzyoFlk0ONNyjZfrXtlH
         pcwrTsY9L3qHCvLDcukj2MUSRGo3patWULxylGf4NBUDFoEmC8r97qfI4jW4yffEY0AN
         bgT68Npj/hPhhW2kBJrDn1VAZWjeOGGNhtCk8dnN6OdGJPxvnzC9VdSSfNH8oAMRXU68
         ZReYl8f5smwc2H/cxB6uJxoPwV7bf2BJEzblJCYpmRCfRyx9oG3nra/dckIRMFEZlRkR
         QwZg==
X-Received: by 10.70.130.208 with SMTP id og16mr9296859pdb.9.1425310729246;
        Mon, 02 Mar 2015 07:38:49 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([223.176.33.155])
        by mx.google.com with ESMTPSA id xh3sm12440077pab.25.2015.03.02.07.38.45
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 02 Mar 2015 07:38:48 -0800 (PST)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 1/2] Staging: media: Add a blank line after declaration
Date: Mon,  2 Mar 2015 21:08:31 +0530
Message-Id: <1425310712-16755-1-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes checkpatch.pl warning by adding a blank line after
declaration for better readability.

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_isif.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
index 0d535b0..b3b4405 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
@@ -1602,6 +1602,7 @@ isif_pad_get_crop(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh,
 
 	if (crop->which == V4L2_SUBDEV_FORMAT_TRY) {
 		struct v4l2_rect *rect;
+
 		rect = v4l2_subdev_get_try_crop(fh, ISIF_PAD_SINK);
 		memcpy(&crop->rect, rect, sizeof(*rect));
 	} else {
@@ -1991,7 +1992,9 @@ int vpfe_isif_init(struct vpfe_isif_device *isif, struct platform_device *pdev)
 	struct media_entity *me = &sd->entity;
 	static resource_size_t res_len;
 	struct resource *res;
+
 	void *__iomem addr;
+
 	int status;
 	int i = 0;
 
-- 
1.9.1


