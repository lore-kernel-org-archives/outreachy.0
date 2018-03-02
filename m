X-GM-THRID: 6528348507963654144
X-Received: by 10.99.51.195 with SMTP id z186mr1033703pgz.151.1519999585382;
        Fri, 02 Mar 2018 06:06:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.79.25 with SMTP id d25ls1143562pfb.11.gmail; Fri, 02 Mar
 2018 06:06:23 -0800 (PST)
X-Google-Smtp-Source: AG47ELufCh9gHk7jcPBMrwr757C9aTqN4PgFtclDv6jDIaMSWiQav1SzVTA5ZDFuqyC1d9/HH7i1
X-Received: by 10.101.98.201 with SMTP id m9mr1066152pgv.107.1519999583927;
        Fri, 02 Mar 2018 06:06:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519999583; cv=none;
        d=google.com; s=arc-20160816;
        b=RwoMaEkeb/yg9k6GWXbQ45Bvz9/OrXZluN89u43riSwmB4DuJwvdh0dkJRLhZlrcla
         /kfyjg9AGhxMXuu1/gB0pzr6QzoiRqGMceAGOE+lmytyxDZXEEskD0SlW3JmC0Z06oTv
         h1SWAMjHaWMHOiBi5wQm0SS4C8YLtJuREVjCJ8N8oDMSM7iqSDCaml1w6iO+91EfP9d6
         uyee2BELTn5a+AJ9lN/XLBdRQ0KqXRmuC6+8Z4LIr9Sum5+Ny7tpqD1OlqaN1XwWSNtG
         dzIIO3co7SK2RwE7QLpn/e8OFWYSrsWXB0J1ho4G4XwBXRvVyN+7AYRBvy7B0l2ALWV/
         7lOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=ar5KwwL9rg/7jgjxMLjEIEfPyTtQaBv7Zcmq9+SYDLg=;
        b=OR2MEqz8aPwP+9TzgNv0bZ1a89yIsu23K64RumndiyL5BE676zvr1XKSpfr4PtpR3X
         2X5lTRmF8L+hxQeANz8kaOxzBf9TWUvtgS4X5mnKUxsYdjIfCkqw4tA/siCOFhvRaXPy
         Fa0V+RHq7UuLX4f7GDED+0HiB4ooAkuELgMEsWMvthDZL+7fk+th0ssA7cUdmRR3IdW9
         gD1mRauDOj+8pTPSIRsSfAq+yD0I7J4opakboegGZwRhr0jCPiSOKKe1PV4d+o0Oh6nq
         24GT3Tuai7LIzbcRyVa9uj99kdb4t9FU7M+OgMzhZBG+Le1Dk0oBYceztWxnpsVftgyr
         8QDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lWfbb3U/;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::234 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pl0-x234.google.com (mail-pl0-x234.google.com. [2607:f8b0:400e:c01::234])
        by gmr-mx.google.com with ESMTPS id f26si137839pfh.2.2018.03.02.06.06.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 06:06:23 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::234 as permitted sender) client-ip=2607:f8b0:400e:c01::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lWfbb3U/;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::234 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x234.google.com with SMTP id 9-v6so241195ple.11
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Mar 2018 06:06:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ar5KwwL9rg/7jgjxMLjEIEfPyTtQaBv7Zcmq9+SYDLg=;
        b=lWfbb3U/p4AijCSHx5Bf562pYgTzUBv/hRUl17XVnMg6GF1gzm+wETGzQmqidFPbpr
         kO3ht6/py55JHrxjVlsbrHm0b7xiN6MeoIH8HCndYXm7akWy6JU/TTciZWPanml1QqCz
         HALMDhiaNNe+GN37OkHZ+YDA6bYj9rCwT5711vx6zFk8g+SGjTA9CpntU7tfDMLDZlZI
         jib6SgOxavU2qAXm06gldDKmRAKqjk/G6BCOX+g9DzlPcRs0JrBbD+2GpUk8TJfa/0N8
         5AxCsIeDOjbX8OqJa1QeZsn3324mCCMEnpD7ZIqKTTE5uA4K6JLAWqxWfLhyBSPd9QEs
         ItKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ar5KwwL9rg/7jgjxMLjEIEfPyTtQaBv7Zcmq9+SYDLg=;
        b=gpZ57/CNBWag+78Pr2QoxP/rJOSvV89NaAQKXNLc4ErRYy+O8CGpPEKPdRty1i/WE8
         +/W4eBqPBPG0RUibCOeJThrBMrI1Kz5ySNiCJkjTX+rdCcvnkBRNcIY+1zyidxHjnm1L
         Mkt51EK+oGERc7zkMKYytFQ9Q/hJlxdcPSkUnlnVjp3dYeCiFgFqAJ2vqOZgZDklVMZ1
         tqub9mQOO8qA29dCATnVYc3Rdye0/jVFurJIO+ZR4K8GvLxBkRAko7sd/A4BSlDC8bP0
         0iaZo+tElAOr8/RYtF6L43ALe9egH3s8X8HcM/GnmYDPe4jr14XaVeEm2vLVfIW1A1Nf
         QIWw==
