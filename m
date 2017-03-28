X-GM-THRID: 6402653408704069632
X-Received: by 10.13.224.4 with SMTP id j4mr10488594ywe.44.1490733941734;
        Tue, 28 Mar 2017 13:45:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.81.210 with SMTP id s201ls2731418ita.18.gmail; Tue, 28 Mar
 2017 13:45:41 -0700 (PDT)
X-Received: by 10.99.107.71 with SMTP id g68mr10458060pgc.26.1490733941164;
        Tue, 28 Mar 2017 13:45:41 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id g82si755626pfb.5.2017.03.28.13.45.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 13:45:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id g2so23861430pge.2
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 13:45:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=o4gkvCslB9t7G7e6SksLMu1Uw+889k/TBLz4wnQ5N9s=;
        b=XjPynyHMOA345gjcXXuUlYVklXnHkuwT9obydKY0Ep45PY/RYZQ/cIZCy9p83WZGY8
         cUxx1gHAojrqjOz5kzr+k3mt7VSKh80tL03lWEfodADzipmkv1SRCglw8l7MJRQKzFMj
         34tR3dBSI7egF1nCRKMavTP5Puyx1GiL355s5JWv3RvxUQWXHQCc3L+QdY4BjPQWgPNK
         Mdjz6/0js9uydTdQMDtLhqnSBsWCkJ4+LRWG4eO5EHBooRucwuupsG/iGS+gNqOYQg7q
         ZLBpunhgpmVdy+hf9dReN8ei1TrTh36keT9GRxRlkYJYqTU5yc9z/q2AEjTBi45qUqM2
         yGgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=o4gkvCslB9t7G7e6SksLMu1Uw+889k/TBLz4wnQ5N9s=;
        b=T8vtCnJMVcqU5iTlgzWR9nFrWT/dvVE/mfaywrDOnRqy7DWt2r+07vLT22YG+44Xuy
         QC1LatzpSj/NKNDQlTv41Jdrlag84Tsg8KY2jaEq3vGLXghj+ts2vSkadRLsTtddE7X9
         4p0EKqsjCGFOURFAYyengIMjyxK4+fg9QPxvUOzRM+6qxh0AZuoJhlfz//+PY9zZFLhX
         kii/N1HD2mEwmAloodezAnxPvyAKHCY0Nt3MwgJQmzkPOjJj+/8KwN5xFe+RCrslOmxA
         nD5KO73gLXQjVpUrqIW5DzkmUZyq365BouUGD/TCeesuHrAfZsoXJbeOSd8bi8nAhJaI
         8pDw==
X-Gm-Message-State: AFeK/H1sTPCM2X0GcPcJVZ7lZMV7oYeMHfrKsyXeReiA9oXH/Ko+c8ndXmpPG8VZD59V2Q==
X-Received: by 10.98.221.141 with SMTP id w135mr32661099pff.109.1490733940983;
        Tue, 28 Mar 2017 13:45:40 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x15sm9118250pgc.16.2017.03.28.13.45.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 13:45:39 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 4/5] kernel: pid_namespace: Remove return statement from void function
Date: Wed, 29 Mar 2017 02:15:05 +0530
Message-Id: <20170328204506.16316-5-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170328204506.16316-1-arushisinghal19971997@gmail.com>
References: <20170328204506.16316-1-arushisinghal19971997@gmail.com>

Remove the return statement from void function as is not useful.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 kernel/pid_namespace.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/kernel/pid_namespace.c b/kernel/pid_namespace.c
index 778959ecd5c3..be35c2fe725f 100644
--- a/kernel/pid_namespace.c
+++ b/kernel/pid_namespace.c
@@ -291,7 +291,6 @@ void zap_pid_ns_processes(struct pid_namespace *pid_ns)
 		current->signal->group_exit_code = pid_ns->reboot;
 
 	acct_exit_ns(pid_ns);
-	return;
 }
 
 #ifdef CONFIG_CHECKPOINT_RESTORE
-- 
2.11.0


