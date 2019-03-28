X-GM-THRID: 6673502133906571264
X-Received: by 2002:a9d:6acd:: with SMTP id m13mr1547887otq.65.1553795797402;
        Thu, 28 Mar 2019 10:56:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:764b:: with SMTP id o11ls6619121otl.4.gmail; Thu, 28 Mar
 2019 10:56:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw1zL+7Mb8Otbfozh2IVdAtLnMyd9g6MsV+AeUcerSSzvNs0PK2gRoxTN3++TfkL1Fx1YpB
X-Received: by 2002:a9d:64cb:: with SMTP id n11mr2701551otl.48.1553795796503;
        Thu, 28 Mar 2019 10:56:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553795796; cv=none;
        d=google.com; s=arc-20160816;
        b=yNra5pIua4QVaI6Ucid4K5XqDisVxk88yTh6Bbx/DBTJoCTI2tJuTipdZYZY0lIcwM
         C6syts+am3mdkC5PT+CXvHmNSeojNyJlWAyKtE3AYvAAX4t+S8tqz6RFSXgPSc9tDkgP
         3BHMHsiTYPKxwYfdMX1f3ZsbeTcD5sJmC+RXST2woZjqZf1SYm+vJG70W1QHVTCkdsWe
         5AbV9RltF8Go1RZcXvI9FFMb8GX93Vj/O+QLlKeTJDNlJRR5BIa+Zn9bfTT30QOktyJJ
         5Ofbi99a5Zg+QaysK9/mlX6mqFizDqaI6Z1/fi9yfQCxEA8XyyuO0LbwqkMxNXEzvEvk
         4Zfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=5HGXftJy4XB5Mu9J5zPsRUvdJBOnY24FGZPUXXIzId0=;
        b=MByjDirxuTGyp9AsK6Kn8iEFvYnLdtKUclpgvJ7TNX9z7onM1dPkKWzmHwzWUwnG8w
         ++BW1yfEjRQwJp7k/MIBGELRKGNmMmS4PSqSFBPk3Z/iWNo0uE+ARQXMMb2T1Ma7T9U4
         pKFmyn7loCKR2XNqDmbrCz20Xh5dhFOJ1dX8WdWJf+GGgYRBXPtFOa4Sokn2kVn+AWpu
         tUOfGrg8EbkEPRsky42RolpMCaz33RtMNwt/Hj4D0cHXKaYkDo8xmv1TGr3gHnPXPfae
         Uzzr5sUWBUczXtT8daIxUmRtbiRgJiJZ1PQ9TbSYhpESnKY/KF8G6Eg7yNbflgUZaay1
         bhTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aaxqqm+X;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id a134si1240063oih.4.2019.03.28.10.56.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 10:56:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aaxqqm+X;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x632.google.com with SMTP id q6so5303438pll.4
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 10:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=5HGXftJy4XB5Mu9J5zPsRUvdJBOnY24FGZPUXXIzId0=;
        b=aaxqqm+Xz4cYxsFuYvXxzY0T0tcthIl/+PtiNSEjk2LvaVXIzLDbMomftpIe9pgm2X
         CwMv+hxL4ajascBdncnbTB96u8Ld/5D4mB72YrmMq4oF4qsL19ZvLWe5RcvIjJIw/4nI
         zkvi8rw9IKDastoTkPUuSIcCQ8A4QMP7CgleVyL1OAT9c6te61/N0iUuzt3q98OidriR
         847awD3yDhgmD/Q9CTSA84v1Htc1nM2i8IjhPX5fBNCw4K/UFwZOQ2hiGkxcivVvuI2l
         VheF08DxoNPL91/T6yx9y8cMQRjmbX0pvI/W+VKYL/T9KvEJuj7rwvhgKVkryuCnC9g1
         nqoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=5HGXftJy4XB5Mu9J5zPsRUvdJBOnY24FGZPUXXIzId0=;
        b=sA/oFYpmpy0sENac3jX5GcwVMOEt3l5h5+sB510mSbyYtgKAhcLZevVS3ZvNtyBuS6
         SHEGhBBIHOlaZLTZPbv3gsr3SJOAEbfDNx85WNw4dFB2T3rFdUPUHCcoAtv8HhO4JGQE
         k/DEJA1AiWV8RkJ5NxnyWfP6GpaSdvfc+tqCiPBaIzyTlrnFstST/bFFJSJkAftW7mFd
         TbNEp4nH+jUpvDd+TXt5O1kDktZzfWFnJfKk56ZI2YhyJADt/7NwUpfbcMfbxeaUIIL2
         WYWI6jDuMrIIYP82+IJFkid3uvIxDzzu6DTQf/Ex8d5HyAbsMOLGBIc2ew+AbVIXqN4g
         C3Tw==
X-Gm-Message-State: APjAAAWuFT5x1MAL1ZIGhVcY7Hz99/aU8QHB9VOFS3wxFDfGGOihJpQY
	x1b/yt1ZvMFDp1JkKzsCePmxR/sH
X-Received: by 2002:a17:902:5c5:: with SMTP id f63mr40932836plf.64.1553795796151;
        Thu, 28 Mar 2019 10:56:36 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from localhost.localdomain ([2405:204:6105:9194:4d26:756d:e157:1b31])
        by smtp.googlemail.com with ESMTPSA id e2sm42989233pfa.64.2019.03.28.10.56.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 10:56:35 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: host_interface.c: Modify return statement.
Date: Thu, 28 Mar 2019 23:26:22 +0530
Message-Id: <20190328175622.27971-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Challenge suggested by coccinelle.
Remove return variable and directly return the value
Issue found using ret.cocci

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 23 +++++------------------
 1 file changed, 5 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 4dd9a20f6a0b..a10c31bce07f 100644
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
+	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
 				      wilc_get_vif_idx(vif));
-
-	return result;
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
+	return wilc_send_config_pkt(vif, WILC_SET_CFG, wid_list,
 				      i, wilc_get_vif_idx(vif));
-
-	return result;
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
+	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
 				   wilc_get_vif_idx(vif));
-
-	return ret;
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
+	return wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1,
 				   wilc_get_vif_idx(vif));
-
-	return ret;
 }
-- 
2.17.1


