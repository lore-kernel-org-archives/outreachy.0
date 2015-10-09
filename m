X-GM-THRID: 6203646587368898560
X-Received: by 10.112.144.99 with SMTP id sl3mr2609976lbb.12.1444399027878;
        Fri, 09 Oct 2015 06:57:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.78.81 with SMTP id c78ls280304lfb.45.gmail; Fri, 09 Oct
 2015 06:57:07 -0700 (PDT)
X-Received: by 10.112.158.202 with SMTP id ww10mr2684748lbb.13.1444399027283;
        Fri, 09 Oct 2015 06:57:07 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id w4si2684wiz.0.2015.10.09.06.57.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 06:57:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id gb1so69295845wic.1
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 06:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=SeJEaVBmlLmidGBSFJCvKq53oPWB9969frnaT6XUN2c=;
        b=gS+krbnOlSXzDjMH8F57OU0Y0CZgDHUiq81BMLrhoFNHC3ycFYtxvCix/Vh/CUFGEK
         wtRzqq0XBNFGlaYWRSmXUzb6c6/qSlL2RJpzOjwKzb50WC4HG0iklWbDZnTiqPGzbQkU
         XZuY55K/sLI2IaELaqpmYy2QjeQrRd5va9z5h5VUFD7NDsx9WoX8+XIgjiJ7o0H0JQRh
         /YAqdw8dcqbDb1ZAiZ9hU+L30VCda0rzTOh12BGiTIiCfooEC4dzTWENluuXCVN/y+Fk
         cG6ktvfXLR6yX4KTXPV0Za2hMfOpZfo4vPfUbj0+4f0dLtKBpAcrCrwSX2UHUe1b1TnZ
         UVwQ==
X-Received: by 10.180.106.66 with SMTP id gs2mr10920994wib.14.1444399027112;
        Fri, 09 Oct 2015 06:57:07 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id l1sm2308009wjx.13.2015.10.09.06.57.06
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 09 Oct 2015 06:57:06 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: rdma: Use memdup_user
Date: Fri,  9 Oct 2015 15:56:59 +0200
Message-Id: <1444399019-7558-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Use memdup_user when user data is immediately copied into the
allocated region.

Issue found using coccinelle.

Signed-off-by: Ksenija Stanojevic<ksenija.stanojevic@gmail.com>
---
 drivers/staging/rdma/ipath/ipath_fs.c | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rdma/ipath/ipath_fs.c b/drivers/staging/rdma/ipath/ipath_fs.c
index 25422a3..796af68 100644
--- a/drivers/staging/rdma/ipath/ipath_fs.c
+++ b/drivers/staging/rdma/ipath/ipath_fs.c
@@ -195,16 +195,9 @@ static ssize_t flash_write(struct file *file, const char __user *buf,
 		goto bail;
 	}
 
-	tmp = kmalloc(count, GFP_KERNEL);
-	if (!tmp) {
-		ret = -ENOMEM;
-		goto bail;
-	}
-
-	if (copy_from_user(tmp, buf, count)) {
-		ret = -EFAULT;
-		goto bail_tmp;
-	}
+	tmp = memdup_user(buf, count);
+	if (IS_ERR(tmp))
+		return PTR_ERR(tmp);
 
 	dd = file_inode(file)->i_private;
 	if (ipath_eeprom_write(dd, pos, tmp, count)) {
-- 
1.9.1


