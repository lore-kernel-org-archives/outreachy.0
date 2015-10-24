X-GM-THRID: 6208975538800820224
X-Received: by 10.194.82.193 with SMTP id k1mr2496822wjy.2.1445719411973;
        Sat, 24 Oct 2015 13:43:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.27.133 with SMTP id jg5ls282970wid.14.canary; Sat, 24 Oct
 2015 13:43:31 -0700 (PDT)
X-Received: by 10.194.203.33 with SMTP id kn1mr2483766wjc.3.1445719411460;
        Sat, 24 Oct 2015 13:43:31 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id c7si275339wiy.3.2015.10.24.13.43.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2015 13:43:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id ll6so69629716wic.1
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Oct 2015 13:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=rnkQnqeFzlzwtchSJHqGRsmffPeZ1UraE+YoVZSFTkg=;
        b=I9460Sfeb1nCP0+q3VgumhxbUr0cMYI9xJlIre3a3smV6pTuJlL1RGJI7/uTnFOss9
         iu2EfIJOkBHhx2ym3OrYUCWhz6iDZi5TF2aOFrx0Bdh66R6hh5Gnh5yCDPmDQQM70owb
         4Cih4kgr9uxOJ1AY3ohoG6AKQ9Pec6TmfB2XeVpLWu7VRCmYqgdkWZq2LkUknlUBnO/o
         KgOu7ukGLDpMXt8vPeP2fCDzUPFdigo3RvfNNejAWm4GKKilnQXGWK2ffYaZf92Adi0E
         RwcyAp4yWgTrHUJNIXcxZDXdpb/PQU2sgWj13xlKd99w3QMQN4gWUd0BYlh/OujTecyK
         6WOA==
X-Received: by 10.180.72.98 with SMTP id c2mr11727752wiv.19.1445719411362;
        Sat, 24 Oct 2015 13:43:31 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from localhost.localdomain ([95.13.215.164])
        by smtp.gmail.com with ESMTPSA id h7sm29931299wjz.7.2015.10.24.13.43.29
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Oct 2015 13:43:30 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH v3] staging: dgnc: Removed parentheses.
Date: Sat, 24 Oct 2015 23:43:06 +0300
Message-Id: <1445719386-9684-1-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1

Removed unnecessary parentheses.Problem found using checkpatch.pl
"CHECK: Unnecessary parentheses around brd->vpd[i + 3]"

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
Changes since v2:
* edit hash commit

Changes since v1:
* & after not need space
---
 drivers/staging/dgnc/dgnc_neo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
index 900e3ae..c3beff6 100644
--- a/drivers/staging/dgnc/dgnc_neo.c
+++ b/drivers/staging/dgnc/dgnc_neo.c
@@ -1841,6 +1841,6 @@ static void neo_vpd(struct dgnc_board *brd)
 		/* Search for the serial number */
 		for (i = 0; i < NEO_VPD_IMAGEBYTES - 3; i++)
 			if (brd->vpd[i] == 'S' && brd->vpd[i + 1] == 'N')
-				strncpy(brd->serial_num, &(brd->vpd[i + 3]), 9);
+				strncpy(brd->serial_num, &brd->vpd[i + 3], 9);
 	}
 }
-- 
1.9.1


