X-GM-THRID: 6752359295964151808
X-Received: by 2002:a25:50c8:: with SMTP id e191mr10043235ybb.152.1572156161827;
        Sat, 26 Oct 2019 23:02:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:5986:: with SMTP id n128ls1500713ywb.7.gmail; Sat, 26
 Oct 2019 23:02:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyHwXOy091DbpsIZXPgjrO2nKVj8S2vYCTi/u6eI3/lAkLIiaUxEM+Newdvy3vt8E+xMu9X
X-Received: by 2002:a0d:e808:: with SMTP id r8mr8488047ywe.275.1572156160152;
        Sat, 26 Oct 2019 23:02:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572156160; cv=none;
        d=google.com; s=arc-20160816;
        b=xAVfHS2BgJVjCz8gStw3JVJCmh7qOVxqkrFYIZm0X3nJrWG0RgXRvACKVNmPoa/4qu
         XVnj1MJZWGkBIYSFlFBDviO/st4WsI3z4iUHRFbHHu5yixsuQu4d58Qjw3Z6mYC9XsxD
         3je2/0EnzL2xop1xB+ZjBUClsCY6ZdRHQbLpGbCIq1KirTEismXVHDMwpx0wREKb/UaY
         AVC0LutB+DFga8HAp+qcQ8lvVKgAlLHZuvuWoE/qiSH4sqdmSwnnikp6evLPOP+mPRzN
         q95nVF+zl1+3hx6lvKzYqkFmHUAn3dgXoeRUcxJR6/mLvyA8w1XoZEEeL+3CCeN6Afoq
         w1yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=zOM/w5isgtX3OsryjIvj3kZsheHcp1tS+MNtaQisVxs=;
        b=hiSlP1mu1BudERNuKbOxP5CwVdmhVxleXjwrZddSz0UrrvH6pJ9TLOk+mg8IcdtrTf
         ruXsUJFxTmnx0v9BRAXUKMc0X+9nGlHcMNgygJD+E3CVT2qK1yVVasagvDAU2I7c1U/w
         FnAptKPPb+dIAf7+DdZZPcICpT4LJ/mozTgulC3IHF4h1rojFOJHRpoUPE3pyjf4b4wA
         rKYWYBB27NkvKvsz3e25ZZYlU2Qe/Csrm8RtTKS99YbEufNzLjGrzWyd9FwKFwxXZKq9
         7YJNkF9ed+6FEKBF621SIgUac7MJLpp4G1Z3+mcEhZWLsG8IomEFcmEOx7GcrmaEUrEm
         KQiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=rScK2rbT;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com. [2607:f8b0:4864:20::e41])
        by gmr-mx.google.com with ESMTPS id x7si496207ywd.5.2019.10.26.23.02.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2019 23:02:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e41 as permitted sender) client-ip=2607:f8b0:4864:20::e41;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=rScK2rbT;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vs1-xe41.google.com with SMTP id a143so3441270vsd.9
        for <outreachy-kernel@googlegroups.com>; Sat, 26 Oct 2019 23:02:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=zOM/w5isgtX3OsryjIvj3kZsheHcp1tS+MNtaQisVxs=;
        b=rScK2rbTGSok1+AvqrKgYExgpgRXou633kouWnnXwpxRSHIoizd0k8v47TPeTlo6jS
         +fGveUCEoIqUTiFoYOuCqPWZWLMTsHCzSi/30Gkng35eCDYO/5uU2D2RzadXhZEReHEC
         Fk7vsqcO7EOoL1zqst52zWf6/bDv8pilhcPJW0+UAG9b3wlFsKgqSmsL1UFMZLwmBy/0
         +A7ZzzL5vSG/iJlU4odVf3O01xZW5/l+zIYvwEerSAJMtdvSyhaofMWUCnUATI7wxkfw
         7qodTlkwj9mKx9HVMXDd9jERlrK/RNpvo2julnsoZpayJcSQiGWmLni1ZOV09kxDLpwh
         WmEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=zOM/w5isgtX3OsryjIvj3kZsheHcp1tS+MNtaQisVxs=;
        b=aEQ066v9Som3Y6GklGdvqLqmG936589P+YsNgViPI4R4CQIXWRL8go5LdO3uapds0c
         DBOaf2TW17+q/1HpvZOom0iOZ4sj3MO27L1KUm/e9fxDKQQojzbZep2tQux0I/fopCQN
         5vsGgOXRs47Nt3HdnLqORMrqnPiK+BzHef3ms4kSsGXFKuHbhIvm3vJfWzKWTAtz9rkU
         bk7IzSRVjhCKAceDZVHqR9I/heQkiLRxVdwvubqHs6fuq757XkPegR+7WRBVVrBZZck3
         ddexwT0euHL1NeOhisVT6rmQXQzRcTrP2EidGhQpfmGtDVBr18V5EOtg8Av/97ehwora
         KSYw==
X-Gm-Message-State: APjAAAX5WLD+ogfNZ30sx89enCQZ91Ea/OclAazJkJ+11uY8pnIfZMjp
	qroxRYtmWLg83b10+rIwlCEN9iwluwhukg==
X-Received: by 2002:a67:ab07:: with SMTP id u7mr6240946vse.172.1572156158895;
        Sat, 26 Oct 2019 23:02:38 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([172.97.41.74])
        by smtp.gmail.com with ESMTPSA id t13sm3076877vkc.6.2019.10.26.23.02.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2019 23:02:38 -0700 (PDT)
Date: Sun, 27 Oct 2019 06:02:37 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org
Subject: [PATCH] staging: ks7010: Fix line ending with a '('
Message-ID: <20191027060237.GA26854@linux-kernel-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

checkpatch.pl message:
"CHECK:OPEN_ENDED_LINE: Lines should not end with a '('"

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/ks7010/ks_hostif.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index 2666f9e30c15..ab731a2f7bb3 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -75,9 +75,8 @@ static void ks_wlan_hw_wakeup_task(struct work_struct *work)
 
 	if (ps_status == PS_SNOOZE) {
 		ks_wlan_hw_wakeup_request(priv);
-		time_left = wait_for_completion_interruptible_timeout(
-				&priv->psstatus.wakeup_wait,
-				msecs_to_jiffies(20));
+		time_left = wait_for_completion_interruptible_timeout(&priv->psstatus.wakeup_wait,
+								      msecs_to_jiffies(20));
 		if (time_left <= 0) {
 			netdev_dbg(priv->net_dev, "wake up timeout or interrupted !!!\n");
 			schedule_work(&priv->wakeup_work);
-- 
2.17.1


