X-GM-THRID: 6674230099683835904
X-Received: by 2002:a05:6102:151:: with SMTP id a17mr5741984vsr.37.1553967527836;
        Sat, 30 Mar 2019 10:38:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:3c51:: with SMTP id j78ls906680vka.1.gmail; Sat, 30 Mar
 2019 10:38:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwHv3eVGEvCrPN3zKcA4a8Bqnx9Pz5/QMMtmWfoI3ZUIeTnnG9hD7gnba5fwuJlfMvWDInM
X-Received: by 2002:a1f:6095:: with SMTP id u143mr4718333vkb.13.1553967527376;
        Sat, 30 Mar 2019 10:38:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553967527; cv=none;
        d=google.com; s=arc-20160816;
        b=vc51BA8yEmnG4lJYwAq6s2LiCzf054c+L0OsrmBOXHhvixj8b2pSe46qqBxZgaiE9n
         nZHrTjPIElJEh4+j/oGKUlbXGyxiGc01fyAc/KArtwd/hU0VWCBazqU69VVWVp1MiJ23
         r1oOmAqckED/25jiskE38Ll0qVddYeFKv4QOrU6s7gRYCiKQF6q0C4a4HfpiDz47gUkf
         pXy8obAaYRfSMfO5KLTYpXwASnkMmDBTN3Zb/3CbFs6bHB3jgiOwl9KfUdCg3IIaXW7d
         BGTmosz+8o6myUGZymlouv2U1XQ+tr4sJVzGmMmOe0hMakbgROiV+Y/ZMWe0lv4IE5Er
         tDsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=voV7QtNL6uds105/1I/CDYCM4rw5O28oB+okGvbiBGI=;
        b=SKqGM3rtRgLcHC47PgKfjs0U1Ah7WnKu0HpB2KifWHhzDjIMd+wGy/3Z7HQGL0SzwY
         wYugoTv8Qz114EppZaHjLoh4vSjmvTCaIdnY1gABa8Qr6GwygkP1cLF/RhwM0Lb3LP0n
         b7EcBLUk3nlPCzwHP9rUzGLxKjCViGqH2uRnKUS4zPchP9Xd+cV6kYmvkxJRjoEK+TvO
         DP97CX+1QwU8Zc/dKspOPa5fxr8Pi9Ca5Kpk5dcEkuvodb93QshbNANkZOHi91CVjgSD
         usLfP5Tpv8PHkHfPPfhbbrBLdvFp+Hrg9uIqfYizbfwVtsol3R1RRgNhA8/dGFlnOual
         Foyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="dl7Z9/Ki";
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id q191si338135vkh.0.2019.03.30.10.38.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 10:38:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="dl7Z9/Ki";
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id 85so2701596pgc.3
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 10:38:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=voV7QtNL6uds105/1I/CDYCM4rw5O28oB+okGvbiBGI=;
        b=dl7Z9/KiVYpD6Puo5vnnB2vO6uMuCDjp9nqvGNvkwCd/Smcw3mKEwej5IqiyYZSQJk
         ylaP3DcmvTOfHV7cPMSI98OZJLsX+oPnXiLJl6yIfbNUT4wOfQnSw76DFXVZgB9Eg1ug
         JXCNU+aRETEdXCIugh1TxU1HG1fyVihWBOn9zUOHdS6z+MVH5IQE76cANh4gGeGr2mis
         M3m5JBg9rJcMvkzf9ArNUZo2ZyJjWDEiBVkA/GtqN5/U2UMaLwvQoGn09Phpp4GA5mdY
         kDsXE1BESCHIXaSRSiiPE89X2MRlkgt/dDrE7LgAhUjVhJAJ9wQQCu+wlcJXJMDCAkB9
         80Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=voV7QtNL6uds105/1I/CDYCM4rw5O28oB+okGvbiBGI=;
        b=fBbK+57Lbk/SyxhRrrxuUzDpKTxF8mlih431FbFyinTQeD5QrOlZl5msTQbIbIhL2B
         lAAnd6ScLZ7qAkJXa/niYqI1Fe90GhF5u7kp/QmCnoM27wg29wurWJ9LaPh4e7RvvDuN
         r61j4Hp79DMyi7YUZSQghwK82ljfsPy/dfagwD5mZbON0qpHkHAT9ufM2QH9aDKwM5Q3
         wCtk1072nxCwUb5Yuz9JbA9gdpmJaljdLtGVdk8OmsnIDsdCpIgBC3cb0iIaDOWKEkhh
         J7JmN8ad4aucOFkqt3WulgneySnFp5IY8eDYa+ZC55p2hTRHu0JVefsyW2xpT90BSHf3
         nqcw==
X-Gm-Message-State: APjAAAUpRk7vxNJ5jcd6/d5hyfOsK75alMBpFbB74nsibY6W6fXjSdVd
	ILHgkMw/G/dSO0TNcx4Cvk7f1Iw6P0c=
X-Received: by 2002:a63:87c1:: with SMTP id i184mr52172879pge.265.1553967526520;
        Sat, 30 Mar 2019 10:38:46 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.165.90])
        by smtp.googlemail.com with ESMTPSA id t5sm2150478pfh.141.2019.03.30.10.38.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 10:38:45 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 2/2] staging: wilc1000: host_interface.c: Modify return statement.
Date: Sat, 30 Mar 2019 23:08:36 +0530
Message-Id: <20190330173836.5404-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190330170116.4761-1-sanjana99reddy99@gmail.com>
References: <20190330170116.4761-1-sanjana99reddy99@gmail.com>

Challenge suggested by coccinelle.
Remove return variable and directly return the value
Issue found using ret.cocci

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v4:
No changes 

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


