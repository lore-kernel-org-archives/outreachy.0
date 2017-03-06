X-GM-THRID: 6394514785010974720
X-Received: by 10.107.17.163 with SMTP id 35mr6588042ior.98.1488839002541;
        Mon, 06 Mar 2017 14:23:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.33 with SMTP id d30ls16496858otb.17.gmail; Mon, 06 Mar
 2017 14:23:22 -0800 (PST)
X-Received: by 10.129.69.37 with SMTP id s37mr8107148ywa.147.1488839002227;
        Mon, 06 Mar 2017 14:23:22 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-it0-x244.google.com (mail-it0-x244.google.com. [2607:f8b0:4001:c0b::244])
        by gmr-mx.google.com with ESMTPS id f73si333336ita.1.2017.03.06.14.23.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 14:23:22 -0800 (PST)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) client-ip=2607:f8b0:4001:c0b::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x244.google.com with SMTP id f203so430342itf.2
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 14:23:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ZaFSOJW9X8aN29Vvlr33TT8776/mztjjNHTaU52WL5w=;
        b=eQPWUjNu9aOgBT4rwzoYjrg0FyOkzyp3rrIbgbBNCz39xX/Ot//KCGoM9q9hBv/w3g
         58+y3Bw7mi7HZCDGimTzTy7Ntax3JzdPWi/e+JCHN+iv/En7ice1rHIOzdaC5XZnE4wq
         M5rLsXJzHsXIfc0ssT8qR5R2IsqU7MMMxJ3cEz9M1lrt/bL+zVC2Gwy2wgk8JjWdEG4u
         hpRSMTTE3ovxKVbGU/3qbCwSwYenV/Qt6pWbV5vG7+XUBReapfPyGu7lgsn7YkGeUlMh
         Hl9rpdZE0FkCo+7RCihxLsvYF1x8hHKne80vYFKUPYx3x+wLsqT7sUoq3sDwSC4DzEyZ
         TpDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ZaFSOJW9X8aN29Vvlr33TT8776/mztjjNHTaU52WL5w=;
        b=m2eAN+s8nqAmKrGRgr6e9z/Ox02z+ftcj+OOiip6+my1c/85T7FPKVRU2ftRZyRZYK
         zt0thXMk5Ee/mq+LV1CNGqVuZw8PB8jNnId2UYk+YlulPCzWk06SuXq/euy6PvVX3ypp
         cf/5oq7vtqAzCzp6lGvULYXr1XyD+Y2H3oyPaGeKOKVxPgQ114/Wf3fBw/8+fXoD1lmx
         GCcJgFs3X7jirPav8nJBSyJW0mGw3eM/LqDdM6M6ss2cy+pltKHSRDk8gOc13ATYKwjc
         umq9O4UkTfVHcueFzB9jxiJmDmaMLvbhALnr9NFFtZIaChqrUHESl3IAus6P9j4pwdsT
         5DGg==
X-Gm-Message-State: AMke39m3zfhQuT7bgYzwh0kMBa2GKUUo9OwOTsDSGXCuSWa3R4HTOgVgKe/El1uSR0qO8g==
X-Received: by 10.36.61.136 with SMTP id n130mr18152391itn.107.1488839001962;
        Mon, 06 Mar 2017 14:23:21 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id g77sm9244053iog.40.2017.03.06.14.23.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 06 Mar 2017 14:23:21 -0800 (PST)
Date: Mon, 6 Mar 2017 17:23:20 -0500
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com, gregkh@linuxfoundation.org
Subject: [PATCH 2/3] staging: wilc1000: Fixes camel-casing in
 wilc_network_info_received
Message-ID: <c708607f19bd4cd0338bbecd20cba63890d20da6.1488838177.git.tahia.khan@gmail.com>
References: <cover.1488838177.git.tahia.khan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488838177.git.tahia.khan@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixes checkpatch warning by renaming pu8Buffer to buffer
and u32Length to length in wilc_network_info_received.

Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.h |  4 ++--
 drivers/staging/wilc1000/host_interface.c   | 12 ++++++------
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
index 616bd21..c4c5f3b 100644
--- a/drivers/staging/wilc1000/coreconfigurator.h
+++ b/drivers/staging/wilc1000/coreconfigurator.h
@@ -126,8 +126,8 @@ s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
 			       struct connect_resp_info **ret_connect_resp_info);
 void wilc_scan_complete_received(struct wilc *wilc, u8 *buffer,
 				 u32 length);
-void wilc_network_info_received(struct wilc *wilc, u8 *pu8Buffer,
-				u32 u32Length);
+void wilc_network_info_received(struct wilc *wilc, u8 *buffer,
+				u32 length);
 void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *pu8Buffer,
 				   u32 u32Length);
 #endif
diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 853a57f3..312a598b 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -3442,8 +3442,8 @@ int wilc_deinit(struct wilc_vif *vif)
 	return result;
 }
 
-void wilc_network_info_received(struct wilc *wilc, u8 *pu8Buffer,
-				u32 u32Length)
+void wilc_network_info_received(struct wilc *wilc, u8 *buffer,
+				u32 length)
 {
 	s32 result = 0;
 	struct host_if_msg msg;
@@ -3451,7 +3451,7 @@ void wilc_network_info_received(struct wilc *wilc, u8 *pu8Buffer,
 	struct host_if_drv *hif_drv = NULL;
 	struct wilc_vif *vif;
 
-	id = ((pu8Buffer[u32Length - 4]) | (pu8Buffer[u32Length - 3] << 8) | (pu8Buffer[u32Length - 2] << 16) | (pu8Buffer[u32Length - 1] << 24));
+	id = ((buffer[length - 4]) | (buffer[length - 3] << 8) | (buffer[length - 2] << 16) | (buffer[length - 1] << 24));
 	vif = wilc_get_vif_from_idx(wilc, id);
 	if (!vif)
 		return;
@@ -3467,9 +3467,9 @@ void wilc_network_info_received(struct wilc *wilc, u8 *pu8Buffer,
 	msg.id = HOST_IF_MSG_RCVD_NTWRK_INFO;
 	msg.vif = vif;
 
-	msg.body.net_info.len = u32Length;
-	msg.body.net_info.buffer = kmalloc(u32Length, GFP_KERNEL);
-	memcpy(msg.body.net_info.buffer, pu8Buffer, u32Length);
+	msg.body.net_info.len = length;
+	msg.body.net_info.buffer = kmalloc(length, GFP_KERNEL);
+	memcpy(msg.body.net_info.buffer, buffer, length);
 
 	result = wilc_enqueue_cmd(&msg);
 	if (result)
-- 
2.7.4


