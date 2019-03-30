X-GM-THRID: 6674230099683835904
X-Received: by 2002:ab0:778d:: with SMTP id x13mr5513728uar.7.1553965491368;
        Sat, 30 Mar 2019 10:04:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:83c1:: with SMTP id f184ls1156268vsd.6.gmail; Sat, 30
 Mar 2019 10:04:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyeoCPc44uMz1QT8+iKf/ljJGrw1Ylp0UdCyb1dn3KT44Fx2bDxQvXUMycy9tIDE5CpU67v
X-Received: by 2002:a67:dd96:: with SMTP id i22mr4669758vsk.2.1553965490675;
        Sat, 30 Mar 2019 10:04:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553965490; cv=none;
        d=google.com; s=arc-20160816;
        b=TxrbX/BIVq8NR5DmBhaGxz9S7RkOYkFODdKDQPxccYLcB7SzYo9YsV8DHiLyPoI0zx
         H8EOAxsnhVvLxsDGOLBhbyxWVU7ClRGybjUEeJPKbpw2IZVcMI+p6QbXytWCA9+B8+bj
         D7avcOT5WiLk1/RwYL16yohKzXxkCN6YKEWW6iYLQc3Xd3mAn34hZIIrNdP03vYZmg2J
         VSrQtlq+gaZVKaTFuoKOxrCGqur52/2Ay4fHPmwKMv8nkOUiQILKli9aS5AyaBM2BBiH
         v+S1F2uXXLBpufq0FHXCaG03RAa2v8AGE5O1NH40OPXDx8QWNwKF6VrFgPx3Izp046h/
         IVtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=j5SOUTe52wxh31ASZTgYoAZ9aX0kktZBr+GvJZWMdpw=;
        b=EhE6Te3BB/Q3NGadk0N2wLsy5Ks133+eZoXj6//N4H+cc3TdU2hNzkVGXJfFZBdVeU
         wTEbf4evmJrE46RUXdKDrNckcsaqSxlFKJP7BxBWovtWEA0Rk+aSIIqWOiQlnXl7qjA1
         T9jqVTafp6z7lwJJJgPky5KpI8mjexod4dmyJTlTdDc6zz97sFAn9t25OgeO7K5rl4Wg
         D8UbNx2pU2Ku1rzx5bZR6t+me+y1dor/glwIzwr0hlKAMC6qPvEJ7e+FKLKwxNAZw6wy
         q6B1rG5otaVOGfRu23k6aE4S1dmtQxcH07tUApw0J+Jlm+KJgBsYG+XA5WUliunCf3Wy
         rfQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DdU1dbT0;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id y8si387957vsc.0.2019.03.30.10.04.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 10:04:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DdU1dbT0;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id y6so2447810pll.13
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 10:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=j5SOUTe52wxh31ASZTgYoAZ9aX0kktZBr+GvJZWMdpw=;
        b=DdU1dbT0S/Rhop7Pg/f7/xoh1HzvXrDPZxHUISnPqe7e7Mkb9VNZOwR/97y0EtmWcE
         FHyQX2QL0GD1WYJ+TV6LPQUYLS3DXNt1MEC3Rlg0r0b2U2bIAgdA6jhJI+HUjlVF1XjE
         a9QCetb7boSOqla1hNEQULvcbiTY2Xcd2DH0mNWbbtB+qGsUlJz45PmHXuAiQfCOUC8x
         BoLJfyxh74VebcLW33I0B8TAImc0pz3ywz8xicpGV9n7qUdrbhZ49XveQvace1hDaTiP
         yTSugGMgBfcpod+fAqzqizVs/7sLXnbrjW0ahUqQWPg+ZGyXpVUGdQ4ANOznlYfSnP2T
         kQyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=j5SOUTe52wxh31ASZTgYoAZ9aX0kktZBr+GvJZWMdpw=;
        b=CgJzpSpQZTAcz8PpWI20lU7inh9TNr7KUb330vqCyegNR6NwFsRHxrpM6N7ivut2gV
         UcSEirUjOnMp1FJ6JOiW41TP3C6BkRdq95Qc3e4VKZeWiX12jrbLTp3BArtd7j79lvuh
         F+pWyfqm9k5jckzGLMNlEveTq51C3Ehd7x9l3tyAMiaoK4daCHrVscSGZ6LelrDDlFKD
         YaWhtv8Zy95teIExUNN03t+oEBS5y6ZncumJAWfXielIEC01OxQm3E0sfE1v7ZnPfcV4
         9k1+sGjAa0zpy2jqSEoNA/GpG5L2HaGWglg8kiABUOzfhYdFHb/QAP7gvY13SLDc46C1
         Rr4Q==
