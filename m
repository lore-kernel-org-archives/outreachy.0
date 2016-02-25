X-GM-THRID: 6255294547695239168
X-Received: by 10.140.99.106 with SMTP id p97mr14885651qge.13.1456424255229;
        Thu, 25 Feb 2016 10:17:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.86.167 with SMTP id p36ls524009qgd.93.gmail; Thu, 25 Feb
 2016 10:17:34 -0800 (PST)
X-Received: by 10.140.134.134 with SMTP id 128mr15008707qhg.29.1456424254642;
        Thu, 25 Feb 2016 10:17:34 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id ff2si1488044pad.2.2016.02.25.10.17.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 10:17:34 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id fl4so36085754pad.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 10:17:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=tJQrNvVNlMfdFRCztXN3W1c7YqoJKrTi7W7C13NyG4s=;
        b=kY8hCOWzMTDVc2udeQ4gS9mXiFLhAP4/CMy3VHH4ay2wIWml/4ERAo/4fIdOz3cqe8
         wMjt2utdSDpPr4FdgoVqXAU3fmhwSmJI+v4N4myTDqHdDKdiUEEV8hnZsQJy4sAwtAbN
         /vp+pq2vx3zoAg1eeK7v1asWzuzrI+ytfP8z2c8/ixRsY3lzHSM2XK4DQsKNnSHKVr1c
         JEf82s9Vu70/gbEsF6zdg0w5IufUQGkKUoG9VClxWsr23MBHEssm73T/uCqOzZlgKaHW
         V/3B5Hhh6vYD8lkyrAeE9h1FbP2QI8e39NWeGASVEzmUThbyQMPodjeWu5zGr7QMZ/eD
         G6jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=tJQrNvVNlMfdFRCztXN3W1c7YqoJKrTi7W7C13NyG4s=;
        b=GVn+YH55S+uGHK7Tn2tshji/QYrqLqelObPgeruKo2UTpRd5KFFcB1ZTO6oOlwRxbh
         BIJ2C+LFJmqwzhmv3d0CgIvPyxgM/y6wY8l1xWostlmTbFMEzwAWvmL7MhOhxriSJmLQ
         EEs3WC0N4xstD26/1wYsDOYiH3JARSApBrElgHjvMCBuPJUdVFyHyG8bJqA/QbPTHOXi
         H7iRy84eXYZy0RfBEWI5P/8QutRFeLfwUl2gk/UngEPOld3k/5TYt7vWt7tAPCjo9Xsd
         VcJH2VJDZNZMybMkdZCLPn/Z/gTEw1eZ5Srja/JnhCZUF6uoedRFXpjYS+3B0iStnunF
         zUew==
X-Gm-Message-State: AG10YORHDGj7NyUsP6tCS8K6JyRQ5LCzaz0Lthkn1rJToH/5cuzTW6FIu7cg9NjvO01qzw==
X-Received: by 10.66.158.232 with SMTP id wx8mr31203368pab.159.1456424254452;
        Thu, 25 Feb 2016 10:17:34 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.131.237])
        by smtp.gmail.com with ESMTPSA id s21sm13766822pfi.29.2016.02.25.10.17.27
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 10:17:33 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Thu, 25 Feb 2016 23:47:22 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: lustre: Use list_for_each_entry instead of list_for_each
Date: Thu, 25 Feb 2016 23:47:17 +0530
Message-Id: <1456424237-10589-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

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
 .../staging/lustre/lustre/obdecho/echo_client.c    |  4 +--
 drivers/staging/lustre/lustre/ptlrpc/client.c      | 31 +++++-----------------
 2 files changed, 8 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdecho/echo_client.c b/drivers/staging/lustre/lustre/obdecho/echo_client.c
index ca87cc2..b3f152e 100644
--- a/drivers/staging/lustre/lustre/obdecho/echo_client.c
+++ b/drivers/staging/lustre/lustre/obdecho/echo_client.c
@@ -1058,12 +1058,10 @@ static int cl_echo_cancel0(struct lu_env *env, struct echo_device *ed,
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
index 9b89068..f21c649 100644
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
@@ -1938,16 +1934,11 @@ int ptlrpc_expire_one_request(struct ptlrpc_request *req, int async_unlink)
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
-		/* don't expire request waiting for context */
+	list_for_each_entry(req, &set->set_requests, rq_set_chain) {
 		if (req->rq_wait_ctx)
 			continue;
 
@@ -1995,15 +1986,11 @@ EXPORT_SYMBOL(ptlrpc_mark_interrupted);
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
@@ -2018,16 +2005,12 @@ EXPORT_SYMBOL(ptlrpc_interrupted_set);
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
-		/* Request in-flight? */
+	list_for_each_entry(req, &set->set_requests, rq_set_chain) {
 		if (!(((req->rq_phase == RQ_PHASE_RPC) && !req->rq_waiting) ||
 		      (req->rq_phase == RQ_PHASE_BULK) ||
 		      (req->rq_phase == RQ_PHASE_NEW)))
-- 
1.9.1


