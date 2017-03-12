X-GM-THRID: 6395849810528698368
X-Received: by 10.157.12.189 with SMTP id b58mr12428418otb.41.1489332815618;
        Sun, 12 Mar 2017 08:33:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.4 with SMTP id w4ls921172otb.8.gmail; Sun, 12 Mar 2017
 08:33:35 -0700 (PDT)
X-Received: by 10.157.59.230 with SMTP id k93mr12768496otc.3.1489332815350;
        Sun, 12 Mar 2017 08:33:35 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id u12si2733162pfd.3.2017.03.12.08.33.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 08:33:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id g2so11025924pge.2
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 08:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=f0zxgk+b+RNpt57rgN1Vb3qV0I9gVMxAObL+KnB+/mw=;
        b=F6Q7YM6J0DuOdBY6tEaFcAlYbjKWjTH7ugPKT9Et/H332MPgBEcCK0XmbJcA4iVAeF
         zw73MNmOs1yGKp5Ukii6GR/7czgV3gztDRU0Fni2bg8+cxkDdgya0FzpQboaFIblNNeJ
         fTYqro/J2+VIOeAOar+KEEfvC8AK4C3BVQS0N/3x9xZb11tDBnepnzyRFWTl6PvxZev0
         f02d88o9O4LSFJcsK7d3jksaj+idPNekt2eHlmFHANvzoYFRpnHewfhiY65L0H3CYNi6
         xKF8HT863dDwGwMWOW0sJXzOmDQHXhCdD5JMIb/i5RNq7ezqLRl3BL1SBmgGR/rTPNJT
         XYTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=f0zxgk+b+RNpt57rgN1Vb3qV0I9gVMxAObL+KnB+/mw=;
        b=ZlqyZ9yZ0lEF+jg1U9j4Vx9rfE+Mp6G/SHq3IYKD9XEZkFx5nMHGFYeRxAewv5shWD
         8Kqrf65QgL783FrSptpexBgCur7Dy+dj1bl3xu5MOwryJCdTB/j5pr/iTDz0Mg5VbLkv
         nSNcab+9f/+gongtYMMbWEkzjJnTpOUBp7MpOjLPHZOzYk8bY/wlXY4vAXdPb4SnY7BA
         IV/3m+HtMupLtjA/tAGZuJ7qR3E5YEfZzrRGXoPXnBUX8YEB01jtahdNimpT5tDhr+xM
         zRpXcqZ8h4Fx2aHJ48iWcciF+xI7f5WO/o7IdNTAlO4WJ1JnwOnbKuHv3HmZNAUQT/i8
         SzqQ==
X-Gm-Message-State: AMke39nPoAIDmQLsQTSl1MPHnPrVcbU6KlJBrhQDNTs09YxS7uoPpnA1NnDjaHVaPzPLxw==
X-Received: by 10.99.95.69 with SMTP id t66mr31999956pgb.0.1489332815037;
        Sun, 12 Mar 2017 08:33:35 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id i15sm28957886pfj.0.2017.03.12.08.33.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 08:33:33 -0700 (PDT)
Date: Sun, 12 Mar 2017 21:03:30 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: abbotti@mev.co.uk
Cc: hsweeten@visionengravers.com, gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: comedi: amplc_pci224: Convert macro GAT_CONFIG
 to static inline function
Message-ID: <20170312153329.GA20729@singhal-Inspiron-5558>
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
+ static inline unsigned int pci224_gat_config(unsigned int chan,
+                                              unsigned int src)
+{
+       return ((chan & 3) << 3) | (src & 7);
+}

@r1@
expression dev,reg,chan,src;
@@
-GAT_CONFIG(chan, src)
+pci224_gat_config(chan, src)

Also, the comment describing the macro has been removed manually.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---

 v2:
   -Change the name of static inline function
   -put some code from 2 line to 1 line

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


