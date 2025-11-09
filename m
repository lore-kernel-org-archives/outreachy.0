Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6993514A8B
	for <outreachy@lists.linux.dev>; Sun,  9 Nov 2025 19:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762715899; cv=none; b=PZuuMYmA8voWHwr46/YyDqnMTSmgeLWYiCh9ni+5sIiaNarU4e78Ds2hDiKnF2TD2AEZpo857lfF86RfWlhYNz2W1T49BOeeWH85lorhrH3kXhZpeCY3JjwAKPj+KDxyL/IjgyZdrK4JujBZPbWn/0T5WxW2qBS3F7vJPXlHmSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762715899; c=relaxed/simple;
	bh=4Tc5nMIJkCf+K1Yp/lS0TNl3kI2yP5RZlvH1VEVb//4=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=rXkT/P0aCVw0x0X86wsSnUtk6pKOnPCFzvs7le462on5sYskEGQrPB1Wt2SzkuCMCoJ7BIRUhIKJ7+A2okyHWwb9TSKE7L7FTBMUapfDeeuCUed8KK8QRMxyp2GIaycoYtcvQJ4P4gzNuAMRbSizxhHcrPDXzsJLKk+nAVE3u8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PPAqum7s; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PPAqum7s"
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b727f330dd2so398247166b.2
        for <outreachy@lists.linux.dev>; Sun, 09 Nov 2025 11:18:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762715895; x=1763320695; darn=lists.linux.dev;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Pt/WJLMW5CofgvBurApMG4dE+1UCGhjeZR+9TBOAEFA=;
        b=PPAqum7sSxhWjwaLcUgXWE8Qx7TtoFYTb4lgfMzEDEfoFsOuTgaf6mFwRKh9nz4/dX
         NJx44qqZMaefJoG3tDfD3rhWM8c4FqwBZr4/wgBVr+kh/DO+Zrf2fqwwjSxVQCp0mRaj
         q1xiqix22Z4BgrUe+OFeYu+Ei+jEpFwi+t2AItDcm5ugCzO8WnbCZy88zpdeAfImz8li
         T2C0sVhurBdQy6YYzwRHZxKedV0DK8tF6wfr9PHs1ypbuTbzhDNijJOxcOyhNnMn8cGo
         QpDLiqG159nGt12YwnRaARerTKny3vVbiru3BVky3TFezfuJSUPPrvMaXbgjApryppqP
         mWNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762715895; x=1763320695;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pt/WJLMW5CofgvBurApMG4dE+1UCGhjeZR+9TBOAEFA=;
        b=FBSRC8O0YhgA0qcswvs1Cu2gpE0ObCKhcY0xtYoAgEAH4Yk02/BxogZ9//6WXuV+nU
         zQ6Po1Is/x/ywPXeTlrjCiWCNkmrVU/xxwef+clUgf1KEWMkaNCpcgU+7Oy3ZkjmeQNa
         Y1BneD9HhQ2KuvPnT2giF/WXoTW8p7zVO11uPM9ctTg9BIlBpbivNDGtoa76vvRnGg5/
         BfqiVPO3UAGGsTsP8T0e+epRp/dQMGioVftKGP/X7XlfYq4ZQpyODIFWOyQx1896kXJO
         zQY0nXOKjUgSk+u1bzNdTNidOTvLpqfHP7zhr60UIFfhgemaudVSLmIAraH1ZANdkRfI
         IwZg==
X-Forwarded-Encrypted: i=1; AJvYcCUiAe22z5rGeArepflWqrz0bcK8LVb8DJtu99Wwms42e9BIk5Hj4ZodLJHxRxpdyz37CJOBjEf+gfE=@lists.linux.dev
X-Gm-Message-State: AOJu0YzzBdnE+uRAs5KrGa3u8v+iKM6kcqskIU2QHnfvCXtQlVyj+gQl
	8cx7SGiCeQyPl4jjn0k58nxbBUoz4HTvs1ae9gxl7HHHqFGq+OpIbXYDpo/rsg==
X-Gm-Gg: ASbGncukXDCWLNPxlVMAUxXExkbuKzQ0eTIoBoItM9Cv3hzq13OGe7dWsilOPM4k+Gl
	y13ATFKd5ILlCb0WSuSbcP1Wxhc4M2lETHoR0L4CRC2TJpiglSg8CpPKfJa+L1t4qWlue91/ETP
	HUGz31+/9u9BrkcpIPQ3pxGVJmKaDYCXV8s4SG6HkBIGP3/p0UnR+EOoh5HUbaNAIWo2sUhZW0y
	Lv2OSyvLRr3bJw9NyPiHarFUXzCnSfAxfp0PGgKmhozxxI2vGUUGT5P6YikkzKEtXqVGVNqJlhf
	qVQ1iybbcoSK1uB63AW06NDK0RKxFIObaK+J62FD/jGtrcDrln+PuhrxvmKUFoAyQUYjVaJLDxV
	mioKhpkhkVf9xUX72K1mhr/D2Fjb/B/Y2CjEkgQFNXBautDXaBoW9/S6So0zy1hRkcP/19mKdnO
	nIhRm5yvcTcWiXmm79xXzwYwaGF3loOQ1jI6cj
