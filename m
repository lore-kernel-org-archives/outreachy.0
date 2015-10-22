X-GM-THRID: 6208519851365892096
X-Received: by 10.129.56.7 with SMTP id f7mr13215458ywa.52.1445533684671;
        Thu, 22 Oct 2015 10:08:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.29.169 with SMTP id l9ls855951obh.48.gmail; Thu, 22 Oct
 2015 10:08:04 -0700 (PDT)
X-Received: by 10.182.181.3 with SMTP id ds3mr13626091obc.5.1445533684412;
        Thu, 22 Oct 2015 10:08:04 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id pe1si1732354pac.2.2015.10.22.10.08.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 10:08:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id hk11so91682678pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 10:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=2pCrtpoOffFq85pg8i3dU+LL1lmiZPLOCZXI/ecwX6E=;
        b=FyyrFU0Dlae4DOP5Cb+3e3GX0SJIaSBjRuvmKW+t3TcYb9STr/zUyncv5rU38oKZ4o
         v/3dsE7T5iaNcbU5g6mwtVQLypXn3zfN3DFwnG7D7hkHKhQh9yOiaY9/P1AfaAkRa3Eu
         /d6daSF+rdMQFF51HjdmkS0T7Hizq1T9aifnWBcht50+9Sisw0F/icnCGfTDtLjt+sJh
         3b9zN92YPe4j7v7JO+NOIE5oxCaUaM2G6uYN6fd/pXYAqlWTnf19jgTE+yy1YOQqnfHM
         IG9PXqlc1q1MrfBNLV49c54j9Q8j0WAxEIlrB068JYQExooVjA9L32E1wE4G4d6/McST
         OdaQ==
X-Received: by 10.66.122.98 with SMTP id lr2mr18506073pab.146.1445533684250;
        Thu, 22 Oct 2015 10:08:04 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.9])
        by smtp.gmail.com with ESMTPSA id tp6sm14738086pbc.81.2015.10.22.10.08.03
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 22 Oct 2015 10:08:03 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 2/3] Staging: mt29f_spinand: Remove blank line before '}' and after '{' braces
Date: Fri, 23 Oct 2015 01:07:39 +0800
Message-Id: <1445533660-29817-3-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1445533660-29817-1-git-send-email-eraretuya@gmail.com>
References: <1445533660-29817-1-git-send-email-eraretuya@gmail.com>

Remove unneeded blank lines preceding/following '}' and '{' braces, as
pointed out by checkpatch.

This patch addresses the following checkpatch checks:

CHECK: Blank lines aren't necessary before a close brace '}'
CHECK: Blank lines aren't necessary after an open brace '{'

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/mt29f_spinand/mt29f_spinand.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/mt29f_spinand/mt29f_spinand.c b/drivers/staging/mt29f_spinand/mt29f_spinand.c
index dc9877e..c00749e 100644
--- a/drivers/staging/mt29f_spinand/mt29f_spinand.c
+++ b/drivers/staging/mt29f_spinand/mt29f_spinand.c
@@ -660,7 +660,6 @@ static int spinand_read_page_hwecc(struct mtd_info *mtd, struct nand_chip *chip,
 		}
 	}
 	return 0;
-
 }
 #endif
 
@@ -711,7 +710,6 @@ static int spinand_wait(struct mtd_info *mtd, struct nand_chip *chip)
 
 static void spinand_write_buf(struct mtd_info *mtd, const uint8_t *buf, int len)
 {
-
 	struct spinand_state *state = mtd_to_state(mtd);
 
 	memcpy(state->buf + state->buf_ptr, buf, len);
-- 
1.9.1


