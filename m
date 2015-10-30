X-GM-THRID: 6211311290389889024
X-Received: by 10.182.120.231 with SMTP id lf7mr4591959obb.50.1446183605078;
        Thu, 29 Oct 2015 22:40:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.130.101 with SMTP id e98ls432178iod.28.gmail; Thu, 29 Oct
 2015 22:40:04 -0700 (PDT)
X-Received: by 10.66.233.8 with SMTP id ts8mr4481138pac.13.1446183604702;
        Thu, 29 Oct 2015 22:40:04 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id fa8si548874pab.1.2015.10.29.22.40.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 22:40:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pasz6 with SMTP id z6so63264827pas.2
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 22:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=QKfZtH8k2IQXBL5VR1JZNOCjtSb/r33Jimkwd5aee1U=;
        b=yu4n/cC1EGC6yEyQvVYnmL7ecjm3V4/mG+mkTlns6PbkExNM5y+lxuriRVCMxa8HnT
         F+kku0SYZobIgPBeWMhjcvGe8wcuOeSHaQjL++g5pF4lqovnkUVVEImrVCUvTbP3HlAS
         XoZ2gg+x9+vR2/X3vlmzB5eQk4h/XyQxh0F+lbPZPoA0y8MI8QyIMG82CC7R9/3hQNZM
         g5y8KLPRftMbq8wj5iXZ3PLLvVahfmxiZmDd1xJXtXcENg+GANsxgFJzheXCP+ZhvJS5
         V1tQ2ie1w1qc7gy7EZi9NU3OfmN508Rn7NjlFsqvUwzIFv5ws33U9B+/74UXrjcapKjr
         A0vA==
X-Received: by 10.67.6.161 with SMTP id cv1mr6413741pad.131.1446183604568;
        Thu, 29 Oct 2015 22:40:04 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-70-157.dhcp.embarqhsd.net. [67.232.70.157])
        by smtp.gmail.com with ESMTPSA id oi3sm5609754pbb.53.2015.10.29.22.40.03
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 29 Oct 2015 22:40:03 -0700 (PDT)
Date: Thu, 29 Oct 2015 22:40:03 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org
Subject: [PATCH] scsi: replace struct timeval with ktime_get_real_seconds()
Message-ID: <20151030053949.GA9694@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Replace the use of struct timeval and do_gettimeofday() with
64 bit ktime_get_real_seconds. Prevents 32-bit type overflow
in year 2038 on 32-bit systems.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/scsi/pmcraid.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/pmcraid.c b/drivers/scsi/pmcraid.c
index ed31d8c..3f64275 100644
--- a/drivers/scsi/pmcraid.c
+++ b/drivers/scsi/pmcraid.c
@@ -45,6 +45,7 @@
 #include <asm/processor.h>
 #include <linux/libata.h>
 #include <linux/mutex.h>
+#include <linux/ktime.h>
 #include <scsi/scsi.h>
 #include <scsi/scsi_host.h>
 #include <scsi/scsi_device.h>
@@ -5563,11 +5564,9 @@ static void pmcraid_set_timestamp(struct pmcraid_cmd *cmd)
 	__be32 time_stamp_len = cpu_to_be32(PMCRAID_TIMESTAMP_LEN);
 	struct pmcraid_ioadl_desc *ioadl = ioarcb->add_data.u.ioadl;
 
-	struct timeval tv;
 	__le64 timestamp;
 
-	do_gettimeofday(&tv);
-	timestamp = tv.tv_sec * 1000;
+	timestamp = ktime_get_real_seconds() * 1000;
 
 	pinstance->timestamp_data->timestamp[0] = (__u8)(timestamp);
 	pinstance->timestamp_data->timestamp[1] = (__u8)((timestamp) >> 8);
-- 
2.1.4


