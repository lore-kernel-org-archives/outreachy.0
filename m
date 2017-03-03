X-GM-THRID: 6393234614676094976
X-Received: by 10.200.49.99 with SMTP id h32mr592961qtb.71.1488540943337;
        Fri, 03 Mar 2017 03:35:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.53.6 with SMTP id o6ls10099930otc.47.gmail; Fri, 03 Mar
 2017 03:35:43 -0800 (PST)
X-Received: by 10.129.111.65 with SMTP id k62mr846039ywc.8.1488540942996;
        Fri, 03 Mar 2017 03:35:42 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id c123si2040252pfa.4.2017.03.03.03.35.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 03:35:42 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 1so12473684pgz.2
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 03:35:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=rOXD7bnizCprAnNeFLWw5SBLHqxvBtTxeuj9NC3fCSY=;
        b=PLBUAVWULFvy/DNLgSeAfKauiuwDW5KfUtzyjUYju7fzmU0o9Sw6bnz8GNoC0F3ryz
         aJpEq+yUe6mxqzoz0eIYX7tgsG2rng+ROC7ri5xnLcv5rumAB+zQDV6TejYncDHP3DeM
         XIzjjWwk24GqhImZD5bXJvw7DQT5zfGT517UKLHmmg8E+2vafhEXly2hw9LMZcMtjKOT
         lX8OuaiGKUmQD3+DhBvttLhZszC5vEwqQMKCVP4TvNgjbV+h/1QsVKZriD4/UTjDj/RH
         pAJeoqGUTr/s3VEFL9bfY2Ni9TFryjb0gGfb9ytjZeg+gn3z2Q1GKoPnqIEnGoWB98/y
         0Hvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=rOXD7bnizCprAnNeFLWw5SBLHqxvBtTxeuj9NC3fCSY=;
        b=PXRoEGH6+K1CINGmQnXPIX4z0+nJwYT0/F60RRU1uPYqsmBlyKzXgVWa+PwAInvaXk
         hwqWHkQuQC6zqvgmFEeStn/lAKMSIw5pobv+2YegkJVVIG8eg+r1FxjIzLeCOUg8o/jP
         CpjFT2HbEqzvvqZKYlI6XXhjfcMeXn+hYywc+Ewl7Cfx4AAZLu+pAefXcTa4v5gFY7rD
         4QzHfkYTJq/dy4OCI6YMnpYgZd4hrkzYDAoyWlRzjpWSquFZctbBOWrmQWjrbAhQufEG
         vWqfzg1gyht5XlxCKXG0ct8iMEwDVsAf17szwW1hZs6m1cKGQCLYPgOJrdbbkmuA0lqd
         NgkQ==
X-Gm-Message-State: AMke39lPuIL/6MHGzhsKtWoSwEuMxRGcMtjy7/fodneev3dhZ3C2oiGmgKsu2O2Tcsx7yQ==
X-Received: by 10.99.136.74 with SMTP id l71mr2833026pgd.143.1488540942736;
        Fri, 03 Mar 2017 03:35:42 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id c195sm22919622pfb.60.2017.03.03.03.35.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 03:35:41 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	oleg.drokin@intel.com,
	marvin24@gmx.de,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 3/5] staging: lustre: lustre: Remove unnecessary cast on void pointer
Date: Fri,  3 Mar 2017 17:05:23 +0530
Message-Id: <1488540925-16898-4-git-send-email-singhalsimran0@gmail.com>
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
 drivers/staging/lustre/lustre/llite/range_lock.c | 2 +-
 drivers/staging/lustre/lustre/mgc/mgc_request.c  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

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
index 6a76605..8ca0a04 100644
--- a/drivers/staging/lustre/lustre/mgc/mgc_request.c
+++ b/drivers/staging/lustre/lustre/mgc/mgc_request.c
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


