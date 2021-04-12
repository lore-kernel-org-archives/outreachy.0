X-GM-THRID: 6950248228265656320
X-Received: by 2002:a6b:9156:: with SMTP id t83mr13504821iod.62.1618230768281;
        Mon, 12 Apr 2021 05:32:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6e02:4a3:: with SMTP id e3ls701676ils.5.gmail; Mon, 12
 Apr 2021 05:32:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxPJAga6YyyZzjSgXL2coNgjjJNFx48QEeYjpyF9PcvAjwcvL0YSbgd7qHjSxAAvrrYvqHv
X-Received: by 2002:a05:6e02:b4a:: with SMTP id f10mr22471148ilu.278.1618230766961;
        Mon, 12 Apr 2021 05:32:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618230766; cv=none;
        d=google.com; s=arc-20160816;
        b=s9Aedv6Lb5XNpVD1bAbMPFQXs8c3+CkgH1D5M8+oG/8V57V3eqNKstmpVkuALqOXQb
         pYmMQajEwY41VsOpt18J5JnpdEeQPeV3DsnjIPQhwovbo1fqbhmqvyr1NvYwrJkOfmjZ
         91+oppo3lkR1EUMuQz9kz6EKw3Zmqxwu0OT1EJZhIjrTB6XwqvyVuUTJYGvzS/VJnt6V
         8qBDp4w+YaZbpuwUN74vssCA97PovCZ8HJ4J8Td2i6549Mem/LNaM9PC0pq0rglQw/oB
         QKNuWz0m30McTpjIN3z0qBjQqIyAR7Ugeld/u+AEMAq7Fm7uj/YqLDTjzvd5eDf8eUFv
         oELA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ufJcji2+m5srymBQPjBrGfe67cUzEZqDOtn26wg7648=;
        b=TkV5v52W4uBQDmwJG5rvSmDjqPpA0D9PBZArXRtxGuMekfqHK4D7v++/kMQbWXJnf7
         AV2L4fR5cFfmtTMnIgSYNyuLIV8W1V3h4/nyQEj7hX5zpUi6dv4y5cewaQhYOErw6b8c
         LGIPsBGe+9JLa0AJyG2tyZrvYaPOwEaylMEz5x1bOD1Luo9Iyo8rhCe632RRy2jypS2D
         GgZRYKesROQkpspqfcHlklg1jGt603eG17JLMmjegsvEN5IGameF9w+yQCPQAco8MPBN
         V8Dn0nptIcTuGwhHA57QRjUDFUFBeN2g8gz3FCPlSE3/RF3jcCgLWskJire14xzNGPhf
         Q1Wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qmZowgBM;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com. [2607:f8b0:4864:20::729])
        by gmr-mx.google.com with ESMTPS id y8si707453iom.1.2021.04.12.05.32.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 05:32:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) client-ip=2607:f8b0:4864:20::729;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qmZowgBM;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x729.google.com with SMTP id o5so13065137qkb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 05:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ufJcji2+m5srymBQPjBrGfe67cUzEZqDOtn26wg7648=;
        b=qmZowgBMDh564wGGBAK1Y1joojizHF7rqrmZftAPLZxtvx27k/0X6Pgut82fixi5cf
         bA9LTq2CbQyy7wM83UFfKezSsxfv+WnJe/VKlPDE19Yes60j8YKthliqDOnVEjMk4bA2
         heb1VIYTXB10TlggpqLE0O6Guif5cScxju6/dRAbnNVIVjggyRh9mMP/7hnBjnEvhc2T
         GASDkr+istx/XQJSrD/Y9BzVq4CUfwoyXq5Wv7l0q66Wk4pb1Qj/M4y0ieDcaxpVtM9Z
         LwgV+O8dqBJkR9OLyxWDW/zZ5A4k6IGVF+j99oWD4KrYc5PAMGLp3LrQDawSSlAlKxdZ
         /GVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ufJcji2+m5srymBQPjBrGfe67cUzEZqDOtn26wg7648=;
        b=dJ7cTyAOZZhh5m2MfTHqDhIW/ezJBDfZMPJd4AfgdTy2ioAjO26gZ5NDiaofPoGH2F
         dNsHUCb+Yu3a2/7TjNA/QGdIfo7soTAzElqFuM9wUr2HVHTj1zUHAA26aWG0dXdP9chY
         hLIaXzgS3m8Pj2LMjjfCOpcb9OrjWvYMd2C4okveaEzlKDyJFX+VzE7BZYj6e6cyuqm5
         4CbX4//NPidnWUEGUliGFBCPo+oUtMdYe94+Sr1oKOUgufOPramxPB74g1CVZeST1waV
         B7nvWs/XFw3SK/NBw9e4+PJrNjEtQbaWyo3dzDp70eSUNW8HquKOE6FxJ6ls6NrKI19Q
         WN9g==
X-Gm-Message-State: AOAM533BR25fEpj2vrUsPdrKSZnEuTfFrRpL8FPCdD6AysTzyAuXBXRY
	csWgKsghulVeKo/rFJ+z+euMGX2gbj25cBUH
