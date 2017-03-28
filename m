X-GM-THRID: 6402653408704069632
X-Received: by 10.157.29.205 with SMTP id w13mr6748588otw.104.1490733946264;
        Tue, 28 Mar 2017 13:45:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.19.61 with SMTP id f58ls17513453ote.36.gmail; Tue, 28 Mar
 2017 13:45:45 -0700 (PDT)
X-Received: by 10.13.218.66 with SMTP id c63mr9531430ywe.123.1490733945944;
        Tue, 28 Mar 2017 13:45:45 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si891035pfx.8.2017.03.28.13.45.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 13:45:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id o123so21166932pga.1
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 13:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=EJlwJ6jZND4p5xlur6tzO4Y9DGGj8pg6KiNKbD3Dphg=;
        b=VA1ZN4bGno5FU2WMY1ViBKUuf9WUH23SOPy9fTusJ2VcIe79cikX46bUtNgG84hixP
         rsVFQC6D5EYCLk8T5jsZF9EKypGvFGQj6AH4ih/CAf4vZGk7k6/AjwEH6hEnV7zBEDUv
         2GHuVlwmZ71etqE3U5votBHxdpJ6q7JK5EbZsus5FgpmdjDFsVm7qwtBf5QxRXrv03Le
         uurzZp9UyrU4TwqPqXFD+nygbqAdbOdbrN6qQSUvn2Zbhn2wwg7JpqOLMI1wT+NzhxOS
         GMpti+ju9DodavlKPftDtLp6shwA6O3ACIY73fUQ8YRYS1FoZA44Qeog5BUJ6oihvzua
         fp2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=EJlwJ6jZND4p5xlur6tzO4Y9DGGj8pg6KiNKbD3Dphg=;
        b=qMquW4Nk4J+bAL4mC/vVn49im1hujUWLRhVHbEXozHUKRCNEu+6xpUJv6bfVVI2a8F
         rr+ESiYjVZFw80TS4JUXpse2ziKfuJkjPuo0D9iE47lmci5RiB8FNjB4JGjoDqgjVhcg
         7e/pBhGI/J2Fs7bL1smPcGZU1B4i8VGMGpIisBGEidlLFPgx/f2CnFYSk5koZwpEnFPp
         Z4hyjzMP0W7ZknatmHj4TcYYMSV5vHx6FCWBqdLfJVx6ZmR1OgKylwHBjYRB/vQfmNBx
         022FMscPIDVsoLoIO9QeErQzAV6BScKu9H4neQQqELIWy4EyL2kM42VopeuKeg/I7yDF
         aqDA==
X-Gm-Message-State: AFeK/H3MruW6Y4kvHzuiLSs5RL+101NYmMwINW4x17l+6uLDx5ooIjF7CGioJnZl8ec6TA==
X-Received: by 10.98.73.155 with SMTP id r27mr32922410pfi.52.1490733945726;
        Tue, 28 Mar 2017 13:45:45 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s27sm9146026pfk.39.2017.03.28.13.45.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 13:45:44 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 5/5] kernel: pid_namespace.c: Do not initialise statics to 0.
Date: Wed, 29 Mar 2017 02:15:06 +0530
Message-Id: <20170328204506.16316-6-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170328204506.16316-1-arushisinghal19971997@gmail.com>
References: <20170328204506.16316-1-arushisinghal19971997@gmail.com>

Do not initialise statics to 0.
static variable by default initialise to 0,so no need to explicite
initialisation.
This issue was found by checkpatch.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 kernel/pid_namespace.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/pid_namespace.c b/kernel/pid_namespace.c
index be35c2fe725f..1bfbee50177b 100644
--- a/kernel/pid_namespace.c
+++ b/kernel/pid_namespace.c
@@ -314,7 +314,7 @@ static int pid_ns_ctl_handler(struct ctl_table *table, int write,
 }
 
 extern int pid_max;
-static int zero = 0;
+static int zero;
 static struct ctl_table pid_ns_ctl_table[] = {
 	{
 		.procname = "ns_last_pid",
-- 
2.11.0


