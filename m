X-GM-THRID: 6670628779382013952
X-Received: by 2002:a63:1e10:: with SMTP id e16mr50427pge.103.1553126792815;
        Wed, 20 Mar 2019 17:06:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:93:: with SMTP id 141ls1548015pga.1.gmail; Wed, 20 Mar
 2019 17:06:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwvFZQUDejUCm8blurF45MYZS8b5kx/2n5oIbvswuwQzpqJlGL9e7gwvpAQorlb7sr321vX
X-Received: by 2002:a62:be12:: with SMTP id l18mr40525pff.23.1553126791970;
        Wed, 20 Mar 2019 17:06:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553126791; cv=none;
        d=google.com; s=arc-20160816;
        b=cvC88H86eaImfHdZNQtrIA0rwOFUbnnceE+VvyArGCzHRwlCbICtPdinQxhMpO/USv
         nrV4ut6cbMkjfFa6rt4TVx99At88GJPUb9I6Um2UoTKQc4q4xAyzGGNr3DS9v2uaUdsE
         +G1sJcZ6eioU4+cb2Q8GiZ1QNGj7gZLALJO6hiKuoCjV1VTjwTBnN/KBiSgPOADmyIgD
         mYKbYkJZadVeAleDqhwUOM/Ll+bzWublL4DJ+0TcFKXDICgwLzxcp4/L72+rk6NZqrql
         6reN0C9BamC4oIdGBHFLxBAp4PCLZBHTZBp3i/4UAl5VKxVrqYK93gnXeDwujAdXmFxL
         IHSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=+FBXzDq1bjedg5yb108By98+vYpgSaPaXXZ778+I8g4=;
        b=qdKRe5mMZSfajFxlLfqI93PqB83+7/SOxy7KN56CfAzA6chTa0jZ+N8O2xFecN7V4A
         vxszNhlQ/n1ytFX1FxUiVIenliC6aO6FSf6eH+LUuLMCKCWPeO+y7ZH7Yx7JvzBxLxXE
         71SUtmbaYblP24qmTNkkkuS2jD92DXhcV+sddq2AYm9tT8fbIZE/+deCld88uRgOcIpj
         TE+Sl10OJqyZGJHM8mMg0/peL/8xrmuLHcX8tx5kmE8F0oACV9fffYe3whZWQiVY+QVG
         2RKxQt8WNhTBrM+C7YtxMCnN0m1t1Tge9/YPpGpUh3JzmApyL2vR5itMJMFSkh0MpOUC
         d7cA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rSF6k6Pt;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id 192si308673pgc.0.2019.03.20.17.06.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 17:06:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rSF6k6Pt;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x536.google.com with SMTP id k11so2948755pgb.8
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 17:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=+FBXzDq1bjedg5yb108By98+vYpgSaPaXXZ778+I8g4=;
        b=rSF6k6Ptfwp/TP0lCHSatMQibyGPIFbe2U7IuQQo4RFW+ZB29/fJfXy6WMUmkH7fGV
         WnfxX24LbNJ6QowvoVR6exWkNO7MpmCpXWiO8wuNRk8ou1cCR9FeH/glwoztcRcbBENi
         9a/LUotIs2SnygT0xWm+M0m8toSi88XnPlaZcq2JkPWvuLNyd9AfF4R2bnJPONR24+dq
         acv4XoLHenmqMmJg5h9fP65XRL+E7R1egg4JblLflfLzLXZhio1iLBVr5swvoO58ROtE
         VVf7RQyJBInNjr7arZgjMbu8WFxRKb76Dsnxa5Kw9Zi75f9wU0txB7tCc6P2rjypc1DW
         rtDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+FBXzDq1bjedg5yb108By98+vYpgSaPaXXZ778+I8g4=;
        b=nXzIR45AGBn+g7ARVTsUOgzRefhwjh4Sr8JZJUmbaxDe+LmG6FD7Ed8gdPABrRTfnl
         l7DfTnBUDVLAvbuloYLW10QNl7TP4GC+5qC4AU7R14rkJuhKyZfT/QGGoM3WC7mCvCnW
         E+IMVoVbofn9eNJnACtIFJjBFvtZVwMj3BYqDkQu2WbcRIUP4hjmsJe8W+Ok5mjOBkVb
         GI3F7fpURR3TVDRyWb/X+4pQCrM/Lo7BMQOClHakvLx4AYqHO5lDgUCzN9jnpHxTuAOl
         WHGCmLB4z03Ov6wSKHW102zB9a7zhnyWm/f3wSgRic5oxxcId6GfzYyG7OcMXFcgNdmf
         DXxQ==
