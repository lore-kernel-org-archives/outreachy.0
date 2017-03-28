X-GM-THRID: 6401831587283992576
X-Received: by 10.99.2.9 with SMTP id 9mr1945573pgc.82.1490677193513;
        Mon, 27 Mar 2017 21:59:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.7 with SMTP id 7ls15575025otw.5.gmail; Mon, 27 Mar 2017
 21:59:53 -0700 (PDT)
X-Received: by 10.129.118.14 with SMTP id r14mr4398319ywc.172.1490677193140;
        Mon, 27 Mar 2017 21:59:53 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id r66si462334pfb.7.2017.03.27.21.59.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 21:59:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id o123so15580523pga.1
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 21:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=gSxBHgk60hpvWyusQSwYldLeyokK5QPwefooEwYb610=;
        b=Y1x0LISkcBPWdhSVI6yw0yRLKiZ2149fasi6/j6W7UUZ4Wj2JWVBziuUmP9Rv4ePC8
         YZmuAlPjH8liGQIU4T2Pc7kXys/0G9JpluBI2bPy8x/KeIgNT4Sud2W1/4sU1bTx81zl
         YdWUtINJnOpCBWu6YKpuLP/aK1+Pn3JMWyN3nDl0snzUuSbnnzMPybAbbnQ7bbbLs1Nv
         AbKNnMm5buRzhg5bM5653I0Mt6z0t6rSJd4IR4b4m+npLYdo/CthoyNX0GXosT6u0xrT
         MVAeOeNjVR0sbP4r/X+uo/n6wsOHrUNJDeSfABEomOOaiEev/LpSyZ5KlvJUSHhnhKRq
         4+Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=gSxBHgk60hpvWyusQSwYldLeyokK5QPwefooEwYb610=;
        b=eakVlJ5MuOQULK94QqOWfixqEWCAJpmQmvVYtR00DZzVoNkQ6c+elaup1eQRd1dg/3
         bBm9NanI7Rfp+x4yzbvOqWIYfJRjQUbS3tgLFAiR80R0UjP0NBk9iuk4q4jD+5sZwb0/
         oQ2l0pycLUJeGHF2sV2onKHCtGnewYgqoV1fVE7z1UVfb5Dzg6vSwu141vxcwiXxNnkP
         Vms8dOXvi7WhPRYfSqAMuwFD9F7PsHsQo2Ltxw+95FxU9Oda1gthSBj0kmzBQnjXqM4L
         ZQZ5Z74uTyDzcKt80Uftu2PSY1ETOcAquvcqdQpRYY2xSJ7cdZquylOzOVy/WHKFFmAZ
         7L0w==
X-Gm-Message-State: AFeK/H0v6aDR2g2F6cNzNdm0wNVv1v8ckA1ilEULH0+kU1GOpCOpM0vWuyuAlA38nFMfUA==
X-Received: by 10.84.197.35 with SMTP id m32mr33894290pld.123.1490677192910;
        Mon, 27 Mar 2017 21:59:52 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5181:ce92:a4e3:114c:b305:cb39])
        by smtp.gmail.com with ESMTPSA id p6sm4136516pgn.40.2017.03.27.21.59.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Mar 2017 21:59:52 -0700 (PDT)
Message-ID: <58d9edc8.467f630a.24d1f.ce41@mx.google.com>
X-Google-Original-Message-ID: <20170328045949.GA18150@<rvarsha016@gmail.com>>
Date: Tue, 28 Mar 2017 10:29:49 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 3/3] kernel: pid: Add blank line after declarations.
References: <cover.1490676249.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490676249.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Add a blank line after declarations, to fix the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v3:
- No changes.

Changes in v2:
- No changes.

 kernel/pid.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/kernel/pid.c b/kernel/pid.c
index bb0a1c0..fe16058 100644
--- a/kernel/pid.c
+++ b/kernel/pid.c
@@ -148,6 +148,7 @@ static void set_last_pid(struct pid_namespace *pid_ns, int base, int pid)
 {
 	int prev;
 	int last_write = base;
+
 	do {
 		prev = last_write;
 		last_write = cmpxchg(&pid_ns->last_pid, prev, pid);
@@ -269,6 +270,7 @@ EXPORT_SYMBOL_GPL(put_pid);
 static void delayed_put_pid(struct rcu_head *rhp)
 {
 	struct pid *pid = container_of(rhp, struct pid, rcu);
+
 	put_pid(pid);
 }
 
@@ -409,6 +411,7 @@ EXPORT_SYMBOL_GPL(find_vpid);
 void attach_pid(struct task_struct *task, enum pid_type type)
 {
 	struct pid_link *link = &task->pids[type];
+
 	hlist_add_head_rcu(&link->node, &link->pid->tasks[type]);
 }
 
@@ -455,8 +458,10 @@ void transfer_pid(struct task_struct *old, struct task_struct *new,
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
@@ -484,6 +489,7 @@ struct task_struct *find_task_by_vpid(pid_t vnr)
 struct pid *get_task_pid(struct task_struct *task, enum pid_type type)
 {
 	struct pid *pid;
+
 	rcu_read_lock();
 	if (type != PIDTYPE_PID)
 		task = task->group_leader;
@@ -496,6 +502,7 @@ EXPORT_SYMBOL_GPL(get_task_pid);
 struct task_struct *get_pid_task(struct pid *pid, enum pid_type type)
 {
 	struct task_struct *result;
+
 	rcu_read_lock();
 	result = pid_task(pid, type);
 	if (result)
-- 
2.9.3


