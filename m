X-GM-THRID: 6205968349385457664
X-Received: by 10.50.122.2 with SMTP id lo2mr728987igb.2.1444939605261;
        Thu, 15 Oct 2015 13:06:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.108.230 with SMTP id j93ls903820qgf.69.gmail; Thu, 15 Oct
 2015 13:06:44 -0700 (PDT)
X-Received: by 10.31.182.10 with SMTP id g10mr9204713vkf.7.1444939604681;
        Thu, 15 Oct 2015 13:06:44 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id wl2si1619325pab.1.2015.10.15.13.06.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 13:06:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id p3so48876053pay.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 13:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ajXDO6BjKft2SbSJQlpTVM0m6UXUGu4HG7LD/qlJATU=;
        b=PpZWMQsxvDpeUDKyNTMHdj8uCjgm4CuuBs8/ageBh65G4SiWXJ8NB6i31LAtNCXhYR
         WCYLZTpsl8cZaR1C4dXy+sKrRj5MdoXlzdzgD1/EGJaHK4LJkRb9+Mo4XPOVja5xvqrh
         3BIGNfuIvVA0mnsEIz/++nWa9C9sJJMgMFB+vGe+4kZDsMSSbT4Wr43sU9KqkGFcaq6L
         AoePafrvZblbwCJxAZ4FtFsT4Jtm8W9axOT5M68RT+7sOdY1eHmWzwUvofbTHbtd6Qru
         ceMAB0YRcbQ17wgNozWoFd8V3sQRbYwMifnhGOXEl/6Oq/OWnSQ8OoQmnHuNLQpg9Bik
         SekA==
X-Received: by 10.66.61.205 with SMTP id s13mr11661448par.96.1444939604513;
        Thu, 15 Oct 2015 13:06:44 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id pf7sm16953380pbc.6.2015.10.15.13.06.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 13:06:43 -0700 (PDT)
Date: Fri, 16 Oct 2015 01:36:31 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: lustre: lproc_osc: Change the variable to be
 checked
Message-ID: <20151015200630.GA44907@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The variable rc is supposed to hold the value returned by function
kstrtoul which can either be 0, -EINVAL (-22) or -ERANGE (-34).
Therefore, the check must be performed on rc instead of val for error
values. Also, rc can never be greater than 0.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lustre/osc/lproc_osc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/osc/lproc_osc.c b/drivers/staging/lustre/lustre/osc/lproc_osc.c
index 053d508..cdc7f88 100644
--- a/drivers/staging/lustre/lustre/osc/lproc_osc.c
+++ b/drivers/staging/lustre/lustre/osc/lproc_osc.c
@@ -61,9 +61,7 @@ static ssize_t active_store(struct kobject *kobj, struct attribute *attr,
 	unsigned long val;
 
 	rc = kstrtoul(buffer, 10, &val);
-	if (rc)
-		return rc;
-	if (val < 0 || val > 1)
+	if (rc < 0)
 		return -ERANGE;
 
 	/* opposite senses */
-- 
2.1.0


