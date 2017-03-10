X-GM-THRID: 6395630061335085056
X-Received: by 10.25.72.71 with SMTP id v68mr283398lfa.9.1489141238832;
        Fri, 10 Mar 2017 02:20:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.83.87 with SMTP id t23ls948178ljd.19.gmail; Fri, 10 Mar
 2017 02:20:38 -0800 (PST)
X-Received: by 10.25.223.67 with SMTP id q3mr2403634lfj.1.1489141238125;
        Fri, 10 Mar 2017 02:20:38 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id l138si163673wmg.0.2017.03.10.02.20.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 02:20:38 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id z63so1514878wmg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 02:20:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=HWDNYzyOgp7vdhtVQfA6dXljAVj8O8/Xxgsvnw1ldow=;
        b=Qj25DjyeEryv483F7gElySrPssz2BskveU4B/8HrLEpaGvL/gVgUO1W+jObsUzei4C
         pO5tFfknOFardNMSLm6rz2jQHuXc4374AL/KIgwXQUUcTMrMFSwgVIrYoM17G/CQO5l3
         xx8vTqPWesUbmkhnjqM+tKAC2WYgjr44WY5VwOmHeXm1PPFgia4C5xKF0DxdgWJlUgkg
         5Qi64JZNtVZgMEDnUUgkLuKVT92G+kXrnnfer/1C5HAUF6r4BOnQjYsvycfaWGZujSpX
         ZRPuzub8AAHUHIGDDe6dmzSGU+sRs9NM1mKcuW8pg/keq2By1nqnwUlr3XD3Gbqj5tM0
         lvNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=HWDNYzyOgp7vdhtVQfA6dXljAVj8O8/Xxgsvnw1ldow=;
        b=UA4KDDqLWDxDEA23gTT2Mm0jetmqDcN8RKD85jvICryCMkLpSkFOh0nP5ocsJE9QHW
         ++DPhNQqv7c8EfNq6RIa+ewSQcehEM/iRNgXWc51YfMSU3yFAT8zbnTFHL8vo3q6OJZA
         7WW4f/v9htfURFOnA7IKN+NL+skcrwVLnVg7DF/u8qugvPS7aL6Chp+f2OCTROxhT/3T
         Czh2u+HrePaWaSN9lW3C/4dMJKx3sC5v0/tzfwHrnupCmTISjTRCItHM5T91oNcBvuxC
         JGewcKW5ymZHYXZjfL6NmdaM3FiAvh0bWdpVGHlmbDZ2RtjeOFuO5yDY9VEER8yqGEJW
         RHNg==
X-Gm-Message-State: AFeK/H1cvF2ODbLTB/zEq1VX0GYUd/zhY4eZ6xjvp0ky6rnKZROLMEiFeKMhgwUXNVdS2g==
X-Received: by 10.28.210.212 with SMTP id j203mr1645402wmg.93.1489141237933;
        Fri, 10 Mar 2017 02:20:37 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:d515:7bde:c1d1:c737])
        by smtp.gmail.com with ESMTPSA id x69sm2636673wma.15.2017.03.10.02.20.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 02:20:36 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v4] staging: wilc1000: Enhance code formatting
Date: Fri, 10 Mar 2017 12:20:31 +0200
Message-Id: <20170310102031.32314-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Trims line size at 80 characters in coreconfigurator.h file by
shortening the name of variables.

Problem found with checkpatch.pl.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
Changes since v3:
*Changed the variables name I modified in coreconfigurator.h in other related files: corecofigurator.c and host_interface.c.

Changes since v2:
*Shorten variables name.
*Separate the patch from a patch set.

Changes since v1:
*Put the patch in a patch set.

 drivers/staging/wilc1000/coreconfigurator.c | 26 +++++++++++++-------------
 drivers/staging/wilc1000/coreconfigurator.h |  4 ++--
 drivers/staging/wilc1000/host_interface.c   |  2 +-
 3 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
