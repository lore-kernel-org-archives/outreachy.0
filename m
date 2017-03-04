X-GM-THRID: 6393343309495926784
X-Received: by 10.13.217.82 with SMTP id b79mr3179512ywe.13.1488643090208;
        Sat, 04 Mar 2017 07:58:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.138 with SMTP id g132ls3575824ioe.5.gmail; Sat, 04 Mar
 2017 07:58:09 -0800 (PST)
X-Received: by 10.36.160.133 with SMTP id o127mr1605165ite.9.1488643089693;
        Sat, 04 Mar 2017 07:58:09 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id c123si560477pfa.4.2017.03.04.07.58.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 07:58:09 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id x66so12800597pfb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 07:58:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=eCYGv+lSDEqC1zi0eRC1NyO0wzwv+6HTxMtht5j5EKo=;
        b=cHisr1p4iyRydWIkXrjO8l7+lxJjV6xzEELuD97mflSJwjNVYDnTZxgyf9WU6Seyfd
         x+K1kvxMaRCfU5RyOHpjOa+717oeNJT6d/6GuZosNUqcmz5nWjE4BRbwpJyqEk1F1iGb
         4quQJaFdsfFVasmbuSlL4qA5leYmCCCIeN4Rm5GwDvFPbui9bVGeYi0x9o3Bh9TJgA4D
         o41TnnKqFvLvHrqWPKz43bpSkV3yxaPGO9wR27ScWWYbKRq79+Nmug+p4dcWGn86QeJa
         B9RCGHdfzqPBQoWcvnh2iOWrk5Hu+wZHRn1reK+QA/KnJtYlaYj8ucq3jnH779FpKhQ7
         h4LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=eCYGv+lSDEqC1zi0eRC1NyO0wzwv+6HTxMtht5j5EKo=;
        b=fsDMLLDtcJfbIbfyIOLmugojSI0PbAAkwfTUY8tTvGVcYQ/Z0t7YxNV6LwV7Q3j5hN
         PtgqrJOqnPAx5CDOydJA4qmQsX1luEsO/ax+7HCfdScgu3G6Ow9Qw/FlyVkKS/ugBLNN
         GK9G2AcPlQ5b4ffGGeKN/6asNBR30tbRaUQepMqDHqLjKzCMAVdkcHlAQ6X3Q17eNJsO
         2TRJPnLqlYTByZArBKWiw6qi8f/dRRPzRG6Jpa1UNHAuH+KIUsgATA8se29cI56UQLSr
         2SDbKjRpq6jP1Bq8HaOz/+Ai++5wFf/x+rBYw1WgWWAntqF+bBn83EkJKtw8ceMd9SWN
         boUQ==
X-Gm-Message-State: AMke39kFdnjGgkWWEE6nCkRqAXkMAmObl+UJ6kFP2xxtnxgL5fgMy/AJk195xkrYUCVn/Q==
X-Received: by 10.84.217.206 with SMTP id d14mr12907398plj.141.1488643089466;
        Sat, 04 Mar 2017 07:58:09 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u78sm30011703pfa.101.2017.03.04.07.58.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 07:58:07 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	linux-wireless@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 4/6] staging: wilc1000: Alignment should match open parenthesis
Date: Sat,  4 Mar 2017 21:27:38 +0530
Message-Id: <20170304155740.26105-5-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170304155740.26105-1-arushisinghal19971997@gmail.com>
References: <20170304155740.26105-1-arushisinghal19971997@gmail.com>

