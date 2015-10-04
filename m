X-GM-THRID: 6201691543779147776
X-Received: by 10.182.250.233 with SMTP id zf9mr22408979obc.7.1443974980567;
        Sun, 04 Oct 2015 09:09:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.128.198 with SMTP id k67ls1314601ioi.66.gmail; Sun, 04 Oct
 2015 09:09:40 -0700 (PDT)
X-Received: by 10.66.122.201 with SMTP id lu9mr21012185pab.8.1443974980325;
        Sun, 04 Oct 2015 09:09:40 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id wl2si3073731pab.1.2015.10.04.09.09.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 09:09:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id lk4so151046218pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 09:09:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=ZfE79/JKfOYnTEmY4OI+7x9LZM3n5AzLu4cWvEhlcqI=;
        b=Y8gWkIhkT6NhkUr8gV/hG/TUj8gKHXRvJxe3ebjYGdy8FY5GrAF6tvCoWQr8hCWsqd
         TOaRXfy3nWu1H5lzeIYsNjtP2RE6ECq1QwnHQa5OQqs5qs07GE1rvm4oKb5gZ2Efwrfz
         TDnC5g2iH024fzKVtPrBRb97xlE5wMNwiEw01eeToPdtnb5bkwalm3azM8wcgQywG9RT
         Hx2pqrGXSDhOMuahSAQG4jgJKyfa+1T3Rqr/OVnju7yGV5UC2VUJck4/FujXQhxWrAVa
         60ObbwLRUuqPybIS+eTcpkkp/UR7ueV61GoGwWteTx0sMht8EeYw5xUukayEKLSro9jE
         cppw==
X-Received: by 10.66.226.37 with SMTP id rp5mr34464917pac.49.1443974980201;
        Sun, 04 Oct 2015 09:09:40 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id yq2sm22705483pbb.39.2015.10.04.09.09.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 09:09:39 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 4/4] Staging: lustre: ptlrpc: sec: Declare as static
Date: Sun,  4 Oct 2015 21:39:18 +0530
Message-Id: <1443974958-5994-5-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443974958-5994-1-git-send-email-shraddha.6596@gmail.com>
References: <1443974958-5994-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.56114F43.0027,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare sptlrpc_secflags2str, sptlrpc_sec_get and
sptlrpc_svc_install_rvs_ctx as static since they are used only
in this particular file. Also remove them from corresponding
header files.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/lustre_sec.h |  7 -------
 drivers/staging/lustre/lustre/ptlrpc/sec.c         | 10 ++++------
 2 files changed, 4 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_sec.h b/drivers/staging/lustre/lustre/include/lustre_sec.h
index fc1f573..76b3a84 100644
--- a/drivers/staging/lustre/lustre/include/lustre_sec.h
+++ b/drivers/staging/lustre/lustre/include/lustre_sec.h
@@ -916,7 +916,6 @@ const char *sptlrpc_flavor2name_base(__u32 flvr);
 char *sptlrpc_flavor2name_bulk(struct sptlrpc_flavor *sf,
 			       char *buf, int bufsize);
 char *sptlrpc_flavor2name(struct sptlrpc_flavor *sf, char *buf, int bufsize);
-char *sptlrpc_secflags2str(__u32 flags, char *buf, int bufsize);
 
 static inline
 struct ptlrpc_sec_policy *sptlrpc_policy_get(struct ptlrpc_sec_policy *policy)
@@ -979,7 +978,6 @@ int cli_ctx_is_eternal(struct ptlrpc_cli_ctx *ctx)
 /*
  * sec get/put
  */
-struct ptlrpc_sec *sptlrpc_sec_get(struct ptlrpc_sec *sec);
 void sptlrpc_sec_put(struct ptlrpc_sec *sec);
 
 /*
@@ -1058,11 +1056,6 @@ void sptlrpc_svc_ctx_decref(struct ptlrpc_request *req);
 
 int  sptlrpc_target_export_check(struct obd_export *exp,
 				 struct ptlrpc_request *req);
-/*
- * reverse context
- */
-int sptlrpc_svc_install_rvs_ctx(struct obd_import *imp,
-				struct ptlrpc_svc_ctx *ctx);
 
 /* bulk security api */
 void sptlrpc_enc_pool_put_pages(struct ptlrpc_bulk_desc *desc);
diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec.c b/drivers/staging/lustre/lustre/ptlrpc/sec.c
index 84e9881..3a6539c 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec.c
@@ -227,7 +227,7 @@ char *sptlrpc_flavor2name(struct sptlrpc_flavor *sf, char *buf, int bufsize)
 }
 EXPORT_SYMBOL(sptlrpc_flavor2name);
 
-char *sptlrpc_secflags2str(__u32 flags, char *buf, int bufsize)
+static char *sptlrpc_secflags2str(__u32 flags, char *buf, int bufsize)
 {
 	buf[0] = '\0';
 
@@ -244,7 +244,6 @@ char *sptlrpc_secflags2str(__u32 flags, char *buf, int bufsize)
 
 	return buf;
 }
-EXPORT_SYMBOL(sptlrpc_secflags2str);
 
 /**************************************************
  * client context APIs			    *
@@ -1199,14 +1198,13 @@ static void sptlrpc_sec_kill(struct ptlrpc_sec *sec)
 	}
 }
 
-struct ptlrpc_sec *sptlrpc_sec_get(struct ptlrpc_sec *sec)
+static struct ptlrpc_sec *sptlrpc_sec_get(struct ptlrpc_sec *sec)
 {
 	if (sec)
 		atomic_inc(&sec->ps_refcount);
 
 	return sec;
 }
-EXPORT_SYMBOL(sptlrpc_sec_get);
 
 void sptlrpc_sec_put(struct ptlrpc_sec *sec)
 {
@@ -1643,8 +1641,8 @@ void sptlrpc_cli_free_repbuf(struct ptlrpc_request *req)
 	req->rq_repmsg = NULL;
 }
 
-int sptlrpc_svc_install_rvs_ctx(struct obd_import *imp,
-				struct ptlrpc_svc_ctx *ctx)
+static int sptlrpc_svc_install_rvs_ctx(struct obd_import *imp,
+				       struct ptlrpc_svc_ctx *ctx)
 {
 	struct ptlrpc_sec_policy *policy = ctx->sc_policy;
 
-- 
2.1.4


