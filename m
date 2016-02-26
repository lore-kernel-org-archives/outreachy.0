X-GM-THRID: 6255294547695239168
X-Received: by 10.140.29.183 with SMTP id b52mr16771382qgb.8.1456478872884;
        Fri, 26 Feb 2016 01:27:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.28.68 with SMTP id c65ls735328ioc.89.gmail; Fri, 26 Feb
 2016 01:27:52 -0800 (PST)
X-Received: by 10.66.136.71 with SMTP id py7mr330392pab.7.1456478872580;
        Fri, 26 Feb 2016 01:27:52 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id ui7si1829296pab.0.2016.02.26.01.27.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 01:27:52 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id t66so144927pfb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 01:27:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=rYxOmbbZiDb/UL6g+ucINY06cQDAUWEx+K/KjnPaGVQ=;
        b=KU9ZtsXSLtln2SVrPK1L+zHAe8duj+9/s+XntDBE6vK75fUswUIOZEO4r79uZfoOW3
         3/nwJTK4of+J+u3qLJ2J4zQ9HgRpdeyfZpkUN2Z4KfPFaQ6vLwtj6u/pgyIXUh58xmsy
         bBwuTL7lIL9L516lLcnolPdeOZ1BtJBsc7CFnXPN4wEdICSZVPZgoFrLKt6u7ujZazs8
         0B/AYrJVH6ce5I9EkTGPgrajThx0wd6YByTL+ml5MWtMB89JUZs8v1AjoUEoM78LZ/aE
         IVa/Hdn4u1tCmDP86ciKWzvnIdz6vAhR0kxNCS7+vJuL5fEBz2nUUZXtnBviArqDiGWZ
         7W4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=rYxOmbbZiDb/UL6g+ucINY06cQDAUWEx+K/KjnPaGVQ=;
        b=UJHr/Ltz/5Jbz1hECi9Gp+vfQfP4qLeaZiQN2zIPMd4fACgJicMI/mCkchy1FOPTGd
         PnXmFE8En3iBpzb4HzWf3k3KH/3ggJMYHv7mtSMdRZ1goWHid2lEcrlYzhQ2VYJ8a3oq
         26xmWIZzG4De9CuBhRWNTfW2eZBgcurwBMHMj8bboWFKUztaQRedmx6PsNGTGZyFSrs7
         9kMPJNnHrchTYVO6rOpekFcgiNaJTfIge/o3VPopiSXSWe77S63GEqb9YCkDzj/HeWTg
         Hm11BgljPmVFCS5LQKeI5iC22WSmQGMUY7jkB0NxgPosH1mddmiiCvUF9zhV128QXccv
         +Lbg==
X-Gm-Message-State: AD7BkJKPMBU6RNecs558cPcBjkbPHVnV6i9oZRQG1QiyTorrxbf0o36+2Q6Ws/IRe6LvBA==
X-Received: by 10.98.17.129 with SMTP id 1mr703444pfr.30.1456478872436;
        Fri, 26 Feb 2016 01:27:52 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.136.197])
        by smtp.gmail.com with ESMTPSA id z3sm17866781par.17.2016.02.26.01.27.46
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 01:27:51 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 26 Feb 2016 14:57:40 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v2] Staging: lustre: Use list_for_each_entry instead of list_for_each
Date: Fri, 26 Feb 2016 14:57:06 +0530
Message-Id: <1456478826-8910-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1456424237-10589-1-git-send-email-bhumirks@gmail.com>
References: <1456424237-10589-1-git-send-email-bhumirks@gmail.com>

Use list_for_each_entry instead of list_for_each and list_entry as it
simplifies the code. Done using coccinelle:

@@
type T,T2;
identifier I1,I2;
expression e1,e2;
iterator name list_for_each_entry;
iterator name list_for_each;
@@

- T *I1;
...
- list_for_each(I1,e1)
+ list_for_each_entry(I2,e1,e2)
{
...when!=T *I1;
- I2=list_entry(I1,T2,e2);
...
}
...when!=I2;

@@
type T,T2,T3;
identifier I1,I2,I3;
expression e1,e2;
@@

- T *I1;
+ T3 *I3;
...
- list_for_each(I1,e1)
+ list_for_each_entry(I3,e1,e2)
{
...when!=T *I1;
- T3 *I3=list_entry(I1,T2,e2);
...
}

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes in v2:
* Test built the patch.

 .../staging/lustre/lustre/obdecho/echo_client.c    |  4 +--
 drivers/staging/lustre/lustre/ptlrpc/client.c      | 29 ++++++----------------
 2 files changed, 8 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdecho/echo_client.c b/drivers/staging/lustre/lustre/obdecho/echo_client.c
