X-GM-THRID: 6396185012305133568
X-Received: by 10.46.82.157 with SMTP id n29mr4139209lje.29.1489229166986;
        Sat, 11 Mar 2017 02:46:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.82.213 with SMTP id n82ls198106lje.37.gmail; Sat, 11 Mar
 2017 02:46:06 -0800 (PST)
X-Received: by 10.25.17.102 with SMTP id g99mr3095584lfi.6.1489229166530;
        Sat, 11 Mar 2017 02:46:06 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id b186si180892wme.1.2017.03.11.02.46.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 02:46:06 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id z63so2572494wmg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 02:46:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=0h7Jyu8O4Y1r3F0dUFsJ6XNfh3SqmM4rCUyBS0J6pVc=;
        b=jbGNZMMKTBtaP5nWTxMw904IRDQZtysSh/uL8ZyAZOVRhAzukfUNIC5v9Ett3HMxGL
         NQjxGasqKhn73IuHfpvqov2s2x/Oq/g+coTBnxksHuCY7VQ1VqZ28Zg6HFqPQBSC1tvr
         ARtsPJmSMDipKjqNx8LdTjL+yg25FMwUa3Wn3jLGi8tKZnSIRepE+1JSUf1vXmE6VTD6
         TQBXYL2IraWEucJAadkbZiBkyrX9bFIZDWuSP/0atK8tLcoKWpwB8AQHVjPz+rMSfrZy
         wkbWDobV8uBuvfoP+KZkMMckssbWKYZo2zRHQKG/uXHRVA0KDkx+50F6Ki+ssyaFMRXF
         JmJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=0h7Jyu8O4Y1r3F0dUFsJ6XNfh3SqmM4rCUyBS0J6pVc=;
        b=j8AzmIHpLBbFiH66wW27d/8MOxP94WlIL1TLeE9QlXhlxencWCKZukKvqATyQBxgSM
         jMc2YBRyc7E6aAjMCcKoiVy/f1wvcXoeGM6azGiIoGdCYFxKEKjoH+yXPW/AhjfIK/9y
         FidQGx4mhgZBi+qGJDTnIBXUHwCptrrI9iwQxDSurgrS9nqgOTE21u6h35Qtvy+X0uO8
         ZNMJNXawh36gbukopVq8dIUXhtgiEISVJEULuWxhSBsMdWw4NDqDRKq3CclA4b+jorEY
         YpirVfdkParbZYqMn7RunJ1BkeSb/IFg3CHSTtmqBzaVCRs1/d/V4q+6M0yCSjQrha/1
         qApw==
X-Gm-Message-State: AFeK/H0G2JMNb1KicX/p3dbfywTtrlKzK0JF4BqZzVF9Q+FcEeZIsO5ZSDP5ntHK9CSiMg==
X-Received: by 10.28.8.147 with SMTP id 141mr2806257wmi.43.1489229166331;
        Sat, 11 Mar 2017 02:46:06 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id o26sm16841747wro.44.2017.03.11.02.46.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 02:46:05 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2] staging: wilc1000: Avoid excessive indentation
Date: Sat, 11 Mar 2017 12:45:59 +0200
Message-Id: <20170311104559.8108-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Modified if/else segment to avoid excessive indendation.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
Changes since v1:
*Add space before '{'.
*Add braces to else segment.

 drivers/staging/wilc1000/linux_wlan.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
index 2eebc62..a181dd9 100644
--- a/drivers/staging/wilc1000/linux_wlan.c
+++ b/drivers/staging/wilc1000/linux_wlan.c
@@ -866,14 +866,13 @@ static int wilc_mac_open(struct net_device *ndev)
 				wilc_set_wfi_drv_handler(vif,
 							 wilc_get_vif_idx(vif),
 							 wl->open_ifcs);
-			} else {
-				if (memcmp(wl->vif[i ^ 1]->bssid,
-					   wl->vif[i ^ 1]->src_addr, 6))
-					wilc_set_wfi_drv_handler(vif,
+			} else if (memcmp(wl->vif[i ^ 1]->bssid,
+					  wl->vif[i ^ 1]->src_addr, 6)) {
+				wilc_set_wfi_drv_handler(vif,
 							 wilc_get_vif_idx(vif),
 							 0);
-				else
-					wilc_set_wfi_drv_handler(vif,
+			} else {
+				wilc_set_wfi_drv_handler(vif,
 							 wilc_get_vif_idx(vif),
 							 1);
 			}
-- 
2.9.3


