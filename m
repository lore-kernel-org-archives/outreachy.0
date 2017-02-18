X-GM-THRID: 6388318876145287168
X-Received: by 10.157.20.7 with SMTP id h7mr3774553oth.147.1487396395880;
        Fri, 17 Feb 2017 21:39:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.0.1 with SMTP id 1ls6526066ota.5.gmail; Fri, 17 Feb 2017
 21:39:55 -0800 (PST)
X-Received: by 10.200.51.186 with SMTP id c55mr3455209qtb.52.1487396395492;
        Fri, 17 Feb 2017 21:39:55 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 23si1190776pfw.4.2017.02.17.21.39.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 21:39:55 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id y6so5507183pgy.2
        for <outreachy-kernel@googlegroups.com>; Fri, 17 Feb 2017 21:39:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=XZR1nBtw0E3qC4WRRgC7/WxxKPYj/97nCbPi0RHrV+k=;
        b=fuVexKwYWl3d5VnYeo/6TPjUSv7H9mz1aN8k9agMhjoBnA/wsCxWgZO1qnm9QlLHKD
         0oLt/12l8OqLJ/QWmqAS0bR7wKwhq/595B92W+rdatsOD2bw+Je6HirG7e9KSTvIqwx7
         wZj+qzzj81+UBdtbWEm4ZWlSLcwyKfXo6fh51RW+4t2wcD6cHRglhTtd0ZU8/Ad1yiQO
         LVPkfWs5lqMAYRLEuLuAheV2f93YVEJqtvG4fBaZMmB9x9v60lJeq13HIjEsl5sJFgoU
         ysyfXkR1hTcHyG3KdPO1VdcPyhP3twvP99jfvYxek+U2PIXKfrN6eMjHfeP9ZafPLiUJ
         ttqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=XZR1nBtw0E3qC4WRRgC7/WxxKPYj/97nCbPi0RHrV+k=;
        b=rPcAgVVFG0v1IcEtt38tO2VgePFoodeRco9+OyB65Lm/43jGgLPZVfri0XftJXNFoO
         o7JeM911i8o6t3BeIyGUGcaiJm7Pd2PynPGUChebkQh5Q9MnZ0QruO9YWeCNtv2fncjm
         6EpQGh02qyBgg8qH6EUDy9tfOEJs6YOcO771kCaw9pLY9YSUCYTcQtDAsjN9uDTZbocI
         OAIAI4pE4N9XFI7hJ9OoXrUGI+cIlbxiESierJVaJthxKGCGza+VfxzV+yEV2uxshvzk
         +JJtT8dG6yLxKcwUUPjxqUBdALRNEg9hIsKMrX+npRabbtCfXiCihP4sLZBzLj068KhR
         9gAA==
X-Gm-Message-State: AMke39lq41ii3CS7J34PPOqhMcf8b0FbXpGk0glSdYRGgo6O5+E/hNa4PJWXbB6Gg5EczA==
X-Received: by 10.84.216.93 with SMTP id f29mr16312840plj.10.1487396395285;
        Fri, 17 Feb 2017 21:39:55 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id o18sm11909096pgn.36.2017.02.17.21.39.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 17 Feb 2017 21:39:54 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: wlan-ng: remove extra parentheses
Date: Sat, 18 Feb 2017 11:07:41 +0530
Message-Id: <1487396261-22041-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Removes extra parentheses around function arguments. Issue
detected and resolved using the following coccinelle script:

@@
expression e;
identifier f;
@@

f(...,
-(
e
-)
,...)

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/wlan-ng/p80211conv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
index 8b0905e..a062e80 100644
--- a/drivers/staging/wlan-ng/p80211conv.c
+++ b/drivers/staging/wlan-ng/p80211conv.c
@@ -211,7 +211,7 @@ int skb_ether_to_p80211(struct wlandevice *wlandev, u32 ethconv,
 			return -ENOMEM;
 		foo = wep_encrypt(wlandev, skb->data, p80211_wep->data,
 				  skb->len,
-				  (wlandev->hostwep & HOSTWEP_DEFAULTKEY_MASK),
+				  wlandev->hostwep & HOSTWEP_DEFAULTKEY_MASK,
 				  p80211_wep->iv, p80211_wep->icv);
 		if (foo) {
 			netdev_warn(wlandev->netdev,
-- 
2.7.4


