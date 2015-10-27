X-GM-THRID: 6209338350434779136
X-Received: by 10.182.24.170 with SMTP id v10mr31868763obf.17.1445932746246;
        Tue, 27 Oct 2015 00:59:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.97.6 with SMTP id dw6ls284038obb.81.gmail; Tue, 27 Oct
 2015 00:59:05 -0700 (PDT)
X-Received: by 10.182.226.195 with SMTP id ru3mr28230577obc.12.1445932745818;
        Tue, 27 Oct 2015 00:59:05 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id pe1si4003990pac.2.2015.10.27.00.59.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 00:59:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id fv9so224494315pac.3
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 00:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=FgvEV0ujIwrgWTVe+prENvrJK+biZ6AggP9ZoGPv4eM=;
        b=LySM4U7VOnBX42tOLLupG4+teIJlB6bhhIWeFjDd5OzZumqeBScDO+XNZHOosRRVDo
         XkGi2DQiBk2Y0IU/RuXA1joaqkQKij16ucbt2XWUeVYs7qBtd6cZctPpUJra3rb/3/s7
         aoSxRxf/bvvAw16W9mNxQJCQx3KLpwZN0EqXCmqb/864lFAw7LAXsvswrpBR8u5kuqUn
         BxhNkd0+wZTUJNyYTKL5LR0rlOe0oR65vx3tjTGPZ5+TxYHdagNeqlzycGdwpZmFlLur
         Qhf/HXOt1pPwt2y7B+wWjRdATu7vh/yzX+Und8JaXpUJTabZ6Un1Jf2iqHEJUh9vA2an
         +yBQ==
X-Received: by 10.66.144.130 with SMTP id sm2mr23644035pab.105.1445932745626;
        Tue, 27 Oct 2015 00:59:05 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.162.184.86])
        by smtp.gmail.com with ESMTPSA id ff5sm16086824pbd.26.2015.10.27.00.59.04
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 00:59:04 -0700 (PDT)
Date: Tue, 27 Oct 2015 13:29:01 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org
Subject: [PATCH v2] scsi: bfa: bfad_bsg: Use ktime_get_real_seconds()
Message-ID: <20151027075901.GA27166@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

32 bit systems using 'struct timeval' will break in the year 2038, so
we modify the code appropriately.

This patch replaces the use of struct timeval and do_gettimeofday()
with ktime_get_real_seconds().

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Removed trailing whitespace

 drivers/scsi/bfa/bfad_bsg.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/bfa/bfad_bsg.c b/drivers/scsi/bfa/bfad_bsg.c
index 023b9d4..92f5b0f 100644
--- a/drivers/scsi/bfa/bfad_bsg.c
+++ b/drivers/scsi/bfa/bfad_bsg.c
@@ -15,6 +15,7 @@
  * General Public License for more details.
  */
 
+#include <linux/ktime.h>
 #include <linux/uaccess.h>
 #include "bfad_drv.h"
 #include "bfad_im.h"
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


