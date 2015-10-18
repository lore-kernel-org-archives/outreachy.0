X-GM-THRID: 6206645020679733248
X-Received: by 10.50.83.98 with SMTP id p2mr5744706igy.8.1445163380099;
        Sun, 18 Oct 2015 03:16:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.38.197 with SMTP id i5ls1003933obk.34.gmail; Sun, 18 Oct
 2015 03:16:18 -0700 (PDT)
X-Received: by 10.182.128.101 with SMTP id nn5mr21098956obb.31.1445163378247;
        Sun, 18 Oct 2015 03:16:18 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id zg1si2913746pbb.2.2015.10.18.03.16.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 03:16:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id rc13so161708690pab.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 03:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=zCVeFPY3mnjTyAFY5z+s41q3PPKNJAW4IGZ/+8RdeYw=;
        b=txwOxIgivia5M+L4NNv/3Gqjc/J/rlNd5e15h0XJFyYM1f6QwbQ5IpMzbxkV/nenl6
         QQlv1WZUrP5SMzEgYCMNjlFJFYan1c5u5NWJxGWkYNnEtWK8YVQCS+lUQgwjjyfbJ4c+
         xmPpxxj6xPGdYOYWUZJ762/e6djam9Ts/hKpYAktbN0xkyVjqoiuZtVHtd/Yw5i6993Q
         YjPYriGZeuRc5zVP46FtJZA1gSS6KsEahigtYMrMwdzdqXRLve9TnJcmrXnR66NpQCJ4
         e6SKFhunR1/QwTLC+nVp9PLw8mJ9HmLjS0XowYoQ2Aa8Pnx98ss0D4hDS0PHGjw3LrMW
         lobg==
X-Received: by 10.66.227.101 with SMTP id rz5mr27524273pac.123.1445163378138;
        Sun, 18 Oct 2015 03:16:18 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.120.246])
        by smtp.gmail.com with ESMTPSA id gw3sm30407879pbc.46.2015.10.18.03.16.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 18 Oct 2015 03:16:17 -0700 (PDT)
Date: Sun, 18 Oct 2015 18:16:09 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: mt29f_spinand: Remove space after a cast
Message-ID: <20151018101529.GA6434@Socrates-Mint>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove the unneeded space before retval.
Checkpatch found this issue.

CHECK: No space is necessary after a cast

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---

Changes since v2:
 * Made commit message more clear

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


