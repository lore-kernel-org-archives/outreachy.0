X-GM-THRID: 244740784128
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d2420a589d2f255c,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.25.7 with SMTP id y7mr2217310lbf.21.1424219708029;
        Tue, 17 Feb 2015 16:35:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.198.231 with SMTP id jf7ls62750lac.92.gmail; Tue, 17 Feb
 2015 16:35:07 -0800 (PST)
X-Received: by 10.112.160.3 with SMTP id xg3mr3898312lbb.5.1424219707506;
        Tue, 17 Feb 2015 16:35:07 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-f182.google.com (mail-we0-f182.google.com. [74.125.82.182])
        by gmr-mx.google.com with ESMTPS id i7si6067284wif.0.2015.02.17.16.35.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 16:35:07 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 74.125.82.182 as permitted sender) client-ip=74.125.82.182;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 74.125.82.182 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevm14 with SMTP id m14so1670972wev.8
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Feb 2015 16:35:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=JYiKSfp5oViK5J/UgEQ5VVrAm/+Svh72NJnbMuyMyI8=;
        b=Oi+AIvESPqaaQHhD4AK1q7craD8FXpvC+kH8gGpHBjFVEcL6e9327Zx85Nf4JZ6bqD
         jjYIQQ/TByJ8v5D4p6q+XcyjChy2tJViQDnQRZ6vpmeor0Tjng19J0h92sbWkaodc0uT
         Rm0wlZbfrk7YaoXjsIO5/ZcK6ctk07cB4fS1Y4TQ3bCTFiE4VdHfB/UEWiQ7De7RNMSs
         rAZ5mlOe+S3J4lvRoa+d0e4KYHf+MSQ+2IPwdEo8Onb8Cw+Q+kqb6OaRR0lA195Yd7M3
         /htF+y8JBEl3vApHCRspRSTspdk4H/nC8U6lqc7EXNG5byEIO8MsBjmYmY6azpU65klU
         ZwNA==
X-Received: by 10.180.74.39 with SMTP id q7mr43266069wiv.73.1424219707405;
        Tue, 17 Feb 2015 16:35:07 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([82.201.174.63])
        by mx.google.com with ESMTPSA id hm6sm29701323wjb.32.2015.02.17.16.35.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 17 Feb 2015 16:35:06 -0800 (PST)
Date: Wed, 18 Feb 2015 02:34:17 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: parport: remove unused variable
Message-ID: <20150218003417.GA16982@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch uses the following coccinelle script to remove
a variable that was simply used to store the return
value of a function call before returning it:

@@
identifier len,f;
@@

-int len;
 ... when != len
     when strict
-len = 
+return 
	f(...);
-return len;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/media/parport/pms.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/media/parport/pms.c b/drivers/staging/media/parport/pms.c
index e6b4975..56e1d1f 100644
--- a/drivers/staging/media/parport/pms.c
+++ b/drivers/staging/media/parport/pms.c
@@ -875,10 +875,7 @@ static ssize_t pms_read(struct file *file, char __user *buf,
 		    size_t count, loff_t *ppos)
 {
 	struct pms *dev = video_drvdata(file);
-	int len;
-
-	len = pms_capture(dev, buf, (dev->depth == 15), count);
-	return len;
+	return pms_capture(dev, buf, (dev->depth == 15), count);
 }
 
 static unsigned int pms_poll(struct file *file, struct poll_table_struct *wait)
-- 
1.9.3


