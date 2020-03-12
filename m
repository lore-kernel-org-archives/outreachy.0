X-GM-THRID: 6803299178996826112
X-Received: by 2002:a05:600c:2c2:: with SMTP id 2mr4675115wmn.95.1584016526591;
        Thu, 12 Mar 2020 05:35:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:afd4:: with SMTP id y20ls2804843wrd.5.gmail; Thu, 12 Mar
 2020 05:35:25 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvWdpeIww08hYRINtO08M7oeoFN76QXWwtV02STmuVlV8xFS3UwxrVNYXGnAOEA2rrccYRj
X-Received: by 2002:adf:f309:: with SMTP id i9mr11549232wro.0.1584016525355;
        Thu, 12 Mar 2020 05:35:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584016525; cv=none;
        d=google.com; s=arc-20160816;
        b=GL3yC/GqwF8Ab5zyrM7Nf5cUNHzaRE4hdDHSYxnvJULqiMLTMwyjz0B0GK0GsRZlMC
         EtFlZyhAI9yL03JBURTzccWaZu328ahDN1o+BaLjLWaxqFumtHOxBs4QzJvIVTag7XCR
         p7Ir/R73bVXiV6KB6wzD5lwzmRG5dx3d6R/tZoB8Y/eQMdiAQXqeG5yZby+blMAGwpoW
         pwfEuk4nEGUzK+35ZK2g7ZlyF61c/Ds/pIQV5Yx5Jm+qpl6RorgnymmbUP4YjsWPan3T
         h7fpkbNPb5Tl7UtL1BhzkUwFqDP2gcgMrkZKnNPGNgvTjz4LI5c7VUEN4cQDFmLeyb4q
         cIxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=1A0qMOY8X9VIW5g6xhf8rrYfAtoN0pLM6c3BgPjvgyk=;
        b=KhqU62vb2R8TzSiF40UIVJEqU0VyuVTXpBAY+zqRecS2cq6RYQTgMARN8ULOUvIsp6
         AR6EX82mcSJEKLqf2/zuYku+xNjYIELJWaHHyNHhuTY6JmGlBOpZHf5kt6djeI/bim1C
         5pnUWSLEk/aXP1y3M0hba+o56i8xhoUVH6alE3Ip3Rp+ogHIcSPz7Xefn72ouL/cShRG
         8kbD4D+/JR7f11z5+xgXOY2jdyDnLwaQfa3Zf6ElQTLLhXw/bH73YUzncvLCLAskLTSe
         X3QBqcnHwKiNKGBTPzTql3QgXPGXln8dqBpxQnrBjHML0JGJDSNd+24iWhdn+a/ghepM
         lQWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id f1si168310wme.1.2020.03.12.05.35.25
        for <outreachy-kernel@googlegroups.com>;
        Thu, 12 Mar 2020 05:35:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 13425 invoked from network); 12 Mar 2020 12:35:24 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.246.223.143)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 12 Mar 2020 12:35:24 -0000
Date: Thu, 12 Mar 2020 18:05:17 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: sm750fb: Fix longline in makefile variable
Message-ID: <20200312123512.GA5513@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

A simple fix of long line makefile variable assignment.
Found using checkpatch.pl.

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


