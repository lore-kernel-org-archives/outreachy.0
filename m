X-GM-THRID: 6402653408704069632
X-Received: by 10.36.121.66 with SMTP id z63mr2866203itc.38.1490733931890;
        Tue, 28 Mar 2017 13:45:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.192.3 with SMTP id q3ls5101664iof.29.gmail; Tue, 28 Mar
 2017 13:45:31 -0700 (PDT)
X-Received: by 10.99.110.73 with SMTP id j70mr10749033pgc.143.1490733931388;
        Tue, 28 Mar 2017 13:45:31 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id i189si409970pfg.3.2017.03.28.13.45.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 13:45:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 81so23905342pgh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 13:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=eNwujfPUUpUlujVmTK86oFByMkH5GSnjnKKWybgzLrQ=;
        b=hsDgO1ArbffJ2VY2g0+f644FTiVJFemVVo3qHQHGN4Zouqm91x++KBGvOL4dmlkKks
         QnET5Y6XwxO+Fp0zONzvjOB7jqfsWkvUrwAcx7KVmi/YTIyNdIj1AOnQMa2QmqGK/oKO
         c5HNXPCja+UoTLew9va0q260geNbIRLPjASm2pimaQSLXP9EfVwdi7BDCKkCHbdgo5jr
         B2QAc2IvnUtl8jF8Bz8E156yFJaeD+bCk9XtBu/VAmpUeAsGGUkRs2lsq3NmuD6P9Zs6
         r0Wmj8u+qXODqlpqPqSqEWXV6F1XadnQ5QKTz5M/jtUIjI71bfjA3KJXDau2xYoDR8Vv
         9GTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=eNwujfPUUpUlujVmTK86oFByMkH5GSnjnKKWybgzLrQ=;
        b=DH40S0XSHQMQ8G/9+he/euSYYgziYbtXRb4wIzcHbMozKINRcyACGH7AeeFKUVx5Md
         hGM2BmUr8EuIZThVW+Lj2+gPnIEeTdu1GXGl5KUBSI41hSvlI3r+NEtxD+fH66NNVsjt
         sS0S4suBsG6D0xLK6wTYxiut7zlhwa91FlPhiooz4d0mUMcGDKu+tOt8lSRJ7DqmSWb6
         m2Z7oT9Yw/NugfokfpX7fIaODlKBcoSnS/WmYJdc+M41QPXkiAbjyqycA/tgeKqlaNIJ
         9OumD1wDSZh/Hi8P1LFpp+COtY7VfmeMKUDprcdKDJd++i4413tUNhUiNFfZOQlS7OBj
         A1GA==
X-Gm-Message-State: AFeK/H2A+ArFzyunwF+DJ6N3fQJKdfxL9bg70InIzNKytmQLvV1BB56wzvYeIaj7yEwdrA==
X-Received: by 10.84.236.1 with SMTP id q1mr14471998plk.135.1490733931235;
        Tue, 28 Mar 2017 13:45:31 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id c1sm9072705pfk.112.2017.03.28.13.45.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 13:45:30 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 2/5] kernel: pid.c: Add space before the open parenthesis
Date: Wed, 29 Mar 2017 02:15:03 +0530
Message-Id: <20170328204506.16316-3-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170328204506.16316-1-arushisinghal19971997@gmail.com>
References: <20170328204506.16316-1-arushisinghal19971997@gmail.com>

Add the space before open parenthesis as reported by checkpatch.pl

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 kernel/pid.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/pid.c b/kernel/pid.c
index 59ec7a671e06..5822142ca92a 100644
--- a/kernel/pid.c
+++ b/kernel/pid.c
@@ -266,7 +266,7 @@ void free_pid(struct pid *pid)
 		struct upid *upid = pid->numbers + i;
 		struct pid_namespace *ns = upid->ns;
 		hlist_del_rcu(&upid->pid_chain);
-		switch(--ns->nr_hashed) {
+		switch (--ns->nr_hashed) {
 		case 2:
 		case 1:
 			/* When all that is left in the pid namespace
-- 
2.11.0


