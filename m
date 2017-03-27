X-GM-THRID: 6401831056231628800
X-Received: by 10.99.156.18 with SMTP id f18mr6555384pge.41.1490582202997;
        Sun, 26 Mar 2017 19:36:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.16.46 with SMTP id h43ls11428843ote.9.gmail; Sun, 26 Mar
 2017 19:36:42 -0700 (PDT)
X-Received: by 10.157.12.97 with SMTP id 88mr6979437otr.66.1490582202617;
        Sun, 26 Mar 2017 19:36:42 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id s67si1456495pfs.4.2017.03.26.19.36.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 19:36:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id o123so6047707pga.1
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 19:36:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=sVOfug1EgwqJXJLq8BF4gJgGkxMkOo+io4nU7ISHLjo=;
        b=e1Ss6a4zgesUzU8B2/nzl1Tqfw2VBUrr41i3cK2tzy5IQfLE/iuJN1HFj73zj9Ifr3
         En6v6Qv6NQhiDA1kWovMAIMI6f0Tric4WJRLnfffS8xKBoqhQfcVp06QV/JcBSk+UPVN
         f82voQbRvRFNw61dsFbum4XFIxs1qMOpq7CiHe3OfgKReqd5CfvlgVBbrm1Ics06wW7u
         sO1pSOHhju+WwxNTb63QWDLV36uWPO1vvBE2L2wc7r3zCE7Wn8i9PZKbwM0vQzOzt/Iz
         CPTc2i4mPz1cfMR80+dDWBCg7I9v9RDq5PjbtlDlyVOYjdAYlFVjFCu+bhWE7lHV0+d3
         VPsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=sVOfug1EgwqJXJLq8BF4gJgGkxMkOo+io4nU7ISHLjo=;
        b=IDPlpb6iH2FfshcfklNWOib1CsZMvUS3FT9DiiQNCHP1CnqzJ0Pgzf+UhF3ddj4mqW
         EbEkKy8LnvPG5cPP3Hg2GszOugnGQCVfKKcJm7fHpyUNDgh6EHCCeURiciT7Dx/LxWKq
         kwVaNqGWPNmQWVrSk/M8RC1P97B6QmwoGJZmzfCAUxD2dkkFg2IJXEF9qMtAYEioP0P/
         idb55655QB/TrhQL8We7fTcCJZd4vuUdiWKaOsklKmRPhjOCuXF7fHbX7EuxPhO9oM82
         JbQb/vcNj+q94Ese1Xv57OlZK5BzkXlnYDMruNpGi6jwxEhirzjU7eUSzLps1VQ8nxlW
         y7sg==
X-Gm-Message-State: AFeK/H0tJxTT+DFCZx2GA3v0+dQYIZntUetT1ImWXquP4LxIgaC0KYOSr5hXZzdKumAPnQ==
X-Received: by 10.98.54.196 with SMTP id d187mr16882755pfa.90.1490582202334;
        Sun, 26 Mar 2017 19:36:42 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5181:ce92:a4e3:114c:b305:cb39])
        by smtp.gmail.com with ESMTPSA id 80sm17134668pfy.67.2017.03.26.19.36.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 19:36:41 -0700 (PDT)
Message-ID: <58d87ab9.5318620a.e4705.ca98@mx.google.com>
X-Google-Original-Message-ID: <20170327023638.GA2754@<rvarsha016@gmail.com>>
Date: Mon, 27 Mar 2017 08:06:38 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 1/3] kernel: pid: Update documentation.
References: <cover.1490581288.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490581288.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

This patch adds comments to update documentation.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
- No change.

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


