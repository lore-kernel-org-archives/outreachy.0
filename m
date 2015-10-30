X-GM-THRID: 6211472827821850624
X-Received: by 10.13.204.132 with SMTP id o126mr6414003ywd.50.1446221216172;
        Fri, 30 Oct 2015 09:06:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.103 with SMTP id z94ls1123706qge.18.gmail; Fri, 30 Oct
 2015 09:06:55 -0700 (PDT)
X-Received: by 10.140.232.148 with SMTP id d142mr6829637qhc.4.1446221215449;
        Fri, 30 Oct 2015 09:06:55 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id fa8si773592pab.1.2015.10.30.09.06.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 09:06:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id hy1so72224265pad.0
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 09:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=B/dPuAE2utv+PV9CnVBxq5nAtK2bdaWULV6UElYDKjk=;
        b=E1FqyUGCxRYxv7WDQ3BFpktWKFpLhm763kRmr4BSS0NpPiciMCQnXZKlrtuPaz91lV
         aKAm0/ioSDkusB51c8IDZKpQjV+sS9JkeQ+y+Uz2oseslXPIYcdDHcut6H0xjNBI8ETQ
         QuZ7qLpDt7dQNxZFullFcu61Cfck19e22YdD5G1VnESk1Y57HaT5PGjldRTLlCn5fPch
         izvPExMDrXWUwqj0EfqyROrRyWsaDLVWAXEB2qeJbIIL2ToTymfK3O1XER2bVoY/alhH
         MFucXwled7rhFpC1Ue3FCidwgteoQbFkTgBLpXY9+vIAOtVZEBpxrBpWBXTXSqzZNes9
         P3Rw==
X-Received: by 10.66.228.199 with SMTP id sk7mr9875068pac.8.1446221215232;
        Fri, 30 Oct 2015 09:06:55 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.182.136])
        by smtp.gmail.com with ESMTPSA id qb7sm8950616pab.47.2015.10.30.09.06.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 30 Oct 2015 09:06:54 -0700 (PDT)
Date: Fri, 30 Oct 2015 21:36:50 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: llite: Add __iomem annotations
Message-ID: <20151030160650.GA13665@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes following sparse warnings by adding __iomem
annotations:

warning: incorrect type in argument 1 (different address spaces)
expected void [noderef] <asn:1>*to got char *<noident>

warning: incorrect type in argument 1 (different address spaces)
expected void [noderef] <asn:1>*to got int *<noident>

warning: incorrect type in argument 1 (different address spaces)
expected void [noderef] <asn:1>*to got void *<noident>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lustre/llite/file.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
index 51b6bc5..112da6f 100644
--- a/drivers/staging/lustre/lustre/llite/file.c
+++ b/drivers/staging/lustre/lustre/llite/file.c
@@ -2245,7 +2245,7 @@ ll_file_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		struct file *file2;
 		struct lustre_swap_layouts lsl;
 
-		if (copy_from_user(&lsl, (char *)arg,
+		if (copy_from_user(&lsl, (char __user *)arg,
 				       sizeof(struct lustre_swap_layouts)))
 			return -EFAULT;
 
@@ -2292,7 +2292,7 @@ ll_file_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 	case LL_IOC_FLUSHCTX:
 		return ll_flush_ctx(inode);
 	case LL_IOC_PATH2FID: {
-		if (copy_to_user((void *)arg, ll_inode2fid(inode),
+		if (copy_to_user((void __user *)arg, ll_inode2fid(inode),
 				 sizeof(struct lu_fid)))
 			return -EFAULT;
 
@@ -2304,13 +2304,13 @@ ll_file_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		struct ioc_data_version	idv;
 		int			rc;
 
-		if (copy_from_user(&idv, (char *)arg, sizeof(idv)))
+		if (copy_from_user(&idv, (char __user *)arg, sizeof(idv)))
 			return -EFAULT;
 
 		rc = ll_data_version(inode, &idv.idv_version,
 				!(idv.idv_flags & LL_DV_NOFLUSH));
 
-		if (rc == 0 && copy_to_user((char *) arg, &idv, sizeof(idv)))
+		if (rc == 0 && copy_to_user((char __user *) arg, &idv, sizeof(idv)))
 			return -EFAULT;
 
 		return rc;
@@ -2323,7 +2323,7 @@ ll_file_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		if (mdtidx < 0)
 			return mdtidx;
 
-		if (put_user((int)mdtidx, (int *)arg))
+		if (put_user((int)mdtidx, (int __user *)arg))
 			return -EFAULT;
 
 		return 0;
@@ -2350,7 +2350,7 @@ ll_file_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		rc = obd_iocontrol(cmd, ll_i2mdexp(inode), sizeof(*op_data),
 				   op_data, NULL);
 
-		if (copy_to_user((void *)arg, hus, sizeof(*hus)))
+		if (copy_to_user((void __user *)arg, hus, sizeof(*hus)))
 			rc = -EFAULT;
 
 		ll_finish_md_op_data(op_data);
@@ -2361,7 +2361,7 @@ ll_file_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		struct hsm_state_set	*hss;
 		int			 rc;
 
-		hss = memdup_user((char *)arg, sizeof(*hss));
+		hss = memdup_user((char __user *)arg, sizeof(*hss));
 		if (IS_ERR(hss))
 			return PTR_ERR(hss);
 
@@ -2389,7 +2389,7 @@ ll_file_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		rc = obd_iocontrol(cmd, ll_i2mdexp(inode), sizeof(*op_data),
 				   op_data, NULL);
 
-		if (copy_to_user((char *)arg, hca, sizeof(*hca)))
+		if (copy_to_user((char __user *)arg, hca, sizeof(*hca)))
 			rc = -EFAULT;
 
 		ll_finish_md_op_data(op_data);
-- 
1.9.1


