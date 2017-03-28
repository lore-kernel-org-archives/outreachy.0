X-GM-THRID: 6401746090885906432
X-Received: by 10.200.37.111 with SMTP id 44mr8431115qtn.56.1490695690140;
        Tue, 28 Mar 2017 03:08:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.156 with SMTP id 28ls4497357iol.20.gmail; Tue, 28 Mar
 2017 03:08:09 -0700 (PDT)
X-Received: by 10.99.47.134 with SMTP id v128mr9117109pgv.27.1490695689555;
        Tue, 28 Mar 2017 03:08:09 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id g82si517318pfb.5.2017.03.28.03.08.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 03:08:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 79so20208420pgf.0
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 03:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0rNJTvdLeRCd5Wnc9HiyrthdBPxnI0COCBN5+spHwaY=;
        b=o2F/p/7yOSGS91x+25mfntVp1ATd5yyM6Jx3JgN8ljwRam805gSASLKz6O/np77mSa
         tZWRISeNYYGizSvHlJVay71zgCxJPA15rjGXhmQEFHqs6MAnmqk+cQ7N5ZMI/cGnZ15W
         WEt2QWQSuOHkqWFzfHJpKc+Y25pvjjDaI0n7Dj9BmDPcW7fWZ6sFjsGMHmVKWL8bfhNE
         tpZymNWh/L9Szhml5/OnP/Jvio/7ydc087o+lYA8yQDi+dqA9QvIZpfhxatRzfj+6cpM
         n3qMC0LBNkTylKfq5pgKmDZcYrLp7Dg3e+l9ATDgj/DL2S6I4MR24TqhKa6d01kDISCL
         IKAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0rNJTvdLeRCd5Wnc9HiyrthdBPxnI0COCBN5+spHwaY=;
        b=H0nq1pKyt0k5sLO41JqbYN03vBnSQvsc0XC+aVxnn+bDBlDW40peeSJlaZw24bCFQy
         KpEEGUqshdVPegd3JwArnznZ0rZ1fTXfsRNZIewQGc6S9tcxcbyyRLtbIQ+30IvwfxCM
         y+pVW1M8Aj2xZR05/8L3pMP3Ua/hV+L+TZw3Nzxs0EYt+GFPi3axGTrqctE8t+t3m41w
         L2hSM1RmuoWUQ0OPZU/FJ7KjETETgBsAlYV8akZsVVnFkZ5cIWOqelpg1AlT3JLfiLEK
         chJJOqR/HCCAFz3Sz91gEY/tmvpKwfZoBnWJ2K9qCHjs5F7dkKaKl1T82SYl+Fbui9sI
         0C1A==
X-Gm-Message-State: AFeK/H1sPo4XKjtFkfxwAfPAkj2ltZySrLnfCARIV4SuDckAgcB8Ympj+EO8ECrvWgq4uw==
X-Received: by 10.98.156.23 with SMTP id f23mr30446890pfe.3.1490695689303;
        Tue, 28 Mar 2017 03:08:09 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5181:ce92:a4e3:114c:b305:cb39])
        by smtp.gmail.com with ESMTPSA id r13sm6430833pfg.55.2017.03.28.03.08.08
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 03:08:08 -0700 (PDT)
Message-ID: <58da3608.0dd6620a.8d4b4.0d2b@mx.google.com>
X-Google-Original-Message-ID: <20170328100802.GA3347@<rvarsha016@gmail.com>>
Date: Tue, 28 Mar 2017 15:38:02 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 1/5] include: linux: pid: Update documentation.
References: <cover.1490695255.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490695255.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

This patch adds comments to update documentation.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v3:
- Changed comment style.

Changes in v2:
- Keep original comments.
- Modified commit message.

 include/linux/pid.h | 31 ++++++++++++++++++++++++++-----
 1 file changed, 26 insertions(+), 5 deletions(-)

diff --git a/include/linux/pid.h b/include/linux/pid.h
index 4d17931..ea90c1f 100644
--- a/include/linux/pid.h
+++ b/include/linux/pid.h
@@ -5,10 +5,10 @@
 
 enum pid_type
 {
-	PIDTYPE_PID,
-	PIDTYPE_PGID,
-	PIDTYPE_SID,
-	PIDTYPE_MAX
+	PIDTYPE_PID, /* Process ID */
+	PIDTYPE_PGID, /* Process group ID */
+	PIDTYPE_SID, /* Process session ID */
+	PIDTYPE_MAX /* Number of ID types */
 };
 
 /*
@@ -42,11 +42,15 @@ enum pid_type
 
 
 /*
+ * struct upid - Get PID for particular namespace.
+ * @nr: Pid value.
+ * @ns: Represents the namespace to which pid value belongs.
+ * @pid_chain: Hash chain.
+ *
  * struct upid is used to get the id of the struct pid, as it is
  * seen in particular namespace. Later the struct pid is found with
  * find_pid_ns() using the int nr and struct pid_namespace *ns.
  */
-
 struct upid {
 	/* Try to keep pid_chain in the same cacheline as nr for find_vpid */
 	int nr;
@@ -54,6 +58,14 @@ struct upid {
 	struct hlist_node pid_chain;
 };
 
+/*
+ * struct pid
+ * @count: Reference counter.
+ * @level: Number of namespaces in which the process is visible.
+ * @tasks: Lists of tasks.
+ * @rcu: RCU helper.
+ * @numbers: Instance of upid for each level.
+ */
 struct pid
 {
 	atomic_t count;
@@ -66,12 +78,21 @@ struct pid
 
 extern struct pid init_struct_pid;
 
+/*
+ * struct pid_link - Per process linkage into hash tables.
+ * @node: List element.
+ * @pid: Pointer to the struct pid of the process.
+ */
 struct pid_link
 {
 	struct hlist_node node;
 	struct pid *pid;
 };
 
+/*
+ * get_pid() - Checks availability of process id and if available assigns
+ * process ID.
+ */
 static inline struct pid *get_pid(struct pid *pid)
 {
 	if (pid)
-- 
2.9.3