index 3be28c5..2b13aa2 100644
--- a/drivers/staging/lustre/lustre/obdecho/echo_client.c
+++ b/drivers/staging/lustre/lustre/obdecho/echo_client.c
@@ -1060,12 +1060,10 @@ static int cl_echo_cancel0(struct lu_env *env, struct echo_device *ed,
 {
 	struct echo_client_obd *ec = ed->ed_ec;
 	struct echo_lock       *ecl = NULL;
-	struct list_head	     *el;
 	int found = 0, still_used = 0;
 
 	spin_lock(&ec->ec_lock);
-	list_for_each(el, &ec->ec_locks) {
-		ecl = list_entry(el, struct echo_lock, el_chain);
+	list_for_each_entry(ecl, &ec->ec_locks, el_chain) {
 		CDEBUG(D_INFO, "ecl: %p, cookie: %#llx\n", ecl, ecl->el_cookie);
 		found = (ecl->el_cookie == cookie);
 		if (found) {
diff --git a/drivers/staging/lustre/lustre/ptlrpc/client.c b/drivers/staging/lustre/lustre/ptlrpc/client.c
index 9b89068..1080fa1 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/client.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/client.c
@@ -886,7 +886,7 @@ EXPORT_SYMBOL(ptlrpc_prep_fcset);
  */
 void ptlrpc_set_destroy(struct ptlrpc_request_set *set)
 {
-	struct list_head *tmp;
+	struct ptlrpc_request *req;
 	struct list_head *next;
 	int expected_phase;
 	int n = 0;
@@ -894,11 +894,7 @@ void ptlrpc_set_destroy(struct ptlrpc_request_set *set)
 	/* Requests on the set should either all be completed, or all be new */
 	expected_phase = (atomic_read(&set->set_remaining) == 0) ?
 			 RQ_PHASE_COMPLETE : RQ_PHASE_NEW;
-	list_for_each(tmp, &set->set_requests) {
-		struct ptlrpc_request *req =
-			list_entry(tmp, struct ptlrpc_request,
-				       rq_set_chain);
-
+	list_for_each_entry(req, &set->set_requests, rq_set_chain) {
 		LASSERT(req->rq_phase == expected_phase);
 		n++;
 	}
@@ -1938,15 +1934,11 @@ int ptlrpc_expire_one_request(struct ptlrpc_request *req, int async_unlink)
 int ptlrpc_expired_set(void *data)
 {
 	struct ptlrpc_request_set *set = data;
-	struct list_head *tmp;
+	struct ptlrpc_request *req;
 	time64_t now = ktime_get_real_seconds();
 
 	/* A timeout expired. See which reqs it applies to...  */
-	list_for_each(tmp, &set->set_requests) {
-		struct ptlrpc_request *req =
-			list_entry(tmp, struct ptlrpc_request,
-				       rq_set_chain);
-
+	list_for_each_entry(req, &set->set_requests, rq_set_chain) {
 		/* don't expire request waiting for context */
 		if (req->rq_wait_ctx)
 			continue;
@@ -1995,15 +1987,11 @@ EXPORT_SYMBOL(ptlrpc_mark_interrupted);
 void ptlrpc_interrupted_set(void *data)
 {
 	struct ptlrpc_request_set *set = data;
-	struct list_head *tmp;
+	struct ptlrpc_request *req;
 
 	CDEBUG(D_RPCTRACE, "INTERRUPTED SET %p\n", set);
 
-	list_for_each(tmp, &set->set_requests) {
-		struct ptlrpc_request *req =
-			list_entry(tmp, struct ptlrpc_request,
-				       rq_set_chain);
-
+	list_for_each_entry(req, &set->set_requests, rq_set_chain) {
 		if (req->rq_phase != RQ_PHASE_RPC &&
 		    req->rq_phase != RQ_PHASE_UNREGISTERING)
 			continue;
@@ -2018,15 +2006,12 @@ EXPORT_SYMBOL(ptlrpc_interrupted_set);
  */
 int ptlrpc_set_next_timeout(struct ptlrpc_request_set *set)
 {
-	struct list_head *tmp;
 	time64_t now = ktime_get_real_seconds();
 	int timeout = 0;
 	struct ptlrpc_request *req;
 	time64_t deadline;
 
-	list_for_each(tmp, &set->set_requests) {
-		req = list_entry(tmp, struct ptlrpc_request, rq_set_chain);
-
+	list_for_each_entry(req, &set->set_requests, rq_set_chain) {
 		/* Request in-flight? */
 		if (!(((req->rq_phase == RQ_PHASE_RPC) && !req->rq_waiting) ||
 		      (req->rq_phase == RQ_PHASE_BULK) ||
-- 
1.9.1


