X-GM-THRID: 6956554676838858752
X-Received: by 2002:a2e:bf03:: with SMTP id c3mr25241740ljr.184.1619699103185;
        Thu, 29 Apr 2021 05:25:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5f9a:: with SMTP id r26ls1372519lfe.2.gmail; Thu, 29 Apr
 2021 05:25:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyYD0Sqhpg1Gs406ZAiUEqfc99qfDKkDC9xtA/05Dl32UIm8DS3mB+FwIwT/lii0HVS+mAP
X-Received: by 2002:a05:6512:5cc:: with SMTP id o12mr12552381lfo.633.1619699101155;
        Thu, 29 Apr 2021 05:25:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619699101; cv=none;
        d=google.com; s=arc-20160816;
        b=J3WfyLeOg3NCRXmS9K5KfU/iu4SwJYveHou8yFd64PF49gTZ/cnVQJe+TwF5uNU39T
         lsdckjw8bK3cGikRLcJHwkyp6pBqufUW4Gboi0TvCD1uRQnACuS76pXccU8vPP4B/ysc
         qwoXvE6cIxp4Q1GKmGbJstE5PgYgXhmf08wQoKkSMWUerZTEuxVN0+L7NzdydejGtA8h
         /xSb9zeBjTH9caLwKMpIz2gaJBkSZwDt1izt4C73RsmIcg2v6V3UNG0yeRl2uPkZKSat
         MAQTyfJzy173UqdtBTuiNtyaT4BaGluCBVycxXjTmtpKiFV3WHe7cSnIjiHYFHVGWnri
         sSGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=7bMCzCayKo+oaxS+XKUCVY6zmoeQfjen+136GbrzH+Q=;
        b=tAeK8OzID89CEUyAARtjv6wFaieZ+nVXvvNfN4rZlJWMBhD7u7iH9H5z3hTpFeMv1x
         GeGqX/qjshzgcT1DqIBwtJNX+jsX/fyrae7V1StHFIJRt3hOnP4acsS64kae80Z/vVOe
         XAV1R2E4irvHSbe3X0RU7xRKdlATScCoz3SiVjTdYZtWMPu3iw/MPWA5XpSr45ysnEEk
         +JLIKynlLpQ+YZGy1QrIezheOwJBbm8Ea8o64hAXu4Zt2PZ4zR05yu6aGO8xm+TkNBbb
         bv1yvQo4uqKKjdLQrUePlbGTunV88V5me1LKkD8zgAvgyE1Ekf9nuN3gKXYjbiEsIVbz
         ptCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XV8XHaOT;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com. [2a00:1450:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id a10si170779lfs.11.2021.04.29.05.25.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 05:25:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) client-ip=2a00:1450:4864:20::52f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XV8XHaOT;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52f.google.com with SMTP id g10so10359623edb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Apr 2021 05:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7bMCzCayKo+oaxS+XKUCVY6zmoeQfjen+136GbrzH+Q=;
        b=XV8XHaOTp/ZVSiCUzMZ1hob5SJbdOrU66EPiKA9iq8qHNTfxXLxDWEWNrPegF3IQ4D
         dqcUJTs3DAuVg5afJHOOLVvcf0AUGMNS2Sf1dpKiurxu8t0WV1H1z8yQSdoVei8InIiz
         oAhnlhOZ1LhT17SL+eOqNGbRNFHOH3rF02SOHNE07+BvxChyJR9ScE5P/hgJYZ291bVe
         E2U1Rpf+bGueb09cds+vVMSeJxv3jMq1S8aa9ZEp+HUxoT+1e9Fz4BwD1fAXSZDczWWK
         W/kAp691OnMMAbnOC4y47HQERxWcEzGzDd3CkMbQoKlcFRes2uzF3oXj60P93m1Y/GyG
         lgPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7bMCzCayKo+oaxS+XKUCVY6zmoeQfjen+136GbrzH+Q=;
        b=tQ4qd9YvjZd5eBPP7DcXbkPmYAbvGJimqEt9hegvg/CQJaY0gqTLdpqxdXlb1c/gDW
         9fHa3BX9bbrk5cgYwD+oFarQ+PMNq0aj+b5dWfWn7NxeTDHSMEM2Uk03l44wow76tO72
         MBZRLZxKY12Z+R0s/APKZUanIUwn+daSevXb93AANXZ0QHW5ayr9Jd/XqU9RkNPBs180
         6eWE+0jwC6C4piZc31GLAlsSiLfmbHnORuPD7AqELPwOc40A3vTbjiG9jXjEW9wC64fR
         tFZ6lbAbQQDF4dvXBTWB8/Y+ynZCraRadEjY6rmOkenOkmT9Wa/30i7XD1w8+F83oLBY
         /oXg==
