X-GM-THRID: 6212117467213332480
X-Received: by 10.31.3.23 with SMTP id 23mr13829549vkd.13.1446371308426;
        Sun, 01 Nov 2015 01:48:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.26 with SMTP id x26ls819690ioi.31.gmail; Sun, 01 Nov
 2015 01:48:28 -0800 (PST)
X-Received: by 10.68.194.202 with SMTP id hy10mr13733877pbc.13.1446371308161;
        Sun, 01 Nov 2015 01:48:28 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id iz5si1306405pbc.2.2015.11.01.01.48.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 01:48:28 -0800 (PST)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by padhy1 with SMTP id hy1so111176842pad.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 01:48:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=VX6c0ZRqJIbpe1Xsf4NrnM6HDRfM0VRGN5qr/mrraa4=;
        b=dv3hKFUTaeonob6bHmNIjqCZXc5ol0cLgtu1J+1CNatQ4MkTlouAXiomIzYwFTcjdU
         0xfUip87DlAT3GgaKBv7xL6YlSNSdX/hot0vbBs+JJeJ2Ln0n5BdmBJMPmZY2u7ptpxM
         GYiqdMIMwcny2P2j6D0vgJFu2xzx3bqGZtFXNtgLQX2TGDP3IIDxmoftsWMmmtvHR34W
         o2/0V0tGBEzrLKqD3AkworTNgL4zVTSElEz3fiRDVlo5rm7M2w1/J5+Qiv78wP8dG60W
         ERcQYmdiEpQTSiJ1FH0y8wjHu9RAJ6ZXQNbw2ouzTxl2NQnzYURYKLhTdgTxq/0hcMno
         i74A==
X-Received: by 10.68.211.165 with SMTP id nd5mr19633194pbc.100.1446371308034;
        Sun, 01 Nov 2015 01:48:28 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id of1sm17806628pbc.11.2015.11.01.01.48.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 01:48:27 -0800 (PST)
Date: Sun, 1 Nov 2015 15:18:22 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: ldlm_lockd: Remove unused function
Message-ID: <20151101094822.GA38698@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the function cancel_unused_locks_before_replay_show() as it is
not called anywhere.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
index ca11511..3af0a73 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
@@ -873,13 +873,6 @@ EXPORT_SYMBOL(ldlm_put_ref);
 
 extern unsigned int ldlm_cancel_unused_locks_before_replay;
 
-static ssize_t cancel_unused_locks_before_replay_show(struct kobject *kobj,
-						      struct attribute *attr,
-						      char *buf)
-{
-	return sprintf(buf, "%d\n", ldlm_cancel_unused_locks_before_replay);
-}
-
 static ssize_t cancel_unused_locks_before_replay_store(struct kobject *kobj,
 						       struct attribute *attr,
 						       const char *buffer,
-- 
2.1.0


