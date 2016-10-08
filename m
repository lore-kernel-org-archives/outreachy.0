X-GM-THRID: 6339125533056434176
X-Received: by 10.129.153.7 with SMTP id q7mr5839604ywg.172.1475942678162;
        Sat, 08 Oct 2016 09:04:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.200 with SMTP id x66ls4409935ota.40.gmail; Sat, 08 Oct
 2016 09:04:37 -0700 (PDT)
X-Received: by 10.157.54.52 with SMTP id w49mr6509417otb.82.1475942677872;
        Sat, 08 Oct 2016 09:04:37 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id um12si6636035pab.2.2016.10.08.09.04.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 09:04:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id t25so4582519pfg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 09:04:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=w9AM6kQ2eltQppkzH8VBlYdJGxwecufhskMY2ZXYhaw=;
        b=m4P5DMlzmIiFdaqV3TSW4sXQgpan2QHGZfSbtIVX4eOPHpFdJqakbXy2wqTUfw2y79
         bmo0OgnvhygJcCRc6I9mWvucjiAPlC/wRCp5qnF9WgLJBzRGICtrLPTBGxb88mUOsnxG
         LCsEVQyHUOrerdz+AzEUnu2pyg8PPbjJHRVYpPiYbIbq/tIkrN+69hUoxYI8R/G/gMdT
         yHCo9PVU1KXui/RGpZhulIv/bXcPuWsEd3Aj22Zm3gxXZgY8ZMIppquLMbvMpresJlmh
         rYKUUk4YsW00KZYGL2bj5rddPOcthZrCRyOFt18Wp8KOpdDdT6M7sWxYa5f0EdHX07C1
         hVtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=w9AM6kQ2eltQppkzH8VBlYdJGxwecufhskMY2ZXYhaw=;
        b=mwxmQjb53OKKCaRzKSvtJNkN+VdnH9/LraZNQyqcnRNvSwmRXIWIDd7zFVOpgVwELO
         EqoPHekahh48G3WyOLvvcEydmiTmF0g5/7891sP1qGSw+KvVokOCGsWLKJMnwctkVA7G
         oeyxspGJiqxo7buyGk79QK1m1z82HicJBN6pJ/ufeIbdNhEOcqwslZkDs8LKn7gQEFkZ
         fT8ZrEYwY27Fju+u+I/O9e2TZkZT4VEDfJD8xV4AldMAvfVi30gmOHosIaTAznVApGRl
         0zXKXnPVmewZGZqiKpKcUNkp6pCgvJuJYL+UCghw75FN1w79MovQgRc/vkkwc4MjRv7K
         HplQ==
X-Gm-Message-State: AA6/9RmPWAL/NAOspOSEUfTBa3AY7+eVcttudyDDH0VDpOXQpA9cjgsPofbWDR4PHeJXeQ==
X-Received: by 10.98.109.68 with SMTP id i65mr18037960pfc.155.1475942677623;
        Sat, 08 Oct 2016 09:04:37 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.183.145])
        by smtp.gmail.com with ESMTPSA id b4sm39372628paw.10.2016.10.08.09.04.25
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 09:04:36 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Sat, 08 Oct 2016 21:34:19 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: wilc1000: Remove useless type conversion
Date: Sat,  8 Oct 2016 21:34:18 +0530
Message-Id: <1475942658-3129-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Some type conversions like casting a pointer to a pointer of same type,
casting to the original type using addressof(&) operator etc. are not
needed. Therefore, remove them. Done using coccinelle:

