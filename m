X-GM-THRID: 6206320165410308096
X-Received: by 10.180.10.202 with SMTP id k10mr1525138wib.2.1445021521244;
        Fri, 16 Oct 2015 11:52:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.96.170 with SMTP id dt10ls221261wib.32.gmail; Fri, 16 Oct
 2015 11:52:00 -0700 (PDT)
X-Received: by 10.181.29.103 with SMTP id jv7mr1534409wid.0.1445021520906;
        Fri, 16 Oct 2015 11:52:00 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id o3si168947wiz.1.2015.10.16.11.52.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 11:52:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id ll6so22355731wic.0
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 11:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=b+RQoVhS6vSkGZMqpIfKendyAtSbI4q1mT08t53r/AQ=;
        b=Lun7+bxQI3AW5pApuR0/OXpGxYvyLzKshuAeVHdTT4mazN/KW+/tt0Zsy18k36vNGI
         8hlKDtw7YF++FDNOt9TgXuwWqjCW0g3XCk16XDH4YCn9oCM5lUrifxNIqrYiyY035Ruz
         2Gt1uc9LHDYHz7l/IYHRMPC/leo9wDygneQOOMfb8f1ZqDAXeQyJpkhyCO+1HD/gmbhc
         sc7F1hgFnGFh+8boJnZ0n0vTrSbb1/KfOlbV+9vmLy8T6+ouCgN72+rP/pIkHzXFBdka
         32Nj4dBh+Mh2gOZQJmqSQThJUy0J7HGveE55iqO4voA8O2+neGpj4+deQn7MFOqRc1AJ
         Z6tg==
X-Received: by 10.180.187.141 with SMTP id fs13mr6799844wic.13.1445021520814;
        Fri, 16 Oct 2015 11:52:00 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([88.247.179.54])
        by smtp.gmail.com with ESMTPSA id hk5sm24016475wjb.6.2015.10.16.11.51.58
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 16 Oct 2015 11:51:59 -0700 (PDT)
From: Aybuke Ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Aybuke Ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 2/3] Staging: olpc_dcon: Use preferred kernel type
Date: Fri, 16 Oct 2015 21:51:44 +0300
Message-Id: <1445021505-6612-2-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1445021505-6612-1-git-send-email-aybuke.147@gmail.com>
References: <1445021505-6612-1-git-send-email-aybuke.147@gmail.com>

This patch "uint16_t" type instead of "u16" type was used.
checkpatch.pl issue.

Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/olpc_dcon/olpc_dcon.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/olpc_dcon/olpc_dcon.c b/drivers/staging/olpc_dcon/olpc_dcon.c
index d0f86d3..2c34f61 100644
--- a/drivers/staging/olpc_dcon/olpc_dcon.c
+++ b/drivers/staging/olpc_dcon/olpc_dcon.c
@@ -60,7 +60,7 @@ static s32 dcon_read(struct dcon_priv *dcon, u8 reg)
 
 static int dcon_hw_init(struct dcon_priv *dcon, int is_init)
 {
-	uint16_t ver;
+	u16 ver;
 	int rc = 0;
 
 	ver = dcon_read(dcon, DCON_REG_ID);
-- 
1.9.1


