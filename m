X-GM-THRID: 6336937388721307648
X-Received: by 10.157.52.201 with SMTP id t9mr4788375otd.137.1475433211314;
        Sun, 02 Oct 2016 11:33:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.73.76 with SMTP id z73ls1770684ita.5.canary; Sun, 02 Oct
 2016 11:33:30 -0700 (PDT)
X-Received: by 10.36.68.148 with SMTP id o142mr4161693ita.12.1475433210876;
        Sun, 02 Oct 2016 11:33:30 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 203si328935pfu.0.2016.10.02.11.33.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 11:33:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id t25so2271029pfg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 02 Oct 2016 11:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=zhyDttLFBI1HBDJ1SQSiwamAD8sIT9NWSBcxlWEN6Qw=;
        b=QahmKMMgXMPrjhApHkQ6UKbD7+YzxV7ZG6R7Kh+RhYzSTSDSMrJl7uPbvevt8e3Jud
         Jp15/8JJPnFwRT+dFZxyKxeRc/V+F+NrFj65XWAFpxyp8Y+ZbzkKIlCcSMSwXUiI2d/3
         bIOVqCerASi0Rmxo7OVHQWcJ97H+/VuvmSql7IC08f4uQZeSr0jMkGivm88X+ZC5e/h1
         azb3nL9gI891Oc+D4jNPmSvKoexvxwRj+SAXX5R+1EZlfbAZGGIyC+5ooECibA2kByaC
         R96DgDpv8eYYUajYShSMaie13eRqDfTqEORyjvInhXq1GK1MWpXMtVpVFzk/GTQuZp4H
         yXpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=zhyDttLFBI1HBDJ1SQSiwamAD8sIT9NWSBcxlWEN6Qw=;
        b=jO6dcwmELKSoXTmHQDNeyWF5s3hPuKpOg7tpsw5bE27NCb3OKe6yTOHIKFwYCvRsWP
         +xXg5vnNWihvg87rp7t1zyL0K1mx4vPOPziXqurZ1juMfIkpsEitU04lOvlR+b8cX0rn
         6JRPlSQ+na4wywwrBBiRYn2xdh32DZeid5lKAyK218gh2fqGFPX+kcgCgnEWPNoWT64P
         JNGqXGZiBu7tC9BOciehDoQ9Ew1AiFL1M2iGOlTpc+sQFSyzMONTjLs+7Dqw+PYle5kl
         4auXcJDqNSIkLaYgy1cHnlfYgtXOZAo3DllLcKmQ2oL6NedZe97weghIPVgWRlMRXO3S
         6xsw==
X-Gm-Message-State: AA6/9Rm+NLju2dWY6TwJwM+5CFJd+nJjye5hGPfXzV+V9skelYfgdx6RZ7QT9vwM5U3Vjw==
X-Received: by 10.98.1.138 with SMTP id 132mr30785905pfb.69.1475433210674;
        Sun, 02 Oct 2016 11:33:30 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id p77sm4854529pfi.27.2016.10.02.11.33.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 11:33:30 -0700 (PDT)
Date: Mon, 3 Oct 2016 00:03:25 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: octeon-usb: Prefer using BIT macro
Message-ID: <20161002183320.GA4992@namrata-HP-Pavilion-g6-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace bit shifting on 1 with BIT(i) macro. Done using Coccinelle:
@@ int i; @@

