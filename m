X-GM-THRID: 6211478013725376512
X-Received: by 10.182.58.105 with SMTP id p9mr6624413obq.21.1446222423077;
        Fri, 30 Oct 2015 09:27:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.108 with SMTP id y99ls1276330qgd.35.gmail; Fri, 30 Oct
 2015 09:27:02 -0700 (PDT)
X-Received: by 10.140.236.65 with SMTP id h62mr6893166qhc.13.1446222422561;
        Fri, 30 Oct 2015 09:27:02 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id iz5si699982pbc.2.2015.10.30.09.27.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 09:27:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id fv9so81915044pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 09:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=tRC970Btq8NwgsaT7hBu8csWDFC2dUUBIT6ZJ0nzj9o=;
        b=YZXo6X7ryY+lCGBewSRb4lBrxB8Lk8obfeXXhbjVIM/WA2tAMi0i0b/r6Qcx/ubPWX
         iSq6HOanHnYZMDf0c1i1N0T+JXiAULQcc4If79sidAaKnQCOO+pWf0LQFB1YgNR95gm7
         4pb0A0wn8kU4kqweXjVy2J3ClssKohaqpyYA1Etg4LQZtFwlaplu5DxSstZMDMU6ZOBI
         /Foj5aVHd0vGvhNxGpqVxeZU9w5qNeXhw+fHZ8ZCIADmFtLHbQFGWw3f4XpeQkZdFkzt
         uAlTIsFuXZkGjKwKtT2vOKCTIm8CVAE9rhiUgtT41+u+We3qLZ9CKfFmjvgKeqmKxpJJ
         HYUQ==
X-Received: by 10.66.243.225 with SMTP id xb1mr9771396pac.1.1446222422388;
        Fri, 30 Oct 2015 09:27:02 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.182.136])
        by smtp.gmail.com with ESMTPSA id dn4sm9104927pbd.0.2015.10.30.09.27.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 30 Oct 2015 09:27:02 -0700 (PDT)
Date: Fri, 30 Oct 2015 21:56:58 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: lustre: llite: Add __user annotations
Message-ID: <20151030162658.GA14714@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the following multiple sparse warnings by adding __user
annotations:

warning: incorrect type in argument 1 (different address spaces)
expected void [noderef] <asn:1>*to got char *<noident>

warning: incorrect type in argument 1 (different address spaces)
expected void [noderef] <asn:1>*to got int *<noident>

warning: incorrect type in argument 1 (different address spaces)
expected void [noderef] <asn:1>*to got void *<noident>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Fixed commit message

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


