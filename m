X-GM-THRID: 6394514785010974720
X-Received: by 10.99.23.95 with SMTP id 31mr1678202pgx.122.1488932803289;
        Tue, 07 Mar 2017 16:26:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.39 with SMTP id 36ls2094078otg.33.gmail; Tue, 07 Mar
 2017 16:26:42 -0800 (PST)
X-Received: by 10.157.51.10 with SMTP id f10mr1415704otc.84.1488932802938;
        Tue, 07 Mar 2017 16:26:42 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-it0-x242.google.com (mail-it0-x242.google.com. [2607:f8b0:4001:c0b::242])
        by gmr-mx.google.com with ESMTPS id 13si3348563iti.0.2017.03.07.16.26.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 16:26:42 -0800 (PST)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) client-ip=2607:f8b0:4001:c0b::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x242.google.com with SMTP id r141so2391215ita.1
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 16:26:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=esejVQMwTkbfL/3ieFVny69mbQuxdBEzqjPjdUF7JH4=;
        b=bIR6gBkn7u2pMHDTudRxN8PpgMF46O6JcZMrzccJJ7dPaRy/EMoxLHCRafy/llLCBW
         yp10DqiEprz9b5uIKpE+Dm6CClOyGciOYM6V363vdFp6HETb8A+ZEqbhRS14Z7X4Z/2a
         wns1Oa0mxFsTNx6m0/m41lkCvj845qcrcwnkV+tELnvQXmZPnsUuL/358UdaBF7RIU2O
         dyKCZDGnwsL4266D6MRX8QZABJrh7u6viefFeLmdPJa0aO/yoM8BXXd+4TzvieZaiWq/
         uJNGDgsDJaaNeiIVBWPwZIf/78qer9ftNyTkYWWsA3aMUn5Di59mEomFR3dkQIAQQzop
         4VAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=esejVQMwTkbfL/3ieFVny69mbQuxdBEzqjPjdUF7JH4=;
        b=e1tCcX0HW7Rx1OZLyOv+2X2jX3tE7/yYTZAh4dM9ecq8e8yJqhMxRCdA5tcv4XvdMo
         B1iQM/9Ocy2GMQduodrR/ZBVOdNlWxJJwK44Hyu4pfMjatX4BxBvX69+9c38KmW6C8MT
         Z4eH1XToDKgIQXwwfbrKrxkXTAzI5ec7cLgwLjDfPZFKbyvt+1wnqBTwjrcXCVPOrf5S
         +med6oQOvGSeVbe1PfXEGyxYytxzvqMS1tXuvZ04s5oRL13F/5cosCQk/r5NVu0lVbMB
         3KlyM/hrXTT8IoRB4LJhv+OujuAg/GNp2ItRYfRFHkSaOZcNnq78i8oFau3F888cMnNJ
         U6PQ==
X-Gm-Message-State: AMke39kklud7CoC8OisChoGu1nTHD8Ud+36KXPkMVRIe7hsm4reolJXq+7Ea6MOuPtW0dQ==
X-Received: by 10.36.216.213 with SMTP id b204mr22933518itg.66.1488932802742;
        Tue, 07 Mar 2017 16:26:42 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id e4sm827382ioe.7.2017.03.07.16.26.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 16:26:42 -0800 (PST)
Date: Tue, 7 Mar 2017 19:26:41 -0500
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 2/3] staging: wilc1000: Fixes camel-casing in
 wilc_network_info_received
Message-ID: <16e8a0f1af525d986fc2690af748e9ab7be50b28.1488931933.git.tahia.khan@gmail.com>
References: <cover.1488931933.git.tahia.khan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488931933.git.tahia.khan@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixes checkpatch warning by renaming pu8Buffer to buffer
and u32Length to length in wilc_network_info_received.

Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.h |  3 +--
 drivers/staging/wilc1000/host_interface.c   | 11 +++++------
 2 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
index f40d458..45dce5b 100644
--- a/drivers/staging/wilc1000/coreconfigurator.h
+++ b/drivers/staging/wilc1000/coreconfigurator.h
@@ -125,8 +125,7 @@ s32 wilc_parse_network_info(u8 *msg_buffer,
 s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
 			       struct connect_resp_info **ret_connect_resp_info);
 void wilc_scan_complete_received(struct wilc *wilc, u8 *buffer, u32 length);
-void wilc_network_info_received(struct wilc *wilc, u8 *pu8Buffer,
-				u32 u32Length);
+void wilc_network_info_received(struct wilc *wilc, u8 *buffer, u32 length);
 void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *pu8Buffer,
 				   u32 u32Length);
 #endif
diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 3eec9dc..ca1990f 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -3442,8 +3442,7 @@ int wilc_deinit(struct wilc_vif *vif)
 	return result;
 }
 
-void wilc_network_info_received(struct wilc *wilc, u8 *pu8Buffer,
-				u32 u32Length)
+void wilc_network_info_received(struct wilc *wilc, u8 *buffer, u32 length)
 {
 	s32 result = 0;
 	struct host_if_msg msg;
@@ -3451,7 +3450,7 @@ void wilc_network_info_received(struct wilc *wilc, u8 *pu8Buffer,
 	struct host_if_drv *hif_drv = NULL;
 	struct wilc_vif *vif;
 
-	id = ((pu8Buffer[u32Length - 4]) | (pu8Buffer[u32Length - 3] << 8) | (pu8Buffer[u32Length - 2] << 16) | (pu8Buffer[u32Length - 1] << 24));
+	id = ((buffer[length - 4]) | (buffer[length - 3] << 8) | (buffer[length - 2] << 16) | (buffer[length - 1] << 24));
 	vif = wilc_get_vif_from_idx(wilc, id);
 	if (!vif)
 		return;
@@ -3467,9 +3466,9 @@ void wilc_network_info_received(struct wilc *wilc, u8 *pu8Buffer,
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