X-Google-Smtp-Source: AGHT+IHuRc5rVpG/mviy3lNjbujL/a/ATQzKZYImG61QSsXht/oKQln9ULAg8h7RmQMZ+J58jigtQw==
X-Received: by 2002:a17:906:6a19:b0:b72:9d56:ab52 with SMTP id a640c23a62f3a-b72e02d20c7mr560336266b.8.1762715895320;
        Sun, 09 Nov 2025 11:18:15 -0800 (PST)
Received: from michalis-linux (adsl-75.176.58.251.tellas.gr. [176.58.251.75])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bfa24d1fsm859351866b.73.2025.11.09.11.18.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Nov 2025 11:18:14 -0800 (PST)
Date: Sun, 9 Nov 2025 21:18:13 +0200
From: Michail Tatas <michail.tatas@gmail.com>
To: dpenkler@gmail.com, gregkh@linuxfoundation.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev
Subject: [PATCH] staging: gpib: converted // to /**/ comments
Message-ID: <aRDo9UtYTwcoFCFm@michalis-linux>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patch converts comments from // to /**/ to make them
consistent across the file as suggested by the TODO file in
drivers/staging/gpib/todo

Signed-off-by: Michail Tatas <michail.tatas@gmail.com>
---
 .../gpib/agilent_82357a/agilent_82357a.c      | 72 +++++++++----------
 1 file changed, 36 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/gpib/agilent_82357a/agilent_82357a.c b/drivers/staging/gpib/agilent_82357a/agilent_82357a.c
index 77c8e549b208..eafbd562f3ab 100644
--- a/drivers/staging/gpib/agilent_82357a/agilent_82357a.c
+++ b/drivers/staging/gpib/agilent_82357a/agilent_82357a.c
@@ -23,7 +23,7 @@ MODULE_DESCRIPTION("GPIB driver for Agilent 82357A/B usb adapters");
 
 #define MAX_NUM_82357A_INTERFACES 128
 static struct usb_interface *agilent_82357a_driver_interfaces[MAX_NUM_82357A_INTERFACES];
-static DEFINE_MUTEX(agilent_82357a_hotplug_lock); // protect board insertion and removal
+static DEFINE_MUTEX(agilent_82357a_hotplug_lock); /* protect board insertion and removal */
 
 static unsigned int agilent_82357a_update_status(struct gpib_board *board,
 						 unsigned int clear_mask);
@@ -420,7 +420,7 @@ static int agilent_82357a_abort(struct agilent_82357a_priv *a_priv, int flush)
 	return retval;
 }
 
-// interface functions
+/* interface functions */
 int agilent_82357a_command(struct gpib_board *board, u8 *buffer, size_t length,
 			   size_t *bytes_written);
 
