X-GM-THRID: 6621495393645494272
X-Received: by 2002:a9d:154d:: with SMTP id z13mr2204111otz.35.1541687149286;
        Thu, 08 Nov 2018 06:25:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:ac4f:: with SMTP id v76-v6ls950100oie.0.gmail; Thu, 08
 Nov 2018 06:25:48 -0800 (PST)
X-Google-Smtp-Source: AJdET5dNF4kc4kPqD6k11EPRdBpzvku0C4bhneS8BhyhmY98uWOFFsw3CBDRUPiGI0yB2Pa38ZN2
X-Received: by 2002:aca:f183:: with SMTP id p125-v6mr1383051oih.53.1541687148004;
        Thu, 08 Nov 2018 06:25:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541687147; cv=pass;
        d=google.com; s=arc-20160816;
        b=ywwEPdMLtNuv4ZDJiXp3Mr5GtOi4N9Ln49TGlCsohPoYj8/SOSmsiAWLyzk/87ipn+
         0xIpraUqIhc5nJNOUSMtqXymteAkNmUWmkh35dzeFBCoFqs/BkHbrQLfXV+fi6cZGidA
         G++hakibeevd6UEhiJoo8Oy5Hj+cty4rVwz5DDvBL3HnURM6uM4PBdHZ/yz0sMVuOKp9
         T8rgTgC2z0PJPI7S6X3p9PPIcZtTJSv1/r67Q2Bzd8eijkmXBxtglZqaBd+sMaExcDi6
         OhOCWpXb/M3OsLyYhLSchvVSfQcYB2NtH5JYxQUroJp/HrrGLR9yQx3UuZ7gPdeSN8gV
         1mvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2wy22xGLqYojhJ6gTDj3gYhTBm06/0karJk/3Zsw3l0=;
        b=Bnm79P3oH4zQsRd/V1keYwREYJh0is1wuGfXcjHvys9bQ+Wo8shps7DG49ft9yvD4z
         nivz2CRiQNToZ8/pbDwOR/PkWyJo3ZJOnYWYLo629JqiM5QTun0hMeTUHqRm5MNOxb6p
         5W74gunEnd/QcRQDK+fBQiYvKfd03x8fCMm9ij1ISji4Cc2duE99BYTvbwn5Vy7ICn7x
         SacT6hH7zSSPnXM5gmIoYzmWjnJAO79f4ACzYuLXjvmMiZ6dVUvYTicUWA8CTkyAKLka
         idMcmX4D4Lufb5BpUjVfopSreU94WWfjwOyOrHS5wqK8EpcHvby5E9MdbrqePTVt4cqs
         su7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=eHHYAGFr;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id j23-v6si204500oib.2.2018.11.08.06.25.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 06:25:47 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=eHHYAGFr;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541687144; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=EWIHWeldqBO7QGcQSteal52bkK/ZA8+WnPDA6S71QujJ4Sz0f4b+2FjoqB1BmX1JAIkUtRyHrqhqRrkzYhBcoYlsRvV7r21gGCmIPcmfnHmVua+OEqgxipTWS5wbhhhsKcryfL5UFwwZD07zIGXp8R+vJKI5pzHed/zL2fjdkVc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541687144; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=2wy22xGLqYojhJ6gTDj3gYhTBm06/0karJk/3Zsw3l0=; 
	b=UioE45CgW7xsB+u8p5Tx2bukAtHRMXkctKg9TTbV6sLaBXEgfysQQuhLZgPFum9g81Jcjm981HNTEbw3d5mZrfwxcQvxSI6XBuUxrPYj1vncjKAYTl1yE3dyQgaNiDgLYYNfr02PYhsfsmQxiVGuYDP8xYEkzCrxpvi0GmA+FIc=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541687144;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=3166; bh=2wy22xGLqYojhJ6gTDj3gYhTBm06/0karJk/3Zsw3l0=;
	b=eHHYAGFrLoepNpCKo8MYheHATbXFFuYkKGV4PSntn2bpMoNBBkFanyNF2jsXkusO
	9E08PT2brdh76+4sulIyk9MazFxh3JoOdYfd3rjU+TCDU6+PmUqpKnpZxQJXJVhfiMV
	8XmDH3h100HrbYrK6Uyzmip7HJpD3T9TaxGTWTE8=
Received: from kvasir.local (94.117.81.61 [94.117.81.61]) by mx.zoho.eu
	with SMTPS id 1541687142491734.1827111550014; Thu, 8 Nov 2018 15:25:42 +0100 (CET)
Date: Thu, 8 Nov 2018 14:25:39 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 10/15] staging: greybus: remove multiple blank lines
Message-ID: <f970464557b0f5aaf1c27734e9a56bc4c824cdfa.1541686942.git.code@wizofe.uk>
References: <cover.1541686942.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541686942.git.code@wizofe.uk>
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



