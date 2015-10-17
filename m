X-GM-THRID: 6206645020679733248
X-Received: by 10.182.29.41 with SMTP id g9mr18052467obh.27.1445097155111;
        Sat, 17 Oct 2015 08:52:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.162.7 with SMTP id l7ls884937ioe.63.gmail; Sat, 17 Oct
 2015 08:52:34 -0700 (PDT)
X-Received: by 10.50.142.103 with SMTP id rv7mr9384859igb.2.1445097154913;
        Sat, 17 Oct 2015 08:52:34 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id zg1si2606295pbb.2.2015.10.17.08.52.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 08:52:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id z6so5853536pas.1
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 08:52:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=olp7gd1FXB+taZs6CT4N3x4pUo5PUSASOhrCwUzJK0Y=;
        b=cncd5REaSWv6KvBWgGjmW/rIpZZuUUNRXprVKWK6jQTokBMF8DaSbD1yzlRy0M+v4X
         HvGGzXHr08M1OcRY02tFXKmG77/+GzkMcp4QaNgtZZkOAYRNXC3hSSuX9qjh8doiVnHT
         qeQUWBaXxFaAg4hs29smLtbc9V0Urobr5fuXyKQvWJ7QBJGMsN1oALUbr8DtOicUu/eI
         JBEydNTckpjbT/4FBjzmWsKzCA2xOtpixCHsAxhzHFxANL5Hz8EKLLdKoJs+91z76lvX
         Vz8UjfBuzZ2jUs34Jo/X2xe7aL0eVud9puDrCZgzunU1Urn97O6a48pGM5uTMUc2DpPX
         V38w==
X-Received: by 10.66.139.201 with SMTP id ra9mr23746719pab.153.1445097154793;
        Sat, 17 Oct 2015 08:52:34 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.249])
        by smtp.gmail.com with ESMTPSA id z12sm27281086pbt.30.2015.10.17.08.52.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 17 Oct 2015 08:52:34 -0700 (PDT)
Date: Sat, 17 Oct 2015 23:52:26 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: mt29f_spinand: Remove space after a cast
Message-ID: <20151017155226.GA6368@Socrates-Mint>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Modify retval to reflect removal of space during cast operation.
Checkpatch found this issue.

CHECK: No space is necessary after a cast

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/mt29f_spinand/mt29f_spinand.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt29f_spinand/mt29f_spinand.c b/drivers/staging/mt29f_spinand/mt29f_spinand.c
index 1aa449e..cf98228 100644
--- a/drivers/staging/mt29f_spinand/mt29f_spinand.c
+++ b/drivers/staging/mt29f_spinand/mt29f_spinand.c
@@ -594,7 +594,7 @@ static int spinand_erase_block(struct spi_device *spi_nand, u16 block_id)
 		if (retval < 0) {
 			dev_err(&spi_nand->dev,
 					"error %d reading status register\n",
-					(int) retval);
+					(int)retval);
 			return retval;
 		}
 
-- 
1.9.1


