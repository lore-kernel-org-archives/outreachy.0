X-GM-THRID: 2067485687808
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e2f8e6cdb7b38af
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.81.34 with SMTP id w2mr197639wix.2.1424839669244;
        Tue, 24 Feb 2015 20:47:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.7.75 with SMTP id da11ls703523lad.95.gmail; Tue, 24 Feb
 2015 20:47:47 -0800 (PST)
X-Received: by 10.152.19.100 with SMTP id d4mr155913lae.7.1424839667545;
        Tue, 24 Feb 2015 20:47:47 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id cl5si1041945wib.3.2015.02.24.20.47.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 20:47:47 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f179.google.com with SMTP id ex7so2225628wid.0
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 20:47:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=58EN+Hx9lNCFKep7C5OyhWrZHGUQW0wgPda1gD16cVQ=;
        b=LPDHw2xL/l4O3sNK2YYpnCCwzLxnl00yXXjp3foRLFyNyJH+/NGm8CcHqCenvc/p0/
         wAYOLke4RuwfZl73UU7cazdrUCtZeOHd5lZ83xlw77rka8UYtsGb/gyTcUU+niFfF9hO
         impHyALHkPr6o4PmxImBLzMdO/id1ehS+FGFqYJSogbx3f3dzhue348wvbHPvWn8bwcX
         vmmM8sI8ExAak4bnM9lzUCYtWkIYe+3sivSAmIVbc/vXAmqd3my1Bg5V5W0ULHmZz2pE
         1y+eXj0sHR78D8j2YpxPM52DdXwLrzSgrHeVuMXc2ogbZp0l2akbKM+19zo+fowRiwWk
         4S+Q==
X-Received: by 10.180.77.48 with SMTP id p16mr35895109wiw.89.1424839667452;
        Tue, 24 Feb 2015 20:47:47 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from localhost ([95.186.219.28])
        by mx.google.com with ESMTPSA id bf8sm54069009wjb.37.2015.02.24.20.47.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 24 Feb 2015 20:47:46 -0800 (PST)
Date: Tue, 24 Feb 2015 23:19:54 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH v5 0/6] Staging: emxx_udc: Fix checkpatch.pl warnings
Message-ID: <20150224201954.GA12843@example.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset fixes the following coding style issues found by checkpatch.pl:
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


