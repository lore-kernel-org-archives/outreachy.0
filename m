X-GM-THRID: 5033577938944
X-Received: by 10.112.222.131 with SMTP id qm3mr2573937lbc.1.1425116702935;
        Sat, 28 Feb 2015 01:45:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.132 with SMTP id q4ls238309laj.26.gmail; Sat, 28 Feb
 2015 01:45:01 -0800 (PST)
X-Received: by 10.112.147.35 with SMTP id th3mr2367073lbb.15.1425116701180;
        Sat, 28 Feb 2015 01:45:01 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x22c.google.com (mail-wg0-x22c.google.com. [2a00:1450:400c:c00::22c])
        by gmr-mx.google.com with ESMTPS id ta1si269371wic.1.2015.02.28.01.45.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 01:45:01 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) client-ip=2a00:1450:400c:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghb13 with SMTP id b13so24664358wgh.0
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 01:45:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=vIJd6n7KE661stLqIn49NToCHInpxLYcaNpX3aZ5vWE=;
        b=KFCKNnSE+1QsynZLxn5+2VeJp9nxU7eOMW2uzojWgDu8/4S2CHP2lOL+d3rZ6Kg085
         LT72BYVs3Z8+1AOlXmbsSG4YsAP1iJzBskjWjU1uc8HDNBjooF0wgOLs63M0D/lb2j9F
         QDVu3N4lLivuD8hwhTIXCpav5wpjkJRgd9CRCgs5gNsGFRIQ5dCAv/w/8fA0UTmkPbFX
         nbB9eTd6vIq5zi4PVArHgOeQJs0IUma7qEeEQrCheGKJCR4/RQPRKsZh2AGpREV4/d47
         nEX9gZkwXm2n/sfRtKFmWy9ceg6LlNrNxnGN2XXAwR66mpVb+u3yyqmzdC/whfVVnsmh
         PPNQ==
X-Received: by 10.180.89.173 with SMTP id bp13mr14965367wib.88.1425116701095;
        Sat, 28 Feb 2015 01:45:01 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id m4sm6332770wik.20.2015.02.28.01.44.59
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 01:45:00 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 0/3] Staging: rtl8192u: Fix coding style issues
Date: Sat, 28 Feb 2015 10:44:53 +0100
Message-Id: <cover.1425116493.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset fixes some of the coding style issues, found by checkpatch.pl.

Ksenija Stanojevic (3):
  Staging: rtl8192u: Add space after close brace
  Staging: rtl8192u: Add space before brace
  Staging: rtl8192u: use __packed instead of __attribute__((packed))

 drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h | 73 ++++++++++++-------------
 1 file changed, 36 insertions(+), 37 deletions(-)

-- 
1.9.1


