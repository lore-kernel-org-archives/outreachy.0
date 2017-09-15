X-GM-THRID: 6465902781475586048
X-Received: by 10.31.191.203 with SMTP id p194mr13222953vkf.84.1505460306351;
        Fri, 15 Sep 2017 00:25:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.219.5 with SMTP id c5ls696085itg.2.gmail; Fri, 15 Sep 2017
 00:25:05 -0700 (PDT)
X-Received: by 10.31.16.68 with SMTP id g65mr13083695vki.120.1505460305604;
        Fri, 15 Sep 2017 00:25:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505460305; cv=none;
        d=google.com; s=arc-20160816;
        b=oSrwR6x6MnbzFCFDrWnzlOpo4yjt+jnx9QU7Ktwj5ilnaU8s5Mr+bLlBLTVkAOVkP5
         SvX+Kfd3M7cXuORtDKjilJ11nBgF8VgxW587RT3zsIh7z2hUZ+VV2lcwSBVi9Jt1bLQY
         aoLZsq/ogpFOo8/DB59kbOGk0WdESDof4NSfpIb4xi/UkYqUSAej5jd6v5AmoZ0dLEJa
         Ir77/GDYOITRbRjKd+z/ONttJJsyWnbDpqB3GfRfvA4J8yBIgGCO/whHnL2/dfrOQX4Q
         3zT1faMQyx2lkIS2xtug4gswKZnuc3tX0XKumDXlB5mcQbExSBT0UdRgduX3NX4a3Fvn
         PBmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=7D5uXx1Pc3vsLUJRZzjGNYhQivcFhWehn2CddkDCYDI=;
        b=edHTUbD2tvpfudVCFAOqTqmDhGuczEsjaMAkRFfYhao/EtfKDl1Uhcn8IDzAZfkMxW
         M+/SYJYsOqxm53p9b+KaEDyfaxKaeMrCS086USrFhP1WVnI9DmzNYBQz4ULFLrWA0l8K
         BS2Z0UmrFElxCyDbmjpOTWGZwDmLQC7YGuF0FUX6C6cGmf7Zmu3Blkjgh7Vx2AYjB5Hk
         a/XwJcQmCAOSo1oRVFQWbrOAKW9YwFc2LLEz+XTJ+3uVraOUWHxUrewhwE6AvtmLNKC8
         6ACNxd5sLHRndMijsbvSl6pWDMSHBuiUYkFM5wewYQRZxyU5moosG40RvO0qVorj9tOl
         0F8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=htTuo783;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id r78si32360pfb.3.2017.09.15.00.25.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 00:25:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=htTuo783;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id h4so869465pfk.0
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 00:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7D5uXx1Pc3vsLUJRZzjGNYhQivcFhWehn2CddkDCYDI=;
        b=htTuo783jlcX10W2gOeNYidj1vJkpemAqh+H+yjvRZ6RZzFrRqJ+93E23ARdhtcKaP
         BTOzyg6gGD5Erd0JLD9Py1wdvopmW9fvVEYlAAcM7LXM9+wzm5kKNkrawZ0UcjLOR32i
         sCaEQp6xHIif9v+6Rel47rXynwy6nMER7yWTtwtLYryuCULET9TkUILla2Fmm94OJwE6
         Ql7oMbbCHox40oJ5pnHuPOqNXsBNryfrdeZlPTe+ksgDC7+mgizvvFJB32R63oWAZN2Z
         s2jowUFvYpabePv7FE3rva6BC/6LMEJr22OBUaCoNvnspn0BdOjEv96n3so7iK8UMscn
         z8EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7D5uXx1Pc3vsLUJRZzjGNYhQivcFhWehn2CddkDCYDI=;
        b=mWgdr4KIoodhYeSoGAZrRV0Dh+en8QJA6wZds8bYe/+7hQGPP7WERtKdK1Ky7KJTEZ
         QRemTbt3aL53zadKxPKziJacbn84I5W5AJ61npBfwdkMtl9tZ2PPnpyh6N6ONPFJZihL
         O8H04sbOB5ft2B+UPPt3R1aHn2b8SftJfMw4NJqyHEpDKVselXEidV8RNMqao5rsG/ui
         88nfFNX4dE8fCo/K6MJlSA6TzVTWGHZ/xJ0QV+8wGgrIke7EoE2Pp0KkRbA1Zg9bpgXB
         RXI5NTZ8PUPkMqiynh26v12a+YSpnK2U1fTulcKyt2U6my0XL5ow6ioRsYgup4ND4dcE
         RmOw==
X-Gm-Message-State: AHPjjUiOpOkHdIo80cCztiwA4F79VpFhkG+HPVM56Yi0RJvqu07HykTa
	X7Jadjl/Dm5sLOgh2dY=
X-Google-Smtp-Source: AOwi7QCeb6v5MyY1yYW+nOtpWOHrlq5XwQMIqv3jMiVVtMKrbEyOTRWpD2fCqra7qHW6Q2FaiESfig==
X-Received: by 10.99.164.18 with SMTP id c18mr8557655pgf.359.1505460305354;
        Fri, 15 Sep 2017 00:25:05 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id h82sm1025694pfd.148.2017.09.15.00.25.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 00:25:04 -0700 (PDT)
Date: Fri, 15 Sep 2017 01:25:02 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: About handling dma_mapping_error result after dma_map_*
Message-ID: <20170915072502.GA11238@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello,

I have a question about handling dma_mapping_error result. Is it enough
to add a warning after it? Because I have found two missing
dma_mapping_error in the drm/via driver but I wasn't sure how to handle 
the return value if an error was found. Below is the code mentioned:

---
 drivers/gpu/drm/via/via_dmablit.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/via/via_dmablit.c b/drivers/gpu/drm/via/via_dmablit.c
index 98aae98..5c11756 100644
--- a/drivers/gpu/drm/via/via_dmablit.c
+++ b/drivers/gpu/drm/via/via_dmablit.c
@@ -132,12 +132,19 @@ via_map_blit_for_device(struct pci_dev *pdev,
 								VIA_PFN(first_addr)],
 						     VIA_PGOFF(cur_mem), remaining_len,
 						     vsg->direction);
+				if (dma_mapping_error(&pdev->dev,
+						      desc_ptr->mem_addr))
+					dev_warn(&pdev->dev, "DMA mapping failed\n");
+
 				desc_ptr->dev_addr = cur_fb;
 
 				desc_ptr->size = remaining_len;
 				desc_ptr->next = (uint32_t) next;
 				next = dma_map_single(&pdev->dev, desc_ptr, sizeof(*desc_ptr),
 						      DMA_TO_DEVICE);
+				if (dma_mapping_error(&pdev->dev,
+						      next))
+					dev_warn(&pdev->dev, "DMA mapping failed\n");
 				desc_ptr++;
 				if (++num_descriptors_this_page >= vsg->descriptors_per_page) {
 					num_descriptors_this_page = 0;
-- 
2.7.4

Thank you!
Haneen

