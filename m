X-GM-THRID: 251519827968
X-Received: by 10.112.174.36 with SMTP id bp4mr3871255lbc.15.1424223239800;
        Tue, 17 Feb 2015 17:33:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.20.67 with SMTP id l3ls733991lae.93.gmail; Tue, 17 Feb
 2015 17:33:59 -0800 (PST)
X-Received: by 10.112.50.106 with SMTP id b10mr1573310lbo.8.1424223239223;
        Tue, 17 Feb 2015 17:33:59 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id el6si536012wib.2.2015.02.17.17.33.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 17:33:59 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id hi2so36015160wib.1
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Feb 2015 17:33:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=7TGr6IXMWN37d7nj+n8bXQpvrtVD6dZboSRekkV22ns=;
        b=Vgjie3FLhgwxIPmYJXuYMm0nNP+hgs8zHJYOYSyUNlX1LZMlsxjE6d1ta/0vvDlhf9
         PP0b+guq3PLh7dfRz1Hhram9MTWONZCHUkL+3Dle8fCYV482rZtJwZuPbiRDbC0pH5jo
         NjMW5m9dNEmxhh6nDnEATZSIZOFyN4UQWEIOBOMls6f5gPAFND+cQ6jia3l9ZvHkqNbb
         5CiYQbdmDzX9YoPdFfoWg053FfG+NqEe81Zq2tWBDlrudF2PisvimVp404wiHly5gr1A
         EVNX+5rCHZhmiw00ZwYPW19zRkWe/hqIi6Tx/YJMBLpqezniq59MD5kio8wJ9oXhUd4H
         46SQ==
X-Received: by 10.194.61.51 with SMTP id m19mr67718671wjr.39.1424223239128;
        Tue, 17 Feb 2015 17:33:59 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.219])
        by mx.google.com with ESMTPSA id n6sm29888390wjy.8.2015.02.17.17.33.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 17 Feb 2015 17:33:58 -0800 (PST)
Date: Wed, 18 Feb 2015 03:33:53 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: bcm2048: remove unused variable
Message-ID: <20150218013353.GA17840@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes the variable value since it is used only
to store return values and check their values. The pattern
of storing return values was found using the following
coccinelle script:

@@
expression ret;
identifier f;
@@

-ret =
+return
     f(...);
-return ret;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
v1: bdev is also a candidate for removal. Is there a guideline
for such cases?

 drivers/staging/media/bcm2048/radio-bcm2048.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index 60a57b2..6e0b83e 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
@@ -1987,17 +1987,13 @@ static ssize_t bcm2048_##prop##_read(struct device *dev,		\
 					char *buf)			\
 {									\
 	struct bcm2048_device *bdev = dev_get_drvdata(dev);		\
-	int value;							\
 									\
 	if (!bdev)							\
 		return -ENODEV;						\
 									\
-	value = bcm2048_get_##prop(bdev);				\
-									\
-	if (value >= 0)							\
-		value = sprintf(buf, mask "\n", value);			\
+	if (bcm2048_get_##prop(bdev) >= 0)				\
+		return sprintf(buf, mask "\n", value);			\
 									\
-	return value;							\
 }
 
 #define property_signed_read(prop, size, mask)				\
-- 
1.9.3