X-Gm-Message-State: APjAAAXzhC/11GhwQjEHHNiI2CJNnimFc8eZx+3HpevPox23hWJgDHlG
	Zpm4Vzs5b6jt5oZ9CJCXDOWASiXOpu0=
X-Received: by 2002:a62:b502:: with SMTP id y2mr518074pfe.212.1553126791531;
        Wed, 20 Mar 2019 17:06:31 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.39])
        by smtp.gmail.com with ESMTPSA id c2sm7196897pfm.187.2019.03.20.17.06.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 17:06:31 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH] staging: erofs: Replace NULL comparisons
Date: Thu, 21 Mar 2019 05:36:13 +0530
Message-Id: <20190321000613.4646-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Replace all NULL comparisons in the file to get rid of checkpatch
warnings

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/erofs/super.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/erofs/super.c b/drivers/staging/erofs/super.c
index 15c784fba879..b2b1588d46ce 100644
--- a/drivers/staging/erofs/super.c
+++ b/drivers/staging/erofs/super.c
@@ -36,7 +36,7 @@ static int __init erofs_init_inode_cache(void)
 		sizeof(struct erofs_vnode), 0,
 		SLAB_RECLAIM_ACCOUNT, init_once);
 
-	return erofs_inode_cachep != NULL ? 0 : -ENOMEM;
+	return erofs_inode_cachep ? 0 : -ENOMEM;
 }
 
 static void erofs_exit_inode_cache(void)
@@ -49,7 +49,7 @@ static struct inode *alloc_inode(struct super_block *sb)
 	struct erofs_vnode *vi =
 		kmem_cache_alloc(erofs_inode_cachep, GFP_KERNEL);
 
-	if (vi == NULL)
+	if (!vi)
 		return NULL;
 
 	/* zero out everything except vfs_inode */
@@ -86,7 +86,7 @@ static int superblock_read(struct super_block *sb)
 
 	bh = sb_bread(sb, 0);
 
-	if (bh == NULL) {
+	if (!bh) {
 		errln("cannot read erofs superblock");
 		return -EIO;
 	}
@@ -336,7 +336,7 @@ static struct inode *erofs_init_managed_cache(struct super_block *sb)
 {
 	struct inode *inode = new_inode(sb);
 
-	if (unlikely(inode == NULL))
+	if (unlikely(!inode))
 		return ERR_PTR(-ENOMEM);
 
 	set_nlink(inode, 1);
@@ -367,7 +367,7 @@ static int erofs_read_super(struct super_block *sb,
 	}
 
 	sbi = kzalloc(sizeof(struct erofs_sb_info), GFP_KERNEL);
-	if (unlikely(sbi == NULL)) {
+	if (unlikely(!sbi)) {
 		err = -ENOMEM;
 		goto err;
 	}
@@ -431,14 +431,14 @@ static int erofs_read_super(struct super_block *sb,
 	}
 
 	sb->s_root = d_make_root(inode);
-	if (sb->s_root == NULL) {
+	if (!sb->s_root) {
 		err = -ENOMEM;
 		goto err_iget;
 	}
 
 	/* save the device name to sbi */
 	sbi->dev_name = __getname();
-	if (sbi->dev_name == NULL) {
+	if (!sbi->dev_name) {
 		err = -ENOMEM;
 		goto err_devname;
 	}
@@ -481,7 +481,7 @@ static void erofs_put_super(struct super_block *sb)
 	struct erofs_sb_info *sbi = EROFS_SB(sb);
 
 	/* for cases which are failed in "read_super" */
-	if (sbi == NULL)
+	if (!sbi)
 		return;
 
 	WARN_ON(sb->s_magic != EROFS_SUPER_MAGIC);
-- 
2.17.1