- (1 << i)
+ BIT(i)

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/octeon-usb/octeon-hcd.c   | 22 +++++++++++-----------
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/octeon-usb/octeon-hcd.c b/drivers/staging/octeon-usb/octeon-hcd.c
index 17442b3..0d1a7d8 100644
--- a/drivers/staging/octeon-usb/octeon-hcd.c
+++ b/drivers/staging/octeon-usb/octeon-hcd.c
@@ -187,14 +187,14 @@ struct cvmx_usb_iso_packet {
  *					      data transfer use for the USB
  */
 enum cvmx_usb_initialize_flags {
-	CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_XI		= 1 << 0,
-	CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_GND		= 1 << 1,
+	CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_XI		= BIT(0),
+	CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_GND		= BIT(1),
 	CVMX_USB_INITIALIZE_FLAGS_CLOCK_MHZ_MASK	= 3 << 3,
-	CVMX_USB_INITIALIZE_FLAGS_CLOCK_12MHZ		= 1 << 3,
+	CVMX_USB_INITIALIZE_FLAGS_CLOCK_12MHZ		= BIT(3),
 	CVMX_USB_INITIALIZE_FLAGS_CLOCK_24MHZ		= 2 << 3,
 	CVMX_USB_INITIALIZE_FLAGS_CLOCK_48MHZ		= 3 << 3,
 	/* Bits 3-4 used to encode the clock frequency */
-	CVMX_USB_INITIALIZE_FLAGS_NO_DMA		= 1 << 5,
+	CVMX_USB_INITIALIZE_FLAGS_NO_DMA		= BIT(5),
 };
 
 /**
@@ -206,8 +206,8 @@ enum cvmx_usb_initialize_flags {
  *				   pipe is in the ping state.
  */
 enum cvmx_usb_pipe_flags {
-	CVMX_USB_PIPE_FLAGS_SCHEDULED	= 1 << 17,
-	CVMX_USB_PIPE_FLAGS_NEED_PING	= 1 << 18,
+	CVMX_USB_PIPE_FLAGS_SCHEDULED	= BIT(17),
+	CVMX_USB_PIPE_FLAGS_NEED_PING	= BIT(18),
 };
 
 /* Maximum number of times to retry failed transactions */
@@ -1505,7 +1505,7 @@ static void cvmx_usb_start_channel(struct octeon_hcd *usb, int channel,
 	pipe->flags |= CVMX_USB_PIPE_FLAGS_SCHEDULED;
 
 	/* Mark this channel as in use */
-	usb->idle_hardware_channels &= ~(1 << channel);
+	usb->idle_hardware_channels &= ~BIT(channel);
 
 	/* Enable the channel interrupt bits */
 	{
@@ -1551,7 +1551,7 @@ static void cvmx_usb_start_channel(struct octeon_hcd *usb, int channel,
 		/* Enable the channel interrupt to propagate */
 		usbc_haintmsk.u32 = cvmx_usb_read_csr32(usb,
 					CVMX_USBCX_HAINTMSK(usb->index));
-		usbc_haintmsk.s.haintmsk |= 1 << channel;
+		usbc_haintmsk.s.haintmsk |= BIT(channel);
 		cvmx_usb_write_csr32(usb, CVMX_USBCX_HAINTMSK(usb->index),
 				     usbc_haintmsk.u32);
 	}
@@ -2665,7 +2665,7 @@ static int cvmx_usb_poll_channel(struct octeon_hcd *usb, int channel)
 
 	/* Disable the channel interrupts now that it is done */
 	cvmx_usb_write_csr32(usb, CVMX_USBCX_HCINTMSKX(channel, usb->index), 0);
-	usb->idle_hardware_channels |= (1 << channel);
+	usb->idle_hardware_channels |= BIT(channel);
 
 	/* Make sure this channel is tied to a valid pipe */
 	pipe = usb->pipe_for_channel[channel];
@@ -3017,7 +3017,7 @@ static int cvmx_usb_poll(struct octeon_hcd *usb)
 
 			channel = __fls(usbc_haint.u32);
 			cvmx_usb_poll_channel(usb, channel);
-			usbc_haint.u32 ^= 1 << channel;
+			usbc_haint.u32 ^= BIT(channel);
 		}
 	}
 
@@ -3595,7 +3595,7 @@ static int octeon_usb_probe(struct platform_device *pdev)
 
 	if (irq < 0) {
 		/* Defective device tree, but we know how to fix it. */
-		irq_hw_number_t hwirq = usb_num ? (1 << 6) + 17 : 56;
+		irq_hw_number_t hwirq = usb_num ? BIT(6) + 17 : 56;
 
 		irq = irq_create_mapping(NULL, hwirq);
 	}

-- 
2.7.4


