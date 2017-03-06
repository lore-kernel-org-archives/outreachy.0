X-GM-THRID: 6394466047904186368
X-Received: by 10.25.202.67 with SMTP id h3mr1119610lfj.30.1488827645680;
        Mon, 06 Mar 2017 11:14:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.20.10 with SMTP id u10ls1481971ljd.16.gmail; Mon, 06 Mar
 2017 11:14:05 -0800 (PST)
X-Received: by 10.25.145.17 with SMTP id t17mr2252611lfd.23.1488827645245;
        Mon, 06 Mar 2017 11:14:05 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id f7si86561wmg.3.2017.03.06.11.14.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 11:14:05 -0800 (PST)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id v190so15335160wme.3
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 11:14:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=LCym9kT+DLiOjchHR2pHm3rZzNsa5xUuOPAVFc9T2kU=;
        b=AcsHEMH+Bl+Re83zphbblT/s9wkZtDlQmwTJSL2r77aYEXzON6noik0s79M3mDYPN+
         Jnm1j93EKJAR1KKufqaYT1mou1vz3AP24Pn/PfT6aVrlcK88AZ+n6LgN4uHmLreYDAZI
         jGEGIeIH4hAIti6ekzZlfvxiazq9wP3zRsY38Fn/zfTxYJ82qXRlotPqyZC+N3dfVY/t
         Gi3N613gvP5We6yWVOLD2nms5X9+71YJH149S6EPFUoDBvu5CVex1sY8Ea0jdhSp8vLN
         mlFOC9T7hgLCMe4XUwuoqCJJvqfnrL97bAnrsaibUvx8EU7X5eFuoBrQthABm9JrILd/
         JXiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=LCym9kT+DLiOjchHR2pHm3rZzNsa5xUuOPAVFc9T2kU=;
        b=fjijLjMUlVWtmO8gQJZuVhg1IOPQn37exbBFa0h1naMisZctixkt+jPIEZxGyN9v++
         wNmjRyO3t7O6+YzrEgnBUBO0nwX9x68J4pPhX+xXI1/gmcOwHpnXyEsuFm8Zegqprn5F
         YA+8D2BPPBcWr0pRh9IEctvhyCRZ4WhpN3q7MH2LUM3Nbem5aYOShrm7Q6DTyRwE6X7n
         giIkEUH42ofeX8qjF5E4PCQVjWdAg8qCdLjZ3qKa3oo+IxTChRQESpMpBmrF+HUwB8nT
         TTxFu2YUryE79pYIif8RZHz2VyVsoe5KyTOqX6mihPkF6rWRmKwxRgOHY/qLDtOEEFoc
         KcpA==
X-Gm-Message-State: AMke39nMCW+2kEgvhbhVwTTw2UzelRM3Z2TL5RA3PYDsekTT6URa5Y/RxhitR/AKdg5AiQ==
X-Received: by 10.28.234.20 with SMTP id i20mr15109302wmh.91.1488827645036;
        Mon, 06 Mar 2017 11:14:05 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id z88sm28166934wrb.26.2017.03.06.11.14.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 06 Mar 2017 11:14:04 -0800 (PST)
Date: Mon, 6 Mar 2017 21:14:03 +0200
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] media:atomisp:pci: Remove comparinson on bool tests
Message-ID: <20170306191403.GA4848@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove the comparison when a bool test to make 
the code easy to read.

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
 .../pci/atomisp2/css2400/runtime/isys/src/virtual_isys.c     | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/virtual_isys.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/virtual_isys.c
index 0f1e8a2..f1fc3b5 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/virtual_isys.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/virtual_isys.c
@@ -331,7 +331,7 @@ static bool create_input_system_channel(
 		break;
 	}
 
-	if (rc == false)
+	if (!rc)
 		return false;
 
 	if (!acquire_sid(me->stream2mmio_id, &(me->stream2mmio_sid_id))) {
@@ -474,7 +474,7 @@ static bool calculate_input_system_channel_cfg(
 
 	rc = calculate_stream2mmio_cfg(isys_cfg, metadata,
 			&(channel_cfg->stream2mmio_cfg));
-	if (rc == false)
+	if (!rc)
 		return false;
 
 	rc = calculate_ibuf_ctrl_cfg(
@@ -482,7 +482,7 @@ static bool calculate_input_system_channel_cfg(
 			input_port,
 			isys_cfg,
 			&(channel_cfg->ibuf_ctrl_cfg));
-	if (rc == false)
+	if (!rc)
 		return false;
 	if (metadata)
 		channel_cfg->ibuf_ctrl_cfg.stores_per_frame = isys_cfg->metadata.lines_per_frame;
@@ -491,7 +491,7 @@ static bool calculate_input_system_channel_cfg(
 			channel,
 			isys_cfg,
 			&(channel_cfg->dma_cfg));
-	if (rc == false)
+	if (!rc)
 		return false;
 
 	rc = calculate_isys2401_dma_port_cfg(
@@ -499,7 +499,7 @@ static bool calculate_input_system_channel_cfg(
 			false,
 			metadata,
 			&(channel_cfg->dma_src_port_cfg));
-	if (rc == false)
+	if (!rc)
 		return false;
 
 	rc = calculate_isys2401_dma_port_cfg(
@@ -507,7 +507,7 @@ static bool calculate_input_system_channel_cfg(
 			isys_cfg->raw_packed,
 			metadata,
 			&(channel_cfg->dma_dest_port_cfg));
-	if (rc == false)
+	if (!rc)
 		return false;
 
 	return true;
-- 
2.7.4