X-Gm-Message-State: AOAM533Sqvhs4IA3cx88Eler48+rIqOXhFkxjTzGCchgqSIZ+vOXBsSG
	GWa18SSPom+4qE+Y/mZRgsM=
X-Received: by 2002:aa7:dc15:: with SMTP id b21mr17941106edu.350.1619699100876;
        Thu, 29 Apr 2021 05:25:00 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id aj8sm1720324ejc.64.2021.04.29.05.24.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Apr 2021 05:25:00 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Juri Lelli <juri.lelli@redhat.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Dietmar Eggemann <dietmar.eggemann@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ben Segall <bsegall@google.com>,
	Mel Gorman <mgorman@suse.de>,
	outreachy-kernel@googlegroups.com,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH] sched: Replace 'unsigned' with 'unsigned int'
Date: Thu, 29 Apr 2021 14:24:54 +0200
Message-Id: <20210429122454.9936-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replaced 'unsigned' with 'unsigned int' because the second is preferred.
Detected by checkpatch.pl.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 kernel/sched/core.c     |  4 ++--
 kernel/sched/fair.c     |  6 +++---
 kernel/sched/sched.h    |  6 +++---
 kernel/sched/wait.c     |  8 ++++----
 kernel/sched/wait_bit.c | 12 ++++++------
 5 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index 1a9983da4408..383e47a2f0df 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -4342,7 +4342,7 @@ asmlinkage __visible void __sched preempt_schedule_irq(void)
 	exception_exit(prev_state);
 }
 
