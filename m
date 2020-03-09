X-GM-THRID: 6801960699600830464
X-Received: by 2002:a05:651c:2006:: with SMTP id s6mr10129349ljo.251.1583773093761;
        Mon, 09 Mar 2020 09:58:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:b4e5:: with SMTP id s5ls1131418ljm.6.gmail; Mon, 09 Mar
 2020 09:58:12 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuONbZ5qCd8VGwxZMlGmzc5MGK8wDHl7JPmNAmoJshaS0g6qke7GJMXuq2Oy/hnQn2iML5x
X-Received: by 2002:a2e:a584:: with SMTP id m4mr10431471ljp.46.1583773092439;
        Mon, 09 Mar 2020 09:58:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583773092; cv=none;
        d=google.com; s=arc-20160816;
        b=cTsZwEZslFwAqJawMyeQfnEonTwzA5gJi54zkwrYlIg9cwBslrbpl2EeahOb2J1a2X
         C+9Uwc8kJbouViha29IafCOdWBQi0cbNevv2ya9Jq5fZbfKBxkMym0GkPGjPozX7udN/
         l49P3maoUFUnlX3Jq+atFuWJ6HGPdzyy4JWNUDe02upkweDCn2Ppv3GEKOd2n1G67CJA
         m52Yma7rbVFk9KWqn1QeMHFFfkyq4IGyx/sNk3VjjDTKEGHRnnZHiLmHgS9fcvxLHNz6
         iDSWkCahs14fwBktEVlBR/9kkTHyksYW/xnwPxGN+Z1THTt1XJ0gvphixQzfs4cXjywN
         7bGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=EwqceLAk7Gfity6UQKYu04sbw4Ezw8rphZ2RobkI+YA=;
        b=Jwb+P3aIm1aT9TDoAmWF5Uj6bbKHbvt2ePg8nu748LhD39gqP/PJ6GLRLsIwiPt0Ps
         c1Yc/wD4EEBOxzZGkgN8XfCbiiS8ANHLQvTa+ih5PZOnwiSlBApV/3UqWfpsW/hc5LsL
         7A0hte8ScfAz7O+gjzql1tNNtvULXlamomtC7dFKi6eDlkiUTAAUCu0UF/MLnOeJq4+I
         SVjkI4pU3cAtIzvtdT+/WAX4y037bCrewgdhh3tqOp+fXCRMBg/qfb5rlTfrWJrH4+Kt
         g1LqloDozN1lM2W8sf1DPsylBouzbAvDhTZMDTiDuTlih2+CCREGWjcX7wH8czKWww3e
         nYqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=P+ky5BcM;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id s8si565156ljg.0.2020.03.09.09.58.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 09:58:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=P+ky5BcM;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x442.google.com with SMTP id 6so12159709wre.4
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 09:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=EwqceLAk7Gfity6UQKYu04sbw4Ezw8rphZ2RobkI+YA=;
        b=P+ky5BcMa976WLaOGgIbvf3djqeYTty//PIGjqujaYdttd0tJLLt/311Ly079afq4E
         S7cw5bWDDOzDURg8sl89+/60m0h98viNEhB2FijyAuqV/hhtlwuruDSFg1NT8uLuKESo
         tmTv+wMeR/RD19p0wLY+HrsjtJCaE2OOU3cAM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=EwqceLAk7Gfity6UQKYu04sbw4Ezw8rphZ2RobkI+YA=;
        b=KLUx2dW4iUj1WDrJa9cA5WCODQi2ARd9vyzZ7/WCdI9aFmxZ/Qr57Nop7tinteFdsh
         ofKvXwPkzOWgJCqIDKWoGvnFg/hRspe3NX1hWZRbRaZWi1lzhPNwJNH6jbYGtKcrfGuP
         aoHiccHP57l2Pb7Rmgjjs1DmgvAnq5VNzXH2VyyUR+vZ03y6M9e7OhgjkXha+YZNhNDa
         DnEG8PPfUjC+4kpuTYTGvjEDrInCCp4MkkPJot3UO2JOIinQ08DCANPIxlKv41fluEPV
         M40bZOj5f+Tjnwum/o0jsvFo4Vh5IFV9gYNHRKFe1WCD9DZJjPlDzzi+SJl83TwkyG2h
         jQbQ==
X-Gm-Message-State: ANhLgQ3fKdyTg/PCM+Ue9LRISJZQfY1D8zsI50ifmNMc4BdDh3RuNIlF
	I5ZmHl3LHLQw18yAgKZRe1MGyY0sSM4JvA==
X-Received: by 2002:adf:e98c:: with SMTP id h12mr5838189wrm.345.1583773091451;
        Mon, 09 Mar 2020 09:58:11 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id h3sm65418549wrb.23.2020.03.09.09.58.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2020 09:58:10 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH] staging: exfat: exfat_super.c: remove commented out function
Date: Mon,  9 Mar 2020 17:58:01 +0100
Message-Id: <20200309165801.4827-1-lu@pplo.net>
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


