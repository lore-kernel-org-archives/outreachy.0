X-GM-THRID: 3247770173440
X-Received: by 10.112.199.69 with SMTP id ji5mr2316347lbc.0.1424798897684;
        Tue, 24 Feb 2015 09:28:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.10.5 with SMTP id e5ls627232lab.37.gmail; Tue, 24 Feb 2015
 09:28:17 -0800 (PST)
X-Received: by 10.152.4.229 with SMTP id n5mr2319284lan.1.1424798897154;
        Tue, 24 Feb 2015 09:28:17 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x232.google.com (mail-wg0-x232.google.com. [2a00:1450:400c:c00::232])
        by gmr-mx.google.com with ESMTPS id ew5si955289wid.1.2015.02.24.09.28.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 09:28:17 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) client-ip=2a00:1450:400c:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x232.google.com with SMTP id y19so6777778wgg.13
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 09:28:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Schx3qyaGvYMWJ2OJYc+dUjK1M2CfInxhcHVS3Xa6d4=;
        b=wlepZL/a9YPaAK2QlGBaTu5WM4UILFF7dkKCtIqHP4VQW49m4dSJ447st5gZ0DT1Cu
         obAYtwL3eEWBKXzXYxEgILFOeltJpfq4TAiQnOeqJFejtagfyDEAf5YuMhPdKfwJgs8M
         JmuZuIq25/MV5QqJh7yvgU9KIJepF2iq6HSgX3xzKktju8722Ii74bJlYStNlKln8r4V
         HtS8oOBLHRE9JMjeTuyGOBUz7YfN10/aU1WohIsPc9ZjXBWn2RGY0JBhUv0duDcXuCyX
         g7MCAJzUVj7bgnGz1ZVzGc74juYlZ6Z75SOL05Mobl0FV3QIEGcLKbZyy/QLWCrkQM3H
         JCCQ==
X-Received: by 10.194.93.134 with SMTP id cu6mr33756087wjb.79.1424798896920;
        Tue, 24 Feb 2015 09:28:16 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id jy7sm11559533wid.22.2015.02.24.09.28.15
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Feb 2015 09:28:16 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 0/6] Staging: rtl8192u: Remove TRUE and FALSE macros
Date: Tue, 24 Feb 2015 18:28:08 +0100
Message-Id: <cover.1424798403.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove TRUE and FALSE boolean macros since Linux kernel has already a
boolean type, bool, defined in stddef.h.
Replace all occurrences oof TRUE and FALSE by true and false
respectively.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>

Ksenija Stanojevic (6):
  Staging: rtl8192u: Remove TRUE and FALSE macros
  Staging: rtl8192u: Replace TRUE with true
  Staging: rtl8192u: Replace TRUE and FALSE macros
  Staging: rtl8192u: Replace TRUE and FALSE macros
  Staging: rtl8192u: Repace TRUE and FALSE macros
  Staging: rtl8192u: Repace TRUE and FALSE macros

 drivers/staging/rtl8192u/r8190_rtl8256.c   |  4 +--
 drivers/staging/rtl8192u/r8192U.h          |  2 --
 drivers/staging/rtl8192u/r8192U_core.c     | 22 +++++++-------
 drivers/staging/rtl8192u/r8192U_dm.c       | 48 +++++++++++++++---------------
 drivers/staging/rtl8192u/r819xU_firmware.c | 12 ++++----
 drivers/staging/rtl8192u/r819xU_phy.c      |  6 ++--
 6 files changed, 46 insertions(+), 48 deletions(-)

-- 
1.9.1


