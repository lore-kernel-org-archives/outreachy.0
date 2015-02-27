X-GM-THRID: 4349090594816
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8f6db519be982188
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.95.67 with SMTP id di3mr451478wjb.0.1425031323137;
        Fri, 27 Feb 2015 02:02:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.21.233 with SMTP id y9ls142769lae.9.gmail; Fri, 27 Feb
 2015 02:02:02 -0800 (PST)
X-Received: by 10.112.146.65 with SMTP id ta1mr1929394lbb.19.1425031322656;
        Fri, 27 Feb 2015 02:02:02 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x22f.google.com (mail-we0-x22f.google.com. [2a00:1450:400c:c03::22f])
        by gmr-mx.google.com with ESMTPS id o3si75909wib.2.2015.02.27.02.02.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 02:02:02 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) client-ip=2a00:1450:400c:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22f.google.com with SMTP id q59so18967402wes.1
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 02:02:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=pEIVONhFyfDSJ2EUDcHAP+8M7oXudjNbzlTPgVPQjwI=;
        b=ME2E/iWfgD0rF37lkqCCbzvzcidgq63fWahgghi6Poqp9N0/8+DpwBzZSaEiXKJLG6
         rGbd862+gkmKhyAOe0hXOGzFSn5RtRG/b78RLY5AJL+pitEyzY1mV7tWJMfb1qa6C65t
         hwk8E2r3T6AdotsAaGyNm3iE7iS9Q4RYA6e2gFgeUyz5mXQtmB4AUwkjb10E20qZHb6n
         uUkWb1uu6y1+hdDzlAbyfcMpeja3/Dygxolqo/yPArTz7S2kDhYcuoJ7eOB71ffw/puA
         gLJboQZqiMHn9WX0EZuxmcI6jYizdnooZRQ/kG2OIRIhNHffwtYa7zRG6+gz6FC5kagi
         vp3A==
X-Received: by 10.194.192.104 with SMTP id hf8mr26263374wjc.44.1425031322538;
        Fri, 27 Feb 2015 02:02:02 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id bo1sm5223226wjb.15.2015.02.27.02.01.58
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 02:02:01 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id D75B36337C; Fri, 27 Feb 2015 13:01:55 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v7 0/5] Staging: emxx_udc: Fix checkpatch.pl warnings
Date: Fri, 27 Feb 2015 13:01:54 +0300
Message-Id: <cover.1425030785.git.hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425030509-19676-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425030509-19676-1-git-send-email-hamohammed.sa@gmail.com>

This patchset fixes the following coding style issues found by checkpatch.pl:
Do not add new typedefs.
Use of volatile is usually wrong.
printk(KERNEL_ERR not prefered.

Changes in v7:
- Add missing first patch in v6 removal of typedefs and volatile.
Changes in v6:
- Merged two patches into one: remove typedef and volatile.
- Justified the use of pr_err instead of dev_err.
Changes in v5:
- Fix spelling mistakes
- Justify the removal of volatile
- Replaced pr_err with dev_err when possible
Changes in v4:
- Patchset broken into smaller pathces
Changes in v3:
- Create patchset from two patches
Changes in v2:
- First patch reversion

Haneen Mohammed (5):
  Staging: emxx_udc: Fix do not add new typedefs remove volatile
  Staging: emxx_udc: Replace custom printk macro ERR with pr_err
  Staging: emxx_udc: Replace custom printk macro ERR with dev_err
  Staging: emxx_udc: Remove custom printk macro ERR
  Staging: emxx_udc: Clean dev_err() logging

 drivers/staging/emxx_udc/emxx_udc.c | 142 ++++++++++++++++++------------------
 drivers/staging/emxx_udc/emxx_udc.h |  27 ++++---
 2 files changed, 84 insertions(+), 85 deletions(-)

-- 
1.9.1