X-Gm-Message-State: APjAAAW1x0ddF9hf7KJpWeiW1DXRAm2B5++BrdcmvTx9G3HGFirdKfQh
	NsWHLOLXNaWHr0KAnaJoR8FA0XVGu78=
X-Received: by 2002:a17:902:3f83:: with SMTP id a3mr52610618pld.6.1553965489823;
        Sat, 30 Mar 2019 10:04:49 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.165.90])
        by smtp.googlemail.com with ESMTPSA id k9sm7754134pga.22.2019.03.30.10.04.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 10:04:49 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/2] staging: wilc1000: host_interface.c: Modify return statement.
Date: Sat, 30 Mar 2019 22:34:37 +0530
Message-Id: <20190330170437.4879-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190330170116.4761-1-sanjana99reddy99@gmail.com>
References: <20190330170116.4761-1-sanjana99reddy99@gmail.com>

Challenge suggested by coccinelle.
Remove return variable and directly return the value
Issue found using ret.cocci

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v3:
Make a patch series.

Changes in v2: 
Adjust space for last argument in return statement.
 drivers/staging/wilc1000/host_interface.c | 31 +++++++----------------
 1 file changed, 9 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 4dd9a20f6a0b..09c3095c0392 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1358,17 +1358,14 @@ int wilc_add_rx_gtk(struct wilc_vif *vif, const u8 *rx_gtk, u8 gtk_key_len,
 int wilc_set_pmkid_info(struct wilc_vif *vif, struct wilc_pmkid_attr *pmkid)
 {
 	struct wid wid;
-	int result;
 
 	wid.id = WID_PMKID_INFO;
 	wid.type = WID_STR;
 	wid.size = (pmkid->numpmkid * sizeof(struct wilc_pmkid)) + 1;
 	wid.val = (u8 *)pmkid;
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
-
-	return result;
+	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
+				    wilc_get_vif_idx(vif));
 }
 
 int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)
@@ -1403,8 +1400,7 @@ int wilc_set_join_req(struct wilc_vif *vif, u8 *bssid, const u8 *ies,
 		conn_info->req_ies_len = ies_len;
 		conn_info->req_ies = kmemdup(ies, ies_len, GFP_KERNEL);
 		if (!conn_info->req_ies) {
-			result = -ENOMEM;
-			return result;
+			return -ENOMEM;
 		}
 	}
 
@@ -1570,7 +1566,6 @@ int wilc_hif_set_cfg(struct wilc_vif *vif, struct cfg_param_attr *param)
 {
 	struct wid wid_list[4];
 	int i = 0;
-	int result;
 
 	if (param->flag & WILC_CFG_PARAM_RETRY_SHORT) {
 		wid_list[i].id = WID_SHORT_RETRY_LIMIT;
@@ -1601,10 +1596,8 @@ int wilc_hif_set_cfg(struct wilc_vif *vif, struct cfg_param_attr *param)
 		i++;
 	}
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, wid_list,
-				      i, wilc_get_vif_idx(vif));
-
-	return result;
+	return wilc_send_config_pkt(vif, WILC_SET_CFG, wid_list,
+				    i, wilc_get_vif_idx(vif));
 }
 
 static void get_periodic_rssi(struct timer_list *t)
@@ -2121,7 +2114,6 @@ int wilc_setup_multicast_filter(struct wilc_vif *vif, u32 enabled, u32 count,
 
 int wilc_set_tx_power(struct wilc_vif *vif, u8 tx_power)
 {
-	int ret;
 	struct wid wid;
 
 	wid.id = WID_TX_POWER;
@@ -2129,15 +2121,12 @@ int wilc_set_tx_power(struct wilc_vif *vif, u8 tx_power)
 	wid.val = &tx_power;
 	wid.size = sizeof(char);
 
-	ret = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				   wilc_get_vif_idx(vif));
-
-	return ret;
+	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
+				    wilc_get_vif_idx(vif));
 }
 
 int wilc_get_tx_power(struct wilc_vif *vif, u8 *tx_power)
 {
-	int ret;
 	struct wid wid;
 
 	wid.id = WID_TX_POWER;
@@ -2145,8 +2134,6 @@ int wilc_get_tx_power(struct wilc_vif *vif, u8 *tx_power)
 	wid.val = tx_power;
 	wid.size = sizeof(char);
 
-	ret = wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1,
-				   wilc_get_vif_idx(vif));
-
-	return ret;
+	return wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1,
+				    wilc_get_vif_idx(vif));
 }
-- 
2.17.1


