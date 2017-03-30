X-GM-THRID: 6403370141548019712
X-Received: by 10.157.1.36 with SMTP id 33mr496922otu.101.1490900791686;
        Thu, 30 Mar 2017 12:06:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.141.136 with SMTP id p130ls6910784iod.9.gmail; Thu, 30 Mar
 2017 12:06:30 -0700 (PDT)
X-Received: by 10.99.106.130 with SMTP id f124mr508796pgc.140.1490900790823;
        Thu, 30 Mar 2017 12:06:30 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id w140si347287itc.0.2017.03.30.12.06.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Mar 2017 12:06:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id g2so11871876pge.2
        for <outreachy-kernel@googlegroups.com>; Thu, 30 Mar 2017 12:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=uD4O1R6LD9OmkkIh1oCunIhUIOgidTbziCpZ9tHdB0Y=;
        b=Ep0nuTq0Rej7D7nebMVzCtCb4b9ARSBEll7ZPc+fscmN3cxjk2qw9u0foSqZGmu3ZB
         VxiFgum8Ru1GbTX7yZeD+/p2UKdZ6nVHjVAL2YvxHxsJVp+zsPlvAu5u9XEjx1RNr/xb
         EHLlOcX3oPvkEAUzSQDhD/4fL4HTR9NCtCy1UE4fxFINQ0aw0ddbxYHuThn4rIbdN6Hy
         aNSCxPqolrmLSL9bayVWdJyejH8g0nNxQxb30nksjyxaVqZbmtgoXstfSiBe3nCR91VS
         9CfNonovJX+h/V2zjkMSgjwWxGZsyZPJ8ZeLuKxifb1P42FQzV3N4khWO/3FVSBZ249u
         EUrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=uD4O1R6LD9OmkkIh1oCunIhUIOgidTbziCpZ9tHdB0Y=;
        b=H8leUiWbf9XlRicP+YTMC4GVg6tglTEKRoT9R6KMYUw5md27dMjyg7GdIe5RBcmxX8
         W9AgG8R/29+2532umpdDQiNiyAqz9/TUALxk0BQ2/kFwW0QwRH119/gaIYX+Niimp/QK
         UyX0RVI7XazqgGE+J+N/vq6W+fvLohj0975yr2e5rwNwXtYutwrG7zIGhjMAiRE8R1Kk
         ux/YdMX9lJ1mATk5AaWWeYO8+winRPbR5sJui5JkbmfMRVo60rWaNmNBT3dkv5Lo8wXe
         1FKhDE057iaoP/i+VGroQkV5ob73U7KQNGHHJYsiilKuJNo5sWZIlcldVFjvTHvQBNLU
         +wZA==
X-Gm-Message-State: AFeK/H0HG808D7RxGJTL9TEk9oMQVEBW0YsRMKEXlKaEMyydwefhCADZ1J3yhmNkgywrnA==
X-Received: by 10.99.38.196 with SMTP id m187mr848601pgm.195.1490900790312;
        Thu, 30 Mar 2017 12:06:30 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([103.59.75.12])
        by smtp.gmail.com with ESMTPSA id q64sm5963692pga.0.2017.03.30.12.06.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Mar 2017 12:06:29 -0700 (PDT)
Date: Fri, 31 Mar 2017 00:35:34 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Matthew Wilcox <mawilcox@microsoft.com>
Subject: [PATCH] kernel: pid_namespace: Add kernel-doc comments
Message-ID: <20170330190534.GA5379@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Add kernel-doc comments for functions.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 kernel/pid_namespace.c | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/kernel/pid_namespace.c b/kernel/pid_namespace.c
index 37e2b52..31dbc12 100644
--- a/kernel/pid_namespace.c
+++ b/kernel/pid_namespace.c
@@ -91,7 +91,11 @@ static void dec_pid_namespaces(struct ucounts *ucounts)
 {
 	dec_ucount(ucounts, UCOUNT_PID_NAMESPACES);
 }
-
+/**
+ * create_pid_namespace - creates a new pid namespace
+ * @user_namespace:		current user namespace
+ * @parent_pid_namespace:	parent of the user namespace
+ */
 static struct pid_namespace *create_pid_namespace(struct user_namespace *user_ns,
 	struct pid_namespace *parent_pid_ns)
 {
@@ -162,6 +166,11 @@ static void delayed_free_pidns(struct rcu_head *p)
 	kmem_cache_free(pid_ns_cachep, ns);
 }
 
+/**
+ * destroy_pid_namespace - Destroys the pid namespace
+ * @ns:	namespace to be destroyed
+ *
+ */
 static void destroy_pid_namespace(struct pid_namespace *ns)
 {
 	int i;
@@ -172,6 +181,12 @@ static void destroy_pid_namespace(struct pid_namespace *ns)
 	call_rcu(&ns->rcu, delayed_free_pidns);
 }
 
+/**
+ * copy_pid_ns - makes a copy of the pid namespace
+ * @user_ns:	new namespace to be created
+ * @old_ns:	namespace to be copied
+ *
+ */
 struct pid_namespace *copy_pid_ns(unsigned long flags,
 	struct user_namespace *user_ns, struct pid_namespace *old_ns)
 {
@@ -182,6 +197,10 @@ struct pid_namespace *copy_pid_ns(unsigned long flags,
 	return create_pid_namespace(user_ns, old_ns);
 }
 
+/**
+ * free_pid_ns - frees memory allocated to the pid namespace
+ * @kref:	reference of pid namespace to be freed
+ */
 static void free_pid_ns(struct kref *kref)
 {
 	struct pid_namespace *ns;
-- 
2.7.4


