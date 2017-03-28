X-GM-THRID: 6401831056231628800
X-Received: by 10.157.27.231 with SMTP id v36mr9127923otv.125.1490676891871;
        Mon, 27 Mar 2017 21:54:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.22.218 with SMTP id s26ls15343286ots.17.gmail; Mon, 27 Mar
 2017 21:54:51 -0700 (PDT)
X-Received: by 10.13.226.145 with SMTP id l139mr9099325ywe.95.1490676891413;
        Mon, 27 Mar 2017 21:54:51 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id i189si39598pfg.3.2017.03.27.21.54.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 21:54:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id o123so15550386pga.1
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 21:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=cYEbIOgeGi6lv+5ZmA6m2fcZQh2DTKd+8okIdO5AIAo=;
        b=gnf+sc157ISlfVuQimoJ0CN+JnAcfv6kbt5EQY5xx6UH7Tcr78/fGuproHi5aJKI7d
         Ltn3yIqas3iN9bTQn3o9/BjmkxqdMDtBDa1IUmLVrZww7w+Pzh0XgRHu49C8pDo4qjrr
         382dk6Zdoj7jXLAh+vk4UGDa8qzvVQgxSWXH+ujqbd0U7FfH6ToBfF67mB1Zut7OcsQo
         pZyyZRzhTlaCx3xNfhr8+EUzE4i/QQAMhwyNaQ0Y38mMgQeWeZ13vUcdhLVIA3PyVHUg
         vM8oWcbMDjgozyLPmRvyDGerOoDHO7+/ztyQ7u/riiBSt7ePKO3h6jpVG9e3/FwKkc2v
         6/Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=cYEbIOgeGi6lv+5ZmA6m2fcZQh2DTKd+8okIdO5AIAo=;
        b=UwMH2UTdhpiG5WS+ux63BZ0g0wtk9ENCbXnERfoUw7eOyz60S2qIW0R5rVmY1Q6BzN
         muxVbWjciM30vBsKxfdkYfp9bR2XQ1kXM4DbmEs3h7Uk+X/tNJBz1wDVCDCQ1tpYoyU+
         zKGCo9y+yQ4lQe9oQbothflcevDmqwj0XntC60Sp4ZNN60DehnSGvILq420HMH5ktq/1
         eq0uYFimbLn63MM51GJi787d2OYyxvcZFCVJKhYF2Krsab4Qpwip5Eeij4J3jawnRil3
         aYbKR6ANrA7aVefwzUo1we2E2x9V2oChxWgam3V4eMZDMsjbrtfWRlTX5DCGX5hBJFBk
         PKWg==
X-Gm-Message-State: AFeK/H1HVSUo2kAaf3enBV7dak2nA+gJoHSyAnLemrQS47U6spErWdrSrlDGaH2lx6KshQ==
X-Received: by 10.99.224.69 with SMTP id n5mr27780486pgj.113.1490676891021;
        Mon, 27 Mar 2017 21:54:51 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([45.125.143.164])
        by smtp.gmail.com with ESMTPSA id b74sm4102457pfd.90.2017.03.27.21.54.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Mar 2017 21:54:50 -0700 (PDT)
Message-ID: <58d9ec9a.4d07620a.3b5b2.c9ed@mx.google.com>
X-Google-Original-Message-ID: <20170328045447.GA12946@<rvarsha016@gmail.com>>
Date: Tue, 28 Mar 2017 10:24:47 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 1/3] kernel: pid: Update documentation.
References: <cover.1490676249.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490676249.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

This patch adds comments to update documentation.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v3:
- Changed the comment style.

Changes in v2:
- No change.

 kernel/pid.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/kernel/pid.c b/kernel/pid.c
index 0143ac0..01fb660 100644
--- a/kernel/pid.c
+++ b/kernel/pid.c
@@ -42,6 +42,8 @@
 
 #define pid_hashfn(nr, ns)	\
 	hash_long((unsigned long)nr + (unsigned long)ns, pidhash_shift)
+
+/* Doubly linked hash lists to find PID in given namespace. */
 static struct hlist_head *pid_hash;
 static unsigned int pidhash_shift = 4;
 struct pid init_struct_pid = INIT_STRUCT_PID;
@@ -53,6 +55,7 @@ int pid_max = PID_MAX_DEFAULT;
 int pid_max_min = RESERVED_PIDS + 1;
 int pid_max_max = PID_MAX_LIMIT;
 
+/* mk_pid() - Return distance between map and offset pidmap. */
 static inline int mk_pid(struct pid_namespace *pid_ns,
 		struct pidmap *map, int off)
 {
@@ -101,6 +104,7 @@ EXPORT_SYMBOL_GPL(init_pid_ns);
 
 static  __cacheline_aligned_in_smp DEFINE_SPINLOCK(pidmap_lock);
 
+/* free_pidmap() - Free process id. */
 static void free_pidmap(struct upid *upid)
 {
 	int nr = upid->nr;
@@ -150,6 +154,10 @@ static void set_last_pid(struct pid_namespace *pid_ns, int base, int pid)
 	} while ((prev != last_write) && (pid_before(base, last_write, pid)));
 }
 
+/*
+ * alloc_pidmap() - Increment last pid by one and return it if new pid
+ * is valid.
+ */
 static int alloc_pidmap(struct pid_namespace *pid_ns)
 {
 	int i, offset, max_scan, pid, last = pid_ns->last_pid;
@@ -212,6 +220,10 @@ static int alloc_pidmap(struct pid_namespace *pid_ns)
 	return -EAGAIN;
 }
 
+/*
+ * next_pidmap() - Find the first pid which is greater than previous
+ * last allocated pid.
+ */
 int next_pidmap(struct pid_namespace *pid_ns, unsigned int last)
 {
 	int offset;
@@ -233,6 +245,7 @@ int next_pidmap(struct pid_namespace *pid_ns, unsigned int last)
 	return -1;
 }
 
+/* put_pid() - Check whether pid can be reallocated. */
 void put_pid(struct pid *pid)
 {
 	struct pid_namespace *ns;
@@ -249,6 +262,10 @@ void put_pid(struct pid *pid)
 }
 EXPORT_SYMBOL_GPL(put_pid);
 
+/*
+ * delayed_put_pid() - Find the real location of struct pid in the
+ * memory and check whether it can be reallocated with put_pid().
+ */
 static void delayed_put_pid(struct rcu_head *rhp)
 {
 	struct pid *pid = container_of(rhp, struct pid, rcu);
@@ -293,6 +310,10 @@ void free_pid(struct pid *pid)
 	call_rcu(&pid->rcu, delayed_put_pid);
 }
 
+/*
+ * alloc_pid() - Allocate local pid for each multiple namespaces
+ * in which new process created is visible.
+ */
 struct pid *alloc_pid(struct pid_namespace *ns)
 {
 	struct pid *pid;
-- 
2.9.3


