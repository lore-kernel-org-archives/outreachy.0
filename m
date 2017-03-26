X-GM-THRID: 6401746090885906432
X-Received: by 10.13.217.82 with SMTP id b79mr6286944ywe.13.1490539737906;
        Sun, 26 Mar 2017 07:48:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.200.10 with SMTP id w10ls1288505itf.13.canary-gmail; Sun,
 26 Mar 2017 07:48:57 -0700 (PDT)
X-Received: by 10.107.152.149 with SMTP id a143mr5950988ioe.30.1490539737417;
        Sun, 26 Mar 2017 07:48:57 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 190si1568337pfv.3.2017.03.26.07.48.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 07:48:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id p189so5360386pfp.0
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 07:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=DK4sa7GhAe/Z7OemqwrHQTfMulOhw4+G8EDx3GTUImg=;
        b=dqiUNmAgAXhobIxUzE2+9fYOMpox7r4ffvr/rE/91ERh2zRGW1pc58pEkGZxGlOddP
         QTZ3KexxHxXkzkHvINvPO3GO9m3Eg7Of6iG4EdLCUzc43FUObxKThfpIWU5o9pw+ii4b
         lwSDc0/kJj1uSTnc/Mz4D2j5OXbWa19i1xKp8DDDU1JTsi1CYNIcBDLjWvv4xFcBKeAm
         Z9zbOjFLIrz45YvOvG3mMZOf1rXrNT5qWmh/qOlNrQfsZu50bZO+nhZ/ZBdWl5l3fAkU
         nHOELtWKoRrOetMn0oxcI23AXzEHzwtsqfGpg48uVYd0ZKXC8Mgcf0Z+HbnaXPO4Rog6
         K7Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=DK4sa7GhAe/Z7OemqwrHQTfMulOhw4+G8EDx3GTUImg=;
        b=C1axZPBSD06R8hmS1lVaZY237O4fxaz2n+7B4z+mJV56xFNommRk20kKhDuJ/PzcYE
         LOd3a50WW/FcH1VkdkbWsRshxx5eZTmzGnVKvavpRedGbh++xtU9HxqgWmvfCA8trp3n
         pvMkcqlvtIlLjrFdsa1LUFX6fGPykfJ/69rA7woyg7ftJdyzg5jYZ2kCuXWKAJJ4x86V
         p84NRvMgE7GnfAh/3EzVXkL5VJO6GsrOWh726sUzyYcTPCiBY8ocuNTQ7SDrwk2gIpk0
         cH/34T1CdkxVWtFoqSfk3qMJFULNX/Km1S5EpFpE7UcZYkQ6Mucom+YbaVJV9wZGrqev
         RPuA==
X-Gm-Message-State: AFeK/H1tJ8FeJq6X8CgO/fyE9fwOLR5uxSMP7qjpjuQ/l4ihBIXcS/1dJeVOmQG5BQw+bA==
X-Received: by 10.99.123.75 with SMTP id k11mr19197591pgn.150.1490539737131;
        Sun, 26 Mar 2017 07:48:57 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.128.197])
        by smtp.gmail.com with ESMTPSA id g21sm15551284pfb.41.2017.03.26.07.48.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 07:48:56 -0700 (PDT)
Message-ID: <58d7d4d8.1552620a.f645c.6962@mx.google.com>
X-Google-Original-Message-ID: <20170326144853.GA18912@<rvarsha016@gmail.com>>
Date: Sun, 26 Mar 2017 20:18:53 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 1/5] include: linux: pid: Update documentation.
References: <cover.1490539294.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490539294.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

This patch adds comments to update documentation.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
- Keep original comments.
- Modified commit message.

 include/linux/pid.h | 28 ++++++++++++++++++++++++----
 1 file changed, 24 insertions(+), 4 deletions(-)

diff --git a/include/linux/pid.h b/include/linux/pid.h
index 4d17931..728ba63 100644
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
@@ -45,6 +45,9 @@ enum pid_type
  * struct upid is used to get the id of the struct pid, as it is
  * seen in particular namespace. Later the struct pid is found with
  * find_pid_ns() using the int nr and struct pid_namespace *ns.
+ * @nr: Pid value.
+ * @ns: Represents the namespace to which pid value belongs.
+ * @pid_chain: Hash chain.
  */
 
 struct upid {
@@ -54,6 +57,15 @@ struct upid {
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
@@ -66,12 +78,20 @@ struct pid
 
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


