X-GM-THRID: 6211311290389889024
X-Received: by 10.182.113.132 with SMTP id iy4mr7939798obb.28.1446754880574;
        Thu, 05 Nov 2015 12:21:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.138.8 with SMTP id qm8ls258213igb.36.gmail; Thu, 05 Nov
 2015 12:21:20 -0800 (PST)
X-Received: by 10.107.135.21 with SMTP id j21mr3373784iod.2.1446754880190;
        Thu, 05 Nov 2015 12:21:20 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id sm2si869855pab.0.2015.11.05.12.21.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Nov 2015 12:21:20 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id z6so100784165pas.2
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Nov 2015 12:21:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=m6rO0xlCNhlEDZhU1TwVGVs8ylwvZEYdzTYQFUHTO78=;
        b=mk95OSGjr3Cy8DNJ5Sbp4HzDcqGoDtZ12iHHIKBxYKpZADamU8YVS53CJ35DY2boFE
         wJEnK1C4rCPxCQ5jvXjSlvVY3JQKuos2+5zVn7NHAk8o91SKe+U9zbAnkShwTkY9PROj
         y4ZWpUdFfL7fwKLo6MtznSqwWMMl7MbjQD8mNC1shZoM/j8je14eJ24XouehzR6JL5Tm
         bIBm9R7NkiUUA4F9/lox8psBdmkQqndH02Va77riILDmTIoIccvbpQZkGSI2gysUrdY6
         EgrNvRMnwoy85H2rFoSFuCwscVbrGdA2nxTkDoAP32HhbQ4VFOcnOE90c0sHzmxXVEVH
         guRA==
X-Received: by 10.66.240.4 with SMTP id vw4mr2007776pac.9.1446754879995;
        Thu, 05 Nov 2015 12:21:19 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-72-48.dhcp.embarqhsd.net. [67.232.72.48])
        by smtp.gmail.com with ESMTPSA id wy8sm9511919pab.8.2015.11.05.12.21.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 05 Nov 2015 12:21:19 -0800 (PST)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com,
	y2038@lists.linaro.org
Subject: [PATCH v2] scsi: pmcraid: replace struct timeval with ktime_get_real_seconds()
Date: Thu,  5 Nov 2015 12:21:13 -0800
Message-Id: <1446754873-2737-1-git-send-email-amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <20151030053949.GA9694@d830.WORKGROUP>
References: <20151030053949.GA9694@d830.WORKGROUP>

Replace the use of struct timeval and do_gettimeofday() with
64 bit ktime_get_real_seconds. Prevents 32-bit type overflow
in year 2038 on 32-bit systems.

Driver was using the seconds portion of struct timeval (.tv_secs)
to pass a millseconds timestamp to the firmware. This change maintains
that same behavior using ktime_get_real_seconds.

The structure used to pass the timestamp to firmware is 48 bits and
works fine as long as the top 16 bits are zero and they will be zero
for a long time..ie. thousands of years.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---

Changes in v2:
* add pmcraid to subject line
* update commit msg w additional detail
* add alternative change proposal per reviewer feedback

Alternative Change:  Add sub second granularity to timestamp

As noted above, the driver only used the seconds portion of timeval,
ignores the microseconds portion, and by multiplying by 1000 effectively
does a <<10 and always writes zero into timestamp[0].

The alternative change would pass all the bits to the firmware:

        struct timespec64 ts;

        ktime_get_real_ts64(&ts);
        timestamp = ts.tv_sec * MSEC_PER_SEC + ts.tv_nsec / NSEC_PER_MSEC;



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


