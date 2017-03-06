X-GM-THRID: 6394514785010974720
X-Received: by 10.157.33.244 with SMTP id s107mr5812700otb.115.1488838997579;
        Mon, 06 Mar 2017 14:23:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.122.2 with SMTP id a2ls2854913itc.15.canary-gmail; Mon, 06
 Mar 2017 14:23:17 -0800 (PST)
X-Received: by 10.99.65.71 with SMTP id o68mr7580030pga.16.1488838996983;
        Mon, 06 Mar 2017 14:23:16 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-io0-x241.google.com (mail-io0-x241.google.com. [2607:f8b0:4001:c06::241])
        by gmr-mx.google.com with ESMTPS id i189si346200iti.0.2017.03.06.14.23.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 14:23:16 -0800 (PST)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c06::241 as permitted sender) client-ip=2607:f8b0:4001:c06::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c06::241 as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x241.google.com with SMTP id n76so19901992ioe.1
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 14:23:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=kxetl5HXFw0GlXrjAWRUBShfthQijVfZ8WnVdBMg3yI=;
        b=KJhOrVc4b/ONyrbt+DknK4l5MuO94sXsjGunCl3IYCrzLzoS1Ri+em0n5GNpUbapkg
         zgGrlay00jUt8t+ryR1HECbcRc9Tnc1DsyuP3Tb0wivVd2YRCbKuIFq8gvK4NDfXQ0iV
         FM+xXkKmjxJcDMcnlezaRKIFncrbAk6pMneqQ6dTA5PR7HKdT2ZU7at15dsVq3edMJdN
         34VBoTwVXYXJTiAYvBhi/BIn0kf2WO5wH/2br/OoYeCgPJ3EoyL8C9/s6eOhBnUz5nXM
         c6QM0bbFPl3ZcugsKgZq8u+Vob9A4Yi9dYlD8JgYGTlW9pP0CDc5+4yHqZRzMP8nc7+R
         +9LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=kxetl5HXFw0GlXrjAWRUBShfthQijVfZ8WnVdBMg3yI=;
        b=oBJTqeURMkpHYVf8z+yMOr48OCPjCqN0gIA3dWPykUl+rledujLy0E12XHYZHwGHlg
         va+49ENQxquMW5f1nG6XZRjT64v/wYUtaOsbz/MLJGu++Kfs8gNAr0ye/kgxOIhPCmqz
         OG+uglBFlYWE93oycs+WWmwabCob4hg8Hqv2dURMeXgP0Z4Bn+eNKCNK51O5CAoxFX7H
         5fEDVd7xQs5j1wTLmN6iztoK8W0Mq7oJSPEPi9mQ/IOT5eh7tWgzYMC6A8hA/L6IkSzW
         ikyanXlgb9DAOj7SvyUDiTUaF9cwDeOGHJf/k3nbeSjLEwA7T535zPcoMGhu0Bf+YrK7
         ZMXQ==
X-Gm-Message-State: AMke39mmTzX/JgeLurAe3xqtxrbJ+IIObUloxdQbI3SMNd9Mm7B0FIgq5j9kN39vWzAHdA==
X-Received: by 10.107.129.200 with SMTP id l69mr15356301ioi.194.1488838996780;
        Mon, 06 Mar 2017 14:23:16 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id d12sm9247024iog.53.2017.03.06.14.23.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 06 Mar 2017 14:23:16 -0800 (PST)
Date: Mon, 6 Mar 2017 17:23:15 -0500
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com, gregkh@linuxfoundation.org
Subject: [PATCH 1/3] staging: wilc1000: Fixes camel-casing in
 wilc_scan_complete_received
Message-ID: <13aa6c6b8da66aecb569c9491b69b99dfb11e613.1488838177.git.tahia.khan@gmail.com>
References: <cover.1488838177.git.tahia.khan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488838177.git.tahia.khan@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixes checkpatch warning by renaming pu8Buffer to buffer
and u32Length to length in wilc_scan_complete_received.

Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.h | 4 ++--
 drivers/staging/wilc1000/host_interface.c   | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
index 10101f8..616bd21 100644
--- a/drivers/staging/wilc1000/coreconfigurator.h
+++ b/drivers/staging/wilc1000/coreconfigurator.h
@@ -124,8 +124,8 @@ s32 wilc_parse_network_info(u8 *msg_buffer,
 			    struct network_info **ret_network_info);
 s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
 			       struct connect_resp_info **ret_connect_resp_info);
-void wilc_scan_complete_received(struct wilc *wilc, u8 *pu8Buffer,
-				 u32 u32Length);
+void wilc_scan_complete_received(struct wilc *wilc, u8 *buffer,
+				 u32 length);
 void wilc_network_info_received(struct wilc *wilc, u8 *pu8Buffer,
 				u32 u32Length);
 void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *pu8Buffer,
diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index f848bb8..853a57f3 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -3523,8 +3523,8 @@ void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *pu8Buffer,
 	mutex_unlock(&hif_deinit_lock);
 }
 
-void wilc_scan_complete_received(struct wilc *wilc, u8 *pu8Buffer,
-				 u32 u32Length)
+void wilc_scan_complete_received(struct wilc *wilc, u8 *buffer,
+				 u32 length)
 {
 	s32 result = 0;
 	struct host_if_msg msg;
@@ -3532,7 +3532,7 @@ void wilc_scan_complete_received(struct wilc *wilc, u8 *pu8Buffer,
 	struct host_if_drv *hif_drv = NULL;
 	struct wilc_vif *vif;
 
-	id = ((pu8Buffer[u32Length - 4]) | (pu8Buffer[u32Length - 3] << 8) | (pu8Buffer[u32Length - 2] << 16) | (pu8Buffer[u32Length - 1] << 24));
+	id = ((buffer[length - 4]) | (buffer[length - 3] << 8) | (buffer[length - 2] << 16) | (buffer[length - 1] << 24));
 	vif = wilc_get_vif_from_idx(wilc, id);
 	if (!vif)
 		return;
-- 
2.7.4


