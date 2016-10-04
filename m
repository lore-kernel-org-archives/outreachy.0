X-GM-THRID: 6337407610900185088
X-Received: by 10.200.53.22 with SMTP id y22mr240047qtb.58.1475542693345;
        Mon, 03 Oct 2016 17:58:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.33.60 with SMTP id i57ls4920099otb.48.gmail; Mon, 03 Oct
 2016 17:58:13 -0700 (PDT)
X-Received: by 10.13.226.3 with SMTP id l3mr253155ywe.75.1475542692991;
        Mon, 03 Oct 2016 17:58:12 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id ua1si226126pac.1.2016.10.03.17.58.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 17:58:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id cd13so7300503pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 03 Oct 2016 17:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Zw7nUD2j8W0+OGGnIWHaCUhVCs+2hY42fHyFviGLJ9o=;
        b=QKF5+i+p6+N/LgMDyJcW3uAsCKRT1rrmatYOM4GVjVIq7Eo0scdDYBXACpTzE9lAo0
         W6fxjBOTCE/nYkjYXw7euxluZ1NZ6g9erHHXIuG/xbAC+NCGhzAumXq95EwZVK2zsW/T
         Cf+oRiO76eG37l4oglPz+1jcHRx+M/b9A2///ivkVwZ4PIXqx7VJx5mxH8jjxk4nyGUQ
         MhoC66bFODHhRtrKu0qgdfZ02ovNddZKtyT/kE4jBJ+V2n6GdIqRPlIrcypnk/lz94mc
         7U5gEDVDKFOBSeCp5gocPVGgfO6WcsXPFVw1ue+7iLW4VJOCA35PpgYd3uk98y4SrEis
         G3Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Zw7nUD2j8W0+OGGnIWHaCUhVCs+2hY42fHyFviGLJ9o=;
        b=lQQyGwhTGSghwiGDdeGlS0m/cBvM4e/qUv5JUvjOunBamqmwCWqFbNDuacQGLnl5Cw
         22kJw2HJwtlN0YxRx+N1mYD+uronqflcRlrRtJCBsQBOY2QmS33Lueh3rCvXzdzHw62D
         Z3ESM98s6D5WlrzUWYK2C34RPA6IOPh5qQh3MHebIRDRFhk5qbOLl7uvNQQd9G+1SDXh
         q2mQwrG2lLhEJ1yHFFnSXNJ6+U5WUMuoZAmhgsLVbP++qdFXiRfSzFft/LW2zPent+Uq
         W3zV6hGAlm8ewgWDuC6B3UcDa35jE9TkxdTRCA6mgIvX9hVhrml0+YVJO/KMd2KKqdqo
         Mn9Q==
X-Gm-Message-State: AA6/9RkpN2FGlLWXMvb/EMtSZSu2L4QWEn43voi5zDgA8wHUMAZjv6gv6uMZ42PG3z3wCA==
X-Received: by 10.66.237.133 with SMTP id vc5mr1325674pac.24.1475542692795;
        Mon, 03 Oct 2016 17:58:12 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id sy4sm528862pac.48.2016.10.03.17.58.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 17:58:12 -0700 (PDT)
Date: Mon, 3 Oct 2016 17:58:10 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: amsfield22@gmail.com, daniel.baluta@intel.com, oleg.drokin@intel.com,
	andreas.dilger@intel.com, jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: lustre: move int literal to right side of
 comparison test
Message-ID: <20161004005807.GA13033@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Move the integer literal 0 to the right side of the comparison test
for improved readability.

Error caught by checkpatch: 
Constants should be placed on the right side of the comparison.

Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
---
 drivers/staging/lustre/lustre/lov/lov_object.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lov/lov_object.c b/drivers/staging/lustre/lustre/lov/lov_object.c
index 52f7363..49a288f 100644
--- a/drivers/staging/lustre/lustre/lov/lov_object.c
+++ b/drivers/staging/lustre/lustre/lov/lov_object.c
@@ -597,7 +597,7 @@ static const struct lov_layout_operations lov_dispatch[] = {
 	enum lov_layout_type		    __llt;		  \
 									\
 	__llt = __obj->lo_type;					 \
-	LASSERT(0 <= __llt && __llt < ARRAY_SIZE(lov_dispatch));	\
+	LASSERT(__llt >= 0 && __llt < ARRAY_SIZE(lov_dispatch));	\
 	lov_dispatch[__llt].op(__VA_ARGS__);			    \
 })
 
@@ -652,7 +652,7 @@ do {								    \
 									\
 	lov_conf_freeze(__obj);						\
 	__llt = __obj->lo_type;					 \
-	LASSERT(0 <= __llt && __llt < ARRAY_SIZE(lov_dispatch));	\
+	LASSERT(__llt >= 0 && __llt < ARRAY_SIZE(lov_dispatch));	\
 	lov_dispatch[__llt].op(__VA_ARGS__);			    \
 	lov_conf_thaw(__obj);						\
 } while (0)
@@ -700,11 +700,11 @@ static int lov_layout_change(const struct lu_env *unused,
 	struct lu_env *env;
 	int refcheck;
 
-	LASSERT(0 <= lov->lo_type && lov->lo_type < ARRAY_SIZE(lov_dispatch));
+	LASSERT(lov->lo_type >= 0 && lov->lo_type < ARRAY_SIZE(lov_dispatch));
 
 	if (conf->u.coc_md)
 		llt = lov_type(conf->u.coc_md->lsm);
-	LASSERT(0 <= llt && llt < ARRAY_SIZE(lov_dispatch));
+	LASSERT(llt >= 0 && llt < ARRAY_SIZE(lov_dispatch));
 
 	cookie = cl_env_reenter();
 	env = cl_env_get(&refcheck);
-- 
2.1.4


