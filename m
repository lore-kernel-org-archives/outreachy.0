X-GM-THRID: 4949753724928
X-Received: by 10.112.181.198 with SMTP id dy6mr2449202lbc.22.1425078759956;
        Fri, 27 Feb 2015 15:12:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.11.229 with SMTP id el5ls209137wid.43.gmail; Fri, 27 Feb
 2015 15:12:39 -0800 (PST)
X-Received: by 10.180.83.168 with SMTP id r8mr816384wiy.6.1425078759664;
        Fri, 27 Feb 2015 15:12:39 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id i7si212616wif.0.2015.02.27.15.12.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 15:12:39 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by widex7 with SMTP id ex7so3347427wid.1
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 15:12:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=4b0EW3fT1qo9SJE0MRyTSmZY0fiAOs7yMxyNFzlN7aY=;
        b=IadUw1CFuWZcwO4GDXXSlR7uAhg3GcLIZw66lH4jSjy1GumLuZKacF/75eLzNLAqEe
         OFl6eT2rWKodIwzU2akuUR5dg3WMVyaSLKNL+rIzdRltluAQDcWn4qRDzzvyS/rHif3k
         38KtRuPRJReO0AKHnjokryh81ndLrcKZ1Yo1QN+R4Sewf5wCLeTpaXBmbjZ768kYvAGV
         Tz9sATv5NEZTGaUu+IqSCi9+uh70Fs9x9ByhH5cG5ZKJT8ZeDGmeiO19TksdvpOX1GaN
         0SydLK70Z+DblRHGdFXaCuyuGf8ePNz1IzdY48jAPo0Mlu7RDghyt7JL2rRcG55VKGGv
         SPEQ==
X-Received: by 10.180.21.174 with SMTP id w14mr11366101wie.86.1425078759557;
        Fri, 27 Feb 2015 15:12:39 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id u16sm7938228wjr.5.2015.02.27.15.12.38
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 15:12:38 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2 0/2] Staging: rtl8192u: Remove TRUE and FALSE macros
Date: Sat, 28 Feb 2015 00:12:30 +0100
Message-Id: <cover.1425078496.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove TRUE and FALSE boolean macros since Linux kernel has already a
boolean type, bool, defined in stddef.h.
Replace all occurrences oof TRUE and FALSE by true and false
respectively.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>

v2: change sequence of patches in patchset

Ksenija Stanojevic (2):
  Staging: rtl8192u: Replace TRUE and FALSE macros
  Staging: rtl8192u: Remove TRUE and FALSE macros

 drivers/staging/rtl8192u/r8192U.h          |  2 --
 drivers/staging/rtl8192u/r8192U_core.c     | 22 +++++++-------
 drivers/staging/rtl8192u/r8192U_dm.c       | 46 +++++++++++++++---------------
 drivers/staging/rtl8192u/r819xU_firmware.c | 12 ++++----
 drivers/staging/rtl8192u/r819xU_phy.c      |  4 +--
 5 files changed, 42 insertions(+), 44 deletions(-)

-- 
1.9.1


