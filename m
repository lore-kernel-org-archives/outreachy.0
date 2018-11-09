X-GM-THRID: 6621495393645494272
X-Received: by 2002:a1c:23c8:: with SMTP id j191-v6mr451769wmj.0.1541771677958;
        Fri, 09 Nov 2018 05:54:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:3488:: with SMTP id b130-v6ls349739wma.25.canary-gmail;
 Fri, 09 Nov 2018 05:54:37 -0800 (PST)
X-Google-Smtp-Source: AJdET5duR1hG/TvKc0eodeh7NXGF2RiNNaRVx0uBWN63CwHy2YxoC5R7HVgYO1ZTDLHGKyU/3d+V
X-Received: by 2002:a1c:f609:: with SMTP id w9-v6mr460410wmc.5.1541771677291;
        Fri, 09 Nov 2018 05:54:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541771677; cv=pass;
        d=google.com; s=arc-20160816;
        b=omaPYg77PolncB9WeGKWvRw8qJyNt6mV5xd0naDZLJsMdwBAQqhcw2EKr0S8HV3AiS
         KM2vS9rqkS7ZMSYQmitC4xtqv3M0rOIAyOa9s+HBeUEEOp262y6cKyYseOFL9q9hVuxa
         Wz1R6V4QLZZGC7kfBgtM8ir6g1jRBgRGvO9jXGnSvgQebbZo+A2qQtmT7myxsSuO0opt
         nby44Eem39cxuRh3+MIoTNsYkwHbLm0fK8icodA1YFhXd3HWDXu2/uACtjLAPyutJYhE
         jg5Nk1zjZSFx1JtmDSrwLnrsHJ4YPaVuOIuCMN9y94Uyaon8mUSgOjnemu/TTJweKJaw
         3azQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2wy22xGLqYojhJ6gTDj3gYhTBm06/0karJk/3Zsw3l0=;
        b=qf4cPs8SsQFjdZKRPB4DhkUX/qbNBK2qY5KgCHfi6zH0Ey1M2TlQk13yzxMN5oEYv5
         tOllHoUW2tgnGZ7etlYV5MQpf02P0V82IluSe8H1+rHxwH/p24FqfcrHhV544Lki+3YO
         KPqV3dpFMb+7CrtkTw2x19+2miim2b0LEcDOPmWelhQ/f1yiVyK0Iu0A5Pph7V/n5tyO
         jOFHGAQV2+Y/tBUTs85wz9If4hGlrIR1rGBFW70wVrlXpjGlmrai3WBS/jxbOI27Qwgw
         NXFPIeKwuQuXzO9NhO8D8qGxLdoE3CfLkqX9dvvRWLJPPsVJx2EZUyGX850B+z646TZp
         LOSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="a0SlZ/8f";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id z139-v6si37234wmc.0.2018.11.09.05.54.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Nov 2018 05:54:37 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="a0SlZ/8f";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541771673; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=Vt/Ol8cYFMI/DzLohdmCFU7vTNFG5AMaMhIrClW9M439jEGGuKlo1yHO7juqrFANRSMRGGkPlnUXpveWHNT1h/b5lgeOlbMYk+P9vr+i2ge0pDPViRUx10T+C/i5kl4MY01XcFdRF09uPMpCsZAtOTG5kvYn2oge/ATeUKSFjNM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541771673; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=2wy22xGLqYojhJ6gTDj3gYhTBm06/0karJk/3Zsw3l0=; 
	b=dsYCCjp0EuyhMmzq64drPREEgIsEq18XYOxXmII86hYWpMY5OPo1VK7n+o2RB3vTReKU92UMvr7jQ3zIBClM64Pa5tXTzC10rREgXlTGMVmJ+NdDSBwsbX07JHj2ppu6fRQOQuw7wDxnm7CGhQwFQyJJKduLZHbzuUYQsuMpgq8=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541771673;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=3166; bh=2wy22xGLqYojhJ6gTDj3gYhTBm06/0karJk/3Zsw3l0=;
	b=a0SlZ/8fDg7YqHnEI4DFAKic+XwG2neOkhF6NEoGIMfpmRrXqi3MawfskODw9ISq
	oR5+flxVNGJtxHGIT5Q8C+hQx+kc/8EeuDYROhjWnIkXcmnYPSmQOCVjM4N1UWdcXbf
	Cp1KBXHut6oSUavxYs679VA3c3W9PGjRXtjawX4Y=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541771671801133.24250187009727; Fri, 9 Nov 2018 14:54:31 +0100 (CET)
