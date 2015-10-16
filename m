X-GM-THRID: 6206327457482539008
X-Received: by 10.112.173.170 with SMTP id bl10mr1007153lbc.7.1445023216714;
        Fri, 16 Oct 2015 12:20:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.168.20 with SMTP id r20ls319286lfe.75.gmail; Fri, 16 Oct
 2015 12:20:16 -0700 (PDT)
X-Received: by 10.112.173.170 with SMTP id bl10mr1007139lbc.7.1445023216129;
        Fri, 16 Oct 2015 12:20:16 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id d7si116315wiy.2.2015.10.16.12.20.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 12:20:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id gb1so21329876wic.1
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 12:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=YK1eI7QsKgQIqzV6H8NgmyowdiBY0pTJ7fsQr2ifcJE=;
        b=fyd2pBP6UvdRA+07WlHyDnPPOFavtP8XJibWmCbaY3s9asuU0gY9i0f5JxG96fUi1W
         fcjr9eoml0nLu+gDUoJaarZaghz+fAFCh/3PNhWJf6+VzM6WWyr2hK6X5VW2Al8XXBZw
         PbgD7I7jNUWysDzK+M1crAwPLR6NQmLFihKW0A8z4xXXt0qLUZlSSWgpaFdlfNFeBAe0
         mCt2uc4W5sAU9VczsJKpWBJZ3hhg8MpqElROOAwMYxvNzBvxgIi7PvTGjbHuXt/JKDpo
         +A8qYj6qBfS/1NEN3QOr/g0bzsYEnUGaDqSPwX/haXu8gqIrfBchaE58X6MR6e5jdCnv
         Pr/Q==
X-Received: by 10.194.133.129 with SMTP id pc1mr19128926wjb.148.1445023216038;
        Fri, 16 Oct 2015 12:20:16 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([88.247.179.54])
        by smtp.gmail.com with ESMTPSA id qq4sm24091111wjc.14.2015.10.16.12.20.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 16 Oct 2015 12:20:15 -0700 (PDT)
From: Aybuke Ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Aybuke Ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 1/2] Staging: sm750fb: Include appropriate KERN_ facility level
Date: Fri, 16 Oct 2015 22:20:04 +0300
Message-Id: <1445023205-8484-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

Problem found using checkpatch.pl:
"WARNING: printk() should include KERN_ facility level"

Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/sm750fb/ddk750_help.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_help.c b/drivers/staging/sm750fb/ddk750_help.c
index 9637dd3..e72a29c 100644
--- a/drivers/staging/sm750fb/ddk750_help.c
+++ b/drivers/staging/sm750fb/ddk750_help.c
@@ -11,7 +11,7 @@ void ddk750_set_mmio(void __iomem *addr, unsigned short devId, char revId)
 	devId750 = devId;
 	revId750 = revId;
 	if (revId == 0xfe)
-		printk("found sm750le\n");
+		pr_info("found sm750le\n");
 }
 
 
-- 
1.9.1


