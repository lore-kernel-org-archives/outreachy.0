X-GM-THRID: 6620380698493583360
X-Received: by 2002:a1c:23c8:: with SMTP id j191-v6mr315748wmj.0.1541427616583;
        Mon, 05 Nov 2018 06:20:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:9c3:: with SMTP id 186-v6ls1211621wmj.2.gmail; Mon, 05
 Nov 2018 06:20:15 -0800 (PST)
X-Google-Smtp-Source: AJdET5cD9PjjULhHLkEsD1ikRmdYl9V+POoqOU9TSvi0+KXkSmNrTnbVFzAcPpKHCMuLnSNbCj3H
X-Received: by 2002:a1c:d8a:: with SMTP id 132-v6mr787919wmn.21.1541427615804;
        Mon, 05 Nov 2018 06:20:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541427615; cv=pass;
        d=google.com; s=arc-20160816;
        b=xXwyKrPlOmQDOOrJJektsVjlf7IPz8CENoaJ/1hnVdE6QulyhKs2unp1WKM93T8gSF
         raFN7hH7eSoWqZpaegff8FJwgerjf1YiITHR8u4z4FDcF0Pdo4XmdkzleJUHa+SC5NXT
         O9hAov4xPJTSqhNh5FV2eJEpyH+g5cIARZHwhZhAYocT8dpgA7JcQuCdh6kx4j0fquaL
         Hp/sWVqN/RzpVV3pzTK0aQOh6j/0Ol+6LfU931GNV7cpw4H1SFjbeUaUEglcJ/krNUuv
         Ig7YQ9bN3jKdbFuvpSYoKvhYltbt6+3PtxTYO7htmiFinfCySDJowUjtHxmTNELaMf8W
         CVjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3edoDU1IcF/LZD7C7c2mAzoYytykUXnuMnQCiQc3qdE=;
        b=wUkmq06SS/4GmDfeeApZPZDpBGLIICI9NCzq4ZjbThhqpgQWPEo5AzQpPXuKTT4CzG
         OJHRGIFRcpUIjpd2sjgSVO4AUIjOWHm5VkcBBa05V/amvva2+ARDuwUpfONhFFsm/Rjk
         2CtJM8Ru4F01rG7GbWNVXbkcIf1BlTrFHKpCDSw/1pvfhqckgXcGqYaOpxAs4U9dwcm4
         urpysBOtmVy01WQURoRTJ1RODUJU1qX87BVMIuGnqyTrm9LcXMN1W4On+59xNFPnXRjb
         t/8hxDvx5ict7+VTQUyC6FRxwi8SfnYKakpPoUK4BvY19A05pr97LpI1oSG2vbZGHRca
         rnfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=bQi7SELu;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id b12-v6si503304wme.1.2018.11.05.06.20.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:20:15 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=bQi7SELu;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541427613; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=dEuTzLgPG/CQ1CU2uhQx4YSLO4bZR0zHQ82Vexumy0RToA617u0T7uE7B781jbZvD0EVq9Gm3JDaowxbL1iul0wCfwnbc0IwKyCUSrPmxMYNy8IArl1W43IqUyD+ZNLbssXQlox/rzgOfrAs4Ts1XcZX8PvkzQFwuuTxFsPULmU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541427613; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=3edoDU1IcF/LZD7C7c2mAzoYytykUXnuMnQCiQc3qdE=; 
	b=DM4jVr8bU9SctV4TMyFWUpKiMlLQ8sSZFwfvJnMgggc5H1K0gNYMvT3FpOEowDtkyYTVgzJJUlNsDkPLSHQUZe0UUSHFv6CGzR1U2Ei78ZVPOhDariiNsprRWdKEg4UgiiYja1pTzV8mWlvhSpNnLxN+eUwUt2V7IOXqRsMcGPY=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541427613;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=3165; bh=3edoDU1IcF/LZD7C7c2mAzoYytykUXnuMnQCiQc3qdE=;
	b=bQi7SELu0tZPH76KFvEEFHzrUFWyuDjbmMI+9kQYE7ShGwzK/Xw11Iu9e1hdiUDi
	lSqucOGDPIOi+qHgaQIbQ0LHbo0sxwSgL8auhUuXVS+EW5rO2QsKdse9DOnTrKW25Nk
	67kHN9bLQlJMbDEhbpY3u/ZqmWRAgv7VbiD6g+Gs=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541427613049544.1905650211913; Mon, 5 Nov 2018 15:20:13 +0100 (CET)
Date: Mon, 5 Nov 2018 14:20:11 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 11/14] staging: greybus: remove multiple blank lines
Message-ID: <54bb019ce63294ef34ec5d9c2dc7d968ff772420.1541427415.git.code@wizofe.uk>
References: <cover.1541427415.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541427415.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Remove extra blank lines to conform with the warning.
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



