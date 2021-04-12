X-GM-THRID: 6950264682447896576
X-Received: by 2002:a25:d8c:: with SMTP id 134mr26457639ybn.464.1618234599306;
        Mon, 12 Apr 2021 06:36:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6902:702:: with SMTP id k2ls7466991ybt.2.gmail; Mon, 12
 Apr 2021 06:36:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw4Xacj76nYdb/7bFjLu5DSsbqHKzx6LisMErpw/YsvhcILp4CCjGi+Z2qRA5k/KFZy6lLz
X-Received: by 2002:a25:2cd8:: with SMTP id s207mr32162466ybs.87.1618234598292;
        Mon, 12 Apr 2021 06:36:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618234598; cv=none;
        d=google.com; s=arc-20160816;
        b=HSQXzF3ERmMPj/kxPnsfdlLw2LfuF/RdBJBCTRFiH+lJXzxahB3dHxfKKVxoANakGs
         J4sZxSXbexbqY0YrcnH1yJaPpaWD5cpGp/iWnvoCmtf2f47cK8FJI0RcNGoiNvvww/NY
         KML3UJ1zbXzuyI1sPqlO3tkeHrtAqCTks41yoyOVxssZcJSFp2wuI730xI1F4ZaSM93C
         I4G3IkJYazpXJws4ksZbTEC51lgMEsnHwWcfGWbhMR86rb2HOHPDq77hMbkXOOGdxU4y
         hKB00uyhRR/Xq15B1y8W9zMJCKk+5gfA3M4ByJpiX1EbW7nruRFX2eV9Asg9uiU5jCpc
         qvgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=HFLBwpH7bnJqRpBXV3LZM+eIf2wqGdsU526G+Z9OgrU=;
        b=ZEBARPViTqZ6LmJHtSad4XqJRnAFHdTnlXHJmwTofq2cTQ06GLN42xkzISVz8y/oW2
         mqOcXAj0KXo7KBv/T0qhGEb2hldkPikiO4OAWxROJj76mPvciDQ7aFOrj8sJVfdPYET2
         1jjhK66IDnlvw7jl+zoeZ9OCuhxm6jDgwdbQabMTYYTttEPs6MMdaTOzqldIW25p2g6B
         lIcoRSc3N2TyEsKxepsuJKDnOaHnof9iIyAv2rDdTbZrl6shLFBsreq9sk+sEpZ8YzFq
         Ot/hu4JAG7cZeQI0Ar16HV1mpBGhPkh0dIhshD88fUn2ew7DeEle3Vfp0CUP9rTO6Jx8
         lKwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XYLX8Shi;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f32 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qv1-xf32.google.com (mail-qv1-xf32.google.com. [2607:f8b0:4864:20::f32])
        by gmr-mx.google.com with ESMTPS id h188si442497ybh.5.2021.04.12.06.36.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 06:36:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f32 as permitted sender) client-ip=2607:f8b0:4864:20::f32;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XYLX8Shi;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f32 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qv1-xf32.google.com with SMTP id i9so6035152qvo.3
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 06:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HFLBwpH7bnJqRpBXV3LZM+eIf2wqGdsU526G+Z9OgrU=;
        b=XYLX8Shi4RLk9DI1jD3w47/7MIzpiCqHhzNKrsRsHFhrOJUs5vRtrHUcsOdB62p685
         71OM0XXU3JHwK6+0c6TP0I7twL1HiKLVTPK0mx+vJgq4K1P2urXIy7l+26wPMzIbZJgQ
         lNiCD7jlSiPq5AFhqgiXAzIzNaN7zYyNXsYI1dg7o8EP0hLNFwxTyUVrK1M34G9IiiXU
         wiS14CpnmH88v0InxYj9Vg6Fy3wEOqXj2qeb5vPpE1m+XIO4o4NBMlxaJq4uUccjWOfW
         Xe89ZEZ4gqLuGtU/7R3cvyTq1GTinSjYfX37pje+XWF3KRDp2HZGFN5bZvizL2Yxu/YL
         F/JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HFLBwpH7bnJqRpBXV3LZM+eIf2wqGdsU526G+Z9OgrU=;
        b=WbtE/vkuN9n+UfJArZ5NRADSx6B7X74qeBhNgLlTSEEChgGotpUs6D2M2iodr3s2ke
         iU+5NW3hdwH50nG7lsD1Gok646Dh1uvNxvXn/JNI9Cf8q5Y5nvQ4P+ZV4zHS5z2evuuT
         +4ahocmu2tDD2kVl1gs3mzFNMQ/nIk6FYNMJdXUy7jnh6sDbw9aetGBhSp3HGAfTj5Dj
         fPNV9RYK6oVl2/dVQokVUuy1wWPg266x+A7JTal4I5xz28nPDrf2uGqi58iPL+1ibFli
         k46wlaPs9jkXy+XSEZbmNJCALNq4xCIWJ0c2AcrhBg8rOq3oHp+Uuv6AAPSM6lZ/1ICR
         ixgA==
X-Gm-Message-State: AOAM532jkNeObzvPibN8pVne9ub6V1ktd4Y4eQYns4ExTO4SnncNYy5L
	2IOaGQzS8UbVCmA1q8u5KKadbefb7gPFJ+Na
X-Received: by 2002:a0c:fc46:: with SMTP id w6mr9852472qvp.0.1618234597739;
        Mon, 12 Apr 2021 06:36:37 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([2001:1284:f016:a037:476a:dfcd:f18f:9ad5])
        by smtp.gmail.com with ESMTPSA id b15sm3419566qtg.82.2021.04.12.06.36.36
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Mon, 12 Apr 2021 06:36:37 -0700 (PDT)
Date: Mon, 12 Apr 2021 10:36:34 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: omap4iss: Replace macro function by static
 inline function in file iss_csi2.c
