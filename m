X-GM-THRID: 6212178129179377664
X-Received: by 10.13.229.4 with SMTP id o4mr14295731ywe.36.1446385432675;
        Sun, 01 Nov 2015 05:43:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.98.35 with SMTP id n32ls1943083qge.78.gmail; Sun, 01 Nov
 2015 05:43:52 -0800 (PST)
X-Received: by 10.129.116.136 with SMTP id p130mr11372890ywc.4.1446385432076;
        Sun, 01 Nov 2015 05:43:52 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id iz5si1355890pbc.2.2015.11.01.05.43.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 05:43:52 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id z6so120228984pas.2
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 05:43:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ET9HIbL5KqcsP3ZNo6BFvwBrV0hgQBhINjulfAVU9Lw=;
        b=QCQNwJqF1saFofYRuojC7t0P85XYeO/5ZOfJGHo73lEpaDYPVmsfKPSXXDyCPUNEWU
         rLhcCr+H7FcObh1zXE1Gi6QxD4VriMbUpJfvr3aYNzRLM8pvXQtYEJ9kt9wVdXE1BWvx
         u8QH2gmbLFvMQa+BHL6nO8b/ixNlnK6yOtFXShRVFJ2QJmM6nVFFY/+nBZEa6Ts6z9jO
         PtWTyRyw17Vm6TwKhGqwAwnxYdq8zLvESxkXZ+ARNcdNRTE42pVf5vk+zI2JLbIxmjZZ
         u1g0y9Pu9g1FhU1HokO5aUgyxnS3KJkFlTU9L/hmbSXqNmeqxCkvfpJQroAY2jTjcLdc
         FnUw==
X-Received: by 10.68.203.73 with SMTP id ko9mr20779236pbc.139.1446385431868;
        Sun, 01 Nov 2015 05:43:51 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.108.132])
        by smtp.gmail.com with ESMTPSA id mk5sm18707140pab.44.2015.11.01.05.43.50
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 05:43:51 -0800 (PST)
Date: Sun, 1 Nov 2015 19:13:46 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org
Subject: [PATCH] scsi: bfa: Remove struct timeval
Message-ID: <20151101134346.GA8108@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

32 bit systems using 'struct timeval' will break in the year 2038, so
we modify the code appropriately.

This patch replaces the use of struct timeval and do_gettimeofday()
with ktime_get_real_seconds() which returns a 64 bit seconds value.

This patch also replaces u32 timestamp with u64 timestamp in
bfi_ioc_ctrl_req_s structure to store the 64 bit seconds value
returned by ktime_get_real_seconds()

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/scsi/bfa/bfa_ioc.c | 5 ++---
 drivers/scsi/bfa/bfi.h     | 2 +-
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/scsi/bfa/bfa_ioc.c b/drivers/scsi/bfa/bfa_ioc.c
index 98f7e8c..c52c3c3 100644
--- a/drivers/scsi/bfa/bfa_ioc.c
+++ b/drivers/scsi/bfa/bfa_ioc.c
@@ -15,6 +15,7 @@
  * General Public License for more details.
  */
 
+#include <linux/ktime.h>
 #include "bfad_drv.h"
 #include "bfad_im.h"
 #include "bfa_ioc.h"
@@ -1808,13 +1809,11 @@ static void
 bfa_ioc_send_enable(struct bfa_ioc_s *ioc)
 {
 	struct bfi_ioc_ctrl_req_s enable_req;
-	struct timeval tv;
 
 	bfi_h2i_set(enable_req.mh, BFI_MC_IOC, BFI_IOC_H2I_ENABLE_REQ,
 		    bfa_ioc_portid(ioc));
 	enable_req.clscode = cpu_to_be16(ioc->clscode);
-	do_gettimeofday(&tv);
-	enable_req.tv_sec = be32_to_cpu(tv.tv_sec);
+	enable_req.tv_sec = be64_to_cpu(ktime_get_real_seconds());
 	bfa_ioc_mbox_send(ioc, &enable_req, sizeof(struct bfi_ioc_ctrl_req_s));
 }
 
diff --git a/drivers/scsi/bfa/bfi.h b/drivers/scsi/bfa/bfi.h
index 9ef91f9..aaa68bc 100644
--- a/drivers/scsi/bfa/bfi.h
+++ b/drivers/scsi/bfa/bfi.h
@@ -454,7 +454,7 @@ struct bfi_ioc_ctrl_req_s {
 	struct bfi_mhdr_s	mh;
 	u16			clscode;
 	u16			rsvd;
-	u32		tv_sec;
+	u64			tv_sec;
 };
 #define bfi_ioc_enable_req_t struct bfi_ioc_ctrl_req_s;
 #define bfi_ioc_disable_req_t struct bfi_ioc_ctrl_req_s;
-- 
1.9.1


