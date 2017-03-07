X-GM-THRID: 6394877671484948480
X-Received: by 10.46.82.157 with SMTP id n29mr563340lje.29.1488923484517;
        Tue, 07 Mar 2017 13:51:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.15.1 with SMTP id 1ls184819ljp.36.gmail; Tue, 07 Mar 2017
 13:51:23 -0800 (PST)
X-Received: by 10.46.7.10 with SMTP id 10mr513655ljh.1.1488923483974;
        Tue, 07 Mar 2017 13:51:23 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id n128si481257wmf.2.2017.03.07.13.51.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 13:51:23 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id l37so1881298wrc.3
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 13:51:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=nkTDD5Xc0YrFJ4xCeL9DMfNJFH88Eh3H5v2Sdu7ISKQ=;
        b=ncT+/9ytBlzqAOD5aeFNrP62UzNamrsCE9ZVwsU6lpEvsC2r4TYb0NuvlID0OKW8tx
         DTU3eIoRE8USiE4zffK1gK8k184Q406Q568NrKctaq8ONXH2jN5ExGeCas0EvtjaCUWy
         zRECXPWOrrPjLLwfSGojviLCda4D8KM6znw3uKeJvDNKtdiTv6Vi9xuNLkJTwN6EC7x4
         id2TRNfChEQmlIyey/Vo0/QFNwJj8a/6eiy2PCIFmB4rkqfZ3GSkhbpXdUbdNGPNdqdL
         TTLNuPa2lOu8HQdlyA5x7+nsG19qQ0R6WPHPlgFxrqvUyaPhUVTRL4bkVJCKxehFyGVb
         s+5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=nkTDD5Xc0YrFJ4xCeL9DMfNJFH88Eh3H5v2Sdu7ISKQ=;
        b=aN+eHV5MGG8WR2FHcPRAI8ujV1wBRi7Qf+Xx3C+g5qzQ/LFSKtIbqxY7ZMbno5vRUf
         TbMNJ7XOiY3nX4pVPzobjYw0uZ+/D1gmrNhcfh1oGoMn93cdiTt3eiHfkso8yD0z4kbz
         N4hvBIwK8Mq7KvY84UuaFEXMwbE3PbdfmE8nP2LwIO+VLyjjMzd7fVgk/6m9Zo/z9Y0E
         J3aLjgQz9SVvCLE5fQZnja3WTqJqIM3rbYn9TkHZrGbC+ihlyr4r8jCNfMiecuFLbmsh
         zLSvxy1fuCkLX0sJ1SkhXvagjGzMhLb6MYsL/1qzEtiQSLEtQ16Mk5kuJ+e9PQSsnTpo
         VpBg==
X-Gm-Message-State: AMke39lM1JX2uy999ah8ildp1oUvmXceQQ63KqcY7s1CTrbE6M4+j/RK1ONXwz5taIaigg==
X-Received: by 10.223.148.35 with SMTP id 32mr2204977wrq.82.1488923483805;
        Tue, 07 Mar 2017 13:51:23 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:8168:a9b6:7cd0:c4cf])
        by smtp.gmail.com with ESMTPSA id w207sm20496419wmw.29.2017.03.07.13.51.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 13:51:22 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] staging: wilc1000: wilc_wlan.h Add identifier name
Date: Tue,  7 Mar 2017 23:51:20 +0200
Message-Id: <20170307215120.4545-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Add identifier name for function definition argument.
Fix the checkpath.pl warning:
WARNING: function definition argument 'struct wilc *' should also have
an identifier name.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.h b/drivers/staging/wilc1000/wilc_wlan.h
index 11365ef..7a5eba9 100644
--- a/drivers/staging/wilc1000/wilc_wlan.h
+++ b/drivers/staging/wilc1000/wilc_wlan.h
@@ -274,8 +274,8 @@ struct wilc_vif;
 
 int wilc_wlan_firmware_download(struct wilc *wilc, const u8 *buffer,
 				u32 buffer_size);
-int wilc_wlan_start(struct wilc *);
-int wilc_wlan_stop(struct wilc *);
+int wilc_wlan_start(struct wilc *wilc);
+int wilc_wlan_stop(struct wilc *wilc);
 int wilc_wlan_txq_add_net_pkt(struct net_device *dev, void *priv, u8 *buffer,
 			      u32 buffer_size, wilc_tx_complete_func_t func);
 int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count);
@@ -291,7 +291,7 @@ int wilc_wlan_txq_add_mgmt_pkt(struct net_device *dev, void *priv, u8 *buffer,
 void wilc_chip_sleep_manually(struct wilc *wilc);
 
 void wilc_enable_tcp_ack_filter(bool value);
-int wilc_wlan_get_num_conn_ifcs(struct wilc *);
+int wilc_wlan_get_num_conn_ifcs(struct wilc *wilc);
 int wilc_mac_xmit(struct sk_buff *skb, struct net_device *dev);
 
 void WILC_WFI_p2p_rx(struct net_device *dev, u8 *buff, u32 size);
-- 
2.9.3


