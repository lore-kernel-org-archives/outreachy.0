X-GM-THRID: 6209338350434779136
X-Received: by 10.182.79.70 with SMTP id h6mr24349437obx.22.1445724244752;
        Sat, 24 Oct 2015 15:04:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.24.195 with SMTP id w3ls1486435obf.75.gmail; Sat, 24 Oct
 2015 15:04:03 -0700 (PDT)
X-Received: by 10.182.80.198 with SMTP id t6mr13182019obx.32.1445724243082;
        Sat, 24 Oct 2015 15:04:03 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id zg1si2920970pbb.2.2015.10.24.15.04.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2015 15:04:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by padhk11 with SMTP id hk11so149538247pad.1
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Oct 2015 15:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=HiEWhJKudbEUVYgrA6Pl4cacQJBNaOkxlJXApJCYkIU=;
        b=hR66deng0/AFJPhkEjWusav6SoI8eHksu2z03svvOoEIXfss1SSfr02SiNiVa57mEA
         UTeX6mQpXlJ5ALtHEjjmaHBN1dGQg2jtwLq02qGeM3dWmxs1pXDKmcNtvPWY+/B7EzAw
         cpOvOQ5QS2kPl83gKvwjw4b6/+SLEtAaj2YXpC7VUw+/KELQjzKqn5rTZp+TEVGwepEi
         plo0PD9FxUwYkip6TBPEyJyfdSLCexLqlvbWK/ZnNVs2ruf6goXS2dbJSKh0OQr4F+K0
         ylODpmd3XFVp5cN0sSZE7qwulmH5MJ+dLnoFUoeGqpfIM25Dz4dNIQbwWRPRdtoIK82O
         zJpA==
X-Received: by 10.68.237.194 with SMTP id ve2mr13530283pbc.134.1445724242851;
        Sat, 24 Oct 2015 15:04:02 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.182.57])
        by smtp.gmail.com with ESMTPSA id dd4sm25833703pbb.52.2015.10.24.15.04.01
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 24 Oct 2015 15:04:02 -0700 (PDT)
Date: Sun, 25 Oct 2015 03:33:58 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org
Subject: [PATCH] scsi: bfa: bfad_bsg: Use ktime_get_real_seconds()
Message-ID: <20151024220358.GA17274@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

32 bit systems using 'struct timeval' will break in the year 2038, so
we modify the code appropriately.

This patch replaces the use of struct timeval and do_gettimeofday() with
ktime_get_real_seconds().

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/scsi/bfa/bfad_bsg.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/bfa/bfad_bsg.c b/drivers/scsi/bfa/bfad_bsg.c
index 023b9d4..ba2de73 100644
--- a/drivers/scsi/bfa/bfad_bsg.c
+++ b/drivers/scsi/bfa/bfad_bsg.c
@@ -16,6 +16,7 @@
  */
 
 #include <linux/uaccess.h>
+#include <linux/ktime.h>
 #include "bfad_drv.h"
 #include "bfad_im.h"
 #include "bfad_bsg.h"
@@ -2093,13 +2094,12 @@ bfad_iocmd_fcpim_cfg_profile(struct bfad_s *bfad, void *cmd, unsigned int v_cmd)
 {
 	struct bfa_bsg_fcpim_profile_s *iocmd =
 				(struct bfa_bsg_fcpim_profile_s *)cmd;
-	struct timeval  tv;
 	unsigned long	flags;
 
-	do_gettimeofday(&tv);
 	spin_lock_irqsave(&bfad->bfad_lock, flags);
 	if (v_cmd == IOCMD_FCPIM_PROFILE_ON)
-		iocmd->status = bfa_fcpim_profile_on(&bfad->bfa, tv.tv_sec);
+		iocmd->status = bfa_fcpim_profile_on(&bfad->bfa, 
+						ktime_get_real_seconds());
 	else if (v_cmd == IOCMD_FCPIM_PROFILE_OFF)
 		iocmd->status = bfa_fcpim_profile_off(&bfad->bfa);
 	spin_unlock_irqrestore(&bfad->bfad_lock, flags);
-- 
1.9.1


