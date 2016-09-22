X-GM-THRID: 6332712433108385792
X-Received: by 10.66.146.66 with SMTP id ta2mr344305pab.128.1474558449480;
        Thu, 22 Sep 2016 08:34:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.229 with SMTP id 98ls4486037iok.35.gmail; Thu, 22 Sep
 2016 08:34:08 -0700 (PDT)
X-Received: by 10.67.30.225 with SMTP id kh1mr359950pad.135.1474558447999;
        Thu, 22 Sep 2016 08:34:07 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id um12si738527pab.2.2016.09.22.08.34.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2016 08:34:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id my20so3810824pab.3
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Sep 2016 08:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=RFKsC0ZV1OEXm5B8FOkdVlRbwSnZJL+SKDzBvKvyYTo=;
        b=NUYmwNRrr3q/DeUiCutK1qkFDybANZlJYPuEaef9lJ14TotvmXKFYbkWPoXs9amNcZ
         kc6LSZHRtQe/witMR26vmDH//OWYA8tRQ51WHF0VNV5Gds9Wr9S/2b8iEcGlYVGVZQCx
         wrHjUfm42kymX8LgyHInbVjRNr5GtI6fMlOQtK+Nl8FpbJV3hjHLA9kmDjw6TXAF6Iww
         Go9PCv+ZebGhn+dISHqt2kVh4bhNttflvEm9LqjQeS4NRzs5+BgOygDN9V8oG6kGDMjo
         a3siz7AXYFTsGpfnSlxrnBLsDQq9hF0OBqwh3u1eqvERvjrrprMOZ+ih4lCr/EUx11hX
         Uztg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=RFKsC0ZV1OEXm5B8FOkdVlRbwSnZJL+SKDzBvKvyYTo=;
        b=eWk4bFE6P4xK7CeHswJ7LXKP5r9EPY+k3HjU9nz7aFpeJAt0CFJiIqV8V7uGQvVPWO
         f/k2Sf6AGTVSczjar0vyqmc1b7sciV8IPem12iLsBWuWDS2xZabZ65LyV8vwvv1qrE2k
         ODTMM5B7G2rduG7YwVYKj0aYG7ahH9K8YanUSM0jmHOBCNPF4x5MyyjfZcifmGWOMVNU
         9WHMw3b5Jh4IJUakQhjFwe3fBXFBpJ0+bUASU1GRA/SYrf3VvIVEpqTq9yViw89F4fCc
         wNINIMeu7McAXYRKuZ37ISGQvCk5T3KHjcp7TnY8nK+TwbqNPZ2yUX52gNh5meuB+FYb
         Qb6g==
X-Gm-Message-State: AE9vXwNDTcHODYqnp2sm5Qm6YdC46YTzGvDgHzfFoHtPkNVVRbwZomVMcApIohVWsaPMGw==
X-Received: by 10.66.25.143 with SMTP id c15mr4332613pag.90.1474558447844;
        Thu, 22 Sep 2016 08:34:07 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([125.212.122.59])
        by smtp.gmail.com with ESMTPSA id i68sm5065983pfc.25.2016.09.22.08.34.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 22 Sep 2016 08:34:07 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v2 1/2] staging: greybus: arche-apb-ctrl: declare struct of_device_id as const
Date: Thu, 22 Sep 2016 23:33:33 +0800
Message-Id: <73bf637009e2bf747be008639227cbe544f7a262.1474557838.git.eraretuya@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1474557838.git.eraretuya@gmail.com>
References: <cover.1474557838.git.eraretuya@gmail.com>
In-Reply-To: <cover.1474557838.git.eraretuya@gmail.com>
References: <cover.1474557838.git.eraretuya@gmail.com>

Declare the 'arche_apb_ctrl_of_match' array as const. This array is only stored
in the .of_match_table field of a device_driver structure, which is declared as
const. This addresses the checkpatch warning:

WARNING: struct of_device_id should be normally const

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/greybus/arche-apb-ctrl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/arche-apb-ctrl.c b/drivers/staging/greybus/arche-apb-ctrl.c
index 59d9d42..70323aa 100644
--- a/drivers/staging/greybus/arche-apb-ctrl.c
+++ b/drivers/staging/greybus/arche-apb-ctrl.c
@@ -495,7 +495,7 @@ static void arche_apb_ctrl_shutdown(struct platform_device *pdev)
 static SIMPLE_DEV_PM_OPS(arche_apb_ctrl_pm_ops, arche_apb_ctrl_suspend,
 			 arche_apb_ctrl_resume);
 
-static struct of_device_id arche_apb_ctrl_of_match[] = {
+static const struct of_device_id arche_apb_ctrl_of_match[] = {
 	{ .compatible = "usbffff,2", },
 	{ },
 };
-- 
2.7.4


