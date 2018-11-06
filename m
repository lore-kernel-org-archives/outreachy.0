X-GM-THRID: 6620547167797903360
X-Received: by 2002:a1c:5715:: with SMTP id l21-v6mr44488wmb.17.1541466333896;
        Mon, 05 Nov 2018 17:05:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:cc0f:: with SMTP id h15-v6ls872538wmb.25.canary-gmail;
 Mon, 05 Nov 2018 17:05:33 -0800 (PST)
X-Google-Smtp-Source: AJdET5fbh0D5QPDzwHn0HDOAJhbiKPzStcB8SdmbeLCK02kA0ZWpCtQIo44nv+0tUUjLZi4QKs/N
X-Received: by 2002:a1c:d8a:: with SMTP id 132-v6mr44203wmn.21.1541466333264;
        Mon, 05 Nov 2018 17:05:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541466333; cv=pass;
        d=google.com; s=arc-20160816;
        b=mobbygg5xGQb2bMteVgo5EHWMDDS1k3Rr/Di4UEj1y3Ym5VHLLzAM7oc4grnjKTlYA
         ozK2xw/C0z/6lnEvFBDzFMgSi0bwgztgw5WkvkgihVvElZKxU2kxw8tG/768lAP7f61F
         zFXfSJJEsv2KLHSVHdEVs83aG7Qx6OoE2PNBa8vkUMi+FW7dmyLZ6xr1TbWgmSvJFL6s
         hHQq0F4pNekgSeOxkMdVGWJFY0AiShc1y0XW2/fDwP0Qu2kfoXNgwNM03yJSGL7giWjj
         J/vs83T2lXyPF4DCphrSwOfpbmtnmJ3ZJR22wPjonpoANjvAP9rCOcRvkc7YFtcQ0djY
         IGBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2wy22xGLqYojhJ6gTDj3gYhTBm06/0karJk/3Zsw3l0=;
        b=P4cbTplZ6BPuna77Lmx6ktKdQeMBr4T1v/XL9PA4Rr7mwxuvrXASaXn+dxHQBgyrGK
         qiuw6EtvgnfY4FfSwEWBaBmnf0BKtes+x71dShTzpbSVZFCBaKFL5TWLrlxrVpU2iOUH
         3pZA1HZBzKNF19vvjdCsG8hus4yUqRkiptUp+LtCf8Xr9iJHTYAFGwSjBTxY3ypSueCR
         wVLEDW0LrdTHlXA6IqBtDTXVPwDDO6A9Xul6Pz32jl9vx0bqESVwlM4ccSOnhcYufAw7
         1lnrpZLZL1aWkbvthuKfc9B1I2ffQMUroxPEu7KpMxWPvaRNT0arVGAbq2nbFAQWYQg2
         tXTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=Wdw0auXY;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 204-v6si17565wmw.3.2018.11.05.17.05.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 17:05:33 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=Wdw0auXY;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541466330; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=D4q+UPinOr6HI0g3gecnGnu6g1jHe98t3sgeGFAIWZTgDUgA1WaPWfHogcBGZASkHwUoKXkwCF2LoIn9LNoSot+xPb06Ks1f/B5iq+gijBWbVYMo7yp8D9JadG0yChXoe3tKYSg81h25xXlzXp18LUTiiAvW+pCYbAjIMMloTwI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541466330; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=2wy22xGLqYojhJ6gTDj3gYhTBm06/0karJk/3Zsw3l0=; 
	b=c7lnUp3yfKzUX0WR6C3bvOVSD90VrAnd2cWlXRSF6p0WRC0L8Sha30qdY3krJlJFPhHgnUfnHLdHFcCN/6qdXP+/E0TOa/YB1dVNIyQ+fNgpmalXyClreHbCmQjM10c92JA+gKsBihHQ9y00uoNFVY84sh6zLwZdjpLZJ3Fg6NY=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541466330;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=3166; bh=2wy22xGLqYojhJ6gTDj3gYhTBm06/0karJk/3Zsw3l0=;
	b=Wdw0auXYBTU1zbFNCp/pR0KIY2mlkxzjanxsNHQMNmHf2dfbHUBzAU2F3Uxl/lFz
	RHzNSevyzx8pNcn/wNZryAad/f1w18ihEj7bpCxzFblLBQ5EUwl8yVYMaVtMrIhYzHw
	wKcd0uMKhJ4T3GqVnWARtz2HHiy3EJtgvhpLgje0=
Received: from kvasir.local (90.252.88.110 [90.252.88.110]) by mx.zoho.eu
	with SMTPS id 1541466328834754.2941223899549; Tue, 6 Nov 2018 02:05:28 +0100 (CET)
Date: Tue, 6 Nov 2018 01:05:27 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 10/15] staging: greybus: remove multiple blank lines
Message-ID: <f970464557b0f5aaf1c27734e9a56bc4c824cdfa.1541466185.git.code@wizofe.uk>
References: <cover.1541466184.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541466184.git.code@wizofe.uk>
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



