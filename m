X-GM-THRID: 6393234614676094976
X-Received: by 10.157.54.142 with SMTP id h14mr877779otc.38.1488540939810;
        Fri, 03 Mar 2017 03:35:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.7 with SMTP id u7ls590620itc.19.canary-gmail; Fri, 03
 Mar 2017 03:35:38 -0800 (PST)
X-Received: by 10.107.135.193 with SMTP id r62mr820870ioi.27.1488540938848;
        Fri, 03 Mar 2017 03:35:38 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id y90si398786pfa.6.2017.03.03.03.35.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 03:35:38 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id s67so12459424pgb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 03:35:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=hRDcKLqcQlGruaCoetldLID6JaNigB9rqxeQfkV3xps=;
        b=QUYIvwVb4JE16NCuEJn6w+cBGUs4vNNko98BkZY6SW37v3L/Drr5q+ysf0IUGRvUNl
         nMypcf+vJpjfh829e+RPO20PdJC24p5lHW27FZWGB7mvleSppDom/zYxmyd1/oCWikO2
         53zMdL3BkBmOFV1U3PJ9QzShrHe3AtblehBXf4TMH1WH6ioHD3ycPp1Wj7I+ShpYBU0J
         h+otht9JwUoAfDp/IsCz9RYa88MdwTRv0CVxGROPfvNtjG9mC20/XorEfhMxp2NxbLHg
         WVOBgNNQ+Nh3c3vxJH8gonpgdUXv2mc5K3KT8EdIl/wUR+eok9Z5Qiqs7JLGLaNfq5tn
         0wVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=hRDcKLqcQlGruaCoetldLID6JaNigB9rqxeQfkV3xps=;
        b=a7PLTPeudIrmqNzYqm9+gjwtcJygLbk2IJVQxfnHz/vuM9Tv1tMIE9goO3pe4NRHNA
         1O8/59ArcTFJWHhFtEuVanfHA8qGSSj/X0Z/3WlAfAtP61hLxuQsudUBkW0bpxHnq4rb
         l4QjZu/FhAwFnBtm5D2qVyDyqY282H9k+IeK1BOfMHGA76M72OX5vqZj+o5s/MQiqwYX
         EchcO3PiinrwKEy3OycE43NSWkcMTUu3GNJv52Dc1nfqDfm5xmd5ASAJDITCAFmWtBK6
         xvZbvGDEoiJYbjsIDHj5dlqDGUNyIosaHJyq002PT484LkncUjUQbboUYQs0aULE22Yz
         +jQg==
X-Gm-Message-State: AMke39lZt6CINiDkNP3E/Am0Vj60SVm8iGL6gh+fqWi/r3YxRt22GmgYGO9PNVUSFfyDjA==
X-Received: by 10.98.211.143 with SMTP id z15mr2947954pfk.46.1488540938626;
        Fri, 03 Mar 2017 03:35:38 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e76sm14854464pfk.75.2017.03.03.03.35.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 03:35:37 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	oleg.drokin@intel.com,
	marvin24@gmx.de,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/5] staging: lustre: Remove unnecessary cast on void pointer
Date: Fri,  3 Mar 2017 17:05:22 +0530
Message-Id: <1488540925-16898-3-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488540925-16898-1-git-send-email-singhalsimran0@gmail.com>
References: <1488540925-16898-1-git-send-email-singhalsimran0@gmail.com>

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