Message-ID: <20210412133634.GA1791@focaruja>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace macro function by static inline function.
Issue suggested by Julia.

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---
 drivers/staging/media/omap4iss/iss_csi2.c | 49 ++++++++++++++++---------------
 1 file changed, 26 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss_csi2.c b/drivers/staging/media/omap4iss/iss_csi2.c
index a6dc2d2..cbeba44 100644
--- a/drivers/staging/media/omap4iss/iss_csi2.c
+++ b/drivers/staging/media/omap4iss/iss_csi2.c
@@ -597,9 +597,12 @@ static int csi2_configure(struct iss_csi2_device *csi2)
 /*
  * csi2_print_status - Prints CSI2 debug information.
  */
-#define CSI2_PRINT_REGISTER(iss, regs, name)\
-	dev_dbg(iss->dev, "###CSI2 " #name "=0x%08x\n", \
-		iss_reg_read(iss, regs, CSI2_##name))
+static inline csi2_print_register(iss, regs, name)
+{
+	dev_dbg(iss->dev, "###CSI2 " #name "=0x%08x\n",
+		iss_reg_read(iss, regs, CSI2_##name));
+}
+
 
 static void csi2_print_status(struct iss_csi2_device *csi2)
 {
@@ -610,26 +613,26 @@ static void csi2_print_status(struct iss_csi2_device *csi2)
 
 	dev_dbg(iss->dev, "-------------CSI2 Register dump-------------\n");
 
-	CSI2_PRINT_REGISTER(iss, csi2->regs1, SYSCONFIG);
-	CSI2_PRINT_REGISTER(iss, csi2->regs1, SYSSTATUS);
-	CSI2_PRINT_REGISTER(iss, csi2->regs1, IRQENABLE);
-	CSI2_PRINT_REGISTER(iss, csi2->regs1, IRQSTATUS);
-	CSI2_PRINT_REGISTER(iss, csi2->regs1, CTRL);
-	CSI2_PRINT_REGISTER(iss, csi2->regs1, DBG_H);
-	CSI2_PRINT_REGISTER(iss, csi2->regs1, COMPLEXIO_CFG);
-	CSI2_PRINT_REGISTER(iss, csi2->regs1, COMPLEXIO_IRQSTATUS);
-	CSI2_PRINT_REGISTER(iss, csi2->regs1, SHORT_PACKET);
-	CSI2_PRINT_REGISTER(iss, csi2->regs1, COMPLEXIO_IRQENABLE);
-	CSI2_PRINT_REGISTER(iss, csi2->regs1, DBG_P);
-	CSI2_PRINT_REGISTER(iss, csi2->regs1, TIMING);
-	CSI2_PRINT_REGISTER(iss, csi2->regs1, CTX_CTRL1(0));
-	CSI2_PRINT_REGISTER(iss, csi2->regs1, CTX_CTRL2(0));
-	CSI2_PRINT_REGISTER(iss, csi2->regs1, CTX_DAT_OFST(0));
-	CSI2_PRINT_REGISTER(iss, csi2->regs1, CTX_PING_ADDR(0));
-	CSI2_PRINT_REGISTER(iss, csi2->regs1, CTX_PONG_ADDR(0));
-	CSI2_PRINT_REGISTER(iss, csi2->regs1, CTX_IRQENABLE(0));
-	CSI2_PRINT_REGISTER(iss, csi2->regs1, CTX_IRQSTATUS(0));
-	CSI2_PRINT_REGISTER(iss, csi2->regs1, CTX_CTRL3(0));
+	csi2_print_register(iss, csi2->regs1, SYSCONFIG);
+	csi2_print_register(iss, csi2->regs1, SYSSTATUS);
+	csi2_print_register(iss, csi2->regs1, IRQENABLE);
+	csi2_print_register(iss, csi2->regs1, IRQSTATUS);
+	csi2_print_register(iss, csi2->regs1, CTRL);
+	csi2_print_register(iss, csi2->regs1, DBG_H);
+	csi2_print_register(iss, csi2->regs1, COMPLEXIO_CFG);
+	csi2_print_register(iss, csi2->regs1, COMPLEXIO_IRQSTATUS);
+	csi2_print_register(iss, csi2->regs1, SHORT_PACKET);
+	csi2_print_register(iss, csi2->regs1, COMPLEXIO_IRQENABLE);
+	csi2_print_register(iss, csi2->regs1, DBG_P);
+	csi2_print_register(iss, csi2->regs1, TIMING);
+	csi2_print_register(iss, csi2->regs1, CTX_CTRL1(0));
+	csi2_print_register(iss, csi2->regs1, CTX_CTRL2(0));
+	csi2_print_register(iss, csi2->regs1, CTX_DAT_OFST(0));
+	csi2_print_register(iss, csi2->regs1, CTX_PING_ADDR(0));
+	csi2_print_register(iss, csi2->regs1, CTX_PONG_ADDR(0));
+	csi2_print_register(iss, csi2->regs1, CTX_IRQENABLE(0));
+	csi2_print_register(iss, csi2->regs1, CTX_IRQSTATUS(0));
+	csi2_print_register(iss, csi2->regs1, CTX_CTRL3(0));
 
 	dev_dbg(iss->dev, "--------------------------------------------\n");
 }
-- 
2.7.4


