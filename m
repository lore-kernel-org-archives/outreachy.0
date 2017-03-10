X-GM-THRID: 6395849810528698368
X-Received: by 10.157.34.114 with SMTP id o105mr7147863ota.48.1489149828106;
        Fri, 10 Mar 2017 04:43:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.31.6 with SMTP id x6ls7858029otd.46.gmail; Fri, 10 Mar
 2017 04:43:47 -0800 (PST)
X-Received: by 10.157.60.72 with SMTP id j8mr7541359ote.52.1489149827787;
        Fri, 10 Mar 2017 04:43:47 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 2si1745371pfx.8.2017.03.10.04.43.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 04:43:47 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id j5so10720536pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 04:43:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=unl095Dj+UBSrwKJhSXK6RQ1mNYsYE1zuOKhek+pgcw=;
        b=ZYSTZl2MhYN/7vJ0LKu8ewWo35JLPeRirEjIu4uryejU4lJduzc3H4Szj5ToA6Bwto
         dwF0qQgT8S1TDgVe4xK3I9lIennF3Ts67pUGS41/S4jA0fqwQu5vgWj9iOWUhYBQjF0W
         uslePz6yDylzdTN7es9Dpa0BsWnlOdD/htaghCQN9H8PEO8/B1PWRAaIYbwguYPQ/ccW
         qWoS88v6STjESxMW16bV2/Ynsz3LHa7VR05com71oykT5vvQRFmS6CpXUQhwocnjUbK5
         b/HgPRu7/ifoOiSSk708bYJPoEqQY/NbiCg9DBX7HRwnlszuFBKYWDd6yYKayNpHQOzF
         aWqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=unl095Dj+UBSrwKJhSXK6RQ1mNYsYE1zuOKhek+pgcw=;
        b=QDtOHX0rRUjoumdfmHMRt+gDE4f+AGg9zca2pDOFgRP1IO1ai6UPIG4ivizIqUGAL/
         ebgYwqJe0baRfvYs1frWP0oiOf/q6GELsDSB99pVlnUzDuWzaiz+Przl4gcAxIEDQ9Eo
         jvZfqkAVcYEpinxsXII/H/lqkYfIm+Ar0G3kUN7+A420QtyG50BdKoQbe63f9PnmIaoR
         HSO6eVr1Vhzs0bxqJsBjjhZ8rzNJys9QyDk/vftQDT/7/e/Gz4eR//FK8+qiHI2QbXHn
         ESfvcKHeEbMI0lBN/eqqdNFBtK3QaWr9owiNp/GCXZtKPbO6jW1xCvMU3K2zBLP4O5fv
         V3Qg==
X-Gm-Message-State: AMke39nfiIEqjUuztkjA/VJOnCctyaLNgzofJg4PjChfs1UhGh/+PRdzlGcvwsJLS8WY6w==
X-Received: by 10.84.253.15 with SMTP id z15mr25606464pll.142.1489149827217;
        Fri, 10 Mar 2017 04:43:47 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id p129sm18599484pfp.118.2017.03.10.04.43.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 04:43:46 -0800 (PST)
Date: Fri, 10 Mar 2017 18:12:31 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: abbotti@mev.co.uk
Cc: hsweeten@visionengravers.com, gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: comedi: amplc_pci224: Convert macro GAT_CONFIG to
 static inline function
Message-ID: <20170310124231.GA24231@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Convert macro GAT_CONFIG to static inline function as static inline
functions are preferred over macros. This change is possible since the
arguments at all call sites have the same type.

This was done using Coccinelle:

@r@
expression e;
@@
- #define GAT_CONFIG(chan, src) e
+ static inline unsigned int pci230_gat_config(unsigned int chan,
+                                              unsigned int src)
+{
+       return ((chan & 3) << 3) | (src & 7);
+}

@r1@
expression dev,reg,chan,src;
@@
-GAT_CONFIG(chan, src)
+pci230_gat_config(chan, src)

Also, the comment describing the macro has been removed manually.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/comedi/drivers/amplc_pci224.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/comedi/drivers/amplc_pci224.c b/drivers/staging/comedi/drivers/amplc_pci224.c
index 2e6decf..46026f5 100644
--- a/drivers/staging/comedi/drivers/amplc_pci224.c
+++ b/drivers/staging/comedi/drivers/amplc_pci224.c
@@ -216,8 +216,12 @@
 #define GAT_GND		1	/* GND (i.e. disabled) */
 #define GAT_EXT		2	/* reserved (external gate input) */
 #define GAT_NOUTNM2	3	/* inverted output of channel-2 modulo total */
-/* Macro to construct gate input configuration register value. */
-#define GAT_CONFIG(chan, src)	((((chan) & 3) << 3) | ((src) & 7))
+
+static inline unsigned int pci230_gat_config(unsigned int chan,
+					     unsigned int src)
+{
+	return ((chan & 3) << 3) | (src & 7);
+}
 
 /*
  * Summary of CLK_OUTNM1 and GAT_NOUTNM2 connections for PCI224 and PCI234:
@@ -817,10 +821,12 @@ static void pci224_ao_start_pacer(struct comedi_device *dev,
 	 * source.
 	 */
 	/* Make sure Z2-0 is gated on.  */
-	outb(GAT_CONFIG(0, GAT_VCC), devpriv->iobase1 + PCI224_ZGAT_SCE);
+	outb(pci230_gat_config(0, GAT_VCC),
+	     devpriv->iobase1 + PCI224_ZGAT_SCE);
 	/* Cascading with Z2-2. */
 	/* Make sure Z2-2 is gated on.  */
-	outb(GAT_CONFIG(2, GAT_VCC), devpriv->iobase1 + PCI224_ZGAT_SCE);
+	outb(pci230_gat_config(2, GAT_VCC),
+	     devpriv->iobase1 + PCI224_ZGAT_SCE);
 	/* Z2-2 needs 10 MHz clock. */
 	outb(CLK_CONFIG(2, CLK_10MHZ), devpriv->iobase1 + PCI224_ZCLK_SCE);
 	/* Z2-0 is clocked from Z2-2's output. */
-- 
2.7.4


