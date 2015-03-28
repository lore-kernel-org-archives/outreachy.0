X-GM-THRID: 10181885820928
X-Received: by 10.66.194.234 with SMTP id hz10mr28516937pac.10.1427567114947;
        Sat, 28 Mar 2015 11:25:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.33.10 with SMTP id n10ls613496igi.25.gmail; Sat, 28 Mar
 2015 11:25:14 -0700 (PDT)
X-Received: by 10.66.253.225 with SMTP id ad1mr1020309pad.0.1427567114631;
        Sat, 28 Mar 2015 11:25:14 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pd0-x229.google.com (mail-pd0-x229.google.com. [2607:f8b0:400e:c02::229])
        by gmr-mx.google.com with ESMTPS id zw6si8605pbc.2.2015.03.28.11.25.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Mar 2015 11:25:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) client-ip=2607:f8b0:400e:c02::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x229.google.com with SMTP id n5so13752871pdd.2
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2015 11:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :content-type:content-transfer-encoding;
        bh=5r9Yonaq6G+SpI6xBjPkHiShOHd+/ucQFm9kNl1VhGI=;
        b=uQ6F46ezswW6KU0iNNVngiVl7a9Tqh3fcdOBc19wBivXN8cxlbclL9KwmPKBAx4qSE
         WSMrve5+zcUsuTmOAIJN8tJCVIp9MzKRO8elP8jGOfFZiShxC8fIW1sJiMfbFiDC+pge
         q/Oud613Ya34zHdxdCSA980Fo3Z46xJ4MdJTQegLg8ZYl0r+YHhQHgarkVIfPfyEG8ob
         cE4oJIrqeBKg1w0A138ViNB4Dk9NQz5PHFHxzmE0zR7nPY/SaDfqKUIL0l6nSnPfvGBM
         agnsCNZPxsCn9XHe5pDHhpwGKIwI4E1Z4IKI1XO05eqsGqx9zd8IXtLXwPNMBeDkzNMt
         u2QQ==
X-Received: by 10.68.227.195 with SMTP id sc3mr45444007pbc.64.1427567114560;
        Sat, 28 Mar 2015 11:25:14 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([115.242.167.52])
        by mx.google.com with ESMTPSA id z4sm5679798pdg.94.2015.03.28.11.25.12
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 28 Mar 2015 11:25:13 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH v2 6/6] Staging: lustre: Mark internal functions static in llog_cat.c
Date: Sat, 28 Mar 2015 23:55:04 +0530
Message-Id: <1427567104-815-1-git-send-email-darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1427564637-10305-7-git-send-email-darshanapadmadas@gmail.com>
References: <1427564637-10305-7-git-send-email-darshanapadmadas@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch marks functions llog_cat_set_first_idx and cat_cancel_cb
static as these are used only within this file. Also since cat_cancel_cb
is made static do not export it.

This eliminates the following sparse warning:
warning: symbol * was not declared. Should it be static?

Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
---
Changes in v2:
    - Removed EXPORT_SYMBOL for static function cat_cancel_cb.
    - Reflected above change in commit message.
    
 drivers/staging/lustre/lustre/obdclass/llog_cat.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/llog_cat.c b/drivers/staging/lustre/lustre/obdclass/llog_cat.c
index 08afdf3..c8f6ab0 100644
--- a/drivers/staging/lustre/lustre/obdclass/llog_cat.c
+++ b/drivers/staging/lustre/lustre/obdclass/llog_cat.c
@@ -692,7 +692,7 @@ int llog_cat_reverse_process(const struct lu_env *env,
 }
 EXPORT_SYMBOL(llog_cat_reverse_process);
 
-int llog_cat_set_first_idx(struct llog_handle *cathandle, int index)
+static int llog_cat_set_first_idx(struct llog_handle *cathandle, int index)
 {
 	struct llog_log_hdr *llh = cathandle->lgh_hdr;
 	int i, bitmap_size, idx;
@@ -751,7 +751,7 @@ int llog_cat_cleanup(const struct lu_env *env, struct llog_handle *cathandle,
 	return rc;
 }
 
-int cat_cancel_cb(const struct lu_env *env, struct llog_handle *cathandle,
+static int cat_cancel_cb(const struct lu_env *env, struct llog_handle *cathandle,
 		  struct llog_rec_hdr *rec, void *data)
 {
 	struct llog_logid_rec	*lir = (struct llog_logid_rec *)rec;
@@ -795,7 +795,6 @@ int cat_cancel_cb(const struct lu_env *env, struct llog_handle *cathandle,
 
 	return rc;
 }
-EXPORT_SYMBOL(cat_cancel_cb);
 
 /* helper to initialize catalog llog and process it to cancel */
 int llog_cat_init_and_process(const struct lu_env *env,
-- 
1.9.1


