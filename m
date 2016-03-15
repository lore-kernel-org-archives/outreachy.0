X-GM-THRID: 6262126512629088256
X-Received: by 10.182.148.71 with SMTP id tq7mr20224563obb.21.1458015065218;
        Mon, 14 Mar 2016 21:11:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.150.19 with SMTP id y19ls23713iod.105.gmail; Mon, 14 Mar
 2016 21:11:04 -0700 (PDT)
X-Received: by 10.66.139.162 with SMTP id qz2mr20573024pab.1.1458015064813;
        Mon, 14 Mar 2016 21:11:04 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x229.google.com (mail-qg0-x229.google.com. [2607:f8b0:400d:c04::229])
        by gmr-mx.google.com with ESMTPS id k13si1331752ywe.1.2016.03.14.21.11.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Mar 2016 21:11:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) client-ip=2607:f8b0:400d:c04::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x229.google.com with SMTP id w104so4796055qge.1
        for <outreachy-kernel@googlegroups.com>; Mon, 14 Mar 2016 21:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=kA2LlgkxCTc7VdFHyfG0dXe6nfeD9gIzWMbIWvCjtV4=;
        b=AYfgjXxdtQb3KCy1YcZn/OdW3WRu91QyqgrkwwziX3FQgZ/Tm5NWK7H63J3aTtxWLq
         9shdohtCdKaHX3H3mUBudaVipUjrEQnxYsKyrbcRYZbM3rq2KDSABGpLVTbEtsIEXgc8
         pocqCgvuVK7dXFkZHT/NGbG4BEuMavoB2GeQdFZoAWJwsu6iV95al4bNJ5MMBuP6VIjE
         JjaFC9Wg0S62JEctcDbzflzBf7VKsmIdvwbswDgudl/+OQDYSrh9RSEMmXQo/1d5yl9G
         pjjw/cAOk7tFsh6xngVak0Lnw3p6E1qrHcxChfRf0YZYyrKl7P00MtdmlF0jkz/5qZzD
         LN2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=kA2LlgkxCTc7VdFHyfG0dXe6nfeD9gIzWMbIWvCjtV4=;
        b=XwghjLLgXOGC+s18Wg1ovttgY5rf03gqrXN7uieg8v2ZVbpn0vHQGhiEGE5rtS0pNZ
         VBRWg0H3qpuWP5/rD3XCB51fBcVLsuAoZIV+YRRLPiPLtU8YnMLkZXbxq69qiY+N9BMe
         Ua49vxxvoMNS6NU4YaWqnXopSbVhjTlOnvBYkiEJaKi2JPj2Jo4wgD66DL/jPBloE0mI
         XnCGYF0uWahVokee5PbPEzRNdI0092hi309frpNEk99uVOiiY38nqj8czWqG4u5wSM5N
         paBZ4JspAL2/vhjYRCzluQZp9j4tyW1WPYhKpt273BXn/zzy8i67EyFUjgJ7ljmElOG3
         u/Ng==
X-Gm-Message-State: AD7BkJLf48tx1//h5xQCiDZynCdmK1JSEHc7kIOktxLCCgAKvIscUaAWVC1Hdjg+W/zewA==
X-Received: by 10.140.99.72 with SMTP id p66mr34511983qge.16.1458015064506;
        Mon, 14 Mar 2016 21:11:04 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([2804:14d:ac80:19e9:b6b6:76ff:fe71:ca4b])
        by smtp.gmail.com with ESMTPSA id z62sm11920030qka.26.2016.03.14.21.11.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 14 Mar 2016 21:11:04 -0700 (PDT)
Date: Tue, 15 Mar 2016 01:11:01 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/6] staging: rtl8188eu: usb_halinit.c: remove unnecessary
 braces
Message-ID: <901049d2eea09b528c58f0303385867207793cd8.1458014176.git.juliana.orod@gmail.com>
References: <cover.1458014176.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458014176.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch removes unnecessary braces that were
causing checkpatch warnings.

WARNING: braces {} are not necessary for single statement blocks
+	if (pwrctrlpriv->reg_rfoff) {
+		pwrctrlpriv->rf_pwrstate = rf_off;
+	}

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/rtl8188eu/hal/usb_halinit.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index da6759e..e7ff784 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -754,9 +754,8 @@ static u32 rtl8188eu_hal_init(struct adapter *Adapter)
 
 	haldata->CurrentChannel = 6;
 
-	if (pwrctrlpriv->reg_rfoff) {
+	if (pwrctrlpriv->reg_rfoff)
 		pwrctrlpriv->rf_pwrstate = rf_off;
-	}
 
 	/*  2010/08/09 MH We need to check if we need to
 	 *  turnon or off RF after detecting HW GPIO pin.
-- 
2.7.2


