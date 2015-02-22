X-GM-THRID: 2431942393856
X-Received: by 10.112.160.3 with SMTP id xg3mr749106lbb.5.1424619924512;
        Sun, 22 Feb 2015 07:45:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.85.229 with SMTP id k5ls407812wiz.0.canary; Sun, 22 Feb
 2015 07:45:24 -0800 (PST)
X-Received: by 10.180.13.98 with SMTP id g2mr720466wic.3.1424619924226;
        Sun, 22 Feb 2015 07:45:24 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x229.google.com (mail-we0-x229.google.com. [2a00:1450:400c:c03::229])
        by gmr-mx.google.com with ESMTPS id cl5si500260wib.3.2015.02.22.07.45.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 07:45:24 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) client-ip=2a00:1450:400c:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesu56 with SMTP id u56so13743339wes.10
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 07:45:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=TsDar0buR7o/QrOlFK4+rRYtJyZd/v8+5EoetqWllQ0=;
        b=ppek46AlsPZsz6K6+9pyBJ7ZNN2PLo+PaEYhj18SgsTIjn4U0fsgRYszFLdYd8QBYa
         fU51OPY8+sl6C1PioSFJxG1dZQd5FrZEdc66QNCJrFigxXn6+XjNUANLGiB8UHEMxOsD
         mgHDC48oP+UOmB3tL1P8s9GGjlUqkZjibFxFxDm6wJRhz5UoCClMGPrQLOPG1rqideFN
         +ClB8GD0pwULEY1SAr4O7PsofhkZhQws9usQYi7Ve5oaTHLij2E0PUu65W+HXMlbh7Gy
         u2Q0Fn48i8XoBXT0Fl2WKnt0sqsgPDs0okce4lNy19NOAcqpfKHRi6xGcNl4x1gh0Mwb
         Aoog==
X-Received: by 10.194.87.100 with SMTP id w4mr13411535wjz.65.1424619924086;
        Sun, 22 Feb 2015 07:45:24 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id bd8sm51599019wjc.21.2015.02.22.07.45.23
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 22 Feb 2015 07:45:23 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v3 0/2] Staging: rtl8192u: Fix coding style issues.
Date: Sun, 22 Feb 2015 16:45:16 +0100
Message-Id: <cover.1424619767.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset fixes following issues:
        Convert comments from C99 to C89 style.
        Staging: rtl8192u: Fix grammar in a sentence.

Signed-off-by: Ksenija Stanojevic<ksenija.stanojevic@gmail.com>

Ksenija Stanojevic (2):
  Staging: rtl8192u: Convert comments from C99 to C89 style
  Staging: rtl8192u: Fix grammar in a sentence.

 .../staging/rtl8192u/ieee80211/ieee80211_module.c  | 52 +++++++++++-----------
 1 file changed, 26 insertions(+), 26 deletions(-)

-- 
1.9.1