@@ -449,8 +449,8 @@ static int agilent_82357a_read(struct gpib_board *board, u8 *buffer, size_t leng
 	if (!out_data)
 		return -ENOMEM;
 	out_data[i++] = DATA_PIPE_CMD_READ;
-	out_data[i++] = 0;	// primary address when ARF_NO_ADDR is not set
-	out_data[i++] = 0;	// secondary address when ARF_NO_ADDR is not set
+	out_data[i++] = 0;	/* primary address when ARF_NO_ADDR is not set */
+	out_data[i++] = 0;	/* secondary address when ARF_NO_ADDR is not set */
 	out_data[i] = ARF_NO_ADDRESS | ARF_END_ON_EOI;
 	if (a_priv->eos_mode & REOS)
 		out_data[i] |= ARF_END_ON_EOS_CHAR;
@@ -532,7 +532,7 @@ static int agilent_82357a_read(struct gpib_board *board, u8 *buffer, size_t leng
 	 */
 	agilent_82357a_take_control_internal(board, 0);
 
-	// FIXME check trailing flags for error
+	/* FIXME check trailing flags for error */
 	return retval;
 }
 
@@ -563,8 +563,8 @@ static ssize_t agilent_82357a_generic_write(struct gpib_board *board,
 	if (!out_data)
 		return -ENOMEM;
 	out_data[i++] = DATA_PIPE_CMD_WRITE;
-	out_data[i++] = 0; // primary address when AWF_NO_ADDRESS is not set
-	out_data[i++] = 0; // secondary address when AWF_NO_ADDRESS is not set
+	out_data[i++] = 0; /* primary address when AWF_NO_ADDRESS is not set */
+	out_data[i++] = 0; /* secondary address when AWF_NO_ADDRESS is not set */
 	out_data[i] = AWF_NO_ADDRESS | AWF_NO_FAST_TALKER_FIRST_BYTE;
 	if (send_commands)
 		out_data[i] |= AWF_ATN | AWF_NO_FAST_TALKER;
@@ -632,7 +632,7 @@ static ssize_t agilent_82357a_generic_write(struct gpib_board *board,
 			if ((bsr & BSR_ATN_BIT) && !(bsr & (BSR_NDAC_BIT | BSR_NRFD_BIT))) {
 				dev_dbg(&usb_dev->dev, "No listener on command\n");
 				clear_bit(TIMO_NUM, &board->status);
-				return -ENOTCONN; // no listener on bus
+				return -ENOTCONN; /* no listener on bus */
 			}
 		} else {
 			read_reg.address = ADSR;
@@ -726,7 +726,7 @@ static int agilent_82357a_take_control(struct gpib_board *board, int synchronous
 		return -ETIMEDOUT;
 
 	agilent_82357a_take_control_internal(board, synchronous);
-	// busy wait until ATN is asserted
+	/* busy wait until ATN is asserted */
 	for (i = 0; i < timeout; ++i) {
 		agilent_82357a_update_status(board, 0);
 		if (test_bit(ATN_NUM, &board->status))
@@ -795,7 +795,7 @@ static void agilent_82357a_interface_clear(struct gpib_board *board, int assert)
 	int retval;
 
 	if (!a_priv->bus_interface)
-		return; // -ENODEV;
+		return; /* -ENODEV; */
 
 	usb_dev = interface_to_usbdev(a_priv->bus_interface);
 	write.address = AUXCR;
@@ -817,7 +817,7 @@ static void agilent_82357a_remote_enable(struct gpib_board *board, int enable)
 	int retval;
 
 	if (!a_priv->bus_interface)
-		return; //-ENODEV;
+		return; /* -ENODEV; */
 
 	usb_dev = interface_to_usbdev(a_priv->bus_interface);
 	write.address = AUXCR;
@@ -828,7 +828,7 @@ static void agilent_82357a_remote_enable(struct gpib_board *board, int enable)
 	if (retval)
 		dev_err(&usb_dev->dev, "write_registers() returned error\n");
 	a_priv->ren_state = enable;
-	return;// 0;
+	return; /* 0; */
 }
 
 static int agilent_82357a_enable_eos(struct gpib_board *board, u8 eos_byte,
@@ -876,22 +876,22 @@ static unsigned int agilent_82357a_update_status(struct gpib_board *board,
 			dev_err(&usb_dev->dev, "read_registers() returned error\n");
 		return board->status;
 	}
-	// check for remote/local
+	/* check for remote/local */
 	if (address_status.value & HR_REM)
 		set_bit(REM_NUM, &board->status);
 	else
 		clear_bit(REM_NUM, &board->status);
-	// check for lockout
+	/* check for lockout */
 	if (address_status.value & HR_LLO)
 		set_bit(LOK_NUM, &board->status);
 	else
 		clear_bit(LOK_NUM, &board->status);
-	// check for ATN
+	/* check for ATN */
 	if (address_status.value & HR_ATN)
 		set_bit(ATN_NUM, &board->status);
 	else
 		clear_bit(ATN_NUM, &board->status);
-	// check for talker/listener addressed
+	/* check for talker/listener addressed */
 	if (address_status.value & HR_TA)
 		set_bit(TACS_NUM, &board->status);
 	else
@@ -926,7 +926,7 @@ static int agilent_82357a_primary_address(struct gpib_board *board, unsigned int
 	if (!a_priv->bus_interface)
 		return -ENODEV;
 	usb_dev = interface_to_usbdev(a_priv->bus_interface);
-	// put primary address in address0
+	/* put primary address in address0 */
 	write.address = ADR;
 	write.value = address & ADDRESS_MASK;
 	retval = agilent_82357a_write_registers(a_priv, &write, 1);
@@ -956,7 +956,7 @@ static int agilent_82357a_parallel_poll(struct gpib_board *board, u8 *result)
 	if (!a_priv->bus_interface)
 		return -ENODEV;
 	usb_dev = interface_to_usbdev(a_priv->bus_interface);
-	// execute parallel poll
+	/* execute parallel poll */
 	writes[0].address = AUXCR;
 	writes[0].value = AUX_CS | AUX_RPP;
 	writes[1].address = HW_CONTROL;
@@ -966,7 +966,7 @@ static int agilent_82357a_parallel_poll(struct gpib_board *board, u8 *result)
 		dev_err(&usb_dev->dev, "write_registers() returned error\n");
 		return retval;
 	}
-	udelay(2);	// silly, since usb write will take way longer
+	udelay(2);	/* silly, since usb write will take way longer */
 	read.address = CPTR;
 	retval = agilent_82357a_read_registers(a_priv, &read, 1, 1);
 	if (retval) {
@@ -974,7 +974,7 @@ static int agilent_82357a_parallel_poll(struct gpib_board *board, u8 *result)
 		return retval;
 	}
 	*result = read.value;
-	// clear parallel poll state
+	/* clear parallel poll state */
 	writes[0].address = HW_CONTROL;
 	writes[0].value = a_priv->hw_control_bits | NOT_PARALLEL_POLL;
 	writes[1].address = AUXCR;
@@ -989,32 +989,32 @@ static int agilent_82357a_parallel_poll(struct gpib_board *board, u8 *result)
 
 static void agilent_82357a_parallel_poll_configure(struct gpib_board *board, u8 config)
 {
-	// board can only be system controller
-	return;// 0;
+	/* board can only be system controller */
+	return; /* 0; */
 }
 
 static void agilent_82357a_parallel_poll_response(struct gpib_board *board, int ist)
 {
-	// board can only be system controller
-	return;// 0;
+	/* board can only be system controller */
+	return;/* 0; */
 }
 
 static void agilent_82357a_serial_poll_response(struct gpib_board *board, u8 status)
 {
-	// board can only be system controller
-	return;// 0;
+	/* board can only be system controller */
+	return;/* 0; */
 }
 
 static u8 agilent_82357a_serial_poll_status(struct gpib_board *board)
 {
-	// board can only be system controller
+	/* board can only be system controller */
 	return 0;
 }
 
 static void agilent_82357a_return_to_local(struct gpib_board *board)
 {
-	// board can only be system controller
-	return;// 0;
+	/* board can only be system controller */
+	return;/* 0; */
 }
 
 static int agilent_82357a_line_status(const struct gpib_board *board)
@@ -1269,7 +1269,7 @@ static int agilent_82357a_init(struct gpib_board *board)
 	writes[14].value = HR_BOIE | HR_BIIE;
 	writes[15].address = IMR1;
 	writes[15].value = HR_SRQIE;
-	// turn off reset state
+	/* turn off reset state */
 	writes[16].address = AUXCR;
 	writes[16].value = AUX_CHIP_RESET;
 	writes[17].address = LED_CONTROL;
@@ -1387,7 +1387,7 @@ static int agilent_82357a_go_idle(struct gpib_board *board)
 	struct agilent_82357a_register_pairlet writes[0x20];
 	int retval;
 
-	// turn on tms9914 reset state
+	/* turn on tms9914 reset state */
 	writes[0].address = AUXCR;
 	writes[0].value = AUX_CS | AUX_CHIP_RESET;
 	a_priv->hw_control_bits &= ~NOT_TI_RESET;
@@ -1448,7 +1448,7 @@ static struct gpib_interface agilent_82357a_gpib_interface = {
 	.parallel_poll = agilent_82357a_parallel_poll,
 	.parallel_poll_configure = agilent_82357a_parallel_poll_configure,
 	.parallel_poll_response = agilent_82357a_parallel_poll_response,
-	.local_parallel_poll_mode = NULL, // XXX
+	.local_parallel_poll_mode = NULL, /* XXX */
 	.line_status = agilent_82357a_line_status,
 	.update_status = agilent_82357a_update_status,
 	.primary_address = agilent_82357a_primary_address,
@@ -1461,7 +1461,7 @@ static struct gpib_interface agilent_82357a_gpib_interface = {
 	.skip_check_for_command_acceptors = 1
 };
 
-// Table with the USB-devices: just now only testing IDs
+/* Table with the USB-devices: just now only testing IDs */
 static struct usb_device_id agilent_82357a_driver_device_table[] = {
 	{USB_DEVICE(USB_VENDOR_ID_AGILENT, USB_DEVICE_ID_AGILENT_82357A)},
 	{USB_DEVICE(USB_VENDOR_ID_AGILENT, USB_DEVICE_ID_AGILENT_82357B)},
@@ -1626,15 +1626,15 @@ static int agilent_82357a_driver_resume(struct usb_interface *interface)
 			mutex_unlock(&agilent_82357a_hotplug_lock);
 			return retval;
 		}
-		// set/unset system controller
+		/* set/unset system controller */
 		retval = agilent_82357a_request_system_control(board, board->master);
-		// toggle ifc if master
+		/* toggle ifc if master */
 		if (board->master) {
 			agilent_82357a_interface_clear(board, 1);
 			usleep_range(200, 250);
 			agilent_82357a_interface_clear(board, 0);
 		}
-		// assert/unassert REN
+		/* assert/unassert REN */
 		agilent_82357a_remote_enable(board, a_priv->ren_state);
 
 		dev_dbg(&usb_dev->dev,
-- 
2.43.0

