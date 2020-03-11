X-GM-THRID: 6802937311305662464
X-Received: by 2002:a2e:9bc8:: with SMTP id w8mr2024815ljj.227.1583932272572;
        Wed, 11 Mar 2020 06:11:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:4bd6:: with SMTP id y205ls186638lfa.8.gmail; Wed, 11 Mar
 2020 06:11:11 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs4UKlojCJLviZL5XxzPgnInwvd1NCaycDTx+8V1tzTK8NyuOFQbBuUWsCYS704H8eRaOjo
X-Received: by 2002:ac2:4565:: with SMTP id k5mr2142061lfm.8.1583932270520;
        Wed, 11 Mar 2020 06:11:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583932270; cv=none;
        d=google.com; s=arc-20160816;
        b=hovfzTuDgTXiz1ICc3ZFh4Cf6ZQN/BcoN6zvooUxMOgeWEMbAU7DDhSGvT6U1LiFFu
         ytscodK1pk72Vei2hI+DAu4SpLIbBsUbIwPd3XL5Mw5jxSp4E7ZidiYid7wuNN+HzfMD
         BsG0ieDi1qdflaiKiJTQUciFGzCaprg+ntTdozA4a3njP66AqcNXkK4oMI0XWWCSpJiM
         Cx7ICOpex6bdYK2+uaxHIvaCmRgq1jBGS5PM/dgnpW74JnASa7z5j+p0gskbk5ZyjVN3
         Gu95TbDH4hyB8oiLN6ELxDx+YC12vMaTqCHu4BdJDGkzL4HUPLr3brrUcRECEA/PWsBz
         WGSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=v73PjgPBw9XBw4klOic2rKtAT6WmlSfAK4j3omKFnso=;
        b=ERjd3gskRLUjHVuef6V3vkUrTnGhJN2frbeeYE+jYl+9uCRLZcUyo/1sUYmgxEn/+G
         F1BOz0CsTbOrz4huoLQGM8cxxymlH4fgkewShIziIPSfLk3GBegIA/LYV5UQMcY6wPF/
         TtHmuiZErhZiPkrH+k65pdpbCeLBawOxLlDAGedjNWFIt2cq1025sio/YgZjJ2Q5AffA
         iTbRGMMcEn/uG3PNOefIowjM/IW8Tjcxx0BGMKlcD32dWZYkomtSsL8va05c6ys70KKd
         DnGqIrmIzpwwElbxQXTc17ctSWsqZzhrKh7dZ8r77XhGitp+9LRX2DpP/J5kYS2BwdD0
         VpkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id p14si117043lfo.0.2020.03.11.06.11.10
        for <outreachy-kernel@googlegroups.com>;
        Wed, 11 Mar 2020 06:11:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 31616 invoked from network); 11 Mar 2020 13:11:08 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.219.218.167)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 11 Mar 2020 13:11:08 -0000
Date: Wed, 11 Mar 2020 18:41:02 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: sm750fb: makefile variable longline fix
Message-ID: <20200311131056.GA4361@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

A simple makefile variable longline definition fix

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/sm750fb/Makefile | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/Makefile b/drivers/staging/sm750fb/Makefile
index 1cf3849cef23..6f832916ba65 100644
--- a/drivers/staging/sm750fb/Makefile
+++ b/drivers/staging/sm750fb/Makefile
@@ -1,5 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-$(CONFIG_FB_SM750)	+= sm750fb.o
 
-sm750fb-objs		:= sm750.o sm750_hw.o sm750_accel.o sm750_cursor.o ddk750_chip.o ddk750_power.o ddk750_mode.o
-sm750fb-objs		+= ddk750_display.o ddk750_swi2c.o ddk750_sii164.o ddk750_dvi.o ddk750_hwi2c.o
+sm750fb-objs		:= sm750.o sm750_hw.o sm750_accel.o sm750_cursor.o
+sm750fb-objs		+= ddk750_chip.o ddk750_power.o ddk750_mode.o
+sm750fb-objs		+= ddk750_display.o ddk750_swi2c.o ddk750_sii164.o
+sm750fb-objs		+= ddk750_dvi.o ddk750_hwi2c.o
-- 
2.20.1


