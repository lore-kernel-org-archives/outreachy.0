X-GM-THRID: 2067485687808
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e2f8e6cdb7b38af
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.142.174 with SMTP id rx14mr910680wjb.4.1424647787791;
        Sun, 22 Feb 2015 15:29:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.6.42 with SMTP id cr10ls515870lad.91.gmail; Sun, 22 Feb
 2015 15:29:47 -0800 (PST)
X-Received: by 10.112.144.130 with SMTP id sm2mr942023lbb.9.1424647787335;
        Sun, 22 Feb 2015 15:29:47 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x243.google.com (mail-wi0-x243.google.com. [2a00:1450:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id l8si750484wia.0.2015.02.22.15.29.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 15:29:47 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::243 as permitted sender) client-ip=2a00:1450:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::243 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x243.google.com with SMTP id bs8so6211728wib.2
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 15:29:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ZW+HYs7/xr8BAYFC4y1ZNUgLM9tJfMb7/8xTN5S5Vd0=;
        b=csZFuI4uWirB8ETH+a3+LdUuzX+CpQP0xdINuAUEL/5Y5OSpI1PDVNWxkEpA6uTvoR
         6qTn01m0SfMTmHFSwvryEelyC3WiSxo0La/WHXPMpLfBqi8zQuilzC0Cw84uK1Lg8Bsa
         toEb2WiYZnQ/2FSOjUov9OakH9gS06bIXSsv8xxahoFTmZOYRsGUycztoV+NoXGx3mJi
         mONOwcUAyiAxnnNKBi6axqJKI5JhcaHRSVMc50I+sViY848+yBqRxPh5twwezjQmPbZq
         Qsjg8e+RzaGCjUzOkF6uP+jhyP0hCYJoq6oHmHAyroM70P4r4IWwAhCV2MqLLzFGaATr
         bTWg==
X-Received: by 10.194.216.138 with SMTP id oq10mr16879996wjc.133.1424647787234;
        Sun, 22 Feb 2015 15:29:47 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([95.187.195.53])
        by mx.google.com with ESMTPSA id lx10sm21325340wjb.17.2015.02.22.15.29.45
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 15:29:46 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 0C800632BF; Mon, 23 Feb 2015 02:29:39 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v4 0/6] Staging: emxx_udc: Fix checkpatch.pl warnings
Date: Mon, 23 Feb 2015 02:29:37 +0300
Message-Id: <cover.1424645871.git.hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset fixes the following coding style issues found by checkpatch.pl:
Do not add new typedefs.
Use of volatile is usually wrong.
printk not prefered.

Changes in v4:
 - Patchset broken into smaller patches
Changes in v3:
 - create patchset from two patches
Changes in v2:
 - First patch reversion

Haneen Mohammed (6):
  Staging: emxx_udc: Fix do not add new typedefs
  Staging: emxx_udc: Remove volatile from union usb_regs_access
  Staging: emxx_udc: Replace custom printk micro ERR with pr_err
  Staging: emxx_udc: Replace custom printk micro ERR with dev_err
  Staging: emxx_udc: Remove custom printk micro ERR
  Staging: emxx_udc: Clean dev_err() logging

 drivers/staging/emxx_udc/emxx_udc.c | 140 ++++++++++++++++++------------------
 drivers/staging/emxx_udc/emxx_udc.h |  27 ++++---
 2 files changed, 83 insertions(+), 84 deletions(-)

-- 
1.9.1


