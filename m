X-GM-THRID: 6466287284613283840
X-Received: by 10.55.79.65 with SMTP id d62mr14435252qkb.12.1505549830286;
        Sat, 16 Sep 2017 01:17:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.147.195 with SMTP id v186ls7735677iod.2.gmail; Sat, 16 Sep
 2017 01:17:09 -0700 (PDT)
X-Received: by 10.31.156.78 with SMTP id f75mr4394741vke.49.1505549829628;
        Sat, 16 Sep 2017 01:17:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505549829; cv=none;
        d=google.com; s=arc-20160816;
        b=CsBx4O40ZdsHjKb7xWlENqsWN2BZYz09HCHc5XU3eaLBfGkex5+H6rPzaNztgCBi5w
         uRYWvT5aw4nqeBDIppUJEI2ZWt+pE2EEWKDxv3yZ7VK/BI2N2zwSPqkaJ8ZDpsj6YxSh
         6x87cc5AgSvkauJKhweFQZ0Rjfy5FezXU1arsWVixZRTIJfKg2Jl/UFrchhCfnwVwk+2
         WebPrEpAk+tXxc2kcO4FuOLUE6VBDHKA5/Y5mHJUYSDY3ZkHJt/EsUAWrjiE6N2Mlevd
         DFXa6ubqPuaFOyZoiJanA999Ff4rgJYUle/KpHjLiOD7qxn5yRyVMHowBcpaOnw7ROoB
         uZdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=jm0VgDf7MsLjQqnSh7Wpy2uyetD67cIhnHYI/BlxWoA=;
        b=OX2vvNMh6y3XE00/L61PDdgU6WUlKtN377Ju3zsLZ3w8QTxFV/I7hxlWjVyifU+hh2
         E4F8olWIeV2Fj80+CipIvIg+ygvaBvxWprbl/g5vXXPEv3VEKnEQtuDsOc/oYIus9E2f
         u3oMAelN4cz5Zf2mzokIEr0is5amPJjHpl4snwTU6wXtJbGG5ExWSzVbGUTwJouW3h+m
         mETVz0m6Vcsebdt+UhR7WtTmeXulZHJ0j3W7KuH9Qb4d2OxcLJAZBGnmqKOkb9U2Dqa4
         QZMl4oVXqzhBaIrUHGZ4VuyhQzrx0YEdJFYonYJgBDalVHtxyl9BHW8iATMiFcB5sS3n
         67Rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OkPfXCzh;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id y18si290110pfj.18.2017.09.16.01.17.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 01:17:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OkPfXCzh;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id v5so2475836pgn.4
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 01:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=jm0VgDf7MsLjQqnSh7Wpy2uyetD67cIhnHYI/BlxWoA=;
        b=OkPfXCzhHnDxFe+VWFki9BoZdfXBCZuAKsUHPo9XDXkhnv3DPJRoPxOvTxhMsg+A8g
         42VD8BYuE1xnT8d4J3qViJtwnF4ZzCB/nOOasu4pr+wU0uVvJjDaLCX0xVvVlMXG8ETD
         P+aGrU7qGwrBvA5MwmZvLVnkyXEF8aw/J1WZe5RM4/9zUi416jx13dMV9SssZ4ug8Lho
         Am64ww2bVAwMWII68nUDp58TWg05jTjkUA2/TTG7BftJHpPESJw021ZSEauS2R/u1o36
         bs5vAOUnuu5CQf2xpki+MruvZpSl83ahK7yGpIDE29DUPqWiJRSXOcNxHyY4AHjCS3Kg
         ithw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=jm0VgDf7MsLjQqnSh7Wpy2uyetD67cIhnHYI/BlxWoA=;
        b=YAMsCxgfcBUAdRsVqTQYRE0P6OKm1HL+Vm+/FrH/Q60GxfeFY/fkY8f5yO5MVI9xSJ
         2oYJXLGn2+KyYmOitcSCS4L9GNpcJOUFkPjEMjZdp/uFIkVlNNpIgOs72pGL3OPn72iB
         DWAxpC8Q9xzrI8n1hlFeyR2bGZDyFYWWQFCgWX4QZSWQ/EPOMbPWBbZEK/cUvWYWPnar
         uTYdARQrR5Blv3PIqLpualRr2/xMd4wAkopZcf2kDMZhAax2aNr6AauwVJ6Yn7YGf5Jg
         6HTA7Vw0Kzm7wmahQNFvY/CrSGrtYA1M0uKwCb8xLDm8A8jQak1xDG/JUsWrrKXspNbg
         mg5Q==
X-Gm-Message-State: AHPjjUhhVotFudpy8QWGlC0Ze9g9a4DpDfD3CJn9NDjg7OXNvXvF7Zpy
	HyDdtRx2anEMRA==
X-Google-Smtp-Source: AOwi7QDO1DjUt7azK5DPnyWT54QZUwqYwc0LIDo9mfMVvsfEE/+xrtbHIW5zqYnzh80jVxjXo7AHnw==
X-Received: by 10.159.218.1 with SMTP id v1mr2130737plp.299.1505549829305;
        Sat, 16 Sep 2017 01:17:09 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id l85sm5903757pfb.176.2017.09.16.01.17.08
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 01:17:08 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] staging: rtl8188eu: fix misspellings in rtl8188e_spec
Date: Sat, 16 Sep 2017 13:47:02 +0530
Message-Id: <1505549822-20498-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8188eu/include/rtl8188e_spec.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/rtl8188e_spec.h b/drivers/staging/rtl8188eu/include/rtl8188e_spec.h
index a09a4db..71e2b81 100644
--- a/drivers/staging/rtl8188eu/include/rtl8188e_spec.h
+++ b/drivers/staging/rtl8188eu/include/rtl8188e_spec.h
@@ -15,7 +15,7 @@
 #ifndef __RTL8188E_SPEC_H__
 #define __RTL8188E_SPEC_H__
 
-/*        8192C Regsiter offset definition */
+/*        8192C Register offset definition */
 
 #define		HAL_PS_TIMER_INT_DELAY	50	/*   50 microseconds */
 #define		HAL_92C_NAV_UPPER_UNIT	128	/*  micro-second */
@@ -712,7 +712,7 @@ So the following defines for 92C is not entire!!!!!!
 
 #define REG_USB_HRPWM			0xFE58
 #define REG_USB_HCPWM			0xFE57
-/*        8192C Regsiter Bit and Content definition */
+/*        8192C Register Bit and Content definition */
 /*	0x0000h ~ 0x00FFh	System Configuration */
 
 /* 2 SYS_ISO_CTRL */
-- 
2.7.4


