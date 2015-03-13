X-GM-THRID: 8110844411904
X-Received: by 10.43.64.143 with SMTP id xi15mr43891668icb.0.1426267472294;
        Fri, 13 Mar 2015 10:24:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.28.8 with SMTP id x8ls343034igg.11.gmail; Fri, 13 Mar 2015
 10:24:32 -0700 (PDT)
X-Received: by 10.43.64.143 with SMTP id xi15mr43891650icb.0.1426267471951;
        Fri, 13 Mar 2015 10:24:31 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id pc4si498731pac.0.2015.03.13.10.24.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 10:24:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id bj1so30949532pad.12
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 10:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=a2x06sLW3nt8h1pntBNj6QEVIOrZngPyVId985EcN98=;
        b=jx7aUnrZb4MTkqQzxA2oAOxN9qg0N+NaFbUJ7heeSvNBn9pWSkGt6VEGdSu5Vv8+7e
         KDZ+7Ifn+ZdxMn5n5Ic2lUD2MYO9kgRAylMqQYW75aEqPaJCY0Kvz572meadCBDUaZtp
         ty4fySriZ+FAUV4H02NccbWJw2PF/YLmc76ZazCWYQbFFOYXHdDsDXVVE6k7vt4clUDy
         ezslTjeyXU5O6HBJrpI2/PrFY96BYMJ+A5XzWdDeCP770VJ07kjPMowdARVq3ryOKX21
         yhdZLFo0hH9iSF/Q2gZYQWcA6p4Ybu8pR8PnRlnSg7j26EwW5BgqPl+cFnj4d1dbwMxy
         xYGg==
X-Received: by 10.70.103.101 with SMTP id fv5mr103286550pdb.5.1426267471719;
        Fri, 13 Mar 2015 10:24:31 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.44.252])
        by mx.google.com with ESMTPSA id hk6sm4443215pdb.83.2015.03.13.10.24.25
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 13 Mar 2015 10:24:31 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 2/2] Staging: sm750fb: Move assignment out of if statement
Date: Fri, 13 Mar 2015 22:53:12 +0530
Message-Id: <1426267392-27533-2-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426267392-27533-1-git-send-email-somyaanand214@gmail.com>
References: <1426267392-27533-1-git-send-email-somyaanand214@gmail.com>

Checkpatch.pl suggest to avoid assignment in if statement.

This patch moves assignments out of the if statement and place
it before the if statement. This is done using following coccinelle
script.

@@
expression E1;
identifier p;
statement S;
@@
- if ((p = E1))
+ p = E1;
+ if (p)
        S

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 drivers/staging/sm750fb/sm750_hw.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index c44a50b..a1363c2 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -44,7 +44,8 @@ int hw_sm750_map(struct lynx_share* share,struct pci_dev* pdev)
 	 * successfully
 	 * */
 
-	if((ret = pci_request_region(pdev,1,"sm750fb")))
+	ret = pci_request_region(pdev, 1, "sm750fb");
+	if (ret)
 	{
 		pr_err("Can not request PCI regions.\n");
 		goto exit;
-- 
1.9.1


