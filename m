X-GM-THRID: 6263480963249995776
X-Received: by 10.140.29.183 with SMTP id b52mr19883398qgb.8.1458501309939;
        Sun, 20 Mar 2016 12:15:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.85.39 with SMTP id m36ls2574468qgd.24.gmail; Sun, 20 Mar
 2016 12:15:09 -0700 (PDT)
X-Received: by 10.140.30.99 with SMTP id c90mr20187553qgc.2.1458501309360;
        Sun, 20 Mar 2016 12:15:09 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 12si3016556pfb.1.2016.03.20.12.15.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 12:15:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id x3so26448819pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 12:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4SJpUHKOuvIrZsfKVvcn9oPzRVkdvit2rfTFnnId6GE=;
        b=yYhIkVhjKeHbPVc2SScGQaF3jGy1dXZMohO/b8PpHrpluTYxgzbuUEI5IKpLgVnRm2
         Xj9XB9PYM+jqMUSXtaz+q6MSG72bBpslJIs8kMuN0WISRvtc4VCmKKaLdao3cpG6UrfI
         sgO0MQHlar7IAfQwLpZKQmeQ0OIQ4Oifv64qTke2voIs0FPM3IDzexZWoOe4VwHz70ka
         3fpe3nl8AXF6ZS7bIchKpYJeWtblA6siocwtDZRKY9QYjpGgx9vID34OmKugE4tEspsk
         /3ygjlCBEDCc1OnybXn44s1OI8DGis0gsK4QiefWXSbdWSfHRaZxcowRHFUDdmKGaFxo
         vn7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=4SJpUHKOuvIrZsfKVvcn9oPzRVkdvit2rfTFnnId6GE=;
        b=IGpHP8VOj91oK/kJ9lVautztD82hUJ8XUoQQoGajrprBpOLB6usMKgK2+zcRJTD8+R
         xjYCA/i5O1eEklVa9Yo5YOT71xe8/9eT61CsTqQJGK9R14+xmd9EMZvtdLF7IET+SGWH
         TWVnKzuemOoMJ7BfEdvvhjgmI6t3ddUXNn9FsBAa0EjVirFmofaPlygfJWS+b7FrsyDp
         cxNHwh57ukYEjYDVtNg87eHWdm7mYJMuq3KmHJpIZ7uow03Dp55xVsIwTH1fiO8Ern/+
         fJlaUgRR/QqNRan+T6uqC4WP4XFQCsgtRvD2RtgDDz9ExsviVukckZ8NO5tX6xDix+qm
         Kotw==
X-Gm-Message-State: AD7BkJLlVtb1v95yI4prpglCSzMyxR8dm3U3tkIQZFWvfwRYtTdwMLsBBFJVHlUhAs7YJA==
X-Received: by 10.98.18.28 with SMTP id a28mr39865890pfj.145.1458501309143;
        Sun, 20 Mar 2016 12:15:09 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id fn3sm35084495pab.20.2016.03.20.12.15.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 12:15:08 -0700 (PDT)
Date: Mon, 21 Mar 2016 00:45:06 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/4] staging: comedi: amplc_pci224: Convert macro
 CLK_CONFIG to static inline function
Message-ID: <28884b9d0d2f9a209f034a9eb2343293a0711628.1458500647.git.bhaktipriya96@gmail.com>
References: <cover.1458500647.git.bhaktipriya96@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458500647.git.bhaktipriya96@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Convert macro CLK_CONFIG to static inline function as static inline
functions are preferred over macros. Since every single user of this
macro passes the argument into the outb() function, with
(dev->iobase + ...) as the address, the two calls have been merged
into one.

This was done using Coccinelle:

@r@
identifier f;
expression e;
@@
- #define CLK_CONFIG(chan, src) e
+ static inline void pci224_clk_config(struct pci224_private *devpriv,
+                                      unsigned int reg, unsigned int chan,
+                                      unsigned int src)
+{
+       outb(((chan & 3) << 3) | (src & 7), devpriv->iobase1 + reg);
+}

@r1@
expression devp,reg,chan,src;
@@
-outb(CLK_CONFIG(chan, src), devp->iobase1 + reg);
+pci224_clk_config(devp, reg, chan, src);

Also, the comment describing the macro has been removed manually.

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v2:
	-Since every single user of this macro passes the argument
	 into the outb() function, with (devpriv->iobase1 + ...)
	 as the address, the two calls have been merged into one.

 drivers/staging/comedi/drivers/amplc_pci224.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/comedi/drivers/amplc_pci224.c b/drivers/staging/comedi/drivers/amplc_pci224.c
index cac011f..5bc1377 100644
--- a/drivers/staging/comedi/drivers/amplc_pci224.c
+++ b/drivers/staging/comedi/drivers/amplc_pci224.c
@@ -201,8 +201,12 @@
 #define CLK_1KHZ	5	/* internal 1 kHz clock */
 #define CLK_OUTNM1	6	/* output of channel-1 modulo total */
 #define CLK_EXT		7	/* external clock */
-/* Macro to construct clock input configuration register value. */
-#define CLK_CONFIG(chan, src)	((((chan) & 3) << 3) | ((src) & 7))
+static inline void pci224_clk_config(struct pci224_private *devpriv,
+				     unsigned int reg, unsigned int chan,
+				     unsigned int src)
+{
+	outb(((chan & 3) << 3) | (src & 7), devpriv->iobase1 + reg);
+}

 /*
  * Counter/timer gate input configuration sources.
@@ -817,9 +821,9 @@ static void pci224_ao_start_pacer(struct comedi_device *dev,
 	/* Make sure Z2-2 is gated on.  */
 	outb(GAT_CONFIG(2, GAT_VCC), devpriv->iobase1 + PCI224_ZGAT_SCE);
 	/* Z2-2 needs 10 MHz clock. */
-	outb(CLK_CONFIG(2, CLK_10MHZ), devpriv->iobase1 + PCI224_ZCLK_SCE);
+	pci224_clk_config(devpriv, PCI224_ZCLK_SCE, 2, CLK_10MHZ);
 	/* Z2-0 is clocked from Z2-2's output. */
-	outb(CLK_CONFIG(0, CLK_OUTNM1), devpriv->iobase1 + PCI224_ZCLK_SCE);
+	pci224_clk_config(devpriv, PCI224_ZCLK_SCE, 0, CLK_OUTNM1);

 	comedi_8254_pacer_enable(dev->pacer, 2, 0, false);
 }
--
2.1.4