Fix checkpatch issues: "CHECK: Alignment should match open parenthesis".

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c         |  2 +-
 drivers/staging/wilc1000/wilc_spi.c               |  2 +-
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 16 ++++++++--------
 drivers/staging/wilc1000/wilc_wlan.c              | 10 +++++-----
 4 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index f848bb85ff1f..2429c85052bf 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1350,7 +1350,7 @@ static s32 Handle_RcvdGnrlAsyncInfo(struct wilc_vif *vif,
 
 				if (u32RcvdAssocRespInfoLen != 0) {
 					s32Err = wilc_parse_assoc_resp_info(rcv_assoc_resp, u32RcvdAssocRespInfoLen,
-								    &pstrConnectRespInfo);
+									    &pstrConnectRespInfo);
 					if (s32Err) {
 						netdev_err(vif->ndev, "wilc_parse_assoc_resp_info() returned error %d\n", s32Err);
 					} else {
diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 55d53c3a95df..fb7ccfc29a19 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -410,7 +410,7 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
 
 	if (len2 > ARRAY_SIZE(wb)) {
 		dev_err(&spi->dev, "spi buffer size too small (%d) (%zu)\n",
-			 len2, ARRAY_SIZE(wb));
+			len2, ARRAY_SIZE(wb));
 		return N_FAIL;
 	}
 	/* zero spi write buffers. */
diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 4a6fe90a41de..8cb7506bd0e5 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -1301,16 +1301,16 @@ static int set_pmksa(struct wiphy *wiphy, struct net_device *netdev,
 
 	for (i = 0; i < priv->pmkid_list.numpmkid; i++)	{
 		if (!memcmp(pmksa->bssid, priv->pmkid_list.pmkidlist[i].bssid,
-				 ETH_ALEN)) {
+			    ETH_ALEN)) {
 			flag = PMKID_FOUND;
 			break;
 		}
 	}
 	if (i < WILC_MAX_NUM_PMKIDS) {
 		memcpy(priv->pmkid_list.pmkidlist[i].bssid, pmksa->bssid,
-			    ETH_ALEN);
+		       ETH_ALEN);
 		memcpy(priv->pmkid_list.pmkidlist[i].pmkid, pmksa->pmkid,
-			    PMKID_LEN);
+		       PMKID_LEN);
 		if (!(flag == PMKID_FOUND))
 			priv->pmkid_list.numpmkid++;
 	} else {
@@ -1334,7 +1334,7 @@ static int del_pmksa(struct wiphy *wiphy, struct net_device *netdev,
 
 	for (i = 0; i < priv->pmkid_list.numpmkid; i++)	{
 		if (!memcmp(pmksa->bssid, priv->pmkid_list.pmkidlist[i].bssid,
-				 ETH_ALEN)) {
+			    ETH_ALEN)) {
 			memset(&priv->pmkid_list.pmkidlist[i], 0, sizeof(struct host_if_pmkid));
 			break;
 		}
@@ -1343,11 +1343,11 @@ static int del_pmksa(struct wiphy *wiphy, struct net_device *netdev,
 	if (i < priv->pmkid_list.numpmkid && priv->pmkid_list.numpmkid > 0) {
 		for (; i < (priv->pmkid_list.numpmkid - 1); i++) {
 			memcpy(priv->pmkid_list.pmkidlist[i].bssid,
-				    priv->pmkid_list.pmkidlist[i + 1].bssid,
-				    ETH_ALEN);
+			       priv->pmkid_list.pmkidlist[i + 1].bssid,
+			       ETH_ALEN);
 			memcpy(priv->pmkid_list.pmkidlist[i].pmkid,
-				    priv->pmkid_list.pmkidlist[i].pmkid,
-				    PMKID_LEN);
+			       priv->pmkid_list.pmkidlist[i].pmkid,
+			       PMKID_LEN);
 		}
 		priv->pmkid_list.numpmkid--;
 	} else {
diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index bc5ad20af0a3..9addef1f1e12 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -287,7 +287,7 @@ static int wilc_wlan_txq_filter_dup_tcp_ack(struct net_device *dev)
 
 	while (dropped > 0) {
 		wait_for_completion_timeout(&wilc->txq_event,
-						msecs_to_jiffies(1));
+					    msecs_to_jiffies(1));
 		dropped--;
 	}
 
@@ -810,9 +810,9 @@ static void wilc_wlan_handle_rxq(struct wilc *wilc)
 				if (!is_cfg_packet) {
 					if (pkt_len > 0) {
 						wilc_frmw_to_linux(wilc,
-							      &buffer[offset],
-							      pkt_len,
-							      pkt_offset);
+								   &buffer[offset],
+								   pkt_len,
+								   pkt_offset);
 					}
 				} else {
 					struct wilc_cfg_rsp rsp;
@@ -1226,7 +1226,7 @@ int wilc_wlan_cfg_set(struct wilc_vif *vif, int start, u16 wid, u8 *buffer,
 			ret_size = 0;
 
 		if (!wait_for_completion_timeout(&wilc->cfg_event,
-					msecs_to_jiffies(CFG_PKTS_TIMEOUT))) {
+						 msecs_to_jiffies(CFG_PKTS_TIMEOUT))) {
 			netdev_dbg(vif->ndev, "Set Timed Out\n");
 			ret_size = 0;
 		}
-- 
2.11.0


