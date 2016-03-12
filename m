X-GM-THRID: 6261299365460049920
X-Received: by 10.182.230.107 with SMTP id sx11mr12622295obc.5.1457822361421;
        Sat, 12 Mar 2016 14:39:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.35.52 with SMTP id m49ls3043296qgm.97.gmail; Sat, 12 Mar
 2016 14:39:20 -0800 (PST)
X-Received: by 10.140.233.69 with SMTP id e66mr1824285qhc.6.1457822360718;
        Sat, 12 Mar 2016 14:39:20 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qk0-x236.google.com (mail-qk0-x236.google.com. [2607:f8b0:400d:c09::236])
        by gmr-mx.google.com with ESMTPS id w126si952501ywe.6.2016.03.12.14.39.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 14:39:20 -0800 (PST)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::236 as permitted sender) client-ip=2607:f8b0:400d:c09::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::236 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x236.google.com with SMTP id o6so61837280qkc.2
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 14:39:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=WNWD8690zIpDGUCF1RRCxV8n0WPJV/HR6ZwoJJPwZqU=;
        b=IrY2o1k3Q9Mrg0Kd3MG5IAFgNLhGck0/+T1I/wI3fKpRTdbvvT6cBmIrWmmRAXgNu/
         y0F0TYrvwYuduNWtwwONw3FO/6BFFHKyce0RNkilrB99hIZzS0EHPyGYyowJBH2L3fv2
         g0aOZooFMGNtAIs42wlrjiBRP3QAx2vw5B1k5tQJq61gzTcsruMn+L7nzHoahOBe/6ak
         R9W3jUjEJ7AjuBQGUjYSXz9vsIexB1CwVEBN/ccGoHlljDrQ73cFAxS9hZDivQi2/FDd
         EhwFKqGkQHXXhVUIhSxI3wB3BbQ6vSKgMgQ299eK2vtgbzWpXsBq5UEvB/axn6XcjcjQ
         7nfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=WNWD8690zIpDGUCF1RRCxV8n0WPJV/HR6ZwoJJPwZqU=;
        b=H5615qOFx9/1C3+48JkzcXPwneI7i4m53bBnCTLtLaAz/INXT28IM+689nLkHKjQRl
         Byltx6yFDIylZ5Xmde/Y+BlplIc3cfLLQmV5+cQFMICLXZEwor4HmWr6I8i07RDAgEtE
         46CwGMedSR6NNCcJk6MZSlR/BYl3wfa0P/DEZ/NGn5RCGTWbyI0cST3lQVtElgu1WCnZ
         d1lEVosZIn1BSD8e5j9Q/Q95vIdwPzslh29XzUZf7JdTkqWwGQ0pA4MdtcvfbJ4RdeV+
         ZEXXCt8n5gLk6v3DbbIj7jpy8xrQp4aSkhIG/1bxbrSfg7jvT21Yzfj+SQvV3e6gibp/
         6bPQ==
X-Gm-Message-State: AD7BkJIqr60TwGVCEp/unlCYRDBFzpWWl6/r2Rd1WMF+vZJy4FSQtmu0GqDnct1NgpKFLA==
X-Received: by 10.55.40.16 with SMTP id o16mr10745069qkh.45.1457822360413;
        Sat, 12 Mar 2016 14:39:20 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([191.191.241.196])
        by smtp.gmail.com with ESMTPSA id f67sm1335238qga.28.2016.03.12.14.39.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 14:39:19 -0800 (PST)
Date: Sat, 12 Mar 2016 19:39:13 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: android: binder: fixed checkpatch warning
Message-ID: <20160312223913.GA17803@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

A comment was not properly formatted, causing warnings when running checkpatch.pl.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/android/binder.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 16288e7..9d109f7 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -2741,8 +2741,9 @@ static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 	unsigned int size = _IOC_SIZE(cmd);
 	void __user *ubuf = (void __user *)arg;
 
-	/*pr_info("binder_ioctl: %d:%d %x %lx\n",
-			proc->pid, current->pid, cmd, arg);*/
+	/* pr_info("binder_ioctl: %d:%d %x %lx\n",
+	 *		proc->pid, current->pid, cmd, arg);
+	 */
 
 	if (unlikely(current->mm != proc->vma_vm_mm)) {
 		pr_err("current mm mismatch proc mm\n");
@@ -2930,8 +2931,9 @@ static int binder_mmap(struct file *filp, struct vm_area_struct *vma)
 	proc->vma = vma;
 	proc->vma_vm_mm = vma->vm_mm;
 
-	/*pr_info("binder_mmap: %d %lx-%lx maps %p\n",
-		 proc->pid, vma->vm_start, vma->vm_end, proc->buffer);*/
+	/* pr_info("binder_mmap: %d %lx-%lx maps %p\n",
+	 *	 proc->pid, vma->vm_start, vma->vm_end, proc->buffer);
+	 */
 	return 0;
 
 err_alloc_small_buf_failed:
-- 
2.7.2


