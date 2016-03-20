X-GM-THRID: 6263480963249995776
X-Received: by 10.129.158.137 with SMTP id v131mr21339531ywg.9.1458501389873;
        Sun, 20 Mar 2016 12:16:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.29.194 with SMTP id m2ls1535997obh.0.gmail; Sun, 20 Mar
 2016 12:16:29 -0700 (PDT)
X-Received: by 10.157.15.236 with SMTP id m41mr1006068otd.40.1458501389392;
        Sun, 20 Mar 2016 12:16:29 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id h69si3015113pfj.0.2016.03.20.12.16.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 12:16:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q129so26883355pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 12:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rtERVxx0/ePg/xzKRIc0deRPmir48WsB53Hy8KRwJh8=;
        b=1ETGgIP6Ty1CfLRgpz5FhuJkq1MCbu5lcMYspIlgsv4dzqfeLWskz2f1BpOC3pFaHI
         z2710fXUIE6r2LS1OZEXS8QKnO3onwhKCTX+bUmPtJVFC/NQus+8E0ChRvLQaA00I+mP
         prhQOk4arvYSYfW2J5U7EsCn5Lh97+T+77I0ICKZ5Fq7te8TXVYbfbuhMpaKE7Obzozt
         xx3JkYVgYv9SWlAO1LD2/7SJ2mX2QKlgYvj//NcAV5dNnPeOKgZC8m/P7Hn7BETFTOq/
         4qkNW6W6L/+ruv46ZW/n8w7byYTxANTIVnZBKU4VKsTN4Fq1EX/0hcgN9hsPtgBPqDGT
         bZ3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rtERVxx0/ePg/xzKRIc0deRPmir48WsB53Hy8KRwJh8=;
        b=IEWV3/nMExkXXjRMGVOKaIpy8dcxAz20Skau2R/BmVaI9E0OjRItjCkvwUMd859kAI
         P93q9b1wA2caC6pdd7FZLQwTMsZeg2OVvnsppwb/4iVjla+2X+yuzxP3DmRk1RdvCn0r
         0gU9X1mapr1UZ2DWwQAglkxO2VKcdOQNTjQL0g321yv54d3tGCI6ybPsq87rnq+WxQQr
         +MDlcOEp0etoD61m+Na+il0LkExVwGDusxAiU1TmrSGQs/1vMBB08/yCl/zQc9AC7Frb
         mSeFLv29f02wu3vy+aZ2FxQUrvO/sMF0iPf3DpMg5MBlPJj/HZFW+8t6FjKVtWxXC3jc
         NFEg==
X-Gm-Message-State: AD7BkJL8Y1yTEgWbrpvGyVE9keD9zWQB1WIe8GRsDvc/+0yAsDxVgTGGUrFpIktbvSyjLQ==
X-Received: by 10.98.64.132 with SMTP id f4mr26213218pfd.146.1458501389219;
        Sun, 20 Mar 2016 12:16:29 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id h2sm35031356pfd.91.2016.03.20.12.16.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 12:16:28 -0700 (PDT)
Date: Mon, 21 Mar 2016 00:46:26 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/4] staging: comedi: amplc_pci224: Convert macro
 GAT_CONFIG to static inline function
Message-ID: <3fb9a7d5bc5bd1da65837facf3d03eec87078423.1458500647.git.bhaktipriya96@gmail.com>
References: <cover.1458500647.git.bhaktipriya96@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458500647.git.bhaktipriya96@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Convert macro GAT_CONFIG to static inline function as static inline
functions are preferred over macros. Since every single user of this
macro passes the argument into the outb() function, with
(devpriv->iobase1 + ...) as the address, the two calls have been merged
into one.

This was done using Coccinelle:

@r@
identifier f;
expression e;
@@
- #define GAT_CONFIG(chan, src) e
+ static inline void pci224_gat_config(struct pci224_private *devpriv,
+                                      unsigned int reg, unsigned int chan,
+                                      unsigned int src)
+{
+       outb(((chan & 3) << 3) | (src & 7), devpriv->iobase1 + reg);
+}

@r1@
expression devp,reg,chan,src;
@@
-outb(GAT_CONFIG(chan, src), devp->iobase1 + reg);
+pci224_gat_config(devp, reg, chan, src);

Also, the comment describing the macro has been removed manually.

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v2:
	-Since every single user of this macro passes the argument into
	the outb() function, with (devpriv->iobase1 + ...) as the address,
	the two calls have been merged into one.

 drivers/staging/comedi/drivers/amplc_pci224.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/comedi/drivers/amplc_pci224.c b/drivers/staging/comedi/drivers/amplc_pci224.c
index 5bc1377..5046b94 100644
--- a/drivers/staging/comedi/drivers/amplc_pci224.c
+++ b/drivers/staging/comedi/drivers/amplc_pci224.c
@@ -215,8 +215,12 @@ static inline void pci224_clk_config(struct pci224_private *devpriv,
 #define GAT_GND		1	/* GND (i.e. disabled) */
 #define GAT_EXT		2	/* reserved (external gate input) */
 #define GAT_NOUTNM2	3	/* inverted output of channel-2 modulo total */
-/* Macro to construct gate input configuration register value. */
-#define GAT_CONFIG(chan, src)	((((chan) & 3) << 3) | ((src) & 7))
+static inline void pci224_gat_config(struct pci224_private *devpriv,
+				     unsigned int reg, unsigned int chan,
+				     unsigned int src)
+{
+	outb(((chan & 3) << 3) | (src & 7), devpriv->iobase1 + reg);
+}

 /*
  * Summary of CLK_OUTNM1 and GAT_NOUTNM2 connections for PCI224 and PCI234:
@@ -816,10 +820,10 @@ static void pci224_ao_start_pacer(struct comedi_device *dev,
 	 * source.
 	 */
 	/* Make sure Z2-0 is gated on.  */
-	outb(GAT_CONFIG(0, GAT_VCC), devpriv->iobase1 + PCI224_ZGAT_SCE);
+	pci224_gat_config(devpriv, PCI224_ZGAT_SCE, 0, GAT_VCC);
 	/* Cascading with Z2-2. */
 	/* Make sure Z2-2 is gated on.  */
-	outb(GAT_CONFIG(2, GAT_VCC), devpriv->iobase1 + PCI224_ZGAT_SCE);
+	pci224_gat_config(devpriv, PCI224_ZGAT_SCE, 2, GAT_VCC);
 	/* Z2-2 needs 10 MHz clock. */
 	pci224_clk_config(devpriv, PCI224_ZCLK_SCE, 2, CLK_10MHZ);
 	/* Z2-0 is clocked from Z2-2's output. */
--
2.1.4


