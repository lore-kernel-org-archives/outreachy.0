X-GM-THRID: 6332043627755208704
X-Received: by 10.66.167.234 with SMTP id zr10mr4733557pab.96.1474297714761;
        Mon, 19 Sep 2016 08:08:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.162 with SMTP id 31ls1524374otj.21.gmail; Mon, 19 Sep
 2016 08:08:34 -0700 (PDT)
X-Received: by 10.13.201.3 with SMTP id l3mr15179505ywd.24.1474297714356;
        Mon, 19 Sep 2016 08:08:34 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id um12si4860284pab.2.2016.09.19.08.08.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 08:08:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id my20so4126346pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 08:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=bbMLSHjkQ3Q9+3VnXQPYmWKxQg5MSv6gVHAMGy9e0Nk=;
        b=V2nuD2x6uQFPujZIUIVbxhXhssG4mCv2RWl2Fqk9uzpQxx/S2Mnk9ZEynpMykQuKmJ
         izRs+cDN5CHUWxILTu17KoDx8LmIeB3+XOQk2Q/x9Otnxm5C3NfBWbEda7tpHmZj8+U2
         ASE0nb7iq3dUI1hepgwMHbtAIftifeAcm2abVMudO0zMMk+DZOwVkDLDSCle/huZaUEg
         gHYVrIPy9Qt9wuhygKFjhT/c4eeFcGWMMCVyfnCx7ukrDWQDcUq+43EW83KqYZTLgniK
         e6o4kLUgD5TOoTcy76aPzSD9jNMQiwBCEJ4vfLrGGN+q9QlveH6rSCbenUQQFZhU9lb1
         Fitg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=bbMLSHjkQ3Q9+3VnXQPYmWKxQg5MSv6gVHAMGy9e0Nk=;
        b=gIFQIeigd2/UfiMazmTTtgpXegPKLkASwv7J8XytM8uvL4hYnGLnjjRnlFFvvFxq75
         R26Q1GIKct5sEBLhYfRxcIcZCzQ0Fh/6L5cQNUJ5iW3PqIaqBTn3gqT4mzWJuaXHRLbQ
         LUv9mTXbX5W5AEfqEVwS6mR77Jb5cTW4pVHu4Sbrk+I/DAGa4hZ4iNSFiQsmuYoFnaNs
         MrgIEk1R42PilM+dPxQgSdtoR3f0XDBjMf/Uur9Mo5qwZJ9wfHwnNmFJkI/41ViHFEbD
         kcT6D35wReU4G6b4WTroRAjRV8dqdPQFFWcSWjBXyIWSnNHuAX8rEZhbQ8TDvdUtfemh
         avjQ==
X-Gm-Message-State: AE9vXwPIREq6FngwlJRb653o95s52jmT0l+uTkaB2SFl4txYR2RB2tya7DYq24Ka5WMkjA==
X-Received: by 10.66.253.7 with SMTP id zw7mr47683570pac.25.1474297713707;
        Mon, 19 Sep 2016 08:08:33 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.144.220])
        by smtp.gmail.com with ESMTPSA id h66sm72377090pfc.47.2016.09.19.08.08.23
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 08:08:32 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Mon, 19 Sep 2016 20:38:15 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	ganesh.krishna@microchip.com,
	aditya.shankar@microchip.com,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v3 2/2] Staging: wilc1000: Make functions wilc_mac_{open/close} static
Date: Mon, 19 Sep 2016 20:37:36 +0530
Message-Id: <1474297656-2989-3-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1474297656-2989-1-git-send-email-bhumirks@gmail.com>
References: <1474297656-2989-1-git-send-email-bhumirks@gmail.com>

The functions wilc_mac_{open/close} are used only in linux_wlan.c.
Therefore, declare them static and remove their declaration from
header wilc_wlan.h and also remove their extern declaration from
wilc_wfi_cfgoperations.c.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes in v2:
- Combine it into a patchset.
- Rebuild. 
Changes in v3:
- Sending v3 as "v2" was not prefixed in subject line.
 
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


