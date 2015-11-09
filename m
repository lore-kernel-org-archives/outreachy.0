X-GM-THRID: 6211311290389889024
X-Received: by 10.182.230.42 with SMTP id sv10mr2660638obc.49.1447097669393;
        Mon, 09 Nov 2015 11:34:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.196 with SMTP id e62ls1270773qgf.73.gmail; Mon, 09 Nov
 2015 11:34:28 -0800 (PST)
X-Received: by 10.140.175.139 with SMTP id v133mr26145001qhv.12.1447097668520;
        Mon, 09 Nov 2015 11:34:28 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id pe1si1462616pac.2.2015.11.09.11.34.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Nov 2015 11:34:28 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id hx2so199813304pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Nov 2015 11:34:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=II9N+fKXu4eMbwcVzvUE721G8k+XUc1wxuIVblLsinY=;
        b=0Ai0IWKUxgP1GrhcZ/Voib44b39N6JzWH7GYtekg/zDLAEkYyI90EuhGgfvgzLa/76
         8M5Y6AIDDkL6r5Z5ZQrg92eJ5BKyAX+R9T6/lSK2vWn9CkjQ1cQCsEbfsAhxfZkKpa9D
         WKTML43nkrCDMxmykHREFLJkZsqjO/wplU/1Zxc9lt2Wkc68/8uLOzEIrAHBYOathhBH
         gvQ9W8lxBfH3C9kog7fylgZLYlBIn57cSWlR35lDxfx6hamZ8g7JO/RKtAJEbU4KUkFe
         yVfVPdsXx3ywsQevqffsaAoX4c0n4Poj366uGv7OADTme3mUP93h/P/lNpBEuMxt7T22
         S+Jg==
X-Received: by 10.66.227.102 with SMTP id rz6mr43732473pac.4.1447097668351;
        Mon, 09 Nov 2015 11:34:28 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830.WORKGROUP (or-67-232-77-94.dhcp.embarqhsd.net. [67.232.77.94])
        by smtp.gmail.com with ESMTPSA id sx1sm17878567pbc.36.2015.11.09.11.34.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 09 Nov 2015 11:34:27 -0800 (PST)
From: Alison Schofield <amsfield22@gmail.com>
To: JBottomley@odin.com
Cc: linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	y2038@lists.linaro.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3] scsi: pmcraid: replace struct timeval with ktime_get_real_seconds()
Date: Mon,  9 Nov 2015 11:34:20 -0800
Message-Id: <1447097660-3063-1-git-send-email-amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4

Replace the use of struct timeval and do_gettimeofday() with
64 bit ktime_get_real_seconds. Prevents 32-bit type overflow
in year 2038 on 32-bit systems.

Driver was using the seconds portion of struct timeval (.tv_secs)
to pass a millseconds timestamp to the firmware. This change maintains
that same behavior using ktime_get_real_seconds.

The structure used to pass the timestamp to firmware is 48 bits and
works fine as long as the top 16 bits are zero and they will be zero
for a long time..ie. thousands of years.

Alternative Change:  Add sub second granularity to timestamp

As noted above, the driver only used the seconds portion of timeval,
ignores the microseconds portion, and by multiplying by 1000 effectively
does a <<10 and always writes zero into timestamp[0].

The alternative change would pass all the bits to the firmware:

        struct timespec64 ts;

        ktime_get_real_ts64(&ts);
        timestamp = ts.tv_sec * MSEC_PER_SEC + ts.tv_nsec / NSEC_PER_MSEC;

MAINTAINER: Please request alternate change if preferred.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
Change in v3:
* move alternative change proposal above the '---' to save
Changes in v2:
* add pmcraid to subject line
* update commit msg w additional detail
* add alternative change proposal per reviewer feedback

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


