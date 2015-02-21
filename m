X-GM-THRID: 1957029740544
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b1158ab4e74b4086,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.19.100 with SMTP id d4mr343996lae.7.1424533747568;
        Sat, 21 Feb 2015 07:49:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.95.199 with SMTP id dm7ls281001wib.49.gmail; Sat, 21 Feb
 2015 07:49:07 -0800 (PST)
X-Received: by 10.180.81.34 with SMTP id w2mr308805wix.2.1424533747347;
        Sat, 21 Feb 2015 07:49:07 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id r6si335560wix.0.2015.02.21.07.49.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 07:49:07 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f177.google.com with SMTP id bs8so8546236wib.4
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 07:49:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=vqFXYrpPNPTgQQmGtrae5OXPdhpWrP6YMaX8p5HvL7Q=;
        b=lI8X8SmxUjzXM6W9Xxpve10JBPF2vWEWstoaKAGA5okcVxttVzSPmdZbXvH5bpHWpb
         GccwX6cFdjEbcS2gPhSNzqd0tte36xazsJujUe7aSgRjmGizkwdrZ+gqHBPMjio8UiGb
         +cudOsXvz3b00o0/6hfqxScddl+i+oBrDMXCHMtWWw2Mgp8Wz9mC8GAFlwJ54+p/nMAA
         7fK0OtxA0zL8UhTyXd0b6vqlMG0e1hTz/zoq2ei7d+kYLGgjOcN6kx34If65ca2IfS8R
         CrJ9qupl7MmuQookI3cdp4Ze8im1f7+jngj2O4GHOED0pclovy/d+5ogVaJ60vomYIco
         D49A==
X-Received: by 10.194.59.112 with SMTP id y16mr5987052wjq.36.1424533747279;
        Sat, 21 Feb 2015 07:49:07 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.245.176])
        by mx.google.com with ESMTPSA id ev7sm47116544wjb.47.2015.02.21.07.49.05
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 07:49:06 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: drivers: dma: Add require space before that '('
Date: Sat, 21 Feb 2015 17:48:59 +0200
Message-Id: <1424533739-1562-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes checkpatch.pl error in file ste_dma40.c
ERROR: space required before the open parenthesis '('

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/dma/ste_dma40.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
index 15d4946..9c6d2a2 100644
--- a/drivers/dma/ste_dma40.c
+++ b/drivers/dma/ste_dma40.c
@@ -3551,7 +3551,7 @@ static int __init d40_probe(struct platform_device *pdev)
 
 	if (!plat_data) {
 		if (np) {
-			if(d40_of_probe(pdev, np)) {
+			if (d40_of_probe(pdev, np)) {
 				ret = -ENOMEM;
 				goto failure;
 			}
-- 
1.9.1


