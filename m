X-GM-THRID: 6401831587283992576
X-Received: by 10.129.175.20 with SMTP id n20mr7314795ywh.101.1490582717000;
        Sun, 26 Mar 2017 19:45:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.9.14 with SMTP id j14ls3425564ioi.44.gmail; Sun, 26 Mar
 2017 19:45:16 -0700 (PDT)
X-Received: by 10.99.67.197 with SMTP id q188mr7323131pga.31.1490582716336;
        Sun, 26 Mar 2017 19:45:16 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id a3si1369440pfb.2.2017.03.26.19.45.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 19:45:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id g2so8830712pge.2
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 19:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1Z5sDzFsIAWTGmXh7CMWpO185nho6aZvE4r/XWikApg=;
        b=Hn/vYiAkKVCDkTl0wURQAnKzXknUKwbqPlwis0Yw7unZT2xiEcdqPm8K8P1Z+pq8lr
         996UMe5pE6c8JoqI5AZ+wLPzTi8DB2QaH7jpyQeQOPxIlPGnFVYAwya6aDKH89aoNxY8
         b6Brxzfh/S8RDrP7ehiYOHypsHWcl2KyvybXrLV2IM7XLR3CN+ugiF/4+24iS0aevKBS
         O82/h/7dG8yLG0BOqgUgDwfy06VtctjC2z6rX7PjyEwWPdnuJlBpbTcRFa8W2sUpiZBn
         nK61zWnoQ0VTb0Nfcivyv20TuycxlKDGEg0foUSBT0F841/MDNT81NoRC/mznfRK35cn
         2biA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1Z5sDzFsIAWTGmXh7CMWpO185nho6aZvE4r/XWikApg=;
        b=D2FiuRVsWtKukw0fBQLXxd20Grz7pTZ6cbQ810nPy+Sm64JXmc0FFmhernd012p+HF
         Nxowet0ncCHVNAEGusrikFkXlw0ek6SlgrqGEtotDh1itsRSpXUhIIEhNv8pfidl9vgl
         5pvYfdJd/WezkVMcqM+tObNRiEfuAtB8khBUqFzdKi3Q45lmvm6elolK0ik0dF36MA32
         FjLXaD5JuK1gro6T6vWr8nphAQOsbt5KOKuOp95sLayLd0+4q/2I7LsC4OrIe7uS7eKy
         SY6jCm574x3vrxkNpvDvsRmYuJDpYxs15hDveS+l9w+xtUtOmD+r0M4F/Ew8OXByiMaO
         Ylhw==
X-Gm-Message-State: AFeK/H3VNFTqi2XuyqCWGOZu5CeoerEeeQ6Wom/PGy64VozC/BRfRb4IcJY190eYevS6AA==
X-Received: by 10.99.2.139 with SMTP id 133mr21413460pgc.168.1490582716146;
        Sun, 26 Mar 2017 19:45:16 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5181:ce92:a4e3:114c:b305:cb39])
        by smtp.gmail.com with ESMTPSA id i3sm17175834pfg.117.2017.03.26.19.45.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 19:45:15 -0700 (PDT)
Message-ID: <58d87cbb.03c1620a.eb45e.d1e9@mx.google.com>
X-Google-Original-Message-ID: <20170327024512.GA2827@<rvarsha016@gmail.com>>
Date: Mon, 27 Mar 2017 08:15:12 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 3/3] kernel: pid: Add blank line after declarations.
References: <cover.1490581288.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490581288.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Add a blank line after declarations, to fix the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
- No changes.

 kernel/pid.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/kernel/pid.c b/kernel/pid.c
index c6f7b89..7eeb20b 100644
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


