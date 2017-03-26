X-GM-THRID: 6401825299773784064
X-Received: by 10.99.215.81 with SMTP id w17mr2410860pgi.16.1490541105722;
        Sun, 26 Mar 2017 08:11:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.209 with SMTP id u75ls5985417ota.13.gmail; Sun, 26 Mar
 2017 08:11:45 -0700 (PDT)
X-Received: by 10.13.197.134 with SMTP id h128mr6204374ywd.78.1490541105372;
        Sun, 26 Mar 2017 08:11:45 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id y203si1539661pfb.0.2017.03.26.08.11.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 08:11:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 81so6150945pgh.3
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 08:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=1T1SOrRgO0l0CohjAL584T0v02dBErAKsiXWpP7Mv6M=;
        b=KqUHZ+Kb6lKdR9xY8RMLBD7xTWA1m0IZ5Lp72EAe+Pb7osvgFlcdL3ZRbt/F2N/mE1
         D1zASZFOlTNNhzrnOou1UsAv22s9UX2q5WieA6WTnFRN02Hy/yNKNDMkVxgp5LpzkyHi
         H5Eg5uajW9SBhnCM2JZVRlw1y7jwnwHW1JT5LaXyqfWkLDIbDmsBOQgS0kxGJAFswX2w
         fuHEzv5leAo82f6hhE23Rkk3M8pUenBwIzxwdxV6Dit18pzgqIJWD/wH77+owqrGLpZ0
         eyHcnZbJjs6Mk2f3lKKHX2XZK7DYRljwyK2fZ3G2oEksCSC+/nUaZNJU/r14toPWEPPo
         YWnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=1T1SOrRgO0l0CohjAL584T0v02dBErAKsiXWpP7Mv6M=;
        b=MCLRNO7LKin3575P+oaBNw2BpzOhh31SMUNNVYa0mlhIpuNO+5kGLXDGfYl18Pqe/z
         ozcoAzQlIxCa2QgDPV3kWJ8qi8Siw3YEFa8lL7INhFJolh3VZVbAcbiQvms17148HIXs
         rOGPhHEQV3oeaAsYzLbm7n1eFiArMYTO3/tGHXNC/nUJGJ6UVIRH3LsOf+ez84jVsofX
         fFmPsvDL6Hwmb1b50xDXnGNO2pmViC3hduM5OMY/qeMlB71+Zgu/Y4K4AhuJYZmwYdxR
         gBGYlf0Hji+y1ikRt4PoBt5ThjtlO0ru089UnQ5E+lz9MsF4ivDvAgNtbAxcF+614sPl
         pCjw==
X-Gm-Message-State: AFeK/H3LQVMdbizJyl6z0QZ468XTxHw7dSL0VEzrw2EkYfYMqNtowrKdpA4jj5NZiXHQkA==
X-Received: by 10.84.194.1 with SMTP id g1mr23639149pld.98.1490541105082;
        Sun, 26 Mar 2017 08:11:45 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([120.60.141.138])
        by smtp.gmail.com with ESMTPSA id y7sm15598881pfk.93.2017.03.26.08.11.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 08:11:44 -0700 (PDT)
Date: Sun, 26 Mar 2017 20:41:32 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: mawilcox@microsoft.com
Subject: [PATCH] pid_namespace: Remove externs from .c files
Message-ID: <20170326151131.GA14870@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch issue: Externs should be avoided in .c files

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 include/linux/pid_namespace.h | 1 +
 kernel/pid_namespace.c        | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/pid_namespace.h b/include/linux/pid_namespace.h
index c2a989d..5a7e664 100644
--- a/include/linux/pid_namespace.h
+++ b/include/linux/pid_namespace.h
@@ -66,6 +66,7 @@ static inline struct pid_namespace *get_pid_ns(struct pid_namespace *ns)
 	return ns;
 }
 
+extern int pid_max;
 extern struct pid_namespace *copy_pid_ns(unsigned long flags,
 	struct user_namespace *user_ns, struct pid_namespace *ns);
 extern void zap_pid_ns_processes(struct pid_namespace *pid_ns);
diff --git a/kernel/pid_namespace.c b/kernel/pid_namespace.c
index de461aa..37e2b52 100644
--- a/kernel/pid_namespace.c
+++ b/kernel/pid_namespace.c
@@ -311,7 +311,6 @@ static int pid_ns_ctl_handler(struct ctl_table *table, int write,
 	return proc_dointvec_minmax(&tmp, write, buffer, lenp, ppos);
 }
 
-extern int pid_max;
 static int zero = 0;
 static struct ctl_table pid_ns_ctl_table[] = {
 	{
-- 
2.7.4


