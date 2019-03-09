X-GM-THRID: 6666346191524986880
X-Received: by 2002:a63:f606:: with SMTP id m6mr4581687pgh.31.1552129677417;
        Sat, 09 Mar 2019 03:07:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:e393:: with SMTP id ch19ls6076154plb.2.gmail; Sat,
 09 Mar 2019 03:07:56 -0800 (PST)
X-Google-Smtp-Source: APXvYqz+1A74lndOBeBuTj9wATSBodScB0md7ICtEBzHCLmvnpASvp/MxXnC0dFgOMS2ShqH8tlY
X-Received: by 2002:a17:902:1126:: with SMTP id d35mr7185289pla.8.1552129676667;
        Sat, 09 Mar 2019 03:07:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552129676; cv=none;
        d=google.com; s=arc-20160816;
        b=a5tlYWlUFwFp8ZKc2PCVcNTnsycjSqptmjCO8uziPFG1wrHIZ8QLpy5oSj2HHlSIX+
         aG0JLv53izwCFbUQDs7a452hDeLp7HHiEWuTeeJ0Lo/G2ksy8XNnY4YP1Ci6rUEU/pMq
         nzCIw5QCVTi9pobUp2JHlYxrYe6AeBelo9kLFeM1ERceKtZPhI/Ob95AVKKzNQWS7BLI
         V4RArYPYSRd1BOWjKRdAQ03v1MOxzKc4GKwXhIQ2UKeOEYUqbt3cCS1FpMLm6tza9aqY
         AWYoYQLl7XuWbEBcKkHOBrLjBi91jcFDeX8JaFBioWcz/Hf06qgQNyJ8T+Gg2d+D/ym9
         XbcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=5Ta8ETmI0bDCbzPgevD5/R/0DjlWB+KvqXqKWy94rSM=;
        b=ODkgbHfY7gn6Rll1Y8Jg2w4fUgwWiIIbqyueczl8hfZnWZnM1Tqh7NFBKZSnZR0swN
         TXp7Btz2WBY39A7ihVGbiADDcOnhn6mEwZo652MY9jeR/WVg+O/M5JKeZHf6EsTP1R+Q
         XlU5XGN8F015d08d55wb20zORJ2gmDK47DJzRRR3PQLy2FD1YkQtrx91BZ28kqIfXVIi
         Oua8ScIGJ8GDyVsxW/+dW5FdV62wmTyYq6oaVSZZRzr8KCBnUmvLnEv8XhD5IjbNb0r9
         yLNeLPqPM9swY4YidjLo5zZ4IJbLDvZfCShrvgPWDnoho0QZSSmSNyFZL7OjKeRLFu4q
         Hv+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ekQ05ZYr;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id b38si13334plb.1.2019.03.09.03.07.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 03:07:56 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ekQ05ZYr;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id l11so206085pgq.10
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 03:07:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=5Ta8ETmI0bDCbzPgevD5/R/0DjlWB+KvqXqKWy94rSM=;
        b=ekQ05ZYrevziYOKVRx2IA0jo8LjqAaQymx3kfF/1kGbzZCm/RQtJfiGxLBKA9uo7R1
         q4FrG8HMTIdQATmTHCK3DCWATfLVSnlzmsb+ZfblLoplwrsexySgQ3sGlpNNtvxiXvZf
         nLius5Y/beZuS9UleaWas5FizYPStwmCiwsndwEMYftMsNgAFwspy2QyVVoYn4vR8Vc3
         F7xUOK9tOick4darbJ86pILGSN7XUV3Bhtpe9uVpvul960xCCqUwOEO/TWK5GXy60+BX
         RwUuR67YC/JH5rxIcou8UrLxzral8uyR23E7TqD2MUWh0coa1iwuJxlizYSU9rYuJmu7
         9P7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=5Ta8ETmI0bDCbzPgevD5/R/0DjlWB+KvqXqKWy94rSM=;
        b=GoBtTDf7yb9WcA9uAoD/7ugUx3W1a7vbfAISGoFsY+fuCZwCJJ9QW49WJKmFrMl05M
         tCnpMOfqeh35DhRgZ3LsI5uWg1SofiHnQkECQLdDZC0GF/HMd1e6kQ/kA20hiE6EDXYx
         XiA1OJttWt+zKdKSg6a4MTcWN6tNkBbcRwGG5XGWeYfmzCvv0TAA0bcbK9d/UJs/9zRc
         wjnK9AYfDgw25vMbZiabLpYUS1wXsZAeWdV0Zfbo7Iv9rKWlZgz/DyxKQTCLJ3oPQJG6
         Alg8JFMDE+Pja053OKCR1GNrQOgnfEEcqxGKoSAOCP7AtlKF8osrc7/SnjUqK1vL7vs+
         cqjA==
X-Gm-Message-State: APjAAAWLpEyAnQt9CbyacQRjkawd5TWIbyYYSfgy8kiivZslBxDJBrvs
	OFb6QZWqCZOhBk/B7A/9P52gj676k7E=
X-Received: by 2002:a17:902:f095:: with SMTP id go21mr23096444plb.199.1552129676332;
        Sat, 09 Mar 2019 03:07:56 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([157.32.145.236])
        by smtp.gmail.com with ESMTPSA id y37sm1860732pgk.78.2019.03.09.03.07.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 03:07:55 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: adham.abozaeid@microchip.com,
	ajay.kathat@microchip.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH 1/2] staging: wilc1000: remove unnecessary variable ret
Date: Sat,  9 Mar 2019 16:37:42 +0530
Message-Id: <20190309110743.41443-2-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190309110743.41443-1-himadri18.07@gmail.com>
References: <20190309110743.41443-1-himadri18.07@gmail.com>

Remove unnecessary local variable "ret" and its assignments from
function wilc_set_tx_power. Suggested by Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index fa0e1bd9f836..4a5f83ae06d2 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -2119,7 +2119,6 @@ int wilc_setup_multicast_filter(struct wilc_vif *vif, u32 enabled, u32 count,
 
 int wilc_set_tx_power(struct wilc_vif *vif, u8 tx_power)
 {
-	int ret;
 	struct wid wid;
 
 	wid.id = WID_TX_POWER;
@@ -2127,10 +2126,9 @@ int wilc_set_tx_power(struct wilc_vif *vif, u8 tx_power)
 	wid.val = &tx_power;
 	wid.size = sizeof(char);
 
-	ret = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
+	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
 				   wilc_get_vif_idx(vif));
 
-	return ret;
 }
 
 int wilc_get_tx_power(struct wilc_vif *vif, u8 *tx_power)
-- 
2.17.1