Date: Fri, 9 Nov 2018 13:54:30 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3 10/15] staging: greybus: remove multiple blank lines
Message-ID: <5ae4bbd8f7781091e0fb0b3dc3d30dbc2a77eb68.1541771591.git.code@wizofe.uk>
References: <cover.1541771591.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541771591.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Remove extra blank lines to conform with coding style.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/greybus_protocols.h | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/drivers/staging/greybus/greybus_protocols.h b/drivers/staging/greybus/greybus_protocols.h
index 9bd7b6dfb476..f38f4a8db2b7 100644
--- a/drivers/staging/greybus/greybus_protocols.h
+++ b/drivers/staging/greybus/greybus_protocols.h
@@ -65,7 +65,6 @@
 #define GB_CONTROL_BUNDLE_ID			0
 #define GB_CONTROL_CPORT_ID			0
 
-
 /*
  * All operation messages (both requests and responses) begin with
  * a header that encodes the size of the message (header included).
@@ -95,7 +94,6 @@ struct gb_operation_msg_hdr {
 	__u8	pad[2];		/* must be zero (ignore when read) */
 } __packed;
 
-
 /* Generic request types */
 #define GB_REQUEST_TYPE_CPORT_SHUTDOWN		0x00
 #define GB_REQUEST_TYPE_INVALID			0x7f
@@ -104,7 +102,6 @@ struct gb_cport_shutdown_request {
 	__u8 phase;
 } __packed;
 
-
 /* Control Protocol */
 
 /* Greybus control request types */
@@ -249,7 +246,6 @@ struct gb_apb_request_cport_flags {
 #define GB_APB_CPORT_FLAG_HIGH_PRIO		0x02
 } __packed;
 
-
 /* Firmware Download Protocol */
 
 /* Request Types */
@@ -286,7 +282,6 @@ struct gb_fw_download_release_firmware_request {
 } __packed;
 /* firmware download release firmware response has no payload */
 
-
 /* Firmware Management Protocol */
 
 /* Request Types */
@@ -368,7 +363,6 @@ struct gb_fw_mgmt_backend_fw_updated_request {
 } __packed;
 /* firmware management backend firmware updated response has no payload */
 
-
 /* Component Authentication Protocol (CAP) */
 
 /* Request Types */
@@ -405,7 +399,6 @@ struct gb_cap_authenticate_response {
 	__u8			signature[0];
 } __packed;
 
-
 /* Bootrom Protocol */
 
 /* Version of the Greybus bootrom protocol we support */
@@ -474,7 +467,6 @@ struct gb_bootrom_get_vid_pid_response {
 	__le32			product_id;
 } __packed;
 
-
 /* Power Supply */
 
 /* Greybus power supply request types */
@@ -648,7 +640,6 @@ struct gb_power_supply_event_request {
 #define GB_POWER_SUPPLY_UPDATE		0x01
 } __packed;
 
-
 /* HID */
 
 /* Greybus HID operation types */
@@ -694,7 +685,6 @@ struct gb_hid_input_report_request {
 	__u8				report[0];
 } __packed;
 
-
 /* I2C */
 
 /* Greybus i2c request types */
@@ -730,7 +720,6 @@ struct gb_i2c_transfer_response {
 	__u8				data[0];	/* inbound data */
 } __packed;
 
-
 /* GPIO */
 
 /* Greybus GPIO request types */
@@ -829,7 +818,6 @@ struct gb_gpio_irq_event_request {
 } __packed;
 /* irq event has no response */
 
-
 /* PWM */
 
 /* Greybus PWM operation types */
@@ -1317,7 +1305,6 @@ struct gb_svc_intf_oops_request {
 } __packed;
 /* intf_oops response has no payload */
 
-
 /* RAW */
 
 /* Greybus raw request types */
@@ -1328,7 +1315,6 @@ struct gb_raw_send_request {
 	__u8	data[0];
 } __packed;
 
-
 /* UART */
 
 /* Greybus UART operation types */
@@ -2204,7 +2190,6 @@ struct gb_audio_send_data_request {
 	__u8	data[0];
 } __packed;
 
-
 /* Log */
 
 /* operations */
-- 
2.19.1



