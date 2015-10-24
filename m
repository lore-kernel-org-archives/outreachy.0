X-GM-THRID: 6208975538800820224
X-Received: by 10.194.189.81 with SMTP id gg17mr1959590wjc.5.1445679400455;
        Sat, 24 Oct 2015 02:36:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.87.139 with SMTP id l133ls458926lfb.34.gmail; Sat, 24 Oct
 2015 02:36:39 -0700 (PDT)
X-Received: by 10.112.12.132 with SMTP id y4mr6010314lbb.0.1445679399864;
        Sat, 24 Oct 2015 02:36:39 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id w9si63786wiz.1.2015.10.24.02.36.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2015 02:36:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id ll6so58490187wic.1
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Oct 2015 02:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Bnk2Ydnolcph479RA/8uXQQUX6hC3QsxwWhh2jMocU4=;
        b=C79zyhpqVLYx/yyCl90/bnULn6XnQuY/jWzgXik8qO7A4nNK6s3tjyAXEuNWkTThWq
         7/UKCIdaT8f6yNw8+NxFJbk/UZ9J8JpzWgiwzcXSxK9ko1+s8tp9JP1O3407mAgpG12i
         0w/n1/NguA1Gic0fy9ELQNkxtIilD/diIaO8Om+VrtRItr9sA2hce4MT6utI8LIkYoAr
         ducefj0yMZjhYPrQgtLuXptwxqlzmGESEIne4G/wDiXlX9tYi4ks6CXiAUPdheyOtYBt
         BQ5tAp9hyZuUZB32N+Tq6oLXsZSnuIa3TAg8dZLaCasAWiOVpOwTI5PTgbei7MTT2rLt
         cH6Q==
X-Received: by 10.194.187.14 with SMTP id fo14mr9296769wjc.104.1445679399741;
        Sat, 24 Oct 2015 02:36:39 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from localhost.localdomain ([95.13.215.164])
        by smtp.gmail.com with ESMTPSA id q8sm5947602wiz.23.2015.10.24.02.36.38
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Oct 2015 02:36:39 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH v2] staging: dgnc: Removed parentheses.
Date: Sat, 24 Oct 2015 12:36:09 +0300
Message-Id: <1445679369-3902-1-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove a blank space.Problem found using checkpatch.pl
"CHECK: Unnecessary parentheses around brd->vpd[i + 3]"

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
Changes since v1:
* & after not need space.
---
 drivers/staging/dgnc/dgnc_neo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
index 42005cb..c3beff6 100644
--- a/drivers/staging/dgnc/dgnc_neo.c
+++ b/drivers/staging/dgnc/dgnc_neo.c
@@ -1841,6 +1841,6 @@ static void neo_vpd(struct dgnc_board *brd)
 		/* Search for the serial number */
 		for (i = 0; i < NEO_VPD_IMAGEBYTES - 3; i++)
 			if (brd->vpd[i] == 'S' && brd->vpd[i + 1] == 'N')
-				strncpy(brd->serial_num, & brd->vpd[i + 3], 9);
+				strncpy(brd->serial_num, &brd->vpd[i + 3], 9);
 	}
 }
-- 
1.9.1


