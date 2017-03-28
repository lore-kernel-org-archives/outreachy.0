X-GM-THRID: 6402653408704069632
X-Received: by 10.176.4.100 with SMTP id 91mr1502534uav.21.1490733936593;
        Tue, 28 Mar 2017 13:45:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.195 with SMTP id 61ls122239oto.31.gmail; Tue, 28 Mar
 2017 13:45:36 -0700 (PDT)
X-Received: by 10.200.4.33 with SMTP id v33mr9095444qtg.88.1490733936184;
        Tue, 28 Mar 2017 13:45:36 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id y203si880557pfb.0.2017.03.28.13.45.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 13:45:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 79so23959941pgf.0
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 13:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=aaweGKtyzDVo3KX+fd86yNWg310muzK+KSIUk7H4EBM=;
        b=uxSxv6z289y1qIhPdXzFL4ZuLI/m0bQzYuf2zC579p0tI09HmK8ivB6VqDbHDHwom0
         PRAy/UeQe8ZYveWvhkcO76+VrAA1OLfujEo//o4cqb2wnd8FhhkQiKSxASY8vdxhDzsa
         XRSVx+wZYN7K7WId1EvI0CnsVU7YAzJZenIIr7cEvzXuNmSp/ZKtZ2lwDNcgnBWKGOQ/
         GbfCt2ejAphGEcMKXfb0pc34Tkrqg8qtPuGTQBJqzbjgAMjCTKzOeU44NVRHT7VPuPmM
         f3pKQzegyQ54GVe6T/fbkTLM7nZUqEmqXBYMmE/l4bue+cX3hGRjaGaaGZkOlKrLC0P1
         pzzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=aaweGKtyzDVo3KX+fd86yNWg310muzK+KSIUk7H4EBM=;
        b=gfsaknN5QhyNbrBzlnKaJWgtrjTtCH212TvIhZihNeiB5/LjwZKjW54Jsozshl4t2m
         lFetJD1Ay2rvg3rYobYMLqJFrdlfnazrHfo/oVwmL7ymFsY/nO24FxisAb1Ls38ohrlG
         HC3/m+L43rML+UIz4ma97E4KRjIkXPMO715XfzAsTgUuUg8RUzuMolUrlDO7jTV/Leqn
         pXSOajUGR60kIwgSWI/fEclMRXCvvvu0cvgX41L1JTMcTVfmwZB6qdCn+HaQ0LdRaSJJ
         p6SYBgaB+CxdTWIJur7YICg47BwpydR1u8EzmP4Z/BaXU/ClGuV4JywGfVfy0MYkWfZy
         S8Bg==
X-Gm-Message-State: AFeK/H081rlSL60LEz0t/f85ydYo5j93l1UCXtptTjfzCcVjE1E7YRq2u/ag6OkNWRxOWg==
X-Received: by 10.99.171.5 with SMTP id p5mr32706095pgf.208.1490733935958;
        Tue, 28 Mar 2017 13:45:35 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u29sm9062674pfa.123.2017.03.28.13.45.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 13:45:34 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 3/5] kernel: pid: Fix line over 80 characters
Date: Wed, 29 Mar 2017 02:15:04 +0530
Message-Id: <20170328204506.16316-4-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170328204506.16316-1-arushisinghal19971997@gmail.com>
References: <20170328204506.16316-1-arushisinghal19971997@gmail.com>

This patch splits line over 80 characters addressing checkpatch.pl
warning

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 kernel/pid.c           | 4 +++-
 kernel/pid_namespace.c | 7 +++++--
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/kernel/pid.c b/kernel/pid.c
index 5822142ca92a..dd514309d982 100644
--- a/kernel/pid.c
+++ b/kernel/pid.c
@@ -439,7 +439,9 @@ struct task_struct *pid_task(struct pid *pid, enum pid_type type)
 		first = rcu_dereference_check(hlist_first_rcu(&pid->tasks[type]),
 					      lockdep_tasklist_lock_is_held());
 		if (first)
-			result = hlist_entry(first, struct task_struct, pids[(type)].node);
+			result = hlist_entry(first,
+					     struct task_struct,
+					     pids[(type)].node);
 	}
 	return result;
 }
diff --git a/kernel/pid_namespace.c b/kernel/pid_namespace.c
index de461aa0bf9a..778959ecd5c3 100644
--- a/kernel/pid_namespace.c
+++ b/kernel/pid_namespace.c
@@ -75,7 +75,9 @@ static struct kmem_cache *create_pid_cachep(int nr_ids)
 
 static void proc_cleanup_work(struct work_struct *work)
 {
-	struct pid_namespace *ns = container_of(work, struct pid_namespace, proc_work);
+	struct pid_namespace *ns = container_of(work,
+						struct pid_namespace,
+						proc_work);
 	pid_ns_release_proc(ns);
 }
 
@@ -89,7 +91,8 @@ static struct ucounts *inc_pid_namespaces(struct user_namespace *ns)
 
 static void dec_pid_namespaces(struct ucounts *ucounts)
 {
-	dec_ucount(ucounts, UCOUNT_PID_NAMESPACES);
+	dec_ucount(ucounts,
+		   UCOUNT_PID_NAMESPACES);
 }
 
 static struct pid_namespace *create_pid_namespace(struct user_namespace *user_ns,
-- 
2.11.0