index 6229947..572a077 100644
--- a/drivers/staging/wilc1000/coreconfigurator.c
+++ b/drivers/staging/wilc1000/coreconfigurator.c
@@ -350,38 +350,38 @@ s32 wilc_parse_network_info(u8 *msg_buffer,
 }
 
 s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
-			       struct connect_resp_info **ret_connect_resp_info)
+			       struct resp_info **ret_resp_info)
 {
-	struct connect_resp_info *connect_resp_info = NULL;
+	struct resp_info *resp_info = NULL;
 	u16 assoc_resp_len = 0;
 	u8 *ies = NULL;
 	u16 ies_len = 0;
 
-	connect_resp_info = kzalloc(sizeof(*connect_resp_info), GFP_KERNEL);
-	if (!connect_resp_info)
+	resp_info = kzalloc(sizeof(*resp_info), GFP_KERNEL);
+	if (!resp_info)
 		return -ENOMEM;
 
 	assoc_resp_len = (u16)buffer_len;
 
-	connect_resp_info->status = get_asoc_status(buffer);
-	if (connect_resp_info->status == SUCCESSFUL_STATUSCODE) {
-		connect_resp_info->capability = get_assoc_resp_cap_info(buffer);
-		connect_resp_info->assoc_id = get_asoc_id(buffer);
+	resp_info->status = get_asoc_status(buffer);
+	if (resp_info->status == SUCCESSFUL_STATUSCODE) {
+		resp_info->capability = get_assoc_resp_cap_info(buffer);
+		resp_info->assoc_id = get_asoc_id(buffer);
 
 		ies = &buffer[CAP_INFO_LEN + STATUS_CODE_LEN + AID_LEN];
 		ies_len = assoc_resp_len - (CAP_INFO_LEN + STATUS_CODE_LEN +
 					    AID_LEN);
 
-		connect_resp_info->ies = kmemdup(ies, ies_len, GFP_KERNEL);
-		if (!connect_resp_info->ies) {
-			kfree(connect_resp_info);
+		resp_info->ies = kmemdup(ies, ies_len, GFP_KERNEL);
+		if (!resp_info->ies) {
+			kfree(resp_info);
 			return -ENOMEM;
 		}
 
-		connect_resp_info->ies_len = ies_len;
+		resp_info->ies_len = ies_len;
 	}
 
-	*ret_connect_resp_info = connect_resp_info;
+	*ret_resp_info = resp_info;
 
 	return 0;
 }
diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
index 10101f8..f40d6f2 100644
--- a/drivers/staging/wilc1000/coreconfigurator.h
+++ b/drivers/staging/wilc1000/coreconfigurator.h
@@ -97,7 +97,7 @@ struct network_info {
 	u64 tsf_hi;
 };
 
-struct connect_resp_info {
+struct resp_info {
 	u16 capability;
 	u16 status;
 	u16 assoc_id;
@@ -123,7 +123,7 @@ struct disconnect_info {
 s32 wilc_parse_network_info(u8 *msg_buffer,
 			    struct network_info **ret_network_info);
 s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
-			       struct connect_resp_info **ret_connect_resp_info);
+			       struct resp_info **ret_resp_info);
 void wilc_scan_complete_received(struct wilc *wilc, u8 *pu8Buffer,
 				 u32 u32Length);
 void wilc_network_info_received(struct wilc *wilc, u8 *pu8Buffer,
diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 2429c85..baed80d 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1336,7 +1336,7 @@ static s32 Handle_RcvdGnrlAsyncInfo(struct wilc_vif *vif,
 		u8MacStatusAdditionalInfo = pstrRcvdGnrlAsyncInfo->buffer[9];
 		if (hif_drv->hif_state == HOST_IF_WAITING_CONN_RESP) {
 			u32 u32RcvdAssocRespInfoLen = 0;
-			struct connect_resp_info *pstrConnectRespInfo = NULL;
+			struct resp_info *pstrConnectRespInfo = NULL;
 
 			memset(&strConnectInfo, 0, sizeof(struct connect_info));
 
-- 
2.9.3


