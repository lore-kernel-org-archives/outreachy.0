X-GM-THRID: 6671240645547393024
X-Received: by 2002:a63:4847:: with SMTP id x7mr9189884pgk.233.1553269253886;
        Fri, 22 Mar 2019 08:40:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:7b89:: with SMTP id w9ls4934258pll.5.gmail; Fri, 22
 Mar 2019 08:40:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz5SmMyNcBu7iqNchWIvddzUJUxdFiSFI3X0jUlWMK93WoA+MzK6mbFDnIP5ikO7oiSLShD
X-Received: by 2002:a17:902:1105:: with SMTP id d5mr10483575pla.27.1553269253138;
        Fri, 22 Mar 2019 08:40:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553269253; cv=none;
        d=google.com; s=arc-20160816;
        b=l+5w1FiOEQBHvpsYKevHYToIvQ10VJTvGmJTc4mdGn9tiKBJBG0qEmLIhi4z7uqs/4
         kyqT+eyLW+piYxJlf97SC2NznV1moCEBq5OtSfjkrl8eGHJ0ysQOq86VyjiO/g1bOmas
         bRcqlDdZxte5Wl1OYuncnGDPpfbBsEtj/6YUh7V4nHP75fpgApM5Bbedl9IYivWfTtry
         pvkvlj/sNBxzdnPrU6R4I4CVgj1bJw9SVsc1Nopsgk0SgezNF9jFmznlFkXeuTkFVnk3
         5RmdAzYRzEsJ8iSqt8aGN+TQdMYZTA0ZU3Iy7DQPWWMIF321pJRAOTSJDFkjUoXVJ0Fm
         xKyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=jk22ZOBQ1YNvLGczRFPSJWlau870Umgpzl3Z7G0yk9o=;
        b=npE48eH4iysc3PUjAMavS1MxN4bIldhB898oGJYvUWNWukwi6CP+3D5GOukTNlo3UF
         wlZ/WModPlks4ogs5yIzQYRbTw3ftrzsNHRFtByVG/YboRr6XeZwl3mkNAPqCMJGljYU
         0TWJrTM3vr26qx3Gex+cqR6vd92BuGD9/a0eUfCXNFGjLTcGyMoOGluisR9NbinY4FpV
         DDtK8nVfcArr3JhvES4zcOjcCKwEHJUZN25LXGaqhwexuxkvvbSohgQ/Kc9HHYNYUr+H
         pxCh9sdgqw1FcchXr/ZiOmLooaVswlcgzSIIzHbyKvqEhZJWdhHfynlMluFfs1ZS2dbl
         UpGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V+iAsrPf;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id a6si599787pfn.3.2019.03.22.08.40.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 08:40:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V+iAsrPf;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42d.google.com with SMTP id 10so1793985pfo.5
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Mar 2019 08:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=jk22ZOBQ1YNvLGczRFPSJWlau870Umgpzl3Z7G0yk9o=;
        b=V+iAsrPfTA/kbJKpiKRCfT/G0w+hVxYugyiQ41lGas3zAk3G0H46FU9zQkvPc/cSZh
         6otj8espnWE6SEgE1EMjxtOWmLRODiqXQqMo0rdXIeCNZylBeevQVR5QKamy49ZHq9K0
         EOLvOm0Rrf1/hmXLstH36fZgzEZtYOePJbChSyfPm1dZp6u//k6Zub6YC+Kt2NSFLgQK
         WpjPwcO2OszQ5/wGvt/oawz8Iqv9Rivxz/BLEfKhv4CqWmkeppeufcYx2WqOsgs/30Wh
         bPeKuFNFfpKCDL4yfHSOGQ4LkzDM7tVBPJPLCuX6fjn+hs4qUHpnS49CqFYz1pjJS7J1
         NOjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=jk22ZOBQ1YNvLGczRFPSJWlau870Umgpzl3Z7G0yk9o=;
        b=d5qCTTlw9BPF9itJzpyL5x1QiC+lVBcrIbGaHF+BEnxo5iroTMhKLb8Oag23ybvOv0
         Ic16AM1lHLXa5jurj1VQHFERzDPf+HRVCe1su9YfeV2Nk5ilVdoP9jNUqgIpDPBrMT20
         ers7fq6iGUlJimJXJEFQQ9A5C7dJf3cq6RO8emQaMyZM7jbHbjOP50KiUMGfDeGdWJHT
         NMzZgLaidmbJB25u8sVkPAJhTDvUgW5hIGPGt+NI+h5jgAJ5ewpnAaBAeWjqsVgzBsdf
         QRtZIsRX91J4ZY4L2SeDLtxpGNNDBPh2oWaSqvMEPq3nFVro6+BLKZeeBJ2bfBaZV//5
         nwsw==
X-Gm-Message-State: APjAAAWImq0YdOota3Vle/cd7jIIEIqf2xQWoYgO+nokMPrT9Qkkol8u
	CtZcvOXz6zAYgc/GdlnRLqU2l7C92Bg=
X-Received: by 2002:a63:ed0a:: with SMTP id d10mr9483875pgi.452.1553269252521;
        Fri, 22 Mar 2019 08:40:52 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id f1sm2236629pgl.35.2019.03.22.08.40.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 08:40:52 -0700 (PDT)
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
Subject: [PATCH v2] Staging: media: imx: imx6-mipi-csi2.c Remove unnecessary error messages
Date: Fri, 22 Mar 2019 21:10:35 +0530
Message-Id: <20190322154035.9014-1-bhanusreemahesh@gmail.com>
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


