X-GM-THRID: 6208975538800820224
X-Received: by 10.112.140.202 with SMTP id ri10mr5413309lbb.10.1445639771892;
        Fri, 23 Oct 2015 15:36:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.92.163 with SMTP id cn3ls211715wib.38.gmail; Fri, 23 Oct
 2015 15:36:11 -0700 (PDT)
X-Received: by 10.180.102.162 with SMTP id fp2mr1432873wib.4.1445639771508;
        Fri, 23 Oct 2015 15:36:11 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id l1si18642wmb.3.2015.10.23.15.36.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 15:36:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id ll6so49166708wic.1
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 15:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=VgMQfUSNPtzczjO6u7cqgnxu61KS3+bTk1I/xuH5MM8=;
        b=sGgw22gfSEucsOzFDKHD3f5LYkqOT5jhpBQUYSMn8ux9pD5Ktsosy+p6ttQNHo9AHY
         ZpFHmf6knD2AxMAgywyYWTt/sbs5K0lALRNkRak7Lc7nnnPJFsLWElXWrhAZmUN6yQHz
         8xrx7CkgInFZ2FtEDS3G3qsJTvrjooMM71mCBH6vPAbGmeHEvYEuo4DRpXnBuIGLYjri
         y0QexZd/Un+H2v1RzUGbQTfCDor9zSZmh0vd/RPUVldSlcXLDJKvWxeSfaLSmX0Opd8p
         oBgMRM/miLTmXiSbALZcX9PR0vSent7pbJJBSy+ikhjO20KjPwCRJd7VKCvw+/c84U05
         +8qw==
X-Received: by 10.180.108.148 with SMTP id hk20mr7183541wib.83.1445639771387;
        Fri, 23 Oct 2015 15:36:11 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from localhost.localdomain ([95.13.215.164])
        by smtp.gmail.com with ESMTPSA id ju5sm389292wjc.1.2015.10.23.15.36.10
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 23 Oct 2015 15:36:10 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH] staging: dgnc: Removed parentheses.
Date: Sat, 24 Oct 2015 01:36:01 +0300
Message-Id: <1445639761-16571-1-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1

Removed unnecessary parentheses.Problem found using checkpatch.pl
"CHECK: Unnecessary parentheses around brd->vpd[i + 3]"

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/dgnc/dgnc_neo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
index 900e3ae..42005cb 100644
--- a/drivers/staging/dgnc/dgnc_neo.c
+++ b/drivers/staging/dgnc/dgnc_neo.c
@@ -1841,6 +1841,6 @@ static void neo_vpd(struct dgnc_board *brd)
 		/* Search for the serial number */
 		for (i = 0; i < NEO_VPD_IMAGEBYTES - 3; i++)
 			if (brd->vpd[i] == 'S' && brd->vpd[i + 1] == 'N')
-				strncpy(brd->serial_num, &(brd->vpd[i + 3]), 9);
+				strncpy(brd->serial_num, & brd->vpd[i + 3], 9);
 	}
 }
-- 
1.9.1