-int default_wake_function(wait_queue_entry_t *curr, unsigned mode, int wake_flags,
+int default_wake_function(wait_queue_entry_t *curr, unsigned int mode, int wake_flags,
 			  void *key)
 {
 	return try_to_wake_up(curr->private, mode, wake_flags);
@@ -5479,7 +5479,7 @@ long sched_setaffinity(pid_t pid, const struct cpumask *in_mask)
 	return retval;
 }
 
-static int get_user_cpu_mask(unsigned long __user *user_mask_ptr, unsigned len,
+static int get_user_cpu_mask(unsigned long __user *user_mask_ptr, unsigned int len,
 			     struct cpumask *new_mask)
 {
 	if (len < cpumask_size())
diff --git a/kernel/sched/fair.c b/kernel/sched/fair.c
index c1217bfe5e81..203e2ff5b935 100644
--- a/kernel/sched/fair.c
+++ b/kernel/sched/fair.c
@@ -5945,15 +5945,15 @@ static int select_idle_sibling(struct task_struct *p, int prev, int target)
 		return target;
 
 	i = select_idle_core(p, sd, target);
-	if ((unsigned)i < nr_cpumask_bits)
+	if ((unsigned int)i < nr_cpumask_bits)
 		return i;
 
 	i = select_idle_cpu(p, sd, target);
-	if ((unsigned)i < nr_cpumask_bits)
+	if ((unsigned int)i < nr_cpumask_bits)
 		return i;
 
 	i = select_idle_smt(p, target);
-	if ((unsigned)i < nr_cpumask_bits)
+	if ((unsigned int)i < nr_cpumask_bits)
 		return i;
 
 	return target;
diff --git a/kernel/sched/sched.h b/kernel/sched/sched.h
index 9ea647835fd6..395e109bbadb 100644
--- a/kernel/sched/sched.h
+++ b/kernel/sched/sched.h
@@ -1910,9 +1910,9 @@ static inline int sched_tick_offload_init(void) { return 0; }
 static inline void sched_update_tick_dependency(struct rq *rq) { }
 #endif
 
-static inline void add_nr_running(struct rq *rq, unsigned count)
+static inline void add_nr_running(struct rq *rq, unsigned int count)
 {
-	unsigned prev_nr = rq->nr_running;
+	unsigned int prev_nr = rq->nr_running;
 
 	rq->nr_running = prev_nr + count;
 
@@ -1926,7 +1926,7 @@ static inline void add_nr_running(struct rq *rq, unsigned count)
 	sched_update_tick_dependency(rq);
 }
 
-static inline void sub_nr_running(struct rq *rq, unsigned count)
+static inline void sub_nr_running(struct rq *rq, unsigned int count)
 {
 	rq->nr_running -= count;
 	/* Check if we still need preemption */
diff --git a/kernel/sched/wait.c b/kernel/sched/wait.c
index ba059fbfc53a..b44b9a519d60 100644
--- a/kernel/sched/wait.c
+++ b/kernel/sched/wait.c
@@ -84,7 +84,7 @@ static int __wake_up_common(struct wait_queue_head *wq_head, unsigned int mode,
 		return nr_exclusive;
 
 	list_for_each_entry_safe_from(curr, next, &wq_head->head, entry) {
-		unsigned flags = curr->flags;
+		unsigned int flags = curr->flags;
 		int ret;
 
 		if (flags & WQ_FLAG_BOOKMARK)
@@ -384,7 +384,7 @@ void finish_wait(struct wait_queue_head *wq_head, struct wait_queue_entry *wq_en
 }
 EXPORT_SYMBOL(finish_wait);
 
-int autoremove_wake_function(struct wait_queue_entry *wq_entry, unsigned mode, int sync, void *key)
+int autoremove_wake_function(struct wait_queue_entry *wq_entry, unsigned int mode, int sync, void *key)
 {
 	int ret = default_wake_function(wq_entry, mode, sync, key);
 
@@ -420,7 +420,7 @@ static inline bool is_kthread_should_stop(void)
  * }						smp_mb(); // C
  * remove_wait_queue(&wq_head, &wait);		wq_entry->flags |= WQ_FLAG_WOKEN;
  */
-long wait_woken(struct wait_queue_entry *wq_entry, unsigned mode, long timeout)
+long wait_woken(struct wait_queue_entry *wq_entry, unsigned int mode, long timeout)
 {
 	/*
 	 * The below executes an smp_mb(), which matches with the full barrier
@@ -445,7 +445,7 @@ long wait_woken(struct wait_queue_entry *wq_entry, unsigned mode, long timeout)
 }
 EXPORT_SYMBOL(wait_woken);
 
-int woken_wake_function(struct wait_queue_entry *wq_entry, unsigned mode, int sync, void *key)
+int woken_wake_function(struct wait_queue_entry *wq_entry, unsigned int mode, int sync, void *key)
 {
 	/* Pairs with the smp_store_mb() in wait_woken(). */
 	smp_mb(); /* C */
diff --git a/kernel/sched/wait_bit.c b/kernel/sched/wait_bit.c
index 02ce292b9bc0..80c5d07ac77d 100644
--- a/kernel/sched/wait_bit.c
+++ b/kernel/sched/wait_bit.c
@@ -18,7 +18,7 @@ wait_queue_head_t *bit_waitqueue(void *word, int bit)
 }
 EXPORT_SYMBOL(bit_waitqueue);
 
-int wake_bit_function(struct wait_queue_entry *wq_entry, unsigned mode, int sync, void *arg)
+int wake_bit_function(struct wait_queue_entry *wq_entry, unsigned int mode, int sync, void *arg)
 {
 	struct wait_bit_key *key = arg;
 	struct wait_bit_queue_entry *wait_bit = container_of(wq_entry, struct wait_bit_queue_entry, wq_entry);
@@ -39,7 +39,7 @@ EXPORT_SYMBOL(wake_bit_function);
  */
 int __sched
 __wait_on_bit(struct wait_queue_head *wq_head, struct wait_bit_queue_entry *wbq_entry,
-	      wait_bit_action_f *action, unsigned mode)
+	      wait_bit_action_f *action, unsigned int mode)
 {
 	int ret = 0;
 
@@ -56,7 +56,7 @@ __wait_on_bit(struct wait_queue_head *wq_head, struct wait_bit_queue_entry *wbq_
 EXPORT_SYMBOL(__wait_on_bit);
 
 int __sched out_of_line_wait_on_bit(void *word, int bit,
-				    wait_bit_action_f *action, unsigned mode)
+				    wait_bit_action_f *action, unsigned int mode)
 {
 	struct wait_queue_head *wq_head = bit_waitqueue(word, bit);
 	DEFINE_WAIT_BIT(wq_entry, word, bit);
@@ -67,7 +67,7 @@ EXPORT_SYMBOL(out_of_line_wait_on_bit);
 
 int __sched out_of_line_wait_on_bit_timeout(
 	void *word, int bit, wait_bit_action_f *action,
-	unsigned mode, unsigned long timeout)
+	unsigned int mode, unsigned long timeout)
 {
 	struct wait_queue_head *wq_head = bit_waitqueue(word, bit);
 	DEFINE_WAIT_BIT(wq_entry, word, bit);
@@ -80,7 +80,7 @@ EXPORT_SYMBOL_GPL(out_of_line_wait_on_bit_timeout);
 
 int __sched
 __wait_on_bit_lock(struct wait_queue_head *wq_head, struct wait_bit_queue_entry *wbq_entry,
-			wait_bit_action_f *action, unsigned mode)
+			wait_bit_action_f *action, unsigned int mode)
 {
 	int ret = 0;
 
@@ -109,7 +109,7 @@ __wait_on_bit_lock(struct wait_queue_head *wq_head, struct wait_bit_queue_entry
 EXPORT_SYMBOL(__wait_on_bit_lock);
 
 int __sched out_of_line_wait_on_bit_lock(void *word, int bit,
-					 wait_bit_action_f *action, unsigned mode)
+					 wait_bit_action_f *action, unsigned int mode)
 {
 	struct wait_queue_head *wq_head = bit_waitqueue(word, bit);
 	DEFINE_WAIT_BIT(wq_entry, word, bit);
-- 
2.31.1