X-Received: by 2002:ae9:e015:: with SMTP id m21mr25440661qkk.420.1618230766509;
        Mon, 12 Apr 2021 05:32:46 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([2001:1284:f016:a037:476a:dfcd:f18f:9ad5])
        by smtp.gmail.com with ESMTPSA id f25sm6898173qtm.49.2021.04.12.05.32.45
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Mon, 12 Apr 2021 05:32:46 -0700 (PDT)
Date: Mon, 12 Apr 2021 09:32:43 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [Outreachy kernel][PATCH 3/4] Replace macro function by static
 inline function in file iss_ipipeif.c
Message-ID: <808aaecdd2783cd1c216ba5ca3d592242731e73a.1618230425.git.alinesantanacordeiro@gmail.com>
References: <cover.1618230425.git.alinesantanacordeiro@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618230425.git.alinesantanacordeiro@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace macro function by static inline function.
Issue suggested by Julia.

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---
 drivers/staging/media/omap4iss/iss_ipipeif.c | 62 +++++++++++++++-------------
 1 file changed, 34 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss_ipipeif.c b/drivers/staging/media/omap4iss/iss_ipipeif.c
index c2978d0..3dc98f6 100644
--- a/drivers/staging/media/omap4iss/iss_ipipeif.c
+++ b/drivers/staging/media/omap4iss/iss_ipipeif.c
@@ -34,17 +34,23 @@ static const unsigned int ipipeif_fmts[] = {
  *
  * Also prints other debug information stored in the IPIPEIF module.
  */
-#define IPIPEIF_PRINT_REGISTER(iss, name)\
-	dev_dbg(iss->dev, "###IPIPEIF " #name "=0x%08x\n", \
-		iss_reg_read(iss, OMAP4_ISS_MEM_ISP_IPIPEIF, IPIPEIF_##name))
+static inline ipipeif_print_register(iss, name)
+{
+	dev_dbg(iss->dev, "###IPIPEIF " #name "=0x%08x\n",
+		iss_reg_read(iss, OMAP4_ISS_MEM_ISP_IPIPEIF, IPIPEIF_##name));
+}
 
-#define ISIF_PRINT_REGISTER(iss, name)\
-	dev_dbg(iss->dev, "###ISIF " #name "=0x%08x\n", \
-		iss_reg_read(iss, OMAP4_ISS_MEM_ISP_ISIF, ISIF_##name))
+static inline isif_print_register(iss, name)
+{
+	dev_dbg(iss->dev, "###ISIF " #name "=0x%08x\n",
+		iss_reg_read(iss, OMAP4_ISS_MEM_ISP_ISIF, ISIF_##name));
+}
 
-#define ISP5_PRINT_REGISTER(iss, name)\
-	dev_dbg(iss->dev, "###ISP5 " #name "=0x%08x\n", \
-		iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_##name))
+static inline isp5_print_register(iss, name)
+{
+	dev_dbg(iss->dev, "###ISP5 " #name "=0x%08x\n",
+		iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_##name));
+}
 
 static void ipipeif_print_status(struct iss_ipipeif_device *ipipeif)
 {
@@ -52,25 +58,25 @@ static void ipipeif_print_status(struct iss_ipipeif_device *ipipeif)
 
 	dev_dbg(iss->dev, "-------------IPIPEIF Register dump-------------\n");
 
-	IPIPEIF_PRINT_REGISTER(iss, CFG1);
-	IPIPEIF_PRINT_REGISTER(iss, CFG2);
-
-	ISIF_PRINT_REGISTER(iss, SYNCEN);
-	ISIF_PRINT_REGISTER(iss, CADU);
-	ISIF_PRINT_REGISTER(iss, CADL);
-	ISIF_PRINT_REGISTER(iss, MODESET);
-	ISIF_PRINT_REGISTER(iss, CCOLP);
-	ISIF_PRINT_REGISTER(iss, SPH);
-	ISIF_PRINT_REGISTER(iss, LNH);
-	ISIF_PRINT_REGISTER(iss, LNV);
-	ISIF_PRINT_REGISTER(iss, VDINT(0));
-	ISIF_PRINT_REGISTER(iss, HSIZE);
-
-	ISP5_PRINT_REGISTER(iss, SYSCONFIG);
-	ISP5_PRINT_REGISTER(iss, CTRL);
-	ISP5_PRINT_REGISTER(iss, IRQSTATUS(0));
-	ISP5_PRINT_REGISTER(iss, IRQENABLE_SET(0));
-	ISP5_PRINT_REGISTER(iss, IRQENABLE_CLR(0));
+	ipipeif_print_register(iss, CFG1);
+	ipipeif_print_register(iss, CFG2);
+
+	isif_print_register(iss, SYNCEN);
+	isif_print_register(iss, CADU);
+	isif_print_register(iss, CADL);
+	isif_print_register(iss, MODESET);
+	isif_print_register(iss, CCOLP);
+	isif_print_register(iss, SPH);
+	isif_print_register(iss, LNH);
+	isif_print_register(iss, LNV);
+	isif_print_register(iss, VDINT(0));
+	isif_print_register(iss, HSIZE);
+
+	isp5_print_register(iss, SYSCONFIG);
+	isp5_print_register(iss, CTRL);
+	isp5_print_register(iss, IRQSTATUS(0));
+	isp5_print_register(iss, IRQENABLE_SET(0));
+	isp5_print_register(iss, IRQENABLE_CLR(0));
 
 	dev_dbg(iss->dev, "-----------------------------------------------\n");
 }
-- 
2.7.4


