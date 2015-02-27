X-GM-THRID: 4349090594816
X-Received: by 10.152.36.132 with SMTP id q4mr1917076laj.6.1425030514296;
        Fri, 27 Feb 2015 01:48:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.11.97 with SMTP id p1ls81877wib.51.gmail; Fri, 27 Feb 2015
 01:48:33 -0800 (PST)
X-Received: by 10.181.13.236 with SMTP id fb12mr324267wid.1.1425030513933;
        Fri, 27 Feb 2015 01:48:33 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x22b.google.com (mail-wg0-x22b.google.com. [2a00:1450:400c:c00::22b])
        by gmr-mx.google.com with ESMTPS id i7si82935wif.0.2015.02.27.01.48.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 01:48:33 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) client-ip=2a00:1450:400c:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wggy19 with SMTP id y19so18837824wgg.10
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 01:48:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=E4pTxQxBUn2sxH5UgnhqEBnj//OsEOXfe1jf5n7xU3A=;
        b=Bxv1PZg2IDIuPSqZ41ZDRoDjVHyUBHbyUpXWhll6ihQEFAow2uEb5aVF3yFx4FmG7m
         ttd+CHayVx1dzIk9b4vIsWrT4pqjZm5ncdAoaWgVHo0nHmR+d6pepfXOp6pAzvKJNhPb
         4LUH1gRVdcEyvbE3LFkfCkYnPKpdE5J03Qki2SHZvpCOtRzqK9pjMAVW9U+DOdupiz3J
         N67uWVR8yM6AIIJsB5ECYS4igA0/InmuHWb1xixEx8nABABCazPLwCH5/I4PpnCWhjbj
         UFZ+G9OXkazOn2L+2gvO9dyUimV0LpkLTRc0S0uDdOsooOSjYqE5UQOQLsyx6HulB1sa
         GKnQ==
X-Received: by 10.194.21.137 with SMTP id v9mr25338253wje.140.1425030513845;
        Fri, 27 Feb 2015 01:48:33 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id q6sm2024020wix.13.2015.02.27.01.48.32
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 01:48:33 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 1DA5E6337C; Fri, 27 Feb 2015 12:48:30 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v6 0/4] Staging: emxx_udc: Fix checkpatch.pl warnings
Date: Fri, 27 Feb 2015 12:48:29 +0300
Message-Id: <1425030509-19676-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset fixes the following coding style issues found by checkpatch.pl:
Do not add new typedefs.
Use of volatile is usually wrong.
printk(KERNEL_ERR not prefered.

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
  Staging: emxx_udc: Replace custom printk macro ERR with pr_err
  Staging: emxx_udc: Replace custom printk macro ERR with dev_err
  Staging: emxx_udc: Remove custom printk macro ERR
  Staging: emxx_udc: Clean dev_err() logging

 drivers/staging/emxx_udc/emxx_udc.c | 82 ++++++++++++++++++-------------------
 drivers/staging/emxx_udc/emxx_udc.h |  1 -
 2 files changed, 41 insertions(+), 42 deletions(-)

-- 
1.9.1


