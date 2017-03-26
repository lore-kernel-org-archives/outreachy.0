X-GM-THRID: 6401831056231628800
X-Received: by 10.36.104.205 with SMTP id v196mr1697830itb.36.1490542445718;
        Sun, 26 Mar 2017 08:34:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.28.154 with SMTP id l26ls8543837ota.4.gmail; Sun, 26 Mar
 2017 08:34:05 -0700 (PDT)
X-Received: by 10.237.62.206 with SMTP id o14mr5678729qtf.43.1490542445349;
        Sun, 26 Mar 2017 08:34:05 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id y203si1546190pfb.0.2017.03.26.08.34.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 08:34:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id o126so5450776pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 08:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=5kW6xHxU04YUsdeMqzvWl4OP6OQbg50NgrveqjBggA0=;
        b=TTv63QvwsjjdHyf+LpBWtEtAdNkGq82tbh0uNxqjbw8AxxiHmH8dlTRi7LC4/Y9/5q
         WGZjjmmcBzzupNuT6GW78+efcEszJ1PM3KliYappNkjyYGekKeFDIqsisT0RK9oHsXHC
         XPWOtv1zFa3snXmjJBkAd6j/ViNMczO7EN650Ip95TCWtxQV0cuEsz+FOKgj0mXBlMei
         gMNB9v4Vs2BirKEStNq4+umHCzpkT/rvnpT/yUa4Q5PXfs2xrmBZzckyzj3ZqwxxPL6b
         t48TB4LbMCsIbLBwdMwPKcdQFj9ClSJXsn8sailcY0JY07ZQGO4t+FjlTTq6gHmdB0Pi
         o8UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=5kW6xHxU04YUsdeMqzvWl4OP6OQbg50NgrveqjBggA0=;
        b=NN/KXh7Uqi+lh5dAKzchpF1t3+mPCmUMix1fi2J+Hm3xXH7RtWpPNo88Dut7qmMrpU
         SDnPX88D1DjqBk3cFhADsL+94v6WYzm8ysa0Mb9LwCwxidx3Vko4kNlKVf2QsUiR2fDM
         UYoNnh38SHdlDFvDehO7aXWXhbiOQcMF+ufYujvwTBtY3bsePiZ3dLH5EuJud5h4vZpL
         ld+NOX3fpnQiwsrcTS7/Q4+GKNbDUwO/MGR9Nyi/ovsVbNXDONxGPlGq8edYZy6NeQP8
         S9HRJ2txXw8j4ife4ZDrTIfhuYWfpBINks5lgX1wbzMtmO95TKuaSCsKdvWt3dEBWRxA
         lkiA==
X-Gm-Message-State: AFeK/H0ByxRLk0YYsU+vVVOxFYUFKGK+SFqYqJXuHUpgpmDQ1HJZUNVwKIhPMQ1rcTC2fw==
X-Received: by 10.98.112.134 with SMTP id l128mr20394554pfc.110.1490542445034;
        Sun, 26 Mar 2017 08:34:05 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.128.197])
        by smtp.gmail.com with ESMTPSA id t12sm15706826pfg.14.2017.03.26.08.34.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 08:34:04 -0700 (PDT)
Message-ID: <58d7df6c.0cdc620a.cd49d.764c@mx.google.com>
X-Google-Original-Message-ID: <20170326153401.GA20004@<rvarsha016@gmail.com>>
Date: Sun, 26 Mar 2017 21:04:02 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/3] kernel: pid: Update documentation.
References: <cover.1490542214.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490542214.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

This patch adds comments to update documentation.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 kernel/pid.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/kernel/pid.c b/kernel/pid.c
index 0143ac0..0b0aad4 100644
--- a/kernel/pid.c
+++ b/kernel/pid.c
@@ -43,6 +43,7 @@
 #define pid_hashfn(nr, ns)	\
 	hash_long((unsigned long)nr + (unsigned long)ns, pidhash_shift)
 static struct hlist_head *pid_hash;
+/* Doubly linked hash lists to find PID in given namespace. */
 static unsigned int pidhash_shift = 4;
 struct pid init_struct_pid = INIT_STRUCT_PID;
 
@@ -53,6 +54,7 @@ int pid_max = PID_MAX_DEFAULT;
 int pid_max_min = RESERVED_PIDS + 1;
 int pid_max_max = PID_MAX_LIMIT;
 
+/* mk_pid() returns distance between map and offset pidmap. */
 static inline int mk_pid(struct pid_namespace *pid_ns,
 		struct pidmap *map, int off)
 {
@@ -101,6 +103,7 @@ EXPORT_SYMBOL_GPL(init_pid_ns);
 
 static  __cacheline_aligned_in_smp DEFINE_SPINLOCK(pidmap_lock);
 
+/* free_pidmap() : It frees process id. */
 static void free_pidmap(struct upid *upid)
 {
 	int nr = upid->nr;
@@ -150,6 +153,9 @@ static void set_last_pid(struct pid_namespace *pid_ns, int base, int pid)
 	} while ((prev != last_write) && (pid_before(base, last_write, pid)));
 }
 
+/* alloc_pidmap(): Increments last pid by one and returns it if new pid
+ * is valid.
+ */
 static int alloc_pidmap(struct pid_namespace *pid_ns)
 {
 	int i, offset, max_scan, pid, last = pid_ns->last_pid;
@@ -212,6 +218,9 @@ static int alloc_pidmap(struct pid_namespace *pid_ns)
 	return -EAGAIN;
 }
 
+/* next_pidmap() is used to find the first pid which is greater than previous
+ * last allocated pid.
+ */
 int next_pidmap(struct pid_namespace *pid_ns, unsigned int last)
 {
 	int offset;
@@ -233,6 +242,7 @@ int next_pidmap(struct pid_namespace *pid_ns, unsigned int last)
 	return -1;
 }
 
+/* put_pid() checks whether pid can be reallocated. */
 void put_pid(struct pid *pid)
 {
 	struct pid_namespace *ns;
@@ -249,6 +259,9 @@ void put_pid(struct pid *pid)
 }
 EXPORT_SYMBOL_GPL(put_pid);
 
+/* delayed_put_pid(): Finds the real location of struct pid in the
+ * memory and checks whether it can be reallocated with put_pid().
+ */
 static void delayed_put_pid(struct rcu_head *rhp)
 {
 	struct pid *pid = container_of(rhp, struct pid, rcu);
@@ -293,6 +306,9 @@ void free_pid(struct pid *pid)
 	call_rcu(&pid->rcu, delayed_put_pid);
 }
 
+/* alloc_pid(): Allocates local pid for each multiple namespaces
+ * in which new process created is visible.
+ */
 struct pid *alloc_pid(struct pid_namespace *ns)
 {
 	struct pid *pid;
-- 
2.9.3


