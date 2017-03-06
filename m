X-GM-THRID: 6394514785010974720
X-Received: by 10.129.62.40 with SMTP id l40mr6979179ywa.67.1488839006085;
        Mon, 06 Mar 2017 14:23:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.89.216 with SMTP id u24ls13305106otg.40.gmail; Mon, 06 Mar
 2017 14:23:25 -0800 (PST)
X-Received: by 10.13.227.134 with SMTP id m128mr7488851ywe.102.1488839005633;
        Mon, 06 Mar 2017 14:23:25 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-io0-x241.google.com (mail-io0-x241.google.com. [2607:f8b0:4001:c06::241])
        by gmr-mx.google.com with ESMTPS id i189si346200iti.0.2017.03.06.14.23.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 14:23:25 -0800 (PST)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c06::241 as permitted sender) client-ip=2607:f8b0:4001:c06::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c06::241 as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x241.google.com with SMTP id n76so19901992ioe.1
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 14:23:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=eNiacUHroRzQXZ6LHhELKXzLT9ddwvZ2BZe3m33PlE0=;
        b=mm0YmqL5chlUuA5177w85eciNe3rGYfiLlJQ19kPFl/uKpEnW0XZbI3+prRY1bY6D2
         NoOFxd0fxRHVrUuDP7OvuvlXdjyZ7WSIYemfYR/4pADd3XSUeX6CjmKwqmXdp2gsFeHz
         uBDQYMi+8Iot1josqpV9vLG/GSfdn6TaHegDXSIsPZzOTsMkxfU59Qn1gdFWIsfmTFv+
         NsDXzYOIpo5Ro7pv67OVmEUG+ShlzrwJbECPWCn3y7hr/h6ShJz9Oxy+xBr20Uwk8fvf
         rXdrszi6GZyHuupmW6W2pzITTtUQxCSoKynJCQVA1Phz0V6QDXJ6OGEAvXJLYaJJuhFQ
         GIWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=eNiacUHroRzQXZ6LHhELKXzLT9ddwvZ2BZe3m33PlE0=;
        b=UY+hsqhpvChszZXRqlNWodTTxncTe/Up+mQeFzixoYcmKXuRAwCdHIoauWdUCLX9JR
         2TAKswVrZIZvGwfmeva6sfOr2+l0mwhIq6rP+ib+Ni+k84JErwhLWYFEW8XaV9nKZXz4
         IfZWKkFozsHLfsLNWCOQemrZO6SI+hMUNgDSxy/fdCXCR2ZSFKeqDdZmwxDV7NfqXBcE
         s9wPn7f1LZoeg1uzhSUsbVgOR6o36j5Mtm+U30kGiducJR/wvW7j8JA0J0VPN+WPUbDQ
         A9qYXzR5ltkO3i8tRXwdsEspjjViM7GzNP1VDS3lvcN0rwZF5bKx7EfMDY/j7U+2p3Ii
         q6PQ==
X-Gm-Message-State: AMke39nsH4624H2WF6NHplUL0jfMh8M6UvoKkFbORU+dGafG9KIuTLhLrcEK+Q7BIHefHA==
X-Received: by 10.107.35.211 with SMTP id j202mr5150150ioj.158.1488839005422;
        Mon, 06 Mar 2017 14:23:25 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id a196sm5501344itc.14.2017.03.06.14.23.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 06 Mar 2017 14:23:25 -0800 (PST)
Date: Mon, 6 Mar 2017 17:23:24 -0500
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com, gregkh@linuxfoundation.org
Subject: [PATCH 3/3] staging: wilc1000: Fixes camel-casing in
 wilc_gnrl_info_received
Message-ID: <08b299c0efa3883f9d05c548dc4ddc8d6f68e7b5.1488838177.git.tahia.khan@gmail.com>
References: <cover.1488838177.git.tahia.khan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488838177.git.tahia.khan@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixes checkpatch warning by renaming pu8Buffer to buffer
and u32Length to length in wilc_gnrl_info_received.

Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.h |  4 ++--
 drivers/staging/wilc1000/host_interface.c   | 12 ++++++------
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
index c4c5f3b..a2df5c7 100644
--- a/drivers/staging/wilc1000/coreconfigurator.h
+++ b/drivers/staging/wilc1000/coreconfigurator.h
@@ -128,6 +128,6 @@ void wilc_scan_complete_received(struct wilc *wilc, u8 *buffer,
 				 u32 length);
 void wilc_network_info_received(struct wilc *wilc, u8 *buffer,
 				u32 length);
-void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *pu8Buffer,
-				   u32 u32Length);
+void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *buffer,
+				   u32 length);
 #endif
diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 312a598b..39f4dcf 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -3476,8 +3476,8 @@ void wilc_network_info_received(struct wilc *wilc, u8 *buffer,
 		netdev_err(vif->ndev, "message parameters (%d)\n", result);
 }
 
-void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *pu8Buffer,
-				   u32 u32Length)
+void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *buffer,
+				   u32 length)
 {
 	s32 result = 0;
 	struct host_if_msg msg;
@@ -3487,7 +3487,7 @@ void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *pu8Buffer,
 
 	mutex_lock(&hif_deinit_lock);
 
-	id = ((pu8Buffer[u32Length - 4]) | (pu8Buffer[u32Length - 3] << 8) | (pu8Buffer[u32Length - 2] << 16) | (pu8Buffer[u32Length - 1] << 24));
+	id = ((buffer[length - 4]) | (buffer[length - 3] << 8) | (buffer[length - 2] << 16) | (buffer[length - 1] << 24));
 	vif = wilc_get_vif_from_idx(wilc, id);
 	if (!vif) {
 		mutex_unlock(&hif_deinit_lock);
@@ -3512,9 +3512,9 @@ void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *pu8Buffer,
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


