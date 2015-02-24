X-GM-THRID: 2067485687808
X-Received: by 10.194.178.234 with SMTP id db10mr2167386wjc.2.1424787529695;
        Tue, 24 Feb 2015 06:18:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.97.105 with SMTP id dz9ls787647wib.4.gmail; Tue, 24 Feb
 2015 06:18:49 -0800 (PST)
X-Received: by 10.194.142.174 with SMTP id rx14mr2175047wjb.4.1424787529275;
        Tue, 24 Feb 2015 06:18:49 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x241.google.com (mail-wi0-x241.google.com. [2a00:1450:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id ta1si920180wic.1.2015.02.24.06.18.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 06:18:49 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) client-ip=2a00:1450:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f193.google.com with SMTP id r20so10787304wiv.0
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 06:18:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=e7eBS2+/sN47xYfIZwfVV0uijhyIq9M0qXq25phSdCI=;
        b=ffWmrgB/N68HnNQRG06qzzIAXvTsx1HKHboZjNXQ9krTcPtRdGobhyKIxAfFhq8RZD
         lL4yeZcV/kdif7uCCEOSLoKL4EzDSyX0c5FaHq5oi5g/oqekprVRwAb9EX8DNHwJUUIm
         k1nZDnjYFMBRonFTpwjy32GiLCiMz1jTZwRfKgk9153z8UcebOx9/7cIXIpsxNlUxqYU
         ypmzlvwh5R/iUyr7x9duzNEiCbx2Cc5S2D6iDfpSv67JOzwo47XK9oscC+xT2WNmSDcp
         B2SjBjyBZkvJNe9N1UbKwULCVw4SvQAthnm1j2j7JFsqJ2LJW2MsoF7CP8Ck/cnqCMFa
         Un6w==
X-Received: by 10.194.158.234 with SMTP id wx10mr33624835wjb.23.1424787529101;
        Tue, 24 Feb 2015 06:18:49 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.205])
        by mx.google.com with ESMTPSA id nb9sm20767003wic.3.2015.02.24.06.18.46
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 06:18:48 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id A5BE763386; Tue, 24 Feb 2015 17:18:40 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v5 0/6] Staging: emxx_udc: Fix checkpatch.pl warnings
Date: Tue, 24 Feb 2015 17:18:34 +0300
Message-Id: <cover.1424786861.git.hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset fixes the following coding style issues found by checkpatch.pl:
Do not add new typedefs.
Use of volatile is usually wrong.
printk(KERNEL_ERR not prefered.

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

Haneen Mohammed (6):
  Staging: emxx_udc: Fix do not add new typedefs
  Staging: emxx_udc: Remove volatile from union usb_regs_access
  Staging: emxx_udc: Replace custom printk macro ERR with pr_err
  Staging: emxx_udc: Replace custom printk macro ERR with dev_err
  Staging: emxx_udc: Remove custom printk macro ERR
  Staging: emxx_udc: Clean dev_err() logging

 drivers/staging/emxx_udc/emxx_udc.c | 142 ++++++++++++++++++------------------
 drivers/staging/emxx_udc/emxx_udc.h |  27 ++++---
 2 files changed, 84 insertions(+), 85 deletions(-)

-- 
1.9.1


