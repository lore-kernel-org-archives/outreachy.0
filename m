X-GM-THRID: 6401819323480932352
X-Received: by 10.200.49.238 with SMTP id i43mr7745724qte.21.1490643988432;
        Mon, 27 Mar 2017 12:46:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.40 with SMTP id j40ls1348095iod.26.gmail; Mon, 27 Mar
 2017 12:46:27 -0700 (PDT)
X-Received: by 10.99.178.81 with SMTP id t17mr8059073pgo.45.1490643987576;
        Mon, 27 Mar 2017 12:46:27 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id r66si255494pfb.7.2017.03.27.12.46.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 12:46:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id o123so12656979pga.1
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 12:46:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=faPSjlRF7NR9YIPxzC3X3LUcACfxD71MOdMM0ycnj9I=;
        b=nvuqXzWT0adQyrJa+bAU/DU8mtQtDwbiug9MkXcBOHpgj+NfIXDVQkf8iG6uxga5kc
         mjIopzY+XopQ/Njh6i3mkzri7fjrdiJSW7mUZg7B9YUa9bp4Ve/yTtct0GHsQNTaxFX8
         Cq9aKOJs9fYlj1iVzxk1sTDj10Z9td+gb1IpRQNYvfiZ0OnRLSmHiiWZWETF15tzonzU
         W53eCALpacFYGNF+mb+8XmmcYr9nuygbzCMUfV1h29mNuhcekfZGrOH0HsZtAWhXgMp9
         q/qCqD749+GHv4+JoaoYnVWGLRgtYlSkAeBkv9zUQDOcR7T/ianqp5jSVC7zMEqwNYPP
         puEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=faPSjlRF7NR9YIPxzC3X3LUcACfxD71MOdMM0ycnj9I=;
        b=bbMklPCOFkLL7HbdDGoNZ4TAbjBgbHEexUhcyU3kWU93ugPiUV/h3YockfoDyvrCiC
         iXuZoI/AU9vqGVKoi9JJCAYEMxjLXR4zvohVqFxGMloHx/tKca+bm/9Ms7dCb+6MrtiW
         VV00Hp/I2tcU8TmRkMThG3M2MzOgtWzhQRiVXwt2m+ZFWvW+56WGlF40ucLwl+jYNQuK
         E4c3knZH1uZYakH87e97x2c+xie/RtkiMjFAHQqQAeH2AVDMaIGBygk1wiBYslKGUnJ2
         vcSWnlkpXSrAUJgOfhYPMpl/zJtjKYOUi9IeEug9J8VbIwr0zSpjMAvKH96CyUTwQ1Wz
         dSUg==
X-Gm-Message-State: AFeK/H3HV/dHJGCYn0TlzxUz/TbF1IHrmxYkZlhkIulPu0DlVDvVLssvZqc2D2sdSBvU7Q==
X-Received: by 10.84.215.213 with SMTP id g21mr4181177plj.159.1490643987392;
        Mon, 27 Mar 2017 12:46:27 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([47.9.128.122])
        by smtp.googlemail.com with ESMTPSA id x15sm2755339pgc.16.2017.03.27.12.46.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Mar 2017 12:46:26 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel@googlegroups.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2 3/3] kernel: pid_namespace: Remove return statement from void function
Date: Tue, 28 Mar 2017 01:15:41 +0530
Message-Id: <b08347650c5b59564ce560ce6e473c9be7dcac46.1490643620.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1490643620.git.gs051095@gmail.com>
References: <cover.1490643620.git.gs051095@gmail.com>
In-Reply-To: <cover.1490643620.git.gs051095@gmail.com>
References: <cover.1490643620.git.gs051095@gmail.com>

zap_pid_ns_processes is a void function and the return
statement at the end is not useful.

Found with checkpatch.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 kernel/pid_namespace.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/kernel/pid_namespace.c b/kernel/pid_namespace.c
index 9d4c53d..0afec4c 100644
--- a/kernel/pid_namespace.c
+++ b/kernel/pid_namespace.c
@@ -288,7 +288,6 @@ void zap_pid_ns_processes(struct pid_namespace *pid_ns)
 		current->signal->group_exit_code = pid_ns->reboot;
 
 	acct_exit_ns(pid_ns);
-	return;
 }
 
 #ifdef CONFIG_CHECKPOINT_RESTORE
-- 
2.7.4


