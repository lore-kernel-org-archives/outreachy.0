X-GM-THRID: 6619410062845673472
X-Received: by 2002:aa7:dcc5:: with SMTP id w5-v6mr296530edu.5.1541201505341;
        Fri, 02 Nov 2018 16:31:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:c55:: with SMTP id t21-v6ls3220801ejf.14.gmail; Fri,
 02 Nov 2018 16:31:44 -0700 (PDT)
X-Google-Smtp-Source: AJdET5e4hgeUmQS1/ZMc91XKfTcsObrapMtNTEaDbZk99UZaQP6HP8jjrXTuhoJ1GviI2+wvAw6l
X-Received: by 2002:a17:906:f0f:: with SMTP id z15-v6mr1823099eji.0.1541201504543;
        Fri, 02 Nov 2018 16:31:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541201504; cv=pass;
        d=google.com; s=arc-20160816;
        b=GzjeQxo+w4Q7RlAlF+ZWItlrnmh8RfQ9Tuywtfq9bcwDzzvXpwO2U760COpbBf0bzf
         7XccpE6XqC+LZF8ayo2dbgGk0BagYPQcaEz5EnanyG122N12BJV0flU4S+2J4tKIeRes
         H7vIk99/AO9nbaORvB6olX7hY4jLbzoD1j4WM4k5xFz7jloaGewRvp7iDeN91QrjFSsT
         J3Nr4uccDDyyhg0ie+7382LfsI78YjOpJ7L1TkMSFZSrK9W483iUY4eoCJUhsLwtV9AY
         Be66KclhHBm0cJ3170uEeeWDSuUkFWqeIB5ALQk9u4JR8uZaD3Rr9JCusNIPSLB9628H
         oMDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=OjVS7ewyixQwa3+oQu0sukVi8nbGvoSLpLi0GWWY+/4=;
        b=0CAoyun8S/KclkNlRrI+Tc1DfsRQ9KiJARXw9E+SO+5RqAd0+i9WStkatBY5M8LSmI
         Rkhxnu8WXOfxSaVClRighlXf2cABrRszlCANiZ5UJVkpRLT4CwkWClGTXuKj4RaS3Dnt
         xfLLurBYT42LsjI+Ld0TQcbaLv0cb5yqHU0V80JRj27mOiEpWy6qArsyWXktCjjlXm+Z
         8ays9Pb9Wd4B7Q1xAO2BUURaVt8TpCo+wjXJEW2m4kXWodCNw4D48Ow+Iii/mYqn4yfw
         PfhmEoK7OvARQpoHjvk+wzjyYS6zOEaUV09zUBDHVzDAY5GQkWIXjF42m3nNsV31gizD
         uXcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="bt/EbIdY";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id z4-v6si565242edp.1.2018.11.02.16.31.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 16:31:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="bt/EbIdY";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541201503; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=TbqYM2d/ArxppD9dQJ+0a3dm4wfSNTh1WubjTioxAd0SB94GnoGCCNWK9awPUxCdKU4pSCzId4zGSQIOTV24AC+F7HSlQEANjfCPnftX+59POegA7SdjYgbNE2EzdbzdIpk+dmSkTgPb17nh2HMxVpzMZqsXfEFCdFw3c6yrYOo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541201503; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=OjVS7ewyixQwa3+oQu0sukVi8nbGvoSLpLi0GWWY+/4=; 
	b=iexWkWFB3wXYSh7Rm2YPBmyaifpwOEqgUTgoW3bYwzwekSeA6LJeS15NPeV7ofZwTMe6Lgc/iIhIf/twWnYXLtpEMrYmV1TRmXJwdOzjvGeIz7S1CtBYbzTXSwZed6wuqHxW9iuKX1GRiVGRPECK0aVNLGvSnzPNnJv8Af0GgIc=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541201503;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=3186; bh=OjVS7ewyixQwa3+oQu0sukVi8nbGvoSLpLi0GWWY+/4=;
	b=bt/EbIdY1r7pl3pE8XRH2kRsj1kH5U1ULnv9RNAycs/peg3BuIFsVWNdRgAZnzjY
	q5x6W7qM/tv3ujAmAhK8WFs3d7wLRJetINNmGHNUuoGfTZKHnzGuFouWSIbSDBcTv6y
	J0dG5odDW7EzorYTHyFmlTHD0T5QjSHhPAW4Tgmg=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541201502930834.7760201259239; Sat, 3 Nov 2018 00:31:42 +0100 (CET)
Date: Fri, 2 Nov 2018 23:31:41 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: greybus: remove multiple blank lines
Message-ID: <20181102233141.GA21283@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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


-- 
ta
ioannis