@@
type t;
t *p;
t a;
@@
(
- (t)(a)
+ a
|
- (t *)(p)
+ p
|
- (t *)(&a)
+ &a
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 12 ++++++------
 drivers/staging/wilc1000/wilc_debugfs.c   |  2 +-
 drivers/staging/wilc1000/wilc_wlan.c      |  2 +-
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 78f5613..b98aa3c 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -385,7 +385,7 @@ static void handle_set_ip_address(struct wilc_vif *vif, u8 *ip_addr, u8 idx)
 
 	wid.id = (u16)WID_IP_ADDRESS;
 	wid.type = WID_STR;
-	wid.val = (u8 *)ip_addr;
+	wid.val = ip_addr;
 	wid.size = IP_ALEN;
 
 	ret = wilc_send_config_pkt(vif, SET_CFG, &wid, 1,
@@ -473,7 +473,7 @@ static void handle_cfg_param(struct wilc_vif *vif,
 			wid_list[i].val = (s8 *)&cfg_param_attr->auth_type;
 			wid_list[i].type = WID_CHAR;
 			wid_list[i].size = sizeof(char);
-			hif_drv->cfg_values.auth_type = (u8)cfg_param_attr->auth_type;
+			hif_drv->cfg_values.auth_type = cfg_param_attr->auth_type;
 		} else {
 			netdev_err(vif->ndev, "Impossible value\n");
 			goto unlock;
@@ -500,7 +500,7 @@ static void handle_cfg_param(struct wilc_vif *vif,
 			wid_list[i].val = (s8 *)&cfg_param_attr->power_mgmt_mode;
 			wid_list[i].type = WID_CHAR;
 			wid_list[i].size = sizeof(char);
-			hif_drv->cfg_values.power_mgmt_mode = (u8)cfg_param_attr->power_mgmt_mode;
+			hif_drv->cfg_values.power_mgmt_mode = cfg_param_attr->power_mgmt_mode;
 		} else {
 			netdev_err(vif->ndev, "Invalid power mode\n");
 			goto unlock;
@@ -582,7 +582,7 @@ static void handle_cfg_param(struct wilc_vif *vif,
 			wid_list[i].val = (s8 *)&cfg_param_attr->short_slot_allowed;
 			wid_list[i].type = WID_CHAR;
 			wid_list[i].size = sizeof(char);
-			hif_drv->cfg_values.short_slot_allowed = (u8)cfg_param_attr->short_slot_allowed;
+			hif_drv->cfg_values.short_slot_allowed = cfg_param_attr->short_slot_allowed;
 		} else {
 			netdev_err(vif->ndev, "Short slot(2) over\n");
 			goto unlock;
@@ -595,7 +595,7 @@ static void handle_cfg_param(struct wilc_vif *vif,
 			wid_list[i].val = (s8 *)&cfg_param_attr->txop_prot_disabled;
 			wid_list[i].type = WID_CHAR;
 			wid_list[i].size = sizeof(char);
-			hif_drv->cfg_values.txop_prot_disabled = (u8)cfg_param_attr->txop_prot_disabled;
+			hif_drv->cfg_values.txop_prot_disabled = cfg_param_attr->txop_prot_disabled;
 		} else {
 			netdev_err(vif->ndev, "TXOP prot disable\n");
 			goto unlock;
@@ -1879,7 +1879,7 @@ static s32 Handle_GetStatistics(struct wilc_vif *vif,
 	strWIDList[u32WidsCount].id = WID_RSSI;
 	strWIDList[u32WidsCount].type = WID_CHAR;
 	strWIDList[u32WidsCount].size = sizeof(char);
-	strWIDList[u32WidsCount].val = (s8 *)&pstrStatistics->rssi;
+	strWIDList[u32WidsCount].val = &pstrStatistics->rssi;
 	u32WidsCount++;
 
 	strWIDList[u32WidsCount].id = WID_SUCCESS_FRAME_COUNT;
diff --git a/drivers/staging/wilc1000/wilc_debugfs.c b/drivers/staging/wilc1000/wilc_debugfs.c
index 802bb1d..dad1108 100644
--- a/drivers/staging/wilc1000/wilc_debugfs.c
+++ b/drivers/staging/wilc1000/wilc_debugfs.c
@@ -66,7 +66,7 @@ static ssize_t wilc_debug_level_write(struct file *filp, const char __user *buf,
 		return -EINVAL;
 	}
 
-	atomic_set(&WILC_DEBUG_LEVEL, (int)flag);
+	atomic_set(&WILC_DEBUG_LEVEL, flag);
 
 	if (flag == 0)
 		printk(KERN_INFO "Debug-level disabled\n");
diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index bc5ad20..890e196 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -1175,7 +1175,7 @@ static int wilc_wlan_cfg_commit(struct wilc_vif *vif, int type,
 	struct wilc_cfg_frame *cfg = &wilc->cfg_frame;
 	int total_len = wilc->cfg_frame_offset + 4 + DRIVER_HANDLER_SIZE;
 	int seq_no = wilc->cfg_seq_no % 256;
-	int driver_handler = (u32)drv_handler;
+	int driver_handler = drv_handler;
 
 	if (type == WILC_CFG_SET)
 		cfg->wid_header[0] = 'W';
-- 
1.9.1


