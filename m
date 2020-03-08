X-GM-THRID: 6801960699600830464
X-Received: by 2002:adf:e911:: with SMTP id f17mr16005676wrm.87.1583704887374;
        Sun, 08 Mar 2020 15:01:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4d42:: with SMTP id a2ls4692686wru.9.gmail; Sun, 08 Mar
 2020 15:01:26 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuAo/gRgUlfAA/DXz0B7oNbAX/QIZER/KAkr/o+tXUtb3NlYLTr6GwQElPlgeqzKsFTn3X/
X-Received: by 2002:adf:ecc7:: with SMTP id s7mr1599818wro.386.1583704886108;
        Sun, 08 Mar 2020 15:01:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583704886; cv=none;
        d=google.com; s=arc-20160816;
        b=KgtBLqLnVdF+v5zpM1zJD98aPmyUjUzIqJEQa15prxB2gSyjevbtYnmkMUgiKb15dt
         theUmcBiem4FrK74EFxO3WT8DECW2+CVD5Gdanjhf4fzOLF3T8ASmx0E71LpdbjUB+9A
         FTwadtfoP6yKVx6Yj80+v8AA/CKhR4F4bEbZSVL8l3p29stiS4y7Ljm/1X2N318aLKVd
         oh+uLercKnUoeryS8C5d48H9d546AmRcfWSUDILTldS7usbr7HWv8evkLvVBWcY43t/+
         hHg4O/7fXdJSDJrqOBviPRhAI+XYwsR08Dqh987pOroNs0YPFIv2UtFe0bzrt0fwiqNQ
         kJ9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=EwqceLAk7Gfity6UQKYu04sbw4Ezw8rphZ2RobkI+YA=;
        b=kypAYcGWNElcGjPfIcS+ld4aaxZjM6zhlBXkxp/S7NWqp+rZ8gPVuiUy23Al2peFMk
         JUcC11jKCqq36l/MTU8O3vTkWhPUcLs9MhK1elP/nQ9zBl49DTReE0v0viROXgxdf4rq
         6mL0G9/5Vul7uRKOxrPNmUeoLsscB2xLFvPThtC8B2eTZ7I3w1GI4AoyzS4onbcsSEXk
         WsDE837NgiFTzSAPKMU09JYvSKITnVe8WY7uiqov1jCZm951Yo0/EiuTy5ifRux6/Jm6
         Ml1gj9Lz4Bpp3fY4d0lXzWoTL0THMczuzG3oWui7Ji2FpV+YXravs26IQhDwmVG2EJSU
         qBSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=dzKUCf+c;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id n7si327882wmc.1.2020.03.08.15.01.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 15:01:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=dzKUCf+c;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x343.google.com with SMTP id x3so8345782wmj.1
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 15:01:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=EwqceLAk7Gfity6UQKYu04sbw4Ezw8rphZ2RobkI+YA=;
        b=dzKUCf+cm+EPcfwUmoDAmDrMKKmiEBMGfzyhHQucdHVH541GWEO7WWEVdwguujdTDt
         vAsgzQiAXhscXFfZ3sHezQtlY6RNcq5h5RhqWhIF9SYe0dZEm6SV1/2Qwzg0WkIEwcvW
         0Mh9vmddgGQSnOHBwx3oIgUF9patUWz2HSJSY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=EwqceLAk7Gfity6UQKYu04sbw4Ezw8rphZ2RobkI+YA=;
        b=JpvC77ldOYOoGjDKKNEgQmepTWt9EOcBcfv46LDdzwYCyllQb2MXNEjO3w7WgnFR/E
         bxdRJr/z7R/4G4XSIB72mFk0/59VzA2GbfL/6bkvIICN0fSjq8MQGUQQAJrb3apa53xX
         cw58HODR7iL21yrw1HsJrwRNZyis4rv064ktw9I0fVeWus2m1QQ0XaO9AyvaAOturGJS
         F8wKWNmDQ6ZyDYGJphEJGidWwWagJviCUBjsAfje27Dhzg2n2eT3NHZdjhIR18G5e9Lz
         ZjeKsAaFxdHuu2duqlpkjZ5Y3NZlARYPuXGaMxwvG0gHVhI4ZPoHZ+hAKdHtrEFHlVcX
         NeWw==
