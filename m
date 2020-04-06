X-GM-THRID: 6812648549642141696
X-Received: by 2002:a1c:f21a:: with SMTP id s26mr347882wmc.187.1586193356170;
        Mon, 06 Apr 2020 10:15:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f642:: with SMTP id x2ls107937wrp.2.gmail; Mon, 06 Apr
 2020 10:15:54 -0700 (PDT)
X-Google-Smtp-Source: APiQypI/gh+B6YdU1l42d+A29LX2tKUxIAMJYsuvByAItedQf8CjNQYJ1Z8UaSkl0sEum0CPqgxL
X-Received: by 2002:adf:f641:: with SMTP id x1mr207133wrp.239.1586193354944;
        Mon, 06 Apr 2020 10:15:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586193354; cv=none;
        d=google.com; s=arc-20160816;
        b=k9CC4dcTFph6tlvUw9xv5UR+Wo3PA92tukKw77tdoGMXt7Wp5E2ae50ET+i8s3OZTI
         BrvOS1b7vfQuaA1pAP0s/YjDoqI9P8QXdLxgbhecDqACbntmxstLAe7JcFKRnMsoLShI
         sZs/+Kxl+0VnDiq05NtWlbSGeZHOK/ZP/Lv9lpktpRrUiRWxv5uV+w67zq+BfXHuY8mY
         SOmv9fPCEoeO48BhHqjmKbHrONqj6Mp33ki50wvnPdPypksFPJFBgbwrEg1jFGLv3PYl
         pReLW4+z8Q0fZEA94GmSKUvG36LBQD7WpaaZJbixmOWdtu603N0oURi0KIidYifwhksj
         oxNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+TVZ9/SoATdb6REl7nnJ5sR1raCBDgnYWxqPbVqbg+U=;
        b=g7W059hfDfFebygXTo4USO2rpQbzWt5HVCwds09YO0FFYNTDrZZjCzQ+asapP86Psi
         bE/mLysrOWNkrXMp9z9R7Jqt43TpFGZ00UjLLw3Th0op2S3A1h3W8IAYwTkcpVnGdy5l
         YUduvzaHgh2gqfxOmM8K890SnFIaA89EKNJtgIIXI3teXLIl03P+EQ0DkSVWoqFrESqM
         3Dn+wLfP/3DpNz/vBla3O9nnuTOTY/I2Lxj+cs4G6CCgVjxCrTINAr1YcEbxUFFm/s8q
         K7rmwZGxcjbNmg+kJC6zqmuJ4arO1YN13W/P8Bru5/H9O/ur7nEScEJ71VRkRLrHrsTo
         N8Uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=shiY6LAK;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id u25si34128wmm.3.2020.04.06.10.15.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 10:15:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=shiY6LAK;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id w10so391178wrm.4
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Apr 2020 10:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+TVZ9/SoATdb6REl7nnJ5sR1raCBDgnYWxqPbVqbg+U=;
        b=shiY6LAKz0ppumGc9iivcEVCSH2MKEOzwHL0ETRN6qHQI+yYtiSSFzep1CED/rrG91
         Chgdi1FK7vEUnJif+Et9EKAmHaSJiwBmF+amAkycaxRsS95EJvFl6qYBRijtHoD8AIFh
         05uso0vqNRkacvarAgFQcjdMK2jU1WJlGs4vqvch5w6Cw2Al3F9Q6qMYAaPsULq7cl1R
         PC49DfmFW0+gT4huRLrqTvuo5z7KTGUQfHzDJujdQS3r2QxjYwBX4a+YbGuv1mrgiASm
         0YRt4qMwylW+W53gEFX902NOsVzn7YEECzgYKkE99D+SHlRWexNr7nWHZ4KDQONEPWSJ
         FLZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+TVZ9/SoATdb6REl7nnJ5sR1raCBDgnYWxqPbVqbg+U=;
        b=gsCeg6CvW8MMo8vaV6PZ7/FGfCyZ5O5K7QWx+obBeVzZRWHa7URPCVjo7qQyQjaVob
         VQyUChVvNdc8IOCHvzClHllIL8dztBHQjlFRLnBr1/put4MZqHqwXGtdhCpH9aJvFMAP
         oIIwgp50KiwAtWrcou69A81lEI2fNA5gy6MoAtYrpnsQpeYNxRa4JRPYLL3h1bioybPV
         /IDB4V8ElSe55katkPbOFAQm/o+tXSN+hTyDW4sqy8TEwGriKFOhGELJy1kSAlHwG7K8
         KRpvDbAKWiDiTQPg8Qlj5fZ9lpsPdilPqNdGDlkBXrd1ndT6Auu/gYIMeAGaIjTTdEKj
         UXFA==
