X-GM-THRID: 6395849810528698368
X-Received: by 10.99.117.70 with SMTP id f6mr13383138pgn.91.1489337748372;
        Sun, 12 Mar 2017 09:55:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.39 with SMTP id 36ls13094407otg.33.gmail; Sun, 12 Mar
 2017 09:55:48 -0700 (PDT)
X-Received: by 10.157.11.109 with SMTP id p42mr13050184otd.14.1489337748004;
        Sun, 12 Mar 2017 09:55:48 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id r66si2706093pfb.7.2017.03.12.09.55.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 09:55:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id o126so16481345pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 09:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Q9MBHhZtgZqHTqLKkChnXz+0DxBnQ67ASY9UHeSYkog=;
        b=JRZwwLHMHtqCConq5USLDdxW4ITP6O7PLds5yGAW4lktaXUQOKOGZYAuczQxWdR6/d
         BALCriQNOzHUOVG8e5olW5VndQfRe2JCWpumezvuS6jT5D5ywePKnjTgPzEpSLs1Cjed
         +qrtVDhSUlvyE2FEcVSWESvACd94RTmbw6pIr/HaMJ8Qe0yGzGFK+bxALtrjod3iYu+B
         WKuDjk7ErZZQC3r4DGLLc6JoqSXmIGr25397CQdKfsJDilc6VaNaUsCxUdHBuya3gt1O
         pXqZ/BFdBwsJqfPOAOKSBTka/2CN8HmLJFr76XiSWjAfJB+H7Rtp1mMaA+7V/INu51GK
         yNog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Q9MBHhZtgZqHTqLKkChnXz+0DxBnQ67ASY9UHeSYkog=;
        b=IiRsv8vIi1Jk9Gd7AMTW+vnKfKcOdeY7SnqJsBktuYKTo+xiQbRTQ2lo0fa+UDQoaW
         6/Avz/Ua/knD5Whsxhuxfjw5EOrVSTlCyvxtrn8L/ILIGxL7Tm3yl0jSt5Y3KmqS9nQs
         fiZDiZljGFPtrZy0GbLNUQ8ry8ta3ZIQvp4Dp4ZVOOxEarMLv7vi/koG2Tl4PG07Axdn
         FH1enzKWF5eqYQyG0CEpfsoqZio3nsPyuoVhiNah8+hKBkDtBTzNo/5d3NSS1ujXb0Nu
         3DGxdEXL+Y04N1nhBfBAvDiWJ9KqEPanWuzqv6nVo85VUtbyR3QETzo9zmkZT8Upncix
         G49A==
X-Gm-Message-State: AMke39lc+240aaR+b84XH1xMyhI7V49ML99P0NKuc+1yN8w3ueMvfS3C3AqfF0dWFVZtRw==
X-Received: by 10.84.245.8 with SMTP id i8mr41565457pll.131.1489337747721;
        Sun, 12 Mar 2017 09:55:47 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l17sm29159388pfg.62.2017.03.12.09.55.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 09:55:46 -0700 (PDT)
Date: Sun, 12 Mar 2017 22:25:42 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: abbotti@mev.co.uk
Cc: hsweeten@visionengravers.com, gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: comedi: amplc_pci224: Convert macro GAT_CONFIG
 to static inline function
Message-ID: <20170312165542.GA26858@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Convert macro GAT_CONFIG to static inline function as static inline
functions are preferred over macros. This change is possible since the
arguments at all call sites have the same type.

The uses were updated with Coccinelle:

@r1@
expression dev,reg,chan,src;
@@
-GAT_CONFIG(chan, src)
+pci224_gat_config(chan, src)

Also, the comment describing the macro has been removed.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 
 v3:
   -Change the commit message.
  
 drivers/staging/comedi/drivers/amplc_pci224.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/comedi/drivers/amplc_pci224.c b/drivers/staging/comedi/drivers/amplc_pci224.c
index 2e6decf..07555cf 100644
--- a/drivers/staging/comedi/drivers/amplc_pci224.c
+++ b/drivers/staging/comedi/drivers/amplc_pci224.c
@@ -216,8 +216,12 @@
 #define GAT_GND		1	/* GND (i.e. disabled) */
 #define GAT_EXT		2	/* reserved (external gate input) */
 #define GAT_NOUTNM2	3	/* inverted output of channel-2 modulo total */
-/* Macro to construct gate input configuration register value. */
-#define GAT_CONFIG(chan, src)	((((chan) & 3) << 3) | ((src) & 7))
+
+static inline unsigned int pci224_gat_config(unsigned int chan,
+					     unsigned int src)
+{
+	return ((chan & 3) << 3) | (src & 7);
+}
 
 /*
  * Summary of CLK_OUTNM1 and GAT_NOUTNM2 connections for PCI224 and PCI234:
@@ -817,10 +821,10 @@ static void pci224_ao_start_pacer(struct comedi_device *dev,
 	 * source.
 	 */
 	/* Make sure Z2-0 is gated on.  */
-	outb(GAT_CONFIG(0, GAT_VCC), devpriv->iobase1 + PCI224_ZGAT_SCE);
+	outb(pci224_gat_config(0, GAT_VCC), devpriv->iobase1 + PCI224_ZGAT_SCE);
 	/* Cascading with Z2-2. */
 	/* Make sure Z2-2 is gated on.  */
-	outb(GAT_CONFIG(2, GAT_VCC), devpriv->iobase1 + PCI224_ZGAT_SCE);
+	outb(pci224_gat_config(2, GAT_VCC), devpriv->iobase1 + PCI224_ZGAT_SCE);
 	/* Z2-2 needs 10 MHz clock. */
 	outb(CLK_CONFIG(2, CLK_10MHZ), devpriv->iobase1 + PCI224_ZCLK_SCE);
 	/* Z2-0 is clocked from Z2-2's output. */
-- 
2.7.4


