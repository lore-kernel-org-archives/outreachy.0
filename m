X-GM-THRID: 6469789511840694272
X-Received: by 10.157.83.201 with SMTP id i9mr394397oth.192.1506365256163;
        Mon, 25 Sep 2017 11:47:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.29.170 with SMTP id y39ls390387otd.18.gmail; Mon, 25 Sep
 2017 11:47:35 -0700 (PDT)
X-Received: by 10.157.13.138 with SMTP id 10mr378481ots.153.1506365255337;
        Mon, 25 Sep 2017 11:47:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506365255; cv=none;
        d=google.com; s=arc-20160816;
        b=fTDxgtCqqqsKhR2qba16Zenn+W2INZoxdbtvS5F0jhROtgKLWCnYM1g/tvrxTrGs+l
         SMIJDAQTko2tevT7D08HfGfWXgUohaROn6dk5TMiZ2QmJUp7JGCAElGYVWswtZjmsH6/
         aghDiUpCdc5LIsg60/1qaXkF2qSHeQlYMJnPyonXVzREkCFY8KHxaivYP0dCwpU111SE
         kJrNk9szy5vrRmbRqF4qoYbTbJ3lgirqNLRCh7xXWd5IxcUycMcKAznIplzoLf+7PDV0
         N+bit4w0vuNuKMePEeuDMj456qkwV/zz3scu39j4G/cEctVTC7Lejkdc0AkfN9c9rdLU
         UB3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=yZvwFukNQSOvYUmQ+oB7Q6eIl9SNeMEWQmtbIk2BzCA=;
        b=F5O/JpgfwQLZfLQghbWij++zmkeWWCeE9/Vs7AI4xKhRY+FzGyZ4ffPBCpTMzeLkJ2
         clUvcD88N1k9l0ajP0T6hLmEOsf0mOoWnnjEKmudWoj/0X4jEwZz7dG+6JV+4Xo6WIVH
         J5T00fh0ScZdtWc3KD753u0gqvpVqbIjr4tnglIg0KjkWEFf+/nHq4HeJfg2PRGdtYOt
         XtfswN218TSMIgTsFenvPMcYQ78Zj3EK1nRKg3Nywa41NxNMVf9hiQ5lgIsv7vWvPYte
         Ud2/S5Om/O8WLwESDwTWSGVBMruATnBDBdtVvtDFjCnCAzCmW6hlqbliDwIZ2IpW06fP
         01pA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GnBd8jam;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id y12si558036pfe.23.2017.09.25.11.47.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Sep 2017 11:47:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GnBd8jam;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id d8so5310094pgt.3
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Sep 2017 11:47:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yZvwFukNQSOvYUmQ+oB7Q6eIl9SNeMEWQmtbIk2BzCA=;
        b=GnBd8jamUHM3xEMEbTklIbmp2KGbz0+tNSo5Bch/f7NzGr9P9K1tY3ec6jV8MnzBJA
         MtvbUykuw/J+cLIZmJF+sM+O970syDFSozcB0o976wLt20ucHqZgLExs60sNBxfbbyfM
         1wfSv2jixjio376QeoPvzvAykGt5ZFXWwjwoZmxxyvnQsAMN1h3kGB/FMIAeq1O7toSG
         bu4LiN2qDtjiA6r3HuFYayWqGuSs6s726ZFsPTBjfM9YdlzshRrpIbL871D712KVTMWc
         qqsJr/gf33Ar+LY3OBX2nSzyKJVDBkKAUM2WtVsfqmLN0kRBvnZf3qz1HUsFNW9xTIGN
         vntg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yZvwFukNQSOvYUmQ+oB7Q6eIl9SNeMEWQmtbIk2BzCA=;
        b=HavId2XKZ3kJoScw0yrRca0LDMjDvG8scuKPL/olSlx1Qgv4G5CXvoxYG0KZQwBcFR
         cCtFkrf3wYffTTWHJJyxtE8es4qd7zbnaNHD/7BCajiqAdHD+/9flLGBH60XBgCvq1Lq
         ar41jgbydIho2ESWXym3doql9H8dPpqHUFks5d+1pK1Rqc7phRVsTp6YQzy0GZ4X1aLK
         C/HFUjhKrMUuHrUbj/Wqn/gfyk/zt/NVfPDoFgo/Dk4PoUkngaBtbY3grnQz171znE8c
         b47by1RXUH4seI6KJWxskG3nD1rB3PcBBRzaBHpBYt6a/CXOMORSGdIbyvpqtIyn0wVE
         fykg==
X-Gm-Message-State: AHPjjUgsCQg60bhelXJIQx1e5MA10F2yDneTwVFfQJGBhUMTtx8ts+WP
	X+wqtNjOuvuBWX4ovpcC8FQ=
X-Google-Smtp-Source: AOwi7QA+06VQwl4OwGIyGAh/g/IqORMFP5jOnOpdLeiejtC9dvIknBEmt9PzokTxX34pXQQ0PBHa9g==
X-Received: by 10.99.102.131 with SMTP id a125mr8660394pgc.96.1506365254890;
        Mon, 25 Sep 2017 11:47:34 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([27.59.63.252])
        by smtp.gmail.com with ESMTPSA id x19sm13994555pfa.16.2017.09.25.11.47.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Sep 2017 11:47:34 -0700 (PDT)
Date: Tue, 26 Sep 2017 00:17:28 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] drm/gem: use new idr deletion interface to cleanup
 drm_gem_handle_delete()
Message-ID: <20170925184728.GA8861@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The IDR deletion interface now returns the deleted entry or NULL if it was not
present. So we don't have to do the extra work of checking if we have a
reference on the drm_gem_object, this can be handled by checking the return
value from idr_remove() and the extra locks can be dropped.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/gpu/drm/drm_gem.c | 21 ++-------------------
 1 file changed, 2 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
index c55f338..f62757a 100644
--- a/drivers/gpu/drm/drm_gem.c
+++ b/drivers/gpu/drm/drm_gem.c
@@ -282,29 +282,12 @@ drm_gem_handle_delete(struct drm_file *filp, u32 handle)
 {
 	struct drm_gem_object *obj;
 
-	/* This is gross. The idr system doesn't let us try a delete and
-	 * return an error code.  It just spews if you fail at deleting.
-	 * So, we have to grab a lock around finding the object and then
-	 * doing the delete on it and dropping the refcount, or the user
-	 * could race us to double-decrement the refcount and cause a
-	 * use-after-free later.  Given the frequency of our handle lookups,
-	 * we may want to use ida for number allocation and a hash table
-	 * for the pointers, anyway.
-	 */
 	spin_lock(&filp->table_lock);
-
-	/* Check if we currently have a reference on the object */
-	obj = idr_replace(&filp->object_idr, NULL, handle);
-	spin_unlock(&filp->table_lock);
-	if (IS_ERR_OR_NULL(obj))
+	obj = idr_remove(&filp->object_idr, handle);
+	if (!obj)
 		return -EINVAL;
-
 	/* Release driver's reference and decrement refcount. */
 	drm_gem_object_release_handle(handle, obj, filp);
-
-	/* And finally make the handle available for future allocations. */
-	spin_lock(&filp->table_lock);
-	idr_remove(&filp->object_idr, handle);
 	spin_unlock(&filp->table_lock);
 
 	return 0;
-- 
2.7.4


