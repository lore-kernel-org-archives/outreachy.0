X-GM-THRID: 6392583121099816960
X-Received: by 10.25.67.70 with SMTP id m6mr1102775lfj.21.1488389242653;
        Wed, 01 Mar 2017 09:27:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.22 with SMTP id 22ls115263lja.32.gmail; Wed, 01 Mar 2017
 09:27:21 -0800 (PST)
X-Received: by 10.25.196.68 with SMTP id u65mr1150565lff.0.1488389241499;
        Wed, 01 Mar 2017 09:27:21 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id y19si1637553wmd.0.2017.03.01.09.27.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 09:27:21 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id u48so6422237wrc.1
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 09:27:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=e18bIgKOtC4pe5K7p4fvFV4fnVODupKr6V0FEtDn/sw=;
        b=Jf9LbHFY+ExRKSQpTQuUlbFmRBkm1bavJ/j9bmkZGZMlzNZuCaphgvV426V9TUp99f
         h/QcAkTYabMmxwXQths0c+RF0oUl5uMQzK6pmvDqdZvBDQwGT7YmrKcXTzcNSF04pW6O
         w9MdLNM4cyhU7iDVUbuPbXwYF0DZ1TRHQvpkLy9zHtirV2RrKKsO1KZEDY3ctf32AJSF
         slQwQGLag1YOV9qV+N7bBuL/pW2BoYpDegC6/cxVMZtzjSac+07IoKb46Z6LfLaBohaL
         AQ9cyfGV3CQoyfZa/xBYw8g7Li/gZEF0e8vKr0zhzMvdfWP/5qiyAeLb82nJFgxtp137
         snQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=e18bIgKOtC4pe5K7p4fvFV4fnVODupKr6V0FEtDn/sw=;
        b=jxpq3peN68G5Zc6UXT3yWtDgIynA90gac/jfwS2sPzFZ9KzT3K3M16crJg6D2YiQze
         oMj6e+jjSkT7YsIXwsiLvGnwpfRmVL2cctoC8oU1rs4ZNV7ZeZqHjlosX+53nLyis+Wj
         lonRVMZhlofJo3sWzyNMP2ath9IgPTZwYRom90Ofjd+zAujnFq+UX89owSHazJZ23xZS
         99s6DflPGL0R0mE7CsjUnN9shnSaXJvdTg8sPVaaFfX5mBxlp30vGIn4iXrCUrhjpG5T
         SSAkzWVBi0UTT00BRkgVF261YkfYJXEwqcMgp7p8NHxSLAVIB/6U6rYxp8eAV+0DPCjV
         5fOA==
X-Gm-Message-State: AMke39mXbP6H8XlGOabChypbjwDQkHjXExj3esW3FDO4yZYNU3vI/4zcx1EMxmkBZsbeIw==
X-Received: by 10.223.152.215 with SMTP id w81mr8959390wrb.151.1488389241216;
        Wed, 01 Mar 2017 09:27:21 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id 32sm7394997wre.15.2017.03.01.09.27.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 09:27:20 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: swarren@wwwdotorg.org,
	lee@kernel.org,
	eric@anholt.net,
	gregkh@linuxfoundation.org,
	f.fainelli@gmail.com,
	rjui@broadcom.com,
	sbranden@broadcom.com
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH] staging: bcm2835-camera: Replace 'uint32_t' with kernel type u32
Date: Wed,  1 Mar 2017 19:27:10 +0200
Message-Id: <1488389230-23576-1-git-send-email-narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl issue:
CHECK: Prefer kernel type 'u32' over 'uint32_t'

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
index e5bbc6c..ff8d020 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
@@ -59,7 +59,7 @@ struct bm2835_mmal_dev {
 	unsigned int		  manual_shutter_speed;
 	bool			  exp_auto_priority;
 	bool manual_iso_enabled;
-	uint32_t iso;
+	u32 iso;
 
 	/* allocated mmal instance and components */
 	struct vchiq_mmal_instance   *instance;
-- 
1.9.1


