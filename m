X-GM-THRID: 6394893336462753792
X-Received: by 10.46.32.216 with SMTP id g85mr531863lji.8.1488927131345;
        Tue, 07 Mar 2017 14:52:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.76.9 with SMTP id z9ls199175lja.26.gmail; Tue, 07 Mar 2017
 14:52:10 -0800 (PST)
X-Received: by 10.25.157.14 with SMTP id g14mr448399lfe.28.1488927130950;
        Tue, 07 Mar 2017 14:52:10 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id y19si1771581wmd.0.2017.03.07.14.52.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 14:52:10 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id u48so2043571wrc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 14:52:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=tlYxbf3yPL8K+Rs6BPHBfgSVDjaPkHtN/OFRoFO+6WE=;
        b=NnRcdAZvOLb1BG+kayfOtwfj41I8h3Ld3JZQ7zKYROHBzFKgDTD/EPEahWCmCr9w5V
         dup9rDHkaBXdlhz08+z11i8Fcoes1SR6Wgh3XjWXSxO2nHqS2q8OKiwqJ7zjAqa5AGvL
         ra0xjLVPKHQ8MapIWjRnSiYv7ZMHVK/TWRqxC/ik1mFRrhsMRgpObbVLmS0MhllZcmms
         moig7ZWMtfeL7afm3/d+w4p0+P3Fk6ux9Bv15613ZDPEFnPVsGE6yZIdmWyVo1Rb1GCq
         OV6+jQdxGTfIXV6cm1sAl8Ec8UxMUf8Bqz+e5/ddU2B/e0jOgkuG5eVq3RsnS7Z6l33m
         DIgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=tlYxbf3yPL8K+Rs6BPHBfgSVDjaPkHtN/OFRoFO+6WE=;
        b=JIwVGPrt6cKyS7MYs73q+QkySqmhCwfN+qnOe0REpPAnpr7fblLueqgaR35MdIpSYE
         GKH3ISyl9r6t/v46I523I+9VBdlBQUyndLHP7NvGVw05XkT2zFC8baNPOpb7bCkmftxq
         an/sBWG/UaHym0+2IJc0g/fyO/OLN0dUBDBYfSg/eZl+aWsifABgMy3uo1QuRY9+wf3c
         93pu4xuroD6YLW0fsVevKy97SPPTbAyTfqm1HbYBadmWDqYAO9tewQ13IzhW2XS23pZy
         A9GGv/b7gPBoLdEnft5v2Tn+j1aglW+z4B3naLN7IxjALQbZe5FYda89sNOnFIp0rcvb
         VpWw==
X-Gm-Message-State: AMke39nhYa1PRbLRr4NhP7iqKMQ3jFQOFEZz1gN+iLpQUCUEO9uyTNnGj/SqhQqqn4aulg==
X-Received: by 10.223.160.9 with SMTP id k9mr2546877wrk.123.1488927130769;
        Tue, 07 Mar 2017 14:52:10 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:8168:a9b6:7cd0:c4cf])
        by smtp.gmail.com with ESMTPSA id t194sm20745575wmd.13.2017.03.07.14.52.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 14:52:09 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2] staging: wilc1000: Align the code
Date: Wed,  8 Mar 2017 00:52:07 +0200
Message-Id: <20170307225207.7583-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Delete tabs and add spaces to align the code.

Fixed the checkpath.pl issue:
CHECK: Aligment should match open paranthesis.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
Changes since v1:
*Change 'deleted' to 'delete' and 'added' to 'add'.
*Change the subject of the patch from 'staging: speakup: wilc1000: Align the code' to 'staging: wilc1000: Align the code'.

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


