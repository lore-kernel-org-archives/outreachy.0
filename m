X-GM-THRID: 6402619199272779776
X-Received: by 10.28.154.207 with SMTP id c198mr710533wme.5.1490725949849;
        Tue, 28 Mar 2017 11:32:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.74.84 with SMTP id x81ls1382033lfa.29.gmail; Tue, 28 Mar
 2017 11:32:29 -0700 (PDT)
X-Received: by 10.46.88.70 with SMTP id x6mr692426ljd.22.1490725949159;
        Tue, 28 Mar 2017 11:32:29 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id p144si308390wme.2.2017.03.28.11.32.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 11:32:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id z133so1183963wmb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 11:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=7rdWZYE+W0DSm5no7x0guYkIMo59tpazAJy2HBjgAL0=;
        b=URlBjSj14t8LSRyylQ2wyUrhgkfsNgSaFs/0CZ7ppDJ31r5wCa5dk4nSyhSBCxSuOd
         JhU0cPSvqEWMyLWBzGAoMyrvTCQRqFJZDIA6we+jXRzVh5El1VAVYtnsDWH9JyYHkhG1
         1wiZwwSGB30p9osQ1qs5RlChncEniYL9be8NPOG/L0whhA/qaMXaKBMgZT37aMK/b9FO
         6TqBufM3mhrxNcBhFgvYbmVvmC3hgtrpV7Xkjr4vmXRNCaOHce0SgmuzWganCJzPTA1p
         7DPYddiRifDPRr5+VvWqyJFMiBwOk1YRyDb92hr4g3NnWSaX7/+UkaWpehY/c7oOHo6+
         MGRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7rdWZYE+W0DSm5no7x0guYkIMo59tpazAJy2HBjgAL0=;
        b=jlG8Bo3Ws445PFLlu5S2Y2YYDa5EzNndRiBwIFiEzPA9i4xrmuFOSPtecXW90Z07Q1
         R65UNbcsTl1EYCKpx1mDL+q6nsnOJsNrZs6RrNWUUroTBw5Z3yL2DcuTH2G/3GrwcIXn
         ATTX4NDe+Mkwx5xpgYe/E2cpzSVa806rGgX2SER8oRUS2C9+JDE4tH+ue9+taT1L6WB2
         MZpx1yjVJIU+SHS+qbpxrkz0wVMwbk+b5qKqAAIL+c1hO9aEbc1SuOQYPv9JIG7xT3xT
         u4A8sdhtSZNpO/XmormG/Ouvy8lrmRxujx6ePZG5q6q4AOfaqQHICRcufhvSmGdNH3GF
         gXow==
X-Gm-Message-State: AFeK/H0+WnkjIktb3j6qSnLpM4z292zVXtN/wABH912Ky/OaZaeVosBSCDi956Z2mboGWg==
X-Received: by 10.28.11.69 with SMTP id 66mr16625056wml.38.1490725948936;
        Tue, 28 Mar 2017 11:32:28 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8160:a9a:a95b:ae25:abef:f637])
        by smtp.gmail.com with ESMTPSA id 43sm5900154wry.45.2017.03.28.11.32.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 11:32:27 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: mingo@redhat.com,
	peterz@infradead.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	corbet@lwn.net
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] sched: core.c: Fix outdated comments
Date: Tue, 28 Mar 2017 21:32:26 +0300
Message-Id: <20170328183226.2793-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

In d8ac897137a2 (sched/core: Add wrappers for lockdep_(un)pin_lock()), 
the prototype for try_to_wake_up local() was changed, but the kerneldoc 
comment was not updated, resulting in these warnings in the documentation 
build:

.kernel/sched/core.c:2085: warning: Excess function parameter 'cookie'  description in 'try_to_wake_up_local'

.kernel/sched/core.c:2085: warning: No description found for parameter 'rf'

Update the comment to match the new 'rf' parameter.

Fixes: d8ac897137a230ec351269f6378017f2decca512
Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 kernel/sched/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index 9563838..0d03755 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -2074,7 +2074,7 @@ try_to_wake_up(struct task_struct *p, unsigned int state, int wake_flags)
 /**
  * try_to_wake_up_local - try to wake up a local task with rq lock held
  * @p: the thread to be awakened
- * @cookie: context's cookie for pinning
+ * @rf: runqueue flags
  *
  * Put @p on the run-queue if it's not already there. The caller must
  * ensure that this_rq() is locked, @p is bound to this_rq() and not
-- 
2.9.3