X-Gm-Message-State: AGi0Pubh/Z0YGy06QkMKUVakkhtk7pKJvNqtbpiLPbtqZYG431BNIRQ2
	I0P/QYQVkuGgJhOwQj95ahK2Hykrqmc=
X-Received: by 2002:adf:e90e:: with SMTP id f14mr253285wrm.106.1586193354598;
        Mon, 06 Apr 2020 10:15:54 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.214.63])
        by smtp.gmail.com with ESMTPSA id p10sm26921845wrm.6.2020.04.06.10.15.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Apr 2020 10:15:54 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Hans Verkuil <hverkuil@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH 2/3] staging: media: Avoid comparison to NULL
Date: Mon,  6 Apr 2020 13:15:34 -0400
Message-Id: <20200406171535.7275-3-jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200406171535.7275-1-jane.pnx9@gmail.com>
References: <20200406171535.7275-1-jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Comparison to NULL should be avoided,
use (!x) instead to follow the coding standards.

Used a custom coccinelle script:

@@
expression e;
@@

-(e == NULL)
+!e

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
 drivers/staging/media/usbvision/usbvision-core.c | 8 ++++----
 drivers/staging/media/usbvision/usbvision-i2c.c  | 2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/usbvision/usbvision-core.c b/drivers/staging/media/usbvision/usbvision-core.c
index b84a77f7739a..284bda783c2b 100644
--- a/drivers/staging/media/usbvision/usbvision-core.c
+++ b/drivers/staging/media/usbvision/usbvision-core.c
@@ -349,7 +349,7 @@ int usbvision_scratch_alloc(struct usb_usbvision *usbvision)
 {
 	usbvision->scratch = vmalloc_32(scratch_buf_size);
 	scratch_reset(usbvision);
-	if (usbvision->scratch == NULL) {
+	if (!usbvision->scratch) {
 		dev_err(&usbvision->dev->dev,
 			"unable to allocate %d bytes for scratch\n",
 			scratch_buf_size);
@@ -374,7 +374,7 @@ int usbvision_decompress_alloc(struct usb_usbvision *usbvision)
 	int IFB_size = MAX_FRAME_WIDTH * MAX_FRAME_HEIGHT * 3 / 2;

 	usbvision->intra_frame_buffer = vmalloc_32(IFB_size);
-	if (usbvision->intra_frame_buffer == NULL) {
+	if (!usbvision->intra_frame_buffer) {
 		dev_err(&usbvision->dev->dev,
 			"unable to allocate %d for compr. frame buffer\n",
 			IFB_size);
@@ -2281,7 +2281,7 @@ int usbvision_init_isoc(struct usb_usbvision *usbvision)
 		struct urb *urb;

 		urb = usb_alloc_urb(USBVISION_URB_FRAMES, GFP_KERNEL);
-		if (urb == NULL)
+		if (!urb)
 			return -ENOMEM;
 		usbvision->sbuf[buf_idx].urb = urb;
 		usbvision->sbuf[buf_idx].data =
@@ -2340,7 +2340,7 @@ void usbvision_stop_isoc(struct usb_usbvision *usbvision)
 	int buf_idx, err_code, reg_value;
 	int sb_size = USBVISION_URB_FRAMES * usbvision->isoc_packet_size;

-	if ((usbvision->streaming == stream_off) || (usbvision->dev == NULL))
+	if ((usbvision->streaming == stream_off) || !usbvision->dev)
 		return;

 	/* Unschedule all of the iso td's */
diff --git a/drivers/staging/media/usbvision/usbvision-i2c.c b/drivers/staging/media/usbvision/usbvision-i2c.c
index 6e4df3335b1b..3bba93293463 100644
--- a/drivers/staging/media/usbvision/usbvision-i2c.c
+++ b/drivers/staging/media/usbvision/usbvision-i2c.c
@@ -233,7 +233,7 @@ int usbvision_i2c_register(struct usb_usbvision *usbvision)
 				&usbvision->i2c_adap,
 				"tuner", 0, v4l2_i2c_tuner_addrs(type));

-		if (sd == NULL)
+		if (!sd)
 			return -ENODEV;
 		if (usbvision->tuner_type != -1) {
 			tun_setup.mode_mask = T_ANALOG_TV | T_RADIO;
---
2.20.1

