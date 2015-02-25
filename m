X-GM-THRID: 2067485687808
X-Received: by 10.194.161.194 with SMTP id xu2mr168363wjb.1.1424840912321;
        Tue, 24 Feb 2015 21:08:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.43.48 with SMTP id t16ls696377lal.55.gmail; Tue, 24 Feb
 2015 21:08:31 -0800 (PST)
X-Received: by 10.112.167.98 with SMTP id zn2mr165290lbb.6.1424840911649;
        Tue, 24 Feb 2015 21:08:31 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x231.google.com (mail-wg0-x231.google.com. [2a00:1450:400c:c00::231])
        by gmr-mx.google.com with ESMTPS id ev8si1036810wib.3.2015.02.24.21.08.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 21:08:31 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) client-ip=2a00:1450:400c:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wggx12 with SMTP id x12so1245576wgg.11
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 21:08:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=e9PgDquIeqO4flCEHRQi6o8EHe8f9m/uGj2qYhVys60=;
        b=azm1gvNS5j5tzQ52aFtQqvPI6L8GDxu6E22KSyfFvCR0Teaz++I3KF5RVO8vA43+n1
         5f6CHrP0+CPIz884VCLfpLAJvY/LcHXi0HEeyrzUOyDzdKyX0u2eqsG/Mthn2RcKppxH
         7oBGXCXHaLnEd1+jWfQVNSGKAZ+yqhaqdcNnmbu6qfz7mTCIt3XQxm9maiLz0b7NfP9x
         0DPUOGYXSR2n2KRLldb4syaJHBy4KiZ0tKsbMPqW5OHMYVXhhbZzuy4SHJ5CdahMqPEe
         zN0jNX4/SP+mH1je0X2HyanF65RDsRWSOOXYPSCdIBDv1jZGPuKmMYku9S1dV538nEmA
         TQZg==
X-Received: by 10.194.200.68 with SMTP id jq4mr2753278wjc.58.1424840911539;
        Tue, 24 Feb 2015 21:08:31 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from localhost ([212.138.130.2])
        by mx.google.com with ESMTPSA id n6sm63079835wjy.8.2015.02.24.21.08.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 24 Feb 2015 21:08:30 -0800 (PST)
Date: Wed, 25 Feb 2015 07:58:25 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH v5 0/6] Staging: emxx_udc: Fix checkpatch.pl warnings
Message-ID: <20150225045825.GA13573@example.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset fixes the following coding style issues found by
checkpatch.pl:
Do not add new typedefs.
Use of volatile is usually wrong.
printk(KERNEL_ERR not prefered.

Changes in v5:
- Fix spelling mistakes
- Justify the removal of volatile
- Replaced pr_err with dev_err when possible
Changes in v4:
- Patchset broken into smaller patches
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


