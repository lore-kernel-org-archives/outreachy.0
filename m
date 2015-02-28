X-GM-THRID: 5133429637120
X-Received: by 10.112.25.7 with SMTP id y7mr2771451lbf.21.1425147514530;
        Sat, 28 Feb 2015 10:18:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.88.98 with SMTP id bf2ls289946lab.70.gmail; Sat, 28 Feb
 2015 10:18:33 -0800 (PST)
X-Received: by 10.152.28.137 with SMTP id b9mr2807389lah.8.1425147513916;
        Sat, 28 Feb 2015 10:18:33 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id o3si339242wib.2.2015.02.28.10.18.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 10:18:33 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id em10so6642394wid.5
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 10:18:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=DgWmi2oreaUgj+d+/DRMfCEOFtFcn+9KnpIjj7U5Koo=;
        b=Zhcp66F1EQfoaVB+yti5hijdddUJTMyoqzR9JmncmCi+IsxFlJnt4c+fPRamy4tqE4
         xFwgRZ8t5ah0ZFSaew+Kj/ftRZNpwaWwEN8oCdNNAHoiyTCRhWR73lbbY76kQz3IRDzN
         VUsXNRNKyrA4ElEssZ5G9AKhOiDR/J8TV7AvMujMHAN6laz77u5iEEs++HFeIEpz0xjo
         M+Dl7Y0FA8hrnh6T4FUsdzQOOogdu6aPunYVLVLF/wQjrKqdh7KlyiStynxytoy5xk8Z
         WzoYYAjDLUEjoG9m81b7HTAA8gga+NjWHTEJHNER3k8V4xRONWXbSJ+3CdsBl0XevOhb
         nO1w==
X-Received: by 10.194.185.68 with SMTP id fa4mr39718095wjc.111.1425147513828;
        Sat, 28 Feb 2015 10:18:33 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id dx11sm11147006wjb.23.2015.02.28.10.18.31
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 10:18:33 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 0/3] Staging: rtl8192e: Fix coding style issues.
Date: Sat, 28 Feb 2015 19:18:24 +0100
Message-Id: <cover.1425147125.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset fixes following issues in driver rtl8192e:
	Replace printk with netdev_dbg, netdev_info, or netdev_warn
	Use ether_addr_copy() instead memcpy()
	Fix line over 80 character

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>

Ksenija Stanojevic (3):
  Staging: rtl8192e: Replace printk with netdev_dbg, netdev_info, or
    netdev_warn
  Staging: rtl8192e: ether_addr_copy() over memcpy()
  Staging: rtl8192e: Fix line over 80 characters

 drivers/staging/rtl8192e/rtllib_wx.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

-- 
1.9.1


