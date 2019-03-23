X-GM-THRID: 6671490848789626880
X-Received: by 2002:a24:2fcb:: with SMTP id j194mr1345842itj.125.1553327508489;
        Sat, 23 Mar 2019 00:51:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:3cc8:: with SMTP id m191ls2397965ita.1.gmail; Sat, 23
 Mar 2019 00:51:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwvGFL2LrqYfja+6GsZ34bIJ9sEplBsBC6REOdHrQU3SvvnT1IfjdxQ0ptnAWC1VDXkIV+U
X-Received: by 2002:a24:32d0:: with SMTP id j199mr4519694ita.71.1553327507436;
        Sat, 23 Mar 2019 00:51:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553327507; cv=none;
        d=google.com; s=arc-20160816;
        b=kBH8Bq7wRu5ssFLvqU3JQJMzoQgbmDr3xQnpWMfKm26P33nsszELBzxIk9lil74OHe
         zzHW5qKQWXcSawyg+6bAYJ9vV83lE6GQ6IVFOz9ky8USkZPo5ZMv2YJ5nGqCPDUw3iey
         WT7gYcBTgWbmLk6jtfe4JEKaxL0yhx4QEFw6j1DWREx4ZXuQVI4jh4vq7HZ9kaPBnOVA
         jL4o6uFdbHg/oPquzf+bwdw2v1eMUa/1uiaKO6VrnTUxT8eALzHiDk5KjUNom+KS/TWe
         Dl2NIqII3s4mGRy52I2takl2EGV46kR9uCrNscRX2m5czCpNITBGPShb+kZq3dOaaGXR
         O0UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=PU9bSPEsBSH15TYes2pJUlU7Gr9SbX7XNKVACHGR0P0=;
        b=kQn3Cj73ieU6pG673txrT5WWu0dUWh7W1l6C5/cYjq/IHvUeS7Ts0QnBgoe2jnCtO4
         ph5k1gMa6QSMxeP2hB/Swm8jPURtt4gxRqxf/zAIMZmZW79bnqrgFZsB4tU9Pzui0jEi
         sYcpkk0VquNpWiAPc7I5FfE5SPhmHmt56Ek2CVadFhnEyAEXSj7kiBkTXjBqBwlm1Onl
         HLUmPIBVDS56EJCCZ3W5ZLcSd31whxcqh4+E7yGty4wHgZPxPrGS0873H3j+YmCQqh5F
         aHh2VSpkjtZcHtVQ/jmbtMhzAoE2Rp8HE5Ogy3X55dOCKm5anBQw1bdmyjkmOuQRlUKD
         NVwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Afc/lb1H";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id i20si705798iti.1.2019.03.23.00.51.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 00:51:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Afc/lb1H";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id p6so3029727pgh.9
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 00:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=PU9bSPEsBSH15TYes2pJUlU7Gr9SbX7XNKVACHGR0P0=;
        b=Afc/lb1H6CcL6V8Sh4UGmRVQhO7g01Plbj7lI5R3iScbIFgIYFBbRHaSOnpN+4Ph26
         +rHFGnP2Dcg5s4KP4UXguvmHUUbLZcapUc0C/zZMa1uwd87iY/9af7BwaZD7fXYAwih5
         B9AagVSvRsBCUiR2Sg2PeQoRaUF+t8gZC9lKOZCU1lIcBs7i2eez9zfYeEUNMI1tCMaK
         /8jcfDdHzhxywjUJOP124HAsdd3eLhaaaJghCVpIPIx28Cp1rFcu0EYR+WaTWqR58BCS
         SO5UYbbB0JI9TlTAiwwy5m2ellRdvA0kojlltzoezucZYQ9GnMLTIRIORFpu8fxNdn2c
         51KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=PU9bSPEsBSH15TYes2pJUlU7Gr9SbX7XNKVACHGR0P0=;
        b=lk5qu/s0T/lX8PiCmDlEqFCfd6HOA05mQMXye8QPP8kA3FO55xDb2onfR28GzgXue/
         jyzUcJ4N0lTXIyJ0Nn3ekbpGnmwQJjb97lVKn7PZBBx1c1CepaM5lzmNnec3AAIDZBID
         2R9HzgKdM7u1O7QCUgthC4xhXLEPDrph1uB1gQf7Hk0Ct85pfX87GE1Kxs06P2K5i+FB
         N3xS32CCTKsaXNSQu3tqenK85s4Z46OScNLYom/x6ZcsA1lIVWpqA0EKNew10w3icNg1
         Qri9ANnb1Ci4VGyw0VJRDFKM9Zs0WRtNv+edzFwfxW3cZSpFQPUKZbo3USCDVlpoF+GO
         e+QA==
X-Gm-Message-State: APjAAAWghjFppr/yC7esSR4tPGcGaAHUkRtRZ+c1W2Pjaph2l7pbv9F6
	BxgbkxtzO+hMJ2CNj7+NrSoQwxmWIm4=
X-Received: by 2002:a17:902:a612:: with SMTP id u18mr13650787plq.145.1553327506584;
        Sat, 23 Mar 2019 00:51:46 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id e63sm13040509pfe.120.2019.03.23.00.51.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 00:51:46 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Steve Longerbeam <slongerbeam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	=Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3] Staging: media: imx: mipi-csi2: Remove unnecessary error messages
Date: Sat, 23 Mar 2019 13:21:29 +0530
Message-Id: <20190323075129.2802-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

The function devm_ioremap already prints error message  when there 
is no enough memory.
Remove print statements that give error messages
Issue found using coccinelle
The following semantic patch is used to solve this:

<smpl>
@@
expression x;
constant char[] C;
identifier f;
@@

x = (\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|
usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\)(...));

if(x==NULL)
{
...
(
-f(C,...);
|
-f(...,C);
)
...
}
</smpl>

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
v2:
 -subject line modified
 -commit log modified
v3:
 -subject line modified

 drivers/staging/media/imx/imx6-mipi-csi2.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/media/imx/imx6-mipi-csi2.c b/drivers/staging/media/imx/imx6-mipi-csi2.c
index 6a1cee55a49b..2c5e3dd58cea 100644
--- a/drivers/staging/media/imx/imx6-mipi-csi2.c
+++ b/drivers/staging/media/imx/imx6-mipi-csi2.c
@@ -628,10 +628,8 @@ static int csi2_probe(struct platform_device *pdev)
 	}
 
 	csi2->base = devm_ioremap(&pdev->dev, res->start, PAGE_SIZE);
-	if (!csi2->base) {
-		v4l2_err(&csi2->sd, "failed to map CSI-2 registers\n");
+	if (!csi2->base)
 		return -ENOMEM;
-	}
 
 	mutex_init(&csi2->lock);
 
-- 
2.17.1


