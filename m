X-GM-THRID: 4349090594816
X-Received: by 10.180.83.168 with SMTP id r8mr352832wiy.6.1425032810981;
        Fri, 27 Feb 2015 02:26:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.78.101 with SMTP id a5ls92439wix.6.canary; Fri, 27 Feb
 2015 02:26:50 -0800 (PST)
X-Received: by 10.194.11.70 with SMTP id o6mr1944487wjb.6.1425032810188;
        Fri, 27 Feb 2015 02:26:50 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x229.google.com (mail-wg0-x229.google.com. [2a00:1450:400c:c00::229])
        by gmr-mx.google.com with ESMTPS id ev8si76747wib.3.2015.02.27.02.26.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 02:26:50 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) client-ip=2a00:1450:400c:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x229.google.com with SMTP id y19so19071925wgg.13
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 02:26:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=YRkcVu7DUws+zMbI8abfTda5KCo+GWxbztY2lw8eEsc=;
        b=PvBwqt+Zx+RD57j6DcNi7MRZ6RwkO97bXCpCw7aqGRZy+fRy0rFb9nsxi6VE8axYLW
         DrSnOmKR1CVPpA40kzl+n3uTXHljitKn7sCZNA9OqW0mPZxZBYLshnTydEFFvez/qzZM
         bruroH6Rgb1mtrEgbO3NAGjyXdmyjoqdeDySXauckAgl772WdneGmN/vohSeYF3TWaJz
         Z9g1VhwVXfaYPV2AoFTWcuPGuFCHPR/tg/c6wwiCOeQG6bS6MvpYr/Yki2Q2qCl30955
         OXdGAK7YvxXcdeoW+LGsbAzLtIlrfN/6bhxpt0bZEc/mGWjNUejrcuaeZALeLEck5Th2
         VqvQ==
X-Received: by 10.194.47.201 with SMTP id f9mr8019519wjn.17.1425032810084;
        Fri, 27 Feb 2015 02:26:50 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id w4sm1871508wix.20.2015.02.27.02.26.48
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 02:26:49 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id C6ADC6337C; Fri, 27 Feb 2015 13:26:47 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v8 0/5] Staging: emxx_udc: Fix checkpatch.pl warnings
Date: Fri, 27 Feb 2015 13:26:45 +0300
Message-Id: <1425032805-20648-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1425030785.git.hamohammed.sa@gmail.com>
References: <cover.1425030785.git.hamohammed.sa@gmail.com>


This patchset fixes the following coding style issues found by checkpatch.pl:
Do not add new typedefs.
Use of volatile is usually wrong.
printk(KERNEL_ERR not prefered.

Changes in v8:
- Edit first patch subject line.
Changes in v7:
- Add missing first patch in v6: removal of typedefs and volatile. 
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
  Staging: emxx_udc: Fix do not add new typedefs and remove volatile
  Staging: emxx_udc: Replace custom printk macro ERR with pr_err
  Staging: emxx_udc: Replace custom printk macro ERR with dev_err
  Staging: emxx_udc: Remove custom printk macro ERR
  Staging: emxx_udc: Clean dev_err() logging

 drivers/staging/emxx_udc/emxx_udc.c | 142 ++++++++++++++++++------------------
 drivers/staging/emxx_udc/emxx_udc.h |  27 ++++---
 2 files changed, 84 insertions(+), 85 deletions(-)

-- 
1.9.1


