X-GM-THRID: 6394893336462753792
X-Received: by 10.46.7.80 with SMTP id i16mr3290758ljd.5.1489165148784;
        Fri, 10 Mar 2017 08:59:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.22 with SMTP id 22ls1054700lja.32.gmail; Fri, 10 Mar 2017
 08:59:08 -0800 (PST)
X-Received: by 10.25.150.2 with SMTP id y2mr2775207lfd.21.1489165148425;
        Fri, 10 Mar 2017 08:59:08 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id y19si15403wmd.0.2017.03.10.08.59.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 08:59:08 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id z63so3213123wmg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 08:59:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=N1Wm02FpUd+9nkJOaC7iB69doMPHY770XdnrFsrq0jk=;
        b=YvHd7w+IsVIkPUw0aNw16uWdOrkK8NSOUqvQo+9YtgrmOhYmE6a1WWmFLAQV0Njwkp
         Gp1DxaruqoTZzvSG8ak2M48arbIFNX2sSyHOOw4Xl50myi4Ml1/F9AUU8YzsbLG24wNN
         xy/x31fbzucdIYE+3N+9CIjOjHI2BzP4zMoETeffO0qVm0gBRUkjY650CisGIgU9zUk+
         GaxyDt6DYPVr/NC4gt9k0FrTZfllY3UOvcj4nlSFhauHeVH1B+npJEBaiH4lljWTfx1u
         BR9x+v9ct06NLDVlYDmrpTp9Vew52hGGJh7JlCGPr1r1yuZSM++AdeUrivSzMLlbQeGl
         /Tyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=N1Wm02FpUd+9nkJOaC7iB69doMPHY770XdnrFsrq0jk=;
        b=RevFEFQBwKzE6G0xwXmUtNDMC7sPGt884fefVjTvokqhBOzRdJjW/hGFOzVSyJKz20
         bsBGFYX0c2gKfTYtZh2aqiohnRdtzmoEbrZnlWjSgwqFqkMlUxPfI6QUVXWXdgFKHZwD
         T9CTytq4nULWuOFl7Dsp47UIFbic2e0BvO3ZdIF/HQu00AQF7bvZGPJ4X2RN7CBUYZXc
         FK+28TDj4aeoNqD2HVYLvrFpuIcSuY1LQ/qFYMWn9smvqDH3ic/FeW+6pPMutQR7BWGZ
         XnmcAof8PP+6eB3k63insrC2vciaPVUxe69AeTIjniyTcEZsg55NqqOz05gEmpbQr2jz
         KSFQ==
X-Gm-Message-State: AFeK/H1oEk5HH6OO8Ds/F1nMBIrKpeDEIzF3KhUgwx26N5kGFS+2/6PnriW3DKRDwzGMlg==
X-Received: by 10.28.146.12 with SMTP id u12mr3354882wmd.113.1489165148245;
        Fri, 10 Mar 2017 08:59:08 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:9935:36c4:c373:a2cc])
        by smtp.gmail.com with ESMTPSA id k195sm4140776wmd.7.2017.03.10.08.59.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 08:59:07 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 3/4] staging: wilc1000: Align the code
Date: Fri, 10 Mar 2017 18:59:05 +0200
Message-Id: <20170310165905.4131-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Improve code readability by deleting tabs and adding spaces to align the code.

Fixed the checkpath.pl issue:
CHECK: Aligment should match open paranthesis.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/linux_wlan.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
index 2eebc62..c65c5e8 100644
--- a/drivers/staging/wilc1000/linux_wlan.c
+++ b/drivers/staging/wilc1000/linux_wlan.c
@@ -870,12 +870,12 @@ static int wilc_mac_open(struct net_device *ndev)
 				if (memcmp(wl->vif[i ^ 1]->bssid,
 					   wl->vif[i ^ 1]->src_addr, 6))
 					wilc_set_wfi_drv_handler(vif,
-							 wilc_get_vif_idx(vif),
-							 0);
+								 wilc_get_vif_idx(vif),
+								 0);
 				else
 					wilc_set_wfi_drv_handler(vif,
-							 wilc_get_vif_idx(vif),
-							 1);
+								 wilc_get_vif_idx(vif),
+								 1);
 			}
 			wilc_set_operation_mode(vif, vif->iftype);
 
-- 
2.9.3


