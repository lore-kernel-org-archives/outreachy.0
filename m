X-GM-THRID: 2380327288832
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,568c7324d7e64dcf,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.214.234 with SMTP id od10mr665274lbc.3.1424602853331;
        Sun, 22 Feb 2015 03:00:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.91.234 with SMTP id ch10ls364003wib.40.gmail; Sun, 22 Feb
 2015 03:00:53 -0800 (PST)
X-Received: by 10.194.11.70 with SMTP id o6mr667669wjb.6.1424602853054;
        Sun, 22 Feb 2015 03:00:53 -0800 (PST)
Return-Path: <gamzepolat94@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id l8si652325wia.0.2015.02.22.03.00.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 03:00:53 -0800 (PST)
Received-SPF: pass (google.com: domain of gamzepolat94@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gamzepolat94@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=gamzepolat94@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f171.google.com with SMTP id hi2so11217851wib.4
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 03:00:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=rwiRbLdDZu+3voIQ2vg0ZiIAgydLVbrQd/levSnguJ4=;
        b=K6MG3bMM4deSrM6XzKOUaEfBdbUgfHraWMoNh1k1XrLmbk2FMh0vZQAVgO20riEZ1h
         PlFLSGNlmikdaGAOHgCLD8kAO159JK/rgoJKJErtBFAngr/WFANA/FB+3RP9jUTDit2k
         kquLlsyC958a06P1xKIj5YtRyT+xIs+xhMsYw8fqCGpWOdvY85gzNibpRr1hvTCkI1SB
         S31Wf4SD0LVdaaQ+T8StbV867axKF5eCrvcNmAvetXKpuZepW9qjXjDIfFehN8HtsOQw
         qWNNbhyueQOVcMJIXrgr8LdzobyFwESbw7qHmsGXlcNz4QpLqfp4zoOqcoc26ccnDRNL
         eztg==
X-Received: by 10.194.61.161 with SMTP id q1mr2703055wjr.132.1424602852818;
        Sun, 22 Feb 2015 03:00:52 -0800 (PST)
Return-Path: <gamzepolat94@gmail.com>
Received: from gamze-Lenovo-IdeaPad-Z510 ([94.122.20.155])
        by mx.google.com with ESMTPSA id er13sm50612554wjc.11.2015.02.22.03.00.51
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 03:00:52 -0800 (PST)
From: Gamze POLAT <gamzepolat94@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gamze POLAT <gamzepolat94@gmail.com>
Subject: [PATCH] staging: rtl8712: WARNING prefer ether_addr_copy() over memcpy()
Date: Sun, 22 Feb 2015 13:00:39 +0200
Message-Id: <1424602839-4395-1-git-send-email-gamzepolat94@gmail.com>
X-Mailer: git-send-email 2.1.0

WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet
addresses are __aligned(2)
Pahole showed that the addresses are aligned.

Signed-off-by: Gamze POLAT <gamzepolat94@gmail.com>
---
 drivers/staging/rtl8712/os_intfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index 13debb5..6d03f8d 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -181,7 +181,7 @@ static int r871x_net_set_mac_address(struct net_device *pnetdev, void *p)
 	struct sockaddr *addr = p;
 
 	if (padapter->bup == false)
-		memcpy(pnetdev->dev_addr, addr->sa_data, ETH_ALEN);
+		ether_addr_copy(pnetdev->dev_addr, addr->sa_data);
 	return 0;
 }
 
-- 
2.1.0


