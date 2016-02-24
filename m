X-GM-THRID: 6254947752904491008
X-Received: by 10.182.27.101 with SMTP id s5mr37616694obg.35.1456343511036;
        Wed, 24 Feb 2016 11:51:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.95.43 with SMTP id h40ls2848654qge.39.gmail; Wed, 24 Feb
 2016 11:51:50 -0800 (PST)
X-Received: by 10.129.72.199 with SMTP id v190mr38746412ywa.44.1456343510554;
        Wed, 24 Feb 2016 11:51:50 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id ui7si668057pab.0.2016.02.24.11.51.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 11:51:50 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id fy10so18008205pac.1
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 11:51:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=N/ZysTb4/WcBnequYsJ+M4rlUpdGebGbIyh44NMKBH4=;
        b=d2fcc1D/2y2kKp+ZTaJh3332SubQJri47/vXYvlJYkkHcy0MyABefSIlWwt5y/HQYD
         3PhExo7kFG83Cm7fYWxdjSrOnn/4vFJbOMw27eXZQEjsDRnrhxq7IAY0k8vxyo0LvhIv
         f5iCo3zW1it3rEaz5iZXgPbw9UXBjqDFG0MWpj7rO+sJ04kncMtst//+3uez1k7kkpeW
         FadkMLnnIL4qTJmfMfHl+ZpBJkhfb7nL+Gkz676NGPwOn/GO01FwUwLzm7dG2JO3ExO+
         g0ZI2attz5B63mzUfA6NcbiGsRcSlAIaaP3ccfV/TL7ErqUAYs5YrdSvFHTdTbu8mHJ4
         mcaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=N/ZysTb4/WcBnequYsJ+M4rlUpdGebGbIyh44NMKBH4=;
        b=dcxfSWK0hvt1OHk5jXs8xn5udZVG1av03lfVb/m6Vs8/sfvuxIf8eDZpWhDGW1X1ra
         2SOdPb3diAqTucMnaDmGWFxTxGqLnVxcdn3cn67wrvPI6Ysyvst/xHuKVj4XuZhORtCB
         AiXtvkG25L3kIrn7h12RJygK+iehXml7olFhQMFrkFjg97S6WLocfxDTeIjMk8IT5Lv7
         dMWNPHScBBXeQgqre4k+pPRnW/XBZkmmdRczGpBr1Rut3xpJCQPH6FhoZUJz8HPcpW+V
         ttXpS3Kc0gCVoYP0MVmp2Ic1NyWwFQhO9B87odDuxBeHpbdRZ/P+U81paftI/lGTBBEA
         oymw==
X-Gm-Message-State: AG10YOTvAEWhRrr/7+L27wWRUQ7pLmyQFrTPiUEBUuOzyBYrYzEdQGMxzPB6XY4GU6z7AA==
X-Received: by 10.66.146.100 with SMTP id tb4mr55310298pab.99.1456343510358;
        Wed, 24 Feb 2016 11:51:50 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ta2sm6865028pab.42.2016.02.24.11.51.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 11:51:49 -0800 (PST)
Date: Thu, 25 Feb 2016 01:22:24 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rdma: hfi1: Fix return type
Message-ID: <20160224195224.GA21237@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This function can return negative values (-ENODEV). Hence its type has
been replaced from unsigned int to signed int.

The only occurrence of this function is in structure file_operations
snoop_file_ops as .poll = hfi1_snoop_poll

This was done using Coccinelle.

@@ identifier f; constant C;@@
unsigned int f (...){
<+...
* return -C;
...+>
}

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rdma/hfi1/diag.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/diag.c b/drivers/staging/rdma/hfi1/diag.c
index e41159f..bc0fb0b 100644
--- a/drivers/staging/rdma/hfi1/diag.c
+++ b/drivers/staging/rdma/hfi1/diag.c
@@ -206,8 +206,7 @@ static ssize_t hfi1_snoop_read(struct file *fp, char __user *data,
 static ssize_t hfi1_snoop_write(struct file *fp, const char __user *data,
 				size_t count, loff_t *off);
 static long hfi1_ioctl(struct file *fp, unsigned int cmd, unsigned long arg);
-static unsigned int hfi1_snoop_poll(struct file *fp,
-				    struct poll_table_struct *wait);
+static int hfi1_snoop_poll(struct file *fp, struct poll_table_struct *wait);
 static int hfi1_snoop_release(struct inode *in, struct file *fp);

 struct hfi1_packet_filter_command {
@@ -790,8 +789,7 @@ static int hfi1_snoop_release(struct inode *in, struct file *fp)
 	return 0;
 }

-static unsigned int hfi1_snoop_poll(struct file *fp,
-				    struct poll_table_struct *wait)
+static int hfi1_snoop_poll(struct file *fp, struct poll_table_struct *wait)
 {
 	int ret = 0;
 	unsigned long flags = 0;
--
2.1.4


