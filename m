X-GM-THRID: 4349090594816
X-Received: by 10.180.182.201 with SMTP id eg9mr1710788wic.3.1425243234495;
        Sun, 01 Mar 2015 12:53:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.132 with SMTP id b4ls384965lah.33.gmail; Sun, 01 Mar
 2015 12:53:54 -0800 (PST)
X-Received: by 10.152.88.40 with SMTP id bd8mr3313839lab.0.1425243234028;
        Sun, 01 Mar 2015 12:53:54 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x22b.google.com (mail-wg0-x22b.google.com. [2a00:1450:400c:c00::22b])
        by gmr-mx.google.com with ESMTPS id by11si571303wib.1.2015.03.01.12.53.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 12:53:53 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) client-ip=2a00:1450:400c:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghl2 with SMTP id l2so29858511wgh.9
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 12:53:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=hmYwLyGgB5Q+RYGJH7+es5qzC86HwbuKxdm4PX1l1tI=;
        b=SDNUOWBz7/aacKNAd1yBFIZ1IA1zCzihnuaXjPjWUonHxY5mRcXDDH87vQeNcQV+Wj
         YQhhYFaCS3r+s4N668wjUd9PIFBJ+1TyDKUmDmnS6mOe+wgIgC+ybntAfm3eOC1uxwId
         7ZO7LXmbsVNJN3Qm2nxLbLZBrAOqakzImtX3G35g1lue304vPmT/9m9kFqiTsZ1BnpsF
         uI/UHkNGcjpWcSTshX8yFsfZdawtlgY1FNo33ws0CixDNRt8PpLXS1qk+Vu7y0fhhcWJ
         oqWqEu5kPCEMdVuZWN4P98Mw1EeOxt/rqVm4OEX1DfD5RC/OvZkDWt7QKT6EbHsz/Pxv
         ltZg==
X-Received: by 10.180.109.33 with SMTP id hp1mr28958149wib.33.1425243233895;
        Sun, 01 Mar 2015 12:53:53 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id w8sm16281773wja.4.2015.03.01.12.53.52
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 12:53:53 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id AF3696339E; Sun,  1 Mar 2015 23:53:48 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v9 0/4] emxx_udc: Fix checkpatch.pl warnings
Date: Sun,  1 Mar 2015 23:53:47 +0300
Message-Id: <1425243227-8277-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425030509-19676-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425030509-19676-1-git-send-email-hamohammed.sa@gmail.com>

This patchset fixes the following coding style issues found by checkpatch.pl:
Do not add new typedefs.
Use of volatile is usually wrong.
printk(KERNEL_ERR not prefered.

Changes in v9:
- Edit patches commit msg
- Merged two patches into one "the removal of the use of macro"
- Justify the use of pr_err
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

Haneen Mohammed (4):
  Staging: emxx_udc: Fix do not add new typedefs and remove volatile
  Staging: emxx_udc: Replace custom printk macro ERR with dev_err or
    pr_err
  Staging: emxx_udc: Remove custom printk macro ERR
  Staging: emxx_udc: Clean dev_err() logging

 drivers/staging/emxx_udc/emxx_udc.c | 142 ++++++++++++++++++------------------
 drivers/staging/emxx_udc/emxx_udc.h |  27 ++++---
 2 files changed, 84 insertions(+), 85 deletions(-)

-- 
1.9.1