X-Gm-Message-State: ANhLgQ3TRMSTK0xKf0WSlZi7GMVwRyiN4z0EW163em21oSGd3iWEt5nT
	38d9ox3H6zrbYZe9K6+O7ZfLMDe+8l8=
X-Received: by 2002:a05:600c:2283:: with SMTP id 3mr15880594wmf.109.1583704883874;
        Sun, 08 Mar 2020 15:01:23 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id y3sm23999204wmi.14.2020.03.08.15.01.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2020 15:01:23 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: exfat: exfat_super.c: remove commented out function
Date: Sun,  8 Mar 2020 23:01:09 +0100
Message-Id: <20200308220109.14149-1-lu@pplo.net>
X-Mailer: git-send-email 2.17.1

Remove function ffsSetAttr() which is unused.

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
 drivers/staging/exfat/exfat_super.c | 77 -----------------------------
 1 file changed, 77 deletions(-)

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 75813d0fe7a7..c3d1a77ad060 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -976,83 +976,6 @@ static int ffsRemoveFile(struct inode *inode, struct file_id_t *fid)
 	return ret;
 }
 
-#if 0
-/* Not currently wired up */
-static int ffsSetAttr(struct inode *inode, u32 attr)
-{
-	u32 type;
-	int ret = 0;
-	sector_t sector = 0;
-	struct dentry_t *ep;
-	struct super_block *sb = inode->i_sb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct file_id_t *fid = &(EXFAT_I(inode)->fid);
-	u8 is_dir = (fid->type == TYPE_DIR) ? 1 : 0;
-	struct entry_set_cache_t *es = NULL;
-
-	if (fid->attr == attr) {
-		if (p_fs->dev_ejected)
-			return -EIO;
-		return 0;
-	}
-
-	if (is_dir) {
-		if ((fid->dir.dir == p_fs->root_dir) &&
-		    (fid->entry == -1)) {
-			if (p_fs->dev_ejected)
-				return -EIO;
-			return 0;
-		}
-	}
-
-	/* acquire the lock for file system critical section */
-	mutex_lock(&p_fs->v_mutex);
-
-	/* get the directory entry of given file */
-	es = get_entry_set_in_dir(sb, &fid->dir, fid->entry,
-				  ES_ALL_ENTRIES, &ep);
-	if (!es) {
-		ret = -ENOENT;
-		goto out;
-	}
-
-	type = exfat_get_entry_type(ep);
-
-	if (((type == TYPE_FILE) && (attr & ATTR_SUBDIR)) ||
-	    ((type == TYPE_DIR) && (!(attr & ATTR_SUBDIR)))) {
-		if (p_fs->dev_ejected)
-			ret = -EIO;
-		else
-			ret = -EINVAL;
-
-		release_entry_set(es);
-		goto out;
-	}
-
-	fs_set_vol_flags(sb, VOL_DIRTY);
-
-	/* set the file attribute */
-	fid->attr = attr;
-	exfat_set_entry_attr(ep, attr);
-
-	update_dir_checksum_with_entry_set(sb, es);
-	release_entry_set(es);
-
-#ifndef CONFIG_STAGING_EXFAT_DELAYED_SYNC
-	fs_sync(sb, true);
-	fs_set_vol_flags(sb, VOL_CLEAN);
-#endif
-
-	if (p_fs->dev_ejected)
-		ret = -EIO;
-out:
-	/* release the lock for file system critical section */
-	mutex_unlock(&p_fs->v_mutex);
-
-	return ret;
-}
-#endif
-
 static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 {
 	s32 count;
-- 
2.17.1


