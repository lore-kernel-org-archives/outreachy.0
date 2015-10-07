X-GM-THRID: 6201947249365221376
X-Received: by 10.194.118.65 with SMTP id kk1mr608304wjb.5.1444248384385;
        Wed, 07 Oct 2015 13:06:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.126.5 with SMTP id mu5ls219040wib.17.gmail; Wed, 07 Oct
 2015 13:06:24 -0700 (PDT)
X-Received: by 10.180.72.68 with SMTP id b4mr765270wiv.2.1444248384056;
        Wed, 07 Oct 2015 13:06:24 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id bn1si191030wib.0.2015.10.07.13.06.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 13:06:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id lk2so229388133wic.0
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 13:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=JiSVQgR9RqiRTc2SmBBSZ3++DAFpE3vFPZhT8CCYrvU=;
        b=Z+ByEJUakZN8rkeW7kGGah1vLwYZlX+RhopW3zYvgYGSm/uJ1ftckdNDKUzaAmoGw+
         Vru+YqwLEltyfn8PqUeKCwo1Qnn+JdgqwRheLt8Qho6FZN10i3Oh8sh766SZmAqXbQaz
         lrXt5mK+15R0u8XcMLtezHCjIG2FwKRuFTu3a79VCxbSGZ5dD/yNiN1BFtqBFnnN58px
         49kRCS2Xij+Xj82a3MkuXlr347jDf5lD7RXYJgg0c59Jewv+/Dlyg0rc6+n95Ys8etf8
         XT02CEMSombrpEbhEcQB/rCvQ8SvQOosvsLndq15QHGnnWbZxMGctcChKFFi4G0Uji1O
         /Xew==
X-Received: by 10.194.240.200 with SMTP id wc8mr3306031wjc.21.1444248383943;
        Wed, 07 Oct 2015 13:06:23 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id fv13sm4016186wic.7.2015.10.07.13.06.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 07 Oct 2015 13:06:23 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/5] Staging: lustre: obdclass: llog_cat: Declare local functions as static
Date: Thu,  8 Oct 2015 01:36:04 +0530
Message-Id: <1444248368-29504-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444248368-29504-1-git-send-email-shraddha.6596@gmail.com>
References: <1444248368-29504-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.56157B3E.001A,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare llog_cat_id2handle and llog_cat_process_or_fork as static
since they are used only in this particular file. Also remove the
corresponding declarations from header files.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/lustre_log.h     |  3 ---
 drivers/staging/lustre/lustre/obdclass/llog_cat.c      | 15 ++++++++-------
 drivers/staging/lustre/lustre/obdclass/llog_internal.h |  2 --
 3 files changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_log.h b/drivers/staging/lustre/lustre/include/lustre_log.h
index 958d012..5d3b2df 100644
--- a/drivers/staging/lustre/lustre/include/lustre_log.h
+++ b/drivers/staging/lustre/lustre/include/lustre_log.h
@@ -165,9 +165,6 @@ struct llog_process_cat_data {
 struct thandle;
 
 int llog_cat_close(const struct lu_env *env, struct llog_handle *cathandle);
-int llog_cat_process_or_fork(const struct lu_env *env,
-			     struct llog_handle *cat_llh, llog_cb_t cb,
-			     void *data, int startcat, int startidx, bool fork);
 int llog_cat_process(const struct lu_env *env, struct llog_handle *cat_llh,
 		     llog_cb_t cb, void *data, int startcat, int startidx);
 
diff --git a/drivers/staging/lustre/lustre/obdclass/llog_cat.c b/drivers/staging/lustre/lustre/obdclass/llog_cat.c
index 3984445..c63b720 100644
--- a/drivers/staging/lustre/lustre/obdclass/llog_cat.c
+++ b/drivers/staging/lustre/lustre/obdclass/llog_cat.c
@@ -62,8 +62,10 @@
  * This takes extra reference on llog_handle via llog_handle_get() and require
  * this reference to be put by caller using llog_handle_put()
  */
-int llog_cat_id2handle(const struct lu_env *env, struct llog_handle *cathandle,
-		       struct llog_handle **res, struct llog_logid *logid)
+static int llog_cat_id2handle(const struct lu_env *env,
+			      struct llog_handle *cathandle,
+			      struct llog_handle **res,
+			      struct llog_logid *logid)
 {
 	struct llog_handle	*loghandle;
 	int			 rc = 0;
@@ -189,10 +191,10 @@ static int llog_cat_process_cb(const struct lu_env *env,
 	return rc;
 }
 
-int llog_cat_process_or_fork(const struct lu_env *env,
-			     struct llog_handle *cat_llh,
-			     llog_cb_t cb, void *data, int startcat,
-			     int startidx, bool fork)
+static int llog_cat_process_or_fork(const struct lu_env *env,
+				    struct llog_handle *cat_llh,
+				    llog_cb_t cb, void *data, int startcat,
+				    int startidx, bool fork)
 {
 	struct llog_process_data d;
 	struct llog_log_hdr *llh = cat_llh->lgh_hdr;
@@ -228,7 +230,6 @@ int llog_cat_process_or_fork(const struct lu_env *env,
 
 	return rc;
 }
-EXPORT_SYMBOL(llog_cat_process_or_fork);
 
 int llog_cat_process(const struct lu_env *env, struct llog_handle *cat_llh,
 		     llog_cb_t cb, void *data, int startcat, int startidx)
diff --git a/drivers/staging/lustre/lustre/obdclass/llog_internal.h b/drivers/staging/lustre/lustre/obdclass/llog_internal.h
index 5dff617..b9fe4b0 100644
--- a/drivers/staging/lustre/lustre/obdclass/llog_internal.h
+++ b/drivers/staging/lustre/lustre/obdclass/llog_internal.h
@@ -66,8 +66,6 @@ void llog_info_fini(void);
 
 void llog_handle_get(struct llog_handle *loghandle);
 void llog_handle_put(struct llog_handle *loghandle);
-int llog_cat_id2handle(const struct lu_env *env, struct llog_handle *cathandle,
-		       struct llog_handle **res, struct llog_logid *logid);
 int class_config_dump_handler(const struct lu_env *env,
 			      struct llog_handle *handle,
 			      struct llog_rec_hdr *rec, void *data);
-- 
2.1.4


