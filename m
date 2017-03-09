X-GM-THRID: 6394893336462753792
X-Received: by 10.25.193.213 with SMTP id r204mr2234342lff.24.1489093084112;
        Thu, 09 Mar 2017 12:58:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.20.25 with SMTP id u25ls452825ljd.35.gmail; Thu, 09 Mar
 2017 12:58:03 -0800 (PST)
X-Received: by 10.46.82.157 with SMTP id n29mr2722482lje.29.1489093083537;
        Thu, 09 Mar 2017 12:58:03 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id l138si12069wmg.0.2017.03.09.12.58.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 12:58:03 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id u108so9361440wrb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 12:58:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=8l9+fIot7/lU530Ca+fvZpxwko9l9tc8CsaycnnbN6Q=;
        b=ccq7OzBy6UcmZpGm7VHOECCq3QhxpBmjUao60W+mHveKnBvsDwyMy/el7uoHcYHnPA
         +7xwTvRJAAohBtZ1lB4HupKY7wJHwT4dyeXyK8LPMRnWVgmNWSX4sCMUYQvRX5SgAwap
         xv1/rbhloZaMfcaUruaA8vbNlMOF0/U6Q3w5RmkrBbYVvQZrocGcdUqMcePuWJc1PbF0
         k9q/OJKmXPZFdlRNk8PTIUsmtTijeeKGwMvRbZiG+RUrFi8mzybHVeb9w2VpeG0If5xK
         HI/8ifQt3CY9fGowdQcZXsr9okorr8m12RfbOxBkQoYGeeWkLSys6DXKEKF1yccrmyE2
         qqPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=8l9+fIot7/lU530Ca+fvZpxwko9l9tc8CsaycnnbN6Q=;
        b=dlMuKPpBa1oxuiCQANLQcRqgNtwiGo2p24GZn9lXIRtNV0iebjzeEcQ3cyXeAmFnX/
         5oTY7Z774DC6yhePDQLdKwXTFT8aUgqqcBx8O8Ndgsuw4wxrIJpejfXJNRAcESJ77ZVd
         BrGMXcsihNdnyuS3Unq7Cu/V+vF0Kus3PR+Nj3I9M+0VFE7U4zO2lGzW4Tu8ljbotkjS
         qzVvyKQOmHNTJ6F30Rwgf5QFHSP/zQfnQMNMVRmk+1/+Ok8M0EKO0vjleYsdTCEL+NJ/
         ElRL2U0N/nSqvR86o2vSrhfQXN3fe3zyfnPgOPu3kCQEvAHHJh2LCx4R/J0R+vecDZTR
         jd3A==
X-Gm-Message-State: AMke39mPkf1gdMz2tJKPXdRFrtqBO0IxrddJ2jDJ3Xp7frv4GZCj427xkdHZdaUFkhEItQ==
X-Received: by 10.223.183.6 with SMTP id l6mr12100411wre.60.1489093083357;
        Thu, 09 Mar 2017 12:58:03 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:10f3:5309:404:d736])
        by smtp.gmail.com with ESMTPSA id 5sm9575384wrd.58.2017.03.09.12.58.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 12:58:02 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2] staging: wilc1000: Align the code
Date: Thu,  9 Mar 2017 22:57:48 +0200
Message-Id: <20170309205748.4422-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Deleted tabs and added spaces to align the code.

Fixed the checkpath.pl issue:
CHECK: Aligment should match open paranthesis.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
Changes since v1:
*Changed the subject of the patch from "staging: speakup: wilc1000" to "staging: wilc1000".
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


