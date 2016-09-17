X-GM-THRID: 6331328146367840256
X-Received: by 10.237.54.135 with SMTP id f7mr11625666qtb.6.1474127207507;
        Sat, 17 Sep 2016 08:46:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.134.140 with SMTP id q12ls2361736ioi.39.gmail; Sat, 17 Sep
 2016 08:46:45 -0700 (PDT)
X-Received: by 10.36.249.199 with SMTP id l190mr773656ith.29.1474127205015;
        Sat, 17 Sep 2016 08:46:45 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 142si5324727pfx.2.2016.09.17.08.46.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 08:46:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id pp5so4760076pac.2
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 08:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=VZu2WojeWF+csmULa+uT9IGFL/yr2gutsvBU35F1c9g=;
        b=tnsu/YN7EnrDWVuGx8Krt7ccmrHKIQckhS93OWAG0IeEfK4PLBcwGOZ5qPVzrzK99s
         I+e087ss8UHGBf0eBqxak06HJ3R41XOImH7B7J3HWwWH2tck5tVR1WpT7Uf7JXRh3HHT
         VLcboXHOXwkAFgJUZWZ94gwwnzk/uSQpuTRnhCQvfPG0YD+9p3Mb8ELh0UYO+8NIvqON
         7UfPa0uFSP/tfwsf5HYuKDotHPwPyNKMuLBAltsgm0zInANLcJoRXpa7ZnTMnhL9sEoc
         aU8O86rJnzTSa7vfVH+YlumPKAVk46m0yR+1hO7fpACXYFDXDjO+j2QeNXwcHXOBTLIm
         ehXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=VZu2WojeWF+csmULa+uT9IGFL/yr2gutsvBU35F1c9g=;
        b=W2oMLNdy5QLx+wfYMu4ZEew1U9lYgFZ0P7C2bkizWFU5cBh57BYUDCImjvtoedpUnB
         1Ni/877/hKzf2dtSF9CTeYw7YLUu5I+QqT5t4meZdNrdOjKcJ3f6xB5sZrC2GdJWQyJ4
         w/5DhFNfw6HEi3mK1DdBwDgidj/X/MgNbHqs/gvZFaxEulMSlDXHVFMQgeZb3aRdtA8G
         YwiVaWeBvy/b9lIQQgJtokvv6CachPkDVBGVoi/+zDkQwJrnq2BhzXqiqAUsGwXLgvAG
         ywY+r/SVqqAV9FiuzMZGXjBIuErP/UTFfrP9f/l5iC8J624WZrZBVQulziyLn1oCz7p3
         x54Q==
X-Gm-Message-State: AE9vXwPtzyIjo2ipgT6uyxpq7JjsoL6P4xBBMX+lm7ZDbFhqYKq6yMqjwcb0ZNBh0lIG4Q==
X-Received: by 10.66.9.97 with SMTP id y1mr828244paa.150.1474127204402;
        Sat, 17 Sep 2016 08:46:44 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.185.6])
        by smtp.gmail.com with ESMTPSA id 85sm1539737pfw.92.2016.09.17.08.46.34
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 08:46:43 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Sat, 17 Sep 2016 21:16:24 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	aditya.shankar@microchip.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: wilc1000: Make functions wilc_mac_{open/close} static
Date: Sat, 17 Sep 2016 21:16:11 +0530
Message-Id: <1474127171-16522-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The functions wilc_mac_{open/close} are used only in linux_wlan.c.
Therefore, declare them static and remove their declaration from
header wilc_wlan.h and also remove their extern declaration from
wilc_wfi_cfgoperations.c.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/wilc1000/linux_wlan.c             | 4 ++--
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 3 ---
 drivers/staging/wilc1000/wilc_wlan.h              | 3 ---
 3 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
index 7242532..118bff5 100644
--- a/drivers/staging/wilc1000/linux_wlan.c
+++ b/drivers/staging/wilc1000/linux_wlan.c
@@ -832,7 +832,7 @@ static int mac_init_fn(struct net_device *ndev)
 	return 0;
 }
 
-int wilc_mac_open(struct net_device *ndev)
+static int wilc_mac_open(struct net_device *ndev)
 {
 	struct wilc_vif *vif;
 
@@ -1023,7 +1023,7 @@ int wilc_mac_xmit(struct sk_buff *skb, struct net_device *ndev)
 	return 0;
 }
 
-int wilc_mac_close(struct net_device *ndev)
+static int wilc_mac_close(struct net_device *ndev)
 {
 	struct wilc_priv *priv;
 	struct wilc_vif *vif;
diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 2c2e8ac..3b26130 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -90,9 +90,6 @@ static const struct wiphy_wowlan_support wowlan_support = {
 #define IS_MGMT_STATUS_SUCCES			0x040
 #define GET_PKT_OFFSET(a) (((a) >> 22) & 0x1ff)
 
-extern int wilc_mac_open(struct net_device *ndev);
-extern int wilc_mac_close(struct net_device *ndev);
-
 static struct network_info last_scanned_shadow[MAX_NUM_SCANNED_NETWORKS_SHADOW];
 static u32 last_scanned_cnt;
 struct timer_list wilc_during_ip_timer;
diff --git a/drivers/staging/wilc1000/wilc_wlan.h b/drivers/staging/wilc1000/wilc_wlan.h
index de6c4dd..f336f4c 100644
--- a/drivers/staging/wilc1000/wilc_wlan.h
+++ b/drivers/staging/wilc1000/wilc_wlan.h
@@ -297,9 +297,6 @@ void wilc_enable_tcp_ack_filter(bool value);
 int wilc_wlan_get_num_conn_ifcs(struct wilc *);
 int wilc_mac_xmit(struct sk_buff *skb, struct net_device *dev);
 
-int wilc_mac_open(struct net_device *ndev);
-int wilc_mac_close(struct net_device *ndev);
-
 void WILC_WFI_p2p_rx(struct net_device *dev, u8 *buff, u32 size);
 void host_wakeup_notify(struct wilc *wilc);
 void host_sleep_notify(struct wilc *wilc);
-- 
1.9.1


