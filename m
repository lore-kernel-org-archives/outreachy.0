X-GM-THRID: 6393736323263365120
X-Received: by 10.28.54.73 with SMTP id d70mr236765wma.18.1488657756422;
        Sat, 04 Mar 2017 12:02:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.7.81 with SMTP id i17ls552214ljd.41.gmail; Sat, 04 Mar 2017
 12:02:36 -0800 (PST)
X-Received: by 10.46.77.69 with SMTP id a66mr1438025ljb.11.1488657756139;
        Sat, 04 Mar 2017 12:02:36 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id p144si17591wme.2.2017.03.04.12.02.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 12:02:36 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id l37so17087302wrc.3
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 12:02:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=USCyaXkt9Rb7HA6UKtuCV6/14jLSOkbAMWiKA4ZtpdY=;
        b=CRPGL7FWVtDZngIgS6T7pKbureBBN31M19m3iaYbbuUx8ZQa/YzY8ofG3JfZ4cSCQC
         23UwxE0Y+WQfU5fxqy5xeDWqMOdJhPX2dIV8Z8pHCB4sp4d1ypBiYhSV+NhX59oNc+de
         tFBaYbLP3DraPsXc2uqWLowj2/HhDcoHAOPO7kTM8JQKtq+x37IHO7UMJNJv5l/uzXop
         NwIPUTYvmaH2hP2opAqCZ7Qk4H8ft2EFDcDaz6VxxhVkVMyUuejwwFpvI3amf5l4zlIn
         iM/x0rfsY//oGq0Ozh4hTFCJubQMvao8plQQmQ2cSvpsDsr+/XQ0SZDOoJfwQOA6XRIj
         nMEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=USCyaXkt9Rb7HA6UKtuCV6/14jLSOkbAMWiKA4ZtpdY=;
        b=NivHQ9eHN2x2b2T9Pju7JOzrW0S7UQ6tGqSJhMaThxnBypmHr/fptasz9+l/uwGaxw
         i8yavhF/iCBUzHSx6pzs1LBNRv2Aprp41mB8YluAFbrEAG9f8mbr5vFKGwKD3c5ixbju
         CUK6yarzRXjhMxrZner89dR0aAX8Xq4YX2JP6RmXvcPGgkAUdUf//LyjFSicrU13CVge
         8WEsoWbirQPGCf82bS+1hipU+yd8gTULWhUd7d19VdFMiM3uWK1gKOChR0EicYuDIL1w
         qwZx035QN+RC7Ad15Z7epJlNAGa2o8/UXqYor13OYcE2Pk9SWS8wVieqHlGXcNk3a7pv
         VnEw==
X-Gm-Message-State: AMke39mjcoahm0SQujAqVZwFGb0e4Mj9XFhdEoQszl5oToR5Y7QcL/LnhUBrJIz6oVJPSg==
X-Received: by 10.223.154.44 with SMTP id z41mr7975901wrb.188.1488657755952;
        Sat, 04 Mar 2017 12:02:35 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain ([89.165.243.139])
        by smtp.gmail.com with ESMTPSA id c133sm8160000wmd.13.2017.03.04.12.02.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 12:02:35 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: swarren@wwwdotorg.org,
	lee@kernel.org,
	eric@anholt.net,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH 1/2] staging: vc04_services: Remove error message on kmalloc() failure
Date: Sat,  4 Mar 2017 22:02:31 +0200
Message-Id: <ee037a806a7f516d5540fef5fc4209884aef85c0.1488657258.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1488657258.git.narcisaanamaria12@gmail.com>
References: <cover.1488657258.git.narcisaanamaria12@gmail.com>

Remove 'Out of memory' message because kmalloc already prints a message
in case of error.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index ff0a1ff..d9622e8 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -2606,9 +2606,6 @@ static const char *msg_type_str(unsigned int msg_type)
 		sema_init(&service->bulk_remove_event, 0);
 		mutex_init(&service->bulk_mutex);
 		memset(&service->stats, 0, sizeof(service->stats));
-	} else {
-		vchiq_log_error(vchiq_core_log_level,
-			"Out of memory");
 	}
 
 	if (service) {
-- 
1.9.1


