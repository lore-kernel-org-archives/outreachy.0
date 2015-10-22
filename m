X-GM-THRID: 6208519851365892096
X-Received: by 10.182.18.66 with SMTP id u2mr12950697obd.1.1445533688107;
        Thu, 22 Oct 2015 10:08:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.82.180 with SMTP id h49ls1543948qgd.88.gmail; Thu, 22 Oct
 2015 10:08:07 -0700 (PDT)
X-Received: by 10.13.230.14 with SMTP id p14mr13408760ywe.2.1445533687645;
        Thu, 22 Oct 2015 10:08:07 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id el2si1794188pbb.0.2015.10.22.10.08.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 10:08:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fv9so95889481pac.3
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 10:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=awovFYocxHQom3XeXXuQv+3q7W4tQL/Q7eBiL4dFy8U=;
        b=tta9d7VqxPeFiDrJvloUy6o0ok4om0losfhelWFxOU4Z88nVlfRYECYU8y58A0LS3D
         dgfxoYXuiDct0FJU/YYY7TJ0gD9OKvcqwpzl5wIN9Dwq+JX+5TcNdoK7rMq3yQjrl3qw
         ZrmhKzv7/n3nEKi3DHs+CBVR+fFuMq42il/K/14L+nTXz9zwKfyd6t3370oAvsSK5IK1
         V9tpqNYcJTNFg6RkRCgo5ZpJW/4C8KfQBTErIivh9O1Ndn5Nr5H0bQD7eT2wJ2evbB9R
         YsltiSYSxSlKackCYzGsD+HrwTEW1jaqC3eMA8wnfqOJmeIMZoDJi7p5Tn5IVFlxsi0X
         y7oA==
X-Received: by 10.68.69.35 with SMTP id b3mr19076556pbu.22.1445533687471;
        Thu, 22 Oct 2015 10:08:07 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.9])
        by smtp.gmail.com with ESMTPSA id kw10sm14761256pbc.25.2015.10.22.10.08.06
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 22 Oct 2015 10:08:06 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 3/3] Staging: mt29f_spinand: Remove multiple blank lines
Date: Fri, 23 Oct 2015 01:07:40 +0800
Message-Id: <1445533660-29817-4-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1445533660-29817-1-git-send-email-eraretuya@gmail.com>
References: <1445533660-29817-1-git-send-email-eraretuya@gmail.com>

Remove excess blank line in-between two function declarations.
Issue found by checkpatch.

CHECK: Please don't use multiple blank lines

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/mt29f_spinand/mt29f_spinand.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/mt29f_spinand/mt29f_spinand.c b/drivers/staging/mt29f_spinand/mt29f_spinand.c
index c00749e..7691417 100644
--- a/drivers/staging/mt29f_spinand/mt29f_spinand.c
+++ b/drivers/staging/mt29f_spinand/mt29f_spinand.c
@@ -677,7 +677,6 @@ static uint8_t spinand_read_byte(struct mtd_info *mtd)
 	return data;
 }
 
-
 static int spinand_wait(struct mtd_info *mtd, struct nand_chip *chip)
 {
 	struct spinand_info *info = (struct spinand_info *)chip->priv;
-- 
1.9.1


