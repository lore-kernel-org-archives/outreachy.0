X-GM-THRID: 6035575144448
X-Received: by 10.180.182.201 with SMTP id eg9mr2411401wic.3.1425320717590;
        Mon, 02 Mar 2015 10:25:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.104.5 with SMTP id ga5ls615883wib.10.gmail; Mon, 02 Mar
 2015 10:25:17 -0800 (PST)
X-Received: by 10.180.182.201 with SMTP id eg9mr2411400wic.3.1425320717235;
        Mon, 02 Mar 2015 10:25:17 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x231.google.com (mail-we0-x231.google.com. [2a00:1450:400c:c03::231])
        by gmr-mx.google.com with ESMTPS id cl5si715101wib.3.2015.03.02.10.25.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 10:25:17 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) client-ip=2a00:1450:400c:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x231.google.com with SMTP id u56so35094258wes.10
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 10:25:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=HDo1nldDjGssvDfc64gqV1O4eG8Vexl0iePaLTuiOFg=;
        b=FwOzioAoYI94OoKq70DkZgGOKQFrjQgsMI8cubeLnn477j86nR1DpQLsej7icgAg3m
         JR0LHv4yZn0eqYH9+eu4pmQEXvPf0WM3OjgsJxmme/z4kpMjs8jlpIaKwqmYVhLYK14H
         TxsMcBPT+/7+TQuoF0gLy6qkL97YUdgspRU8GfbYaeFGetGs8LXqSDR0+Qm5WBL/YQ27
         ZInyXMcHkeLbhz6uwfPelfboKsg1Le9hSoArgwKelRDAHRA4/noquo+okebFXIIoJRYr
         Svx9ywPLeaZeYcF/BeMYghXil7kcoHUJuM3HcE7meVIF9NzeYyKW4CAmJgDMx/8D6Cch
         ziMw==
X-Received: by 10.194.86.194 with SMTP id r2mr62696647wjz.41.1425320717150;
        Mon, 02 Mar 2015 10:25:17 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id ul1sm2019136wjc.0.2015.03.02.10.25.15
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 10:25:16 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 7F65C621FB; Mon,  2 Mar 2015 21:25:19 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v10 0/4] Staging: emxx_udc: Fix checkpatch.pl warnings and remove extra code
Date: Mon,  2 Mar 2015 21:25:18 +0300
Message-Id: <1425320718-28979-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset fixes the following issues:
Remove argument test from function
Fix checkpatch.pl warning: printk(KERNEL_ERR not prefered.
clean dev_err logging

Changes in v10:
- Refresh against updated staging tree
- Separate a patch "removal of typedef'
- Added patch related to ERR( msg
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
  Staging: emxx_udc: Remove argument test from function
  Staging: emxx_udc: Replace custom printk macro ERR with dev_err or
    pr_err
  Staging: emxx_udc: Remove custom printk macro ERR
  Staging: emxx_udc: Clean dev_err() logging

 drivers/staging/emxx_udc/emxx_udc.c | 83 +++++++++++++++++--------------------
 drivers/staging/emxx_udc/emxx_udc.h |  1 -
 2 files changed, 39 insertions(+), 45 deletions(-)

-- 
1.9.1