X-Gm-Message-State: APf1xPB5W94GGholwxIrCp47OF+vgXjy1Xs6NQHvbFCV1oVLeTa5c+rT
	hN9FTh3PV3EPyAvDmFG0LZ8=
X-Received: by 2002:a17:902:2904:: with SMTP id g4-v6mr5295065plb.170.1519999583622;
        Fri, 02 Mar 2018 06:06:23 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-21-83.resnet.ucsb.edu. [169.231.21.83])
        by smtp.gmail.com with ESMTPSA id v1sm13008954pfg.33.2018.03.02.06.06.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Mar 2018 06:06:22 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH] staging: vt6655: remove unnecessary parentheses
Date: Fri,  2 Mar 2018 06:05:52 -0800
Message-Id: <1519999552-19961-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove unnecessary parentheses around variables to conform to the Linux
kernel coding style. Issue found using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
 drivers/staging/vt6655/device_main.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index 0dc9020..fbc4bc6 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -543,7 +543,7 @@ static void device_init_rd0_ring(struct vnt_private *priv)
 		if (!device_alloc_rx_buf(priv, desc))
 			dev_err(&priv->pcid->dev, "can not alloc rx bufs\n");
 
-		desc->next = &(priv->aRD0Ring[(i + 1) % priv->opts.rx_descs0]);
+		desc->next = &priv->aRD0Ring[(i + 1) % priv->opts.rx_descs0];
 		desc->next_desc = cpu_to_le32(curr + sizeof(struct vnt_rx_desc));
 	}
 
@@ -567,7 +567,7 @@ static void device_init_rd1_ring(struct vnt_private *priv)
 		if (!device_alloc_rx_buf(priv, desc))
 			dev_err(&priv->pcid->dev, "can not alloc rx bufs\n");
 
-		desc->next = &(priv->aRD1Ring[(i+1) % priv->opts.rx_descs1]);
+		desc->next = &priv->aRD1Ring[(i+1) % priv->opts.rx_descs1];
 		desc->next_desc = cpu_to_le32(curr + sizeof(struct vnt_rx_desc));
 	}
 
@@ -581,7 +581,7 @@ static void device_free_rd0_ring(struct vnt_private *priv)
 	int i;
 
 	for (i = 0; i < priv->opts.rx_descs0; i++) {
-		struct vnt_rx_desc *desc = &(priv->aRD0Ring[i]);
+		struct vnt_rx_desc *desc = &priv->aRD0Ring[i];
 		struct vnt_rd_info *rd_info = desc->rd_info;
 
 		dma_unmap_single(&priv->pcid->dev, rd_info->skb_dma,
-- 
2.7.4


