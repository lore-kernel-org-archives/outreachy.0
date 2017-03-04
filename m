X-GM-THRID: 6393330913423392768
X-Received: by 10.99.119.78 with SMTP id s75mr3512878pgc.124.1488641465677;
        Sat, 04 Mar 2017 07:31:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.27.71 with SMTP id l65ls11443835otl.41.gmail; Sat, 04 Mar
 2017 07:31:05 -0800 (PST)
X-Received: by 10.157.4.43 with SMTP id 40mr3028902otc.13.1488641465299;
        Sat, 04 Mar 2017 07:31:05 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 207si541219pfu.8.2017.03.04.07.31.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 07:31:05 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id s67so15529309pgb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 07:31:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=hRDcKLqcQlGruaCoetldLID6JaNigB9rqxeQfkV3xps=;
        b=u4xB3dnDxWj9koec6bQAFAJ0vxKue9LtRN1vk+awCVmZjYHL1kj1SklGyAenrTTg7f
         Qbv8Wt3UGIgraGRZvIvFlEyFeX8DwcOoMS8vJUG4JeYt4Jm5IwPxTXVt/OJj9MThBpx3
         1yyW2QUGOLgUrcfjFwkU8dVowYyMy6XwQ2xQavnY1EdLghiD4zQEhMLT6qUAVhjZ3gGd
         ycf9sNISatuuIQVKfUYQNHWPxDh4cZ55fl4sD1o/spQOMasw8zw/JoRULi/wO3fEg1+B
         t2UgBCILz5Z+/tLG+rJslUGGotDYh7b3Lkl/UAzS0Oa6mJDTVyV2dcCqwuULbwZxYgrM
         VEBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=hRDcKLqcQlGruaCoetldLID6JaNigB9rqxeQfkV3xps=;
        b=FFUpueP9SlXnOPQvwUF5I00Kl6l5YOKDsfag6mAUgccx0wwihMfPTSOC2f9A8yQcIm
         AuwQYE03UZOoZrm+xKIDWdT4U2pQwKTC24Wo8K80xxhMl+e1hZZQQxdSGUEyPuBP91d9
         nFxVJSucaIfbDu1qUhqEkBVZhoBPsvmGP/zcSS5W4NPsO1ZfditfDQkjr8OVIcfsfYoc
         5ad9tRhGaxjCC1rP5c1OyEXB3E5RQxL0fk2anUSv1rH5deDpv978L7ETbEdTeHnrd/kz
         1WxbuyjPrE8Uu31ZzR8R1Ix3oTPmY06uMqYp0sMZTmKM/q9t95uphaZTJhjQyDI6ZH+k
         Da/g==
X-Gm-Message-State: AMke39kEGEqvWet7gaSEXvsk6/DMzwOhDeD8MM5ovFjR9ji2xj6it4iIZRi86odDl73Oog==
X-Received: by 10.99.98.2 with SMTP id w2mr9861020pgb.103.1488641464738;
        Sat, 04 Mar 2017 07:31:04 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g27sm29923240pfk.95.2017.03.04.07.31.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 07:31:03 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	oleg.drokin@intel.com,
	marvin24@gmx.de,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v5 2/5] staging: lustre: Remove unnecessary cast on void pointer
Date: Sat,  4 Mar 2017 21:00:50 +0530
Message-Id: <1488641453-22575-3-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488641453-22575-1-git-send-email-singhalsimran0@gmail.com>
References: <1488641453-22575-1-git-send-email-singhalsimran0@gmail.com>

The following Coccinelle script was used to detect this:
@r@
expression x;
void* e;
type T;
identifier f;
@@
(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T*)x)->f
|
- (T*)
  e
)

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/lustre/lustre/lmv/lmv_obd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lmv/lmv_obd.c b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
index 271e189..09b46924 100644
--- a/drivers/staging/lustre/lustre/lmv/lmv_obd.c
+++ b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
@@ -640,7 +640,7 @@ static int lmv_fid2path(struct obd_export *exp, int len, void *karg,
 	int			remote_gf_size = 0;
 	int			rc;
 
-	gf = (struct getinfo_fid2path *)karg;
+	gf = karg;
 	tgt = lmv_find_target(lmv, &gf->gf_fid);
 	if (IS_ERR(tgt))
 		return PTR_ERR(tgt);
@@ -657,7 +657,7 @@ static int lmv_fid2path(struct obd_export *exp, int len, void *karg,
 		struct getinfo_fid2path *ori_gf;
 		char *ptr;
 
-		ori_gf = (struct getinfo_fid2path *)karg;
+		ori_gf = karg;
 		if (strlen(ori_gf->gf_path) +
 		    strlen(gf->gf_path) > ori_gf->gf_pathlen) {
 			rc = -EOVERFLOW;
-- 
2.7.4


