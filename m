X-GM-THRID: 6663442013681090560
X-Received: by 2002:a1c:761a:: with SMTP id r26mr659011wmc.1.1551530775924;
        Sat, 02 Mar 2019 04:46:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2e0a:: with SMTP id u10ls640976wmu.10.canary-gmail; Sat,
 02 Mar 2019 04:46:15 -0800 (PST)
X-Google-Smtp-Source: APXvYqzZaOoASiuJWHpVJedWauw8d3gNpfw1pd/pZH5iOilH00tpm28soWx7PpniqG49SZeH9rPA
X-Received: by 2002:a1c:e3d6:: with SMTP id a205mr612366wmh.19.1551530775010;
        Sat, 02 Mar 2019 04:46:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551530775; cv=none;
        d=google.com; s=arc-20160816;
        b=Gw5P6NYNqsalkl+qk+dhPB/XrDiOudHiwSR1W66VvO6GX7VtjOT3hqgerEE/ouLJsd
         2pA12FFgmB4wUaG4lBkboFIoX7AQSEyle1IFK2GBrrzGyRqMxxVDE1RHu3VxHVoJkE4e
         kxrWtB+8tt+VXBX0CNu+uKjIAxjBun6KOAo7GW5+OZHUdg8twlVsddIBPPsLSOpn9p5X
         H0gLLRW8kNXq9hCt/A94Viuz9siDe+FQAelbvcHqIq7RSj3ctdQ4u281AxdJVlnRUbKj
         DY+ivCIN9RT15kOpM6fnYVOuML2jDnORa0B8r5XFWpyk+MNh6HvGt12UvsRXWgM5vAEV
         RIJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=UFp0OtdxebQSCtcG3eOJ23qOsErs0DW8+pG6DJRaYpY=;
        b=UMTlSa2Af0QjYYO5hX62AJEgyMl0p3DPTK7WmeXfF94jrwPIJ10diSuf+zXKwSUFXS
         ijyr8Kk5GvMCyvk0Kjff6dVi45zcmCkUk6VybbNIJVjDgNYbA850XFQ7TyoruDxfORwf
         HIdCGYiSKvozIviYpr6pXSbxu/rLTuIHwYzXWqx6shzRWhvlDs5bgSJjB7HKxXqRtNtR
         txXAhFmnBEeEfqpsFYDuMBgvPyy+qeIh0QUG9cnSwZXNTgPXCXXifaEDVgGaOLZ6IQbp
         9Pc9kjLFK0/vKy+fK89psqzV9K2OiUX+6o/R/2SRTDQ7p0YRNAYlGNjpEKpWmSFbFueP
         NAKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DtdAp+av;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com. [2a00:1450:4864:20::331])
        by gmr-mx.google.com with ESMTPS id t22si56828wmj.2.2019.03.02.04.46.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 04:46:15 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::331 as permitted sender) client-ip=2a00:1450:4864:20::331;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DtdAp+av;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x331.google.com with SMTP id y15so611308wma.0
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 04:46:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UFp0OtdxebQSCtcG3eOJ23qOsErs0DW8+pG6DJRaYpY=;
        b=DtdAp+avJVzms4sBlwJK3UTiuQptDGaqmWNx0ZMT9XNrpd7LJT+L4fcO75buZaG6St
         mv5mQ6qez++s9yixm4dHBOzRASlMFD/8flPHhvVhz0p1Tk2yxA67ZAHxz2rQS30JuqFz
         75QJscqJIQDGL7SHDf2of2dC/46qCJTJllfUXlzP6/UMY9R0vBd0dr2THwoRXJFnNcE2
         dErY4CI0H7t5gfqHI+WkvvYZlebpl+ft7t1YxsXhO/P0J7YO1M84hLTnAzJrsWEZ9Ewr
         hLRTESF/SU5tprVP3FGjS75du4MjRZOwW4MbyiDKWaUxzY+EQNR54fc0/y6fwp6UjuJU
         fLig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UFp0OtdxebQSCtcG3eOJ23qOsErs0DW8+pG6DJRaYpY=;
        b=EqXcDtRLamnxRCJz8nnraEG2X/6hNxDSVU+m3pRxz/QATQVugYdTxpNH2tHUw4j+l0
         PIls8a5K6mPaVd1236XFRDIoDAXu+gJjU6HvYhdMHuOh+Jzz3ihAD2CnvTFGUOQLPBlg
         1qEhU2n6LmMn1b1Wszyes0NCHX4YVx9aTg5EDPTJL7uIda/MD3jENaA4yKhOWu8e5JhX
         xL/s1D7ZdRMUottjTlJ2aD8WCpnDCpm4ylXPIhufV29rk/A2ASUf4P0yd71FwCZV7LIl
         jyFGsFZeZUYf0avmHtTV7UtFoWESCEkQylv25O+zsP5qBM0R9+Hd/sfMkRA5DGdM4dTH
         9ieQ==
X-Gm-Message-State: AHQUAubLOEQrjDGWU3AA6DhB//3WlK88SwZz8HhgWJh7iCI6IKL8TOgk
	Vzbi9B3+9indNF/NgLu0ejnWsdA=
X-Received: by 2002:a7b:c756:: with SMTP id w22mr5986103wmk.12.1551530774469;
        Sat, 02 Mar 2019 04:46:14 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id y140sm4248367wmd.18.2019.03.02.04.46.13
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Mar 2019 04:46:13 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/2] staging: mt7621-dma: add SPDX GPL-2.0+ license identifier
Date: Sat,  2 Mar 2019 12:40:49 +0000
Message-Id: <20190302124050.30558-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190302124050.30558-1-jbi.octave@gmail.com>
References: <20190302124050.30558-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add SPDX GPL-2.0+ license to fix missing SPDX warning
 reported by checkpatch.pl.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index 7b2cdd2829a5..e0f2d77cb699 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  *  Copyright (C) 2015, Michael Lee <igvtee@gmail.com>
  *  MTK HSDMA support
-- 
2.20.1


