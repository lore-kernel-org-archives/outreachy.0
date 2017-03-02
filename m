X-GM-THRID: 6392997475785900032
X-Received: by 10.157.41.66 with SMTP id d60mr5623775otb.113.1488489557712;
        Thu, 02 Mar 2017 13:19:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.20.13 with SMTP id 13ls141864itg.18.canary-gmail; Thu, 02
 Mar 2017 13:19:17 -0800 (PST)
X-Received: by 10.99.55.4 with SMTP id e4mr6226996pga.156.1488489557238;
        Thu, 02 Mar 2017 13:19:17 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id s64si1784089pfk.0.2017.03.02.13.19.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 13:19:17 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id x66so7776656pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 13:19:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=e5mqRgYaFToFY3ao1hh7/avZxyYnw/8AM/5EOyz1smo=;
        b=Szu+KmdENgRuMfPi6LlR9Zf+wgGkdJehBiC12Um1XfVTcrdB96yT6cFByxzLmbknyK
         0Oe+dPhIm3MXwotc28BlZIYXdMl9kXNkaOO0gekCBg9gU/BxIbCcLDNaPAxTQ67SgVqs
         NoAibzd6BmCGzG58W6IUTfxp3D6OtHifxekUrOrCgMpblZ82m9r9iqbujeArE2zMBOGA
         j8ic3OLgc4O7O03OehMZA6Gt9Uj1E4L2dV2fKlnTI84ZEq/dqepndAEc1HxEoB3El5CS
         LVLFOyCiHXCmHwHzim5E9NBaST7ffHeiNL0bY/rw8uKIsH1i8HhCgnhuZ55i8EzhcfNL
         fECA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=e5mqRgYaFToFY3ao1hh7/avZxyYnw/8AM/5EOyz1smo=;
        b=rxrk0qC1c/15Uyu/M0tDwQZZ5sjBmbwSFks+o86FIcswf8jOlVV4d/FhMAd0PXpKh/
         /yWPl4yp+TCqdlhmTak0KDqcDuVA8Ptijc6Yp0SzOygK0nzdrsGkRXBQiBJQryZsP1QB
         UPHNJusAAYOu8OHL5dG0AR0BAx5oKYf4HOVbhkPzDYyzrPEEtT9lKDQJKA4hK3aFXQsm
         ZoCoyZpw17lHjd+p5TUKQtxBmbCOlrD/1djn27RBXkCKPZekM3yUEDPfrd/jSk8JsU86
         ITmcqlS0ZYLBumbkJkGX+oexp2vfIcVRF4fDYIjzR31NFeaIFhfUdGr2/3OhsE1y2sbd
         uGZg==
X-Gm-Message-State: AMke39kurobXa5wA4ZN1mcTe4+3hJ0TJYNBTLdTecq6Bo4BEXjcWsANPLLnjz5EaeMJu9w==
X-Received: by 10.98.42.151 with SMTP id q145mr17755640pfq.175.1488489557028;
        Thu, 02 Mar 2017 13:19:17 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v4sm18865960pfb.36.2017.03.02.13.19.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 13:19:16 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	oleg.drokin@intel.com,
	marvin24@gmx.de,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 3/5] staging: lustre: lustre: Remove unnecessary cast on void pointer
Date: Fri,  3 Mar 2017 02:49:02 +0530
Message-Id: <1488489544-25941-3-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488489544-25941-1-git-send-email-singhalsimran0@gmail.com>
References: <1488489544-25941-1-git-send-email-singhalsimran0@gmail.com>

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
 drivers/staging/lustre/lustre/llite/range_lock.c | 2 +-
 drivers/staging/lustre/lustre/mgc/mgc_request.c  | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/range_lock.c b/drivers/staging/lustre/lustre/llite/range_lock.c
index 14148a0..161391b 100644
--- a/drivers/staging/lustre/lustre/llite/range_lock.c
+++ b/drivers/staging/lustre/lustre/llite/range_lock.c
@@ -174,7 +174,7 @@ void range_unlock(struct range_lock_tree *tree, struct range_lock *lock)
  */
 static enum interval_iter range_lock_cb(struct interval_node *node, void *arg)
 {
-	struct range_lock *lock = (struct range_lock *)arg;
+	struct range_lock *lock = arg;
 	struct range_lock *overlap = node2rangelock(node);
 
 	lock->rl_blocking_ranges += overlap->rl_lock_count + 1;
diff --git a/drivers/staging/lustre/lustre/mgc/mgc_request.c b/drivers/staging/lustre/lustre/mgc/mgc_request.c
index 6a76605..b13961a 100644
--- a/drivers/staging/lustre/lustre/mgc/mgc_request.c
+++ b/drivers/staging/lustre/lustre/mgc/mgc_request.c
@@ -1034,7 +1034,7 @@ static int mgc_set_info_async(const struct lu_env *env, struct obd_export *exp,
 		rc = sptlrpc_parse_flavor(val, &flvr);
 		if (rc) {
 			CERROR("invalid sptlrpc flavor %s to MGS\n",
-			       (char *)val);
+			       val);
 			return rc;
 		}
 
@@ -1050,7 +1050,7 @@ static int mgc_set_info_async(const struct lu_env *env, struct obd_export *exp,
 			sptlrpc_flavor2name(&cli->cl_flvr_mgc,
 					    str, sizeof(str));
 			LCONSOLE_ERROR("asking sptlrpc flavor %s to MGS but currently %s is in use\n",
-				       (char *)val, str);
+				       val, str);
 			rc = -EPERM;
 		}
 		return rc;
-- 
2.7.4


