X-GM-THRID: 6394514785010974720
X-Received: by 10.129.106.70 with SMTP id f67mr1500583ywc.108.1488932806425;
        Tue, 07 Mar 2017 16:26:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.52.248 with SMTP id t53ls2041685otd.42.gmail; Tue, 07 Mar
 2017 16:26:46 -0800 (PST)
X-Received: by 10.157.3.103 with SMTP id 94mr1530839otv.100.1488932806125;
        Tue, 07 Mar 2017 16:26:46 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-io0-x244.google.com (mail-io0-x244.google.com. [2607:f8b0:4001:c06::244])
        by gmr-mx.google.com with ESMTPS id a17si3206502itd.1.2017.03.07.16.26.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 16:26:46 -0800 (PST)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) client-ip=2607:f8b0:4001:c06::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x244.google.com with SMTP id f103so2329757ioi.2
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 16:26:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=lZ3VWfFFuGxBKnoucpIOYq8oC3/2NoKiWc9EzXIzn7g=;
        b=GrbpDhRhrvz2rJNqtYvTMxrPIPb7kSDP+znSB059A7LhAjr0GAdcVJRCgehbm08Fov
         ZQBInfgPqCphYBJqI+6E5XZTf5E/zA541LrOXBfAHnBjzTGhDNgR8AoGw9Hdi4B+T/vl
         yyr71hfsn4NWQGt/vxATBmHPphcKxYfBZbqw1uMOaLjaebXW9SHH4BstjSnHb9j5IaT+
         u5eeBylVge7uJQMT4a7yiD57Km2/XzxnXEctiSaZiTo6FUS9uI3l8oZUIFw92152l7jr
         WWRdUOKlxsKCawdHU22mdYEOGtXg8O6R5S+QOZVXcJR/tNaNmvk5I/EG2oGSDfB9LQmm
         AdWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=lZ3VWfFFuGxBKnoucpIOYq8oC3/2NoKiWc9EzXIzn7g=;
        b=I0MkWqP8cOx9m8wPQqD5yvpIovrr51DGCaiuDuVnic/0KO23zN3IlGf4u08VSIT/sL
         KmB/dHrSaZ74WiUV4Eu3NiBxKheT88SjVrTKvkG3U6reqI+YhBKnK4Pyqs1qxFWcOoaT
         GXEhjbIUuxUxwf0UJb+tySNu+1ksDEV0I965Y9WRKdOhy7DVTHuNoVmk0hl4BXESBfuE
         RLnA5ZLD4jKzX3grllXQFPX2UJcTFghJUoPxEC6Y5GNm7mFXmQ0tJgQ1BaOSzJrG31Um
         hcE5+KYJ/kKe0fruyXTbW6/Yg7F+a5NtObon35F1wJ/dDM55uTowDXmF/zdwgxe/EqW5
         Yn0Q==
X-Gm-Message-State: AMke39mHHZstz05PEa41KUb9A+V4a9Q1Zc1pN30/bdcwAWBexdycEt0ct7RHgoU9eqhTmw==
X-Received: by 10.107.143.215 with SMTP id r206mr3563555iod.121.1488932805903;
        Tue, 07 Mar 2017 16:26:45 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id 126sm823599ion.23.2017.03.07.16.26.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 16:26:45 -0800 (PST)
Date: Tue, 7 Mar 2017 19:26:44 -0500
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 3/3] staging: wilc1000: Fixes camel-casing in
 wilc_gnrl_info_received
Message-ID: <aad48da76ccd6cbc4ed1d05e7636185bbf681b63.1488931933.git.tahia.khan@gmail.com>
References: <cover.1488931933.git.tahia.khan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488931933.git.tahia.khan@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixes checkpatch warning by renaming pu8Buffer to buffer
and u32Length to length in wilc_gnrl_info_received.

Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.h |  3 +--
 drivers/staging/wilc1000/host_interface.c   | 11 +++++------
 2 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
index 45dce5b..5256f40 100644
--- a/drivers/staging/wilc1000/coreconfigurator.h
+++ b/drivers/staging/wilc1000/coreconfigurator.h
@@ -126,6 +126,5 @@ s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
 			       struct connect_resp_info **ret_connect_resp_info);
 void wilc_scan_complete_received(struct wilc *wilc, u8 *buffer, u32 length);
 void wilc_network_info_received(struct wilc *wilc, u8 *buffer, u32 length);
-void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *pu8Buffer,
-				   u32 u32Length);
+void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *buffer, u32 length);
 #endif
diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index ca1990f..6aef2b5 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -3475,8 +3475,7 @@ void wilc_network_info_received(struct wilc *wilc, u8 *buffer, u32 length)
 		netdev_err(vif->ndev, "message parameters (%d)\n", result);
 }
 
-void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *pu8Buffer,
-				   u32 u32Length)
+void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *buffer, u32 length)
 {
 	s32 result = 0;
 	struct host_if_msg msg;
@@ -3486,7 +3485,7 @@ void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *pu8Buffer,
 
 	mutex_lock(&hif_deinit_lock);
 
-	id = ((pu8Buffer[u32Length - 4]) | (pu8Buffer[u32Length - 3] << 8) | (pu8Buffer[u32Length - 2] << 16) | (pu8Buffer[u32Length - 1] << 24));
+	id = ((buffer[length - 4]) | (buffer[length - 3] << 8) | (buffer[length - 2] << 16) | (buffer[length - 1] << 24));
 	vif = wilc_get_vif_from_idx(wilc, id);
 	if (!vif) {
 		mutex_unlock(&hif_deinit_lock);
@@ -3511,9 +3510,9 @@ void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *pu8Buffer,
 	msg.id = HOST_IF_MSG_RCVD_GNRL_ASYNC_INFO;
 	msg.vif = vif;
 
-	msg.body.async_info.len = u32Length;
-	msg.body.async_info.buffer = kmalloc(u32Length, GFP_KERNEL);
-	memcpy(msg.body.async_info.buffer, pu8Buffer, u32Length);
+	msg.body.async_info.len = length;
+	msg.body.async_info.buffer = kmalloc(length, GFP_KERNEL);
+	memcpy(msg.body.async_info.buffer, buffer, length);
 
 	result = wilc_enqueue_cmd(&msg);
 	if (result)
-- 
2.7.4


