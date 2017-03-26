X-GM-THRID: 6401831587283992576
X-Received: by 10.98.218.86 with SMTP id w22mr4614704pfl.15.1490542569875;
        Sun, 26 Mar 2017 08:36:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.16 with SMTP id f16ls3425569ioe.31.gmail; Sun, 26 Mar
 2017 08:36:09 -0700 (PDT)
X-Received: by 10.36.127.19 with SMTP id r19mr1690460itc.33.1490542569325;
        Sun, 26 Mar 2017 08:36:09 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si1487601pfx.8.2017.03.26.08.36.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 08:36:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 81so6207459pgh.3
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 08:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=A0ijvLV+l9qWafJ8rrnRpsAzjwbtFSonRAZLmY3f7D4=;
        b=qvteLjRNp1DzgcEXVqTk2dm+IE9+CyCFblTlpIqWQsgvQAHC/z/JSLwquZyp/HZqP5
         bYKWwExcI5E6Ms9RVmyYg6fHBJSKGPk1g7TH2JXPdWl3da022C7oINSXdxxei0xsriZm
         3XSr61a/8EQg5dTHP8Crm9TG470uEIcdrS8lJK5qNeNfA+22RdyEwLsMCLsfFCUtuPKw
         ytmxY3YjsXeYzL9HUdhsB5jnDbH5K+4/QDbCCwpcQS4Zq5lUbWb7FhbRRjkXVdXz/hal
         z6nkMB4JF+EcxBxwTiYr3RBpjC909+eG25zWVOubIky3J31gH4cMz0dwg6eh/SCWLXBn
         YV5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=A0ijvLV+l9qWafJ8rrnRpsAzjwbtFSonRAZLmY3f7D4=;
        b=d8x6Fs2TarjoPuL2Y1PPNqTUDVzzp3fNGr9S0qXp50T40dw5yCEOmDIlu+1H/O+R26
         ZgRr8KirthnKuSaBiET0ClTG4iMaoDkLDuNMtyeL0OJT/dyEjtR4D0a0QpJs3bndQD6U
         SicWTs3qKngQk12KaSmJVcv5tzJRClMo4NOEL1A0LrA2xb6FaqIN3Cn7Kh+k5SzhAyTR
         pLNqMV6oQ4caJ7ns8kuaRIHf/Zup5xCVNlsnLp+G6lW08efXLiBp39zHyc3PFoo8b/33
         fSO1n0LKAPP8Oslxc78tHga614ea5kGGlD06JR/mRR71T9d5ar272znNGYY/BItAurFN
         lwJQ==
X-Gm-Message-State: AFeK/H3DWG2ge5pJlKqjMyzs3rmHJW+exroTnmtQ4W8WODmScIbAls/qNe3B5MI1mW/cBw==
X-Received: by 10.98.85.135 with SMTP id j129mr19938235pfb.79.1490542568883;
        Sun, 26 Mar 2017 08:36:08 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.128.197])
        by smtp.gmail.com with ESMTPSA id s27sm15711929pfk.39.2017.03.26.08.36.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 08:36:08 -0700 (PDT)
Message-ID: <58d7dfe8.9b96620a.19c5e.7db4@mx.google.com>
X-Google-Original-Message-ID: <20170326153604.GA20037@<rvarsha016@gmail.com>>
Date: Sun, 26 Mar 2017 21:06:04 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 3/3] kernel: pid: Add blank line after declarations.
References: <cover.1490542214.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490542214.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Add a blank line after declarations, to fix the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 kernel/pid.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/kernel/pid.c b/kernel/pid.c
index c022239..64c0ce4 100644
--- a/kernel/pid.c
+++ b/kernel/pid.c
@@ -147,6 +147,7 @@ static void set_last_pid(struct pid_namespace *pid_ns, int base, int pid)
 {
 	int prev;
 	int last_write = base;
+
 	do {
 		prev = last_write;
 		last_write = cmpxchg(&pid_ns->last_pid, prev, pid);
@@ -265,6 +266,7 @@ EXPORT_SYMBOL_GPL(put_pid);
 static void delayed_put_pid(struct rcu_head *rhp)
 {
 	struct pid *pid = container_of(rhp, struct pid, rcu);
+
 	put_pid(pid);
 }
 
@@ -404,6 +406,7 @@ EXPORT_SYMBOL_GPL(find_vpid);
 void attach_pid(struct task_struct *task, enum pid_type type)
 {
 	struct pid_link *link = &task->pids[type];
+
 	hlist_add_head_rcu(&link->node, &link->pid->tasks[type]);
 }
 
@@ -450,8 +453,10 @@ void transfer_pid(struct task_struct *old, struct task_struct *new,
 struct task_struct *pid_task(struct pid *pid, enum pid_type type)
 {
 	struct task_struct *result = NULL;
+
 	if (pid) {
 		struct hlist_node *first;
+
 		first = rcu_dereference_check(hlist_first_rcu(&pid->tasks[type]),
 					      lockdep_tasklist_lock_is_held());
 		if (first)
@@ -479,6 +484,7 @@ struct task_struct *find_task_by_vpid(pid_t vnr)
 struct pid *get_task_pid(struct task_struct *task, enum pid_type type)
 {
 	struct pid *pid;
+
 	rcu_read_lock();
 	if (type != PIDTYPE_PID)
 		task = task->group_leader;
@@ -491,6 +497,7 @@ EXPORT_SYMBOL_GPL(get_task_pid);
 struct task_struct *get_pid_task(struct pid *pid, enum pid_type type)
 {
 	struct task_struct *result;
+
 	rcu_read_lock();
 	result = pid_task(pid, type);
 	if (result)
-- 
2.9.3


