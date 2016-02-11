X-GM-THRID: 6250103779418439680
X-Received: by 10.28.126.149 with SMTP id z143mr2324752wmc.4.1455215685065;
        Thu, 11 Feb 2016 10:34:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.83.13 with SMTP id h13ls287068lfb.51.gmail; Thu, 11 Feb
 2016 10:34:44 -0800 (PST)
X-Received: by 10.112.160.168 with SMTP id xl8mr5726259lbb.17.1455215684410;
        Thu, 11 Feb 2016 10:34:44 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wm0-x234.google.com (mail-wm0-x234.google.com. [2a00:1450:400c:c09::234])
        by gmr-mx.google.com with ESMTPS id e130si761616wme.2.2016.02.11.10.34.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 10:34:44 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) client-ip=2a00:1450:400c:c09::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x234.google.com with SMTP id 128so33091861wmz.1
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 10:34:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=/o96dfg+EScr3ICuwy9zj94JOI6bjEHBk6IIvpytaH8=;
        b=lljx8ZwIsDGtfhlYNXXzEpmU4cKN36iNc6XUkyzZI8n2qr2FcsHDbmW7P3NZcDHvzd
         /0rs/dxFLMJd7ABqVyFWSY2X4F6LxMVjaOD4oQGgAzYKVqNFq//qjQafQVtTn9ylMVFx
         mBk/SyMy2nr+dcOO2B2926/GsDZD9+8U7Hf+rSkSR2VzN+BL00bad/C3cEIA7LBwAocq
         TLWdVAC9GjrLlce5WnmCQMClTNjOjqZkjEDFjH8O7mVaCzTxCX5W+Zu8a6LUW+eAXfQm
         YeknOoWa0+lau9NVqck6Q97xfKudrZirIjZHuHlePTJqv4lnm5Z+EIWAeh3ypsPiYjZv
         upgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=/o96dfg+EScr3ICuwy9zj94JOI6bjEHBk6IIvpytaH8=;
        b=NpwE0RKA9sDhJPLITvjARYmUkDwhjmsIPbZrHIzgXYYCnmltDXo9GI3+fNJ26sj1tJ
         Mi19nXj5TQq6/AsLKYdA/LwNudtQI9fmpofat+lpt0J74o+L/inPBQCOOqsGNXzI1Xgz
         Bg6QwLknYMI75xHRsVNBGHozx8VYe4HStnlTap8oALMHdnHpnfmr/a9FxUjxmFJmfuRN
         QAcAv2ov1047sdKweJ7Rx4S5FHaq8KZdiNqJ2JsoioynyPclHz4fc5cbTFODwMv5VW3i
         42a0pFV1kzIn3YQydNh72yoW9eaVXXHsyv05olUpnRKulRb94KTAABy8wpBwhq26cdVi
         MkcA==
X-Gm-Message-State: AG10YOSSiZ5GDcrCZeChN8DeES193UTGo3xtDP/A7RbRbSenvgrInmczt/yidRtn4PeJuQ==
X-Received: by 10.28.184.78 with SMTP id i75mr20123580wmf.22.1455215684287;
        Thu, 11 Feb 2016 10:34:44 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneenVB ([176.44.75.58])
        by smtp.gmail.com with ESMTPSA id hm9sm8686688wjb.34.2016.02.11.10.34.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 10:34:43 -0800 (PST)
Date: Thu, 11 Feb 2016 21:34:40 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: vt6655: Add check dma_mapping_error
Message-ID: <20160211183440.GA11731@haneenVB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch checks for dma_mapping_error() after using dma_map_single.
If the dma map fails we release skb buff allocated by dev_alloc_skb() to
avoid possible causes of resource leak.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/vt6655/device_main.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index ad0fb84..8a1ed62 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -742,6 +742,11 @@ static bool device_alloc_rx_buf(struct vnt_private *priv,
 		dma_map_single(&priv->pcid->dev,
 			       skb_put(rd_info->skb, skb_tailroom(rd_info->skb)),
 			       priv->rx_buf_sz, DMA_FROM_DEVICE);
+	if (dma_mapping_error(&priv->pcid->dev, rd_info->skb_dma)) {
+		dev_kfree_skb(rd_info->skb);
+		rd_info->skb = NULL;
+		return false;
+	}
 
 	*((unsigned int *)&rd->rd0) = 0; /* FIX cast */
 
-- 
1.9.1


