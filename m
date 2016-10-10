X-GM-THRID: 6339736406394404864
X-Received: by 10.67.6.73 with SMTP id cs9mr2812348pad.144.1476084908176;
        Mon, 10 Oct 2016 00:35:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.18.201 with SMTP id g67ls4702337otg.30.gmail; Mon, 10 Oct
 2016 00:35:07 -0700 (PDT)
X-Received: by 10.13.197.65 with SMTP id h62mr8301858ywd.4.1476084907787;
        Mon, 10 Oct 2016 00:35:07 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id h127si223199vkf.2.2016.10.10.00.35.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 00:35:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id p80so8502300lfp.1
        for <outreachy-kernel@googlegroups.com>; Mon, 10 Oct 2016 00:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=DniTx82DSPbbmJm3GJ66GAXZ4FrTDRzhy/gcHa8PmFU=;
        b=h8ko/VirMAba1EO/F9vqPD/bt1nJHt4QoBzNZqkbCA9cF3+39CPRImkBKMpqvimpqx
         q2+11bu8dz7fjvebYKQDDQFRCl9h5eC5aR++alVyoCXq/2cYrgCfbRoOPLe3CqHnvuYD
         TxLlAiHg6Za7JKM/g5Zj/JZq9v0qWU4VxVFWuMhukoBUZGv2Hes6IXVQETrXFA1Tdsqs
         z1ul4lP90fXo7iis5VI9gkNFYO+MCbdczKJ/Me1Y2SdEUueXkJkaRzFLIbqnSGBqjlc4
         DlZz/+CqmmoNrShS9r+n70Nni3FfIq3PUP32M0U7/KIW65EMYp02HRHuEAnLuM9Yal1y
         sNpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=DniTx82DSPbbmJm3GJ66GAXZ4FrTDRzhy/gcHa8PmFU=;
        b=f7vXtqniVkWT7TzHUssgTII25XShB4+Pov+WqS0Mo3A+BAoj0At8Q9/aTwdjpLkmBc
         IMeExfyJSek/VU0L2705E7GdIi+KZ8EnGh/JvMJSzWZFy6nKi0L73QLlMzdB4L40jfPG
         nASGxEHoScYz5ZFYrW8l6hn+m/DQoknbsLHSi8+dPePnEC4IjsCD7eWhmRVNEYM2Da6b
         tXQRreqvS9JxyQ2ERK3gbrY/8xmL9wSUiV2quTdJnpSNdBiqcc9rwi3kLz3JHBEs5q27
         Pi7PdcoXs3t+PbV/mDALPqmgPG0utjfMwfLbrvTdJyJAPPCmDGzePaYT/2dtzS1GyVl/
         Y+8w==
X-Gm-Message-State: AA6/9RmqD9+/n5DpvJI/dALwZYBtdaePnOUegbZBmDk5xWt/EZ5PHCX3lBuKsvLTflmjeQ==
X-Received: by 10.194.42.69 with SMTP id m5mr2526930wjl.101.1476084907361;
        Mon, 10 Oct 2016 00:35:07 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id y2sm37845674wji.42.2016.10.10.00.35.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 10 Oct 2016 00:35:06 -0700 (PDT)
Date: Mon, 10 Oct 2016 10:35:05 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Aditya Shankar <aditya.shankar@microchip.com>,
	Ganesh Krishna <ganesh.krishna@microchip.com>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Stagin: wilc1000: Use ether_addr_copy() rather memcpy()
Message-ID: <20161010073505.GA7227@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixs up a issue found it by  checkpatch.pl tool.

WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet
addresses are __aligned(2).

Check if the addresses are aligned with pahole.

struct sta_inactive_t {
	u8                         mac[6];               /*     0     6
*/

	/* size: 6, cachelines: 1, members: 1 */
	/* last cacheline: 6 bytes */
};

Aligne this structure :

struct del_all_sta {
	u8                         assoc_sta;            /*     0     1
*/
	u8                         del_all_sta[9][6];    /*     1    54
*/

	/* size: 55, cachelines: 1, members: 2 */
	/* last cacheline: 55 bytes */
};

struct del_sta {
	u8                         mac_addr[6];          /*     0     6
*/

	/* size: 6, cachelines: 1, members: 1 */
	/* last cacheline: 6 bytes */
};

Replace the memcpy() function with ether_addr_copy().

Fix coding style WARNING: line over 80 characters.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 78f5613..1eedaa3 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -140,8 +140,8 @@ struct set_multicast {
 };
 
 struct del_all_sta {
-	u8 del_all_sta[MAX_NUM_STA][ETH_ALEN];
 	u8 assoc_sta;
+	u8 del_all_sta[MAX_NUM_STA][ETH_ALEN];
 };
 
 struct del_sta {
@@ -1932,7 +1932,7 @@ static s32 Handle_Get_InActiveTime(struct wilc_vif *vif,
 	wid.val = kmalloc(wid.size, GFP_KERNEL);
 
 	stamac = wid.val;
-	memcpy(stamac, strHostIfStaInactiveT->mac, ETH_ALEN);
+	ether_addr_copy(stamac, strHostIfStaInactiveT->mac);
 
 	result = wilc_send_config_pkt(vif, SET_CFG, &wid, 1,
 				      wilc_get_vif_idx(vif));
@@ -2133,7 +2133,8 @@ static void Handle_DelAllSta(struct wilc_vif *vif,
 
 	for (i = 0; i < MAX_NUM_STA; i++) {
 		if (memcmp(pstrDelAllStaParam->del_all_sta[i], au8Zero_Buff, ETH_ALEN))
-			memcpy(pu8CurrByte, pstrDelAllStaParam->del_all_sta[i], ETH_ALEN);
+			ether_addr_copy(pu8CurrByte,
+					pstrDelAllStaParam->del_all_sta[i]);
 		else
 			continue;
 
@@ -2168,7 +2169,7 @@ static void Handle_DelStation(struct wilc_vif *vif,
 
 	pu8CurrByte = wid.val;
 
-	memcpy(pu8CurrByte, pstrDelStaParam->mac_addr, ETH_ALEN);
+	ether_addr_copy(pu8CurrByte, pstrDelStaParam->mac_addr);
 
 	result = wilc_send_config_pkt(vif, SET_CFG, &wid, 1,
 				      wilc_get_vif_idx(vif));
@@ -3743,7 +3744,7 @@ int wilc_del_station(struct wilc_vif *vif, const u8 *mac_addr)
 	if (!mac_addr)
 		eth_broadcast_addr(del_sta_info->mac_addr);
 	else
-		memcpy(del_sta_info->mac_addr, mac_addr, ETH_ALEN);
+		ether_addr_copy(del_sta_info->mac_addr, mac_addr);
 
 	result = wilc_enqueue_cmd(&msg);
 	if (result)
@@ -3767,7 +3768,8 @@ int wilc_del_allstation(struct wilc_vif *vif, u8 mac_addr[][ETH_ALEN])
 
 	for (i = 0; i < MAX_NUM_STA; i++) {
 		if (memcmp(mac_addr[i], zero_addr, ETH_ALEN)) {
-			memcpy(del_all_sta_info->del_all_sta[i], mac_addr[i], ETH_ALEN);
+			ether_addr_copy(del_all_sta_info->del_all_sta[i],
+					mac_addr[i]);
 			assoc_sta++;
 		}
 	}
-- 
2.7.4


