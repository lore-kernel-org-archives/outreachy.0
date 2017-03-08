X-GM-THRID: 6394514785010974720
X-Received: by 10.99.145.74 with SMTP id l71mr1538235pge.5.1488932799615;
        Tue, 07 Mar 2017 16:26:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.18 with SMTP id 18ls1820773ote.1.gmail; Tue, 07 Mar 2017
 16:26:39 -0800 (PST)
X-Received: by 10.157.52.210 with SMTP id t18mr1396453otd.119.1488932799121;
        Tue, 07 Mar 2017 16:26:39 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-it0-x244.google.com (mail-it0-x244.google.com. [2607:f8b0:4001:c0b::244])
        by gmr-mx.google.com with ESMTPS id e196si452348itc.2.2017.03.07.16.26.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 16:26:39 -0800 (PST)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) client-ip=2607:f8b0:4001:c0b::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x244.google.com with SMTP id g138so2387353itb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 16:26:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=w3QmLvqtz3SNbXbFpbAVSqN42kxpEyhYll8ogyaoLHM=;
        b=e6SiGpJIlm7dHsA4ZyLaJCuJeE0v3qxGetjSsbh/UAyX3LV3Fh15qd/HJy2mq3/uyI
         rkLPAbTC88tx3XQS1+jaBhtZPmrpAUyaUBFOA/vuyNv7AXlkUdZlGlGUsZ/7mbJVyiGr
         8WgB+V/nchxBsXQv8gACbcTYkPhwqlbJEWXSE6KWG70h3RbrqzG+I8sfac0axfoDN9xI
         B2B+F1IqQwqangQ/W1Wk4ydHj6nDzNbAe5LzqZTRvUfGTtrU40TkIPB3aD1yU/n00gP1
         +mwy1L2G67qSzhlArVXWqf+q4L7MXx0cip69cNKs3EMagePGguApoFmhcmYvAHxtJ8EA
         0ERw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=w3QmLvqtz3SNbXbFpbAVSqN42kxpEyhYll8ogyaoLHM=;
        b=m2nJDM8uYj3ieu7TNQzCzU+mIelIcRIkkeZUvGdZvdwOIE00cCOgpZ4zILn3O8ujOA
         Tx1Ec03V6yQPJTZVPtjwJAKeuHvVDfC2uX7LI1/9dQd4FIqUZLbrAGoqGnM66FERGrv/
         HFP8WzsP45N9liqAIik0M7nG8liF3EzOQqkdyK/SeLKTcj4xQG4ZEh6SL98kWZ+oDdmp
         DYBLu3q/9YQvPB0kSrYpl+hM+bFJCJgiLoheeUMTVTfiPrCu9B1fB/lUICRkZne6O4l+
         HgRROIKMqdECWUvStf31NKCaTGyXJwel6A0qjC7KSN9WQtNyQUz9oVz44T2onMGmCW3m
         1aPg==
X-Gm-Message-State: AMke39lL/RNdCuVBlHsm0/foMWkB+6WxAVodNwDjffzNuPFpomSwqj9vhKVhw35dHkRiog==
X-Received: by 10.36.94.75 with SMTP id h72mr3755112itb.81.1488932798920;
        Tue, 07 Mar 2017 16:26:38 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id w188sm6994046itc.6.2017.03.07.16.26.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 16:26:38 -0800 (PST)
Date: Tue, 7 Mar 2017 19:26:37 -0500
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 1/3] staging: wilc1000: Fixes camel-casing in
 wilc_scan_complete_received
Message-ID: <f04d584c5ed8cb09d9bb150e5e816e9ec568273f.1488931933.git.tahia.khan@gmail.com>
References: <cover.1488931933.git.tahia.khan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488931933.git.tahia.khan@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixes checkpatch warning by renaming pu8Buffer to buffer
and u32Length to length in wilc_scan_complete_received.

Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.h | 3 +--
 drivers/staging/wilc1000/host_interface.c   | 5 ++---
 2 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
index 10101f8..f40d458 100644
--- a/drivers/staging/wilc1000/coreconfigurator.h
+++ b/drivers/staging/wilc1000/coreconfigurator.h
@@ -124,8 +124,7 @@ s32 wilc_parse_network_info(u8 *msg_buffer,
 			    struct network_info **ret_network_info);
 s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
 			       struct connect_resp_info **ret_connect_resp_info);
-void wilc_scan_complete_received(struct wilc *wilc, u8 *pu8Buffer,
-				 u32 u32Length);
+void wilc_scan_complete_received(struct wilc *wilc, u8 *buffer, u32 length);
 void wilc_network_info_received(struct wilc *wilc, u8 *pu8Buffer,
 				u32 u32Length);
 void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *pu8Buffer,
diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index f848bb8..3eec9dc 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -3523,8 +3523,7 @@ void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *pu8Buffer,
 	mutex_unlock(&hif_deinit_lock);
 }
 
-void wilc_scan_complete_received(struct wilc *wilc, u8 *pu8Buffer,
-				 u32 u32Length)
+void wilc_scan_complete_received(struct wilc *wilc, u8 *buffer, u32 length)
 {
 	s32 result = 0;
 	struct host_if_msg msg;
@@ -3532,7 +3531,7 @@ void wilc_scan_complete_received(struct wilc *wilc, u8 *pu8Buffer,
 	struct host_if_drv *hif_drv = NULL;
 	struct wilc_vif *vif;
 
-	id = ((pu8Buffer[u32Length - 4]) | (pu8Buffer[u32Length - 3] << 8) | (pu8Buffer[u32Length - 2] << 16) | (pu8Buffer[u32Length - 1] << 24));
+	id = ((buffer[length - 4]) | (buffer[length - 3] << 8) | (buffer[length - 2] << 16) | (buffer[length - 1] << 24));
 	vif = wilc_get_vif_from_idx(wilc, id);
 	if (!vif)
 		return;
-- 
2.7.4


