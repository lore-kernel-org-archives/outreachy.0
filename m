X-GM-THRID: 5091141615616
X-Received: by 10.112.162.135 with SMTP id ya7mr2663699lbb.14.1425123916722;
        Sat, 28 Feb 2015 03:45:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.29.164 with SMTP id jx4ls273533wid.5.canary; Sat, 28 Feb
 2015 03:45:16 -0800 (PST)
X-Received: by 10.180.83.168 with SMTP id r8mr1069744wiy.6.1425123916058;
        Sat, 28 Feb 2015 03:45:16 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id i7si291833wif.0.2015.02.28.03.45.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 03:45:16 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x232.google.com with SMTP id h11so5440502wiw.3
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 03:45:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=INsMJIERO5v08wZn4X/QOYCoR2P9fgqWiE6EWjC4tok=;
        b=0ag3LmOukufbxpAR/+e51LXQbO3ZC/vu6/lquiDgrKLshedz7VWlics+MjobZ9EJLI
         CgYTpRXCvVJxSP7vF8cFNoM32KHBvn5U7EwSIgxRJ85B8gqRfhUDxVC7Y1egWLtkI58E
         0wz7sA08aI3UYilNPB5Bkq2l26l2sDW+6DIjJcvx31GDeje7MM+R4K+QSD3ZlHlDT3wC
         3oyO1xDtjPKlNfoLO8mfRERgHMh+JiFM92bY/snQWHvLyyaFK84JSM0omGrzshLxGTiE
         PqT/z7vM0hm8+O74PSAwgMl1PDUd/D6Sw9NI/YwTTXdYp2xc+7opmH5fZvhHFEKH1ale
         rkyw==
X-Received: by 10.180.187.200 with SMTP id fu8mr16218248wic.28.1425123915992;
        Sat, 28 Feb 2015 03:45:15 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id k1sm9903736wjn.9.2015.02.28.03.45.14
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 03:45:15 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 0/3] Fix coding style issues
Date: Sat, 28 Feb 2015 12:45:06 +0100
Message-Id: <cover.1425123691.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset fixes following issues in driver rtl8192u:
	Fix comments
	Fix line over 80 characters
	Replace printk() with netdev_dbg()
Issues found by checkpatch.pl

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>

Ksenija Stanojevic (3):
  Staging: rtl8192u: Fix comments
  Staging: rtl8192u: Fix line over 80 characters
  Staging: rtl8192u: Replace printk() with netdev_dbg()

 drivers/staging/rtl8192u/r8190_rtl8256.h |  3 ++-
 drivers/staging/rtl8192u/r8192U_wx.c     |  2 +-
 drivers/staging/rtl8192u/r8192U_wx.h     | 25 +++++++++++++------------
 3 files changed, 16 insertions(+), 14 deletions(-)

-- 
1.9.1


