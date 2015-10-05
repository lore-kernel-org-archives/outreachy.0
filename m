X-GM-THRID: 6201947249365221376
X-Received: by 10.182.120.3 with SMTP id ky3mr23129460obb.6.1444003379022;
        Sun, 04 Oct 2015 17:02:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.9 with SMTP id rs9ls1104877igb.37.gmail; Sun, 04 Oct
 2015 17:02:58 -0700 (PDT)
X-Received: by 10.50.20.227 with SMTP id q3mr9871865ige.11.1444003378804;
        Sun, 04 Oct 2015 17:02:58 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id uv4si3540120pac.0.2015.10.04.17.02.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 17:02:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id hy16so17782618pad.1
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 17:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=ZWAQ80IiEBhCMD4ZGlUebyWZ5CG/E/at9RdLbt3CkrQ=;
        b=zh+7BEfyUtBhh/+mTaifivonySouN37aNbaKsGJNS4qF0ApQ3rL1+fUPl/r/fklAKu
         nppk2sSwn+fbSgYbHIb5GyAvEgSxxZUBYqHO/EdLiXD28Xb7G3p4WdAx7BSVImg8iaXj
         KMrmO6HQjNXB2emp7w41N+5xmE8qT5fIUj9yfZKVORJw5ScKg6FzteEahdhirG42DBjU
         oeOMO0DIx27nlU4o0tYBWLQ82VjoiL31Quh70bc3vi2zqNKwiMBzKdG6qm0w8jdcMx0n
         Ud6IbvzSJO+iZdu2/D0KGcOPP8CLAqNqNVk4rGoCDmsehm2MGtuCOlc9aiPzcLjtFtkw
         u5dQ==
X-Received: by 10.68.65.37 with SMTP id u5mr36669264pbs.154.1444003378680;
        Sun, 04 Oct 2015 17:02:58 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id py6sm23884348pbb.62.2015.10.04.17.02.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 17:02:58 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 4/4] Staging: lustre: ptlrcpc: sec: Declare local functions as static
Date: Mon,  5 Oct 2015 05:32:39 +0530
Message-Id: <1444003359-6619-5-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444003359-6619-1-git-send-email-shraddha.6596@gmail.com>
References: <1444003359-6619-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150204.5611BE30.00B6,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare functions sptlrpc_secflags2str, sptlrpc_sec_get and
sptlrpc_svc_install_rvs_ctx as static since they are used only
in this particular file. Also remove them from corresponding
header files.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v2-
 Made commit message and subject clearer.

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


