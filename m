X-GM-THRID: 6401746090885906432
X-Received: by 10.200.50.241 with SMTP id a46mr5315027qtb.13.1490522662758;
        Sun, 26 Mar 2017 03:04:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.195 with SMTP id 61ls11031882oto.31.gmail; Sun, 26 Mar
 2017 03:04:22 -0700 (PDT)
X-Received: by 10.200.54.91 with SMTP id n27mr5407660qtb.61.1490522662310;
        Sun, 26 Mar 2017 03:04:22 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si1315123pfz.1.2017.03.26.03.04.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 03:04:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id g2so5484311pge.2
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 03:04:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=w15teMfD7VDtAKB0QBiR4v2v3w3VrJUdefeZP0OCCCA=;
        b=HUq9UQRAVKqKlqrAQyr/xwVxl91XpwyGb7YqwHAOwG7PDJBoXMbRJcCSu5IPCLsrmm
         +u0or61dzixIgKJOt3hz+JsWkZNmK5MXU66SYxMBDqb1fpll4wWCIm64z05jJopZoTbs
         hl7agMKjrbcM94rWj0k2X9nXmvC+k9F96V9nGBb7Wxk2M+Js5wrdFOn88Sw85xRqM9Yi
         XJWA7YolrwwgK3Ys4NUup5YCVj6LK4EL/8PUd1AO23CTshAUWxjCc7EnBmlYw0PXRvYs
         go5qdxT6QhNZotJfvtpUGI7CpnHj9DGAzpv3K9TXL/SCqbX07gCT+9LrCyvAhnelFElU
         kffA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=w15teMfD7VDtAKB0QBiR4v2v3w3VrJUdefeZP0OCCCA=;
        b=Ro5omV0L2NnA9RtC7jmxnUjAro5HMb8LWfrTKb6az3yuJn70conKE/ZQZ4iD8HDT51
         d7sw4b3c53/iKkW/wI5FzwC3oDmeCXG7RAbmV1wxHbK2mu3cABhnf5fx8R18IItUVqhu
         hgk8X5VS9VgiUoqoPQQcXWDUc+YcATh1wSSZGuL+0vAfO4ZeXYl4Tay8ZrQi+f+S9qjR
         mvoze+HeTZOyCXispPHOVSvVB8bwlBw5VvgEHfvktGYY423cNaK2GYWkYKg0efdpniDd
         X6hnTDp+xuWyKkC0vSEKiQdlNi/4heE8D6LVnkS2JtvI7tYiQjD3N98ruwr3gg6vEH9i
         ZXdg==
X-Gm-Message-State: AFeK/H1/kBnykWdsFgxc4OAfj4jpix5wbccxY5s/WFNTHZuekzHksdy0spkhqyn8GSLqGg==
X-Received: by 10.99.215.85 with SMTP id w21mr5498412pgi.217.1490522661780;
        Sun, 26 Mar 2017 03:04:21 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.128.197])
        by smtp.gmail.com with ESMTPSA id z27sm14507053pfg.38.2017.03.26.03.04.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 03:04:21 -0700 (PDT)
Message-ID: <58d79225.1bd1620a.579a7.5a9d@mx.google.com>
X-Google-Original-Message-ID: <20170326100417.GA16117@<rvarsha016@gmail.com>>
Date: Sun, 26 Mar 2017 15:34:18 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/5] include: linux: pid: Update documentation.
References: <cover.1490516333.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490516333.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

This patch adds comments to update documentation. Also remove extra
space between full stop and and new sentence, of existing comments.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 include/linux/pid.h | 43 ++++++++++++++++++++++++++++++++-----------
 1 file changed, 32 insertions(+), 11 deletions(-)

diff --git a/include/linux/pid.h b/include/linux/pid.h
index 4d17931..c2bea47 100644
--- a/include/linux/pid.h
+++ b/include/linux/pid.h
@@ -5,32 +5,32 @@
 
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
  * What is struct pid?
  *
  * A struct pid is the kernel's internal notion of a process identifier.
- * It refers to individual tasks, process groups, and sessions.  While
+ * It refers to individual tasks, process groups, and sessions. While
  * there are processes attached to it the struct pid lives in a hash
  * table, so it and then the processes that it refers to can be found
- * quickly from the numeric pid value.  The attached processes may be
+ * quickly from the numeric pid value. The attached processes may be
  * quickly accessed by following pointers from struct pid.
  *
  * Storing pid_t values in the kernel and referring to them later has a
- * problem.  The process originally with that pid may have exited and the
+ * problem. The process originally with that pid may have exited and the
  * pid allocator wrapped, and another process could have come along
  * and been assigned that pid.
  *
  * Referring to user space processes by holding a reference to struct
- * task_struct has a problem.  When the user space process exits
- * the now useless task_struct is still kept.  A task_struct plus a
- * stack consumes around 10K of low kernel memory.  More precisely
- * this is THREAD_SIZE + sizeof(struct task_struct).  By comparison
+ * task_struct has a problem. When the user space process exits
+ * the now useless task_struct is still kept. A task_struct plus a
+ * stack consumes around 10K of low kernel memory. More precisely
+ * this is THREAD_SIZE + sizeof(struct task_struct). By comparison
  * a struct pid is about 64 bytes.
  *
  * Holding a reference to struct pid solves both of these problems.
@@ -45,6 +45,10 @@ enum pid_type
  * struct upid is used to get the id of the struct pid, as it is
  * seen in particular namespace. Later the struct pid is found with
  * find_pid_ns() using the int nr and struct pid_namespace *ns.
+ *
+ * @nr: Pid value.
+ * @ns: Represents the namespace to which pid value belongs.
+ * @pid_chain: Hash chain.
  */
 
 struct upid {
@@ -54,6 +58,15 @@ struct upid {
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
+
 struct pid
 {
 	atomic_t count;
@@ -66,12 +79,20 @@ struct pid
 
 extern struct pid init_struct_pid;
 
+/*
+ * struct pid_link is used for per process linkage into hash tables.
+ * @node: List element.
+ * @pid: Pointer to the struct pid of the process.
+ */
 struct pid_link
 {
 	struct hlist_node node;
 	struct pid *pid;
 };
 
+/* get_pid() checks availability of process id and if available assigns
+ * process ID.
+ */
 static inline struct pid *get_pid(struct pid *pid)
 {
 	if (pid)
-- 
2.9.3


