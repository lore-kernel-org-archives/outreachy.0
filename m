X-GM-THRID: 6950254560281624576
X-Received: by 2002:a5d:9e09:: with SMTP id h9mr23678236ioh.178.1618232242674;
        Mon, 12 Apr 2021 05:57:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:9acb:: with SMTP id x11ls2637530ion.10.gmail; Mon, 12
 Apr 2021 05:57:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxY2OGhwwPDLvjic52o7aelimh5nTF/tk0Cl8c2CnJQzsuaHw2GliI9oF7/r2n00W5bRJFY
X-Received: by 2002:a05:6602:2156:: with SMTP id y22mr23068694ioy.10.1618232241914;
        Mon, 12 Apr 2021 05:57:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618232241; cv=none;
        d=google.com; s=arc-20160816;
        b=ZHHkyUgD4ulzvjCVZHne9pH7AdPLNKqM3lwAifkGONcWtWVArQce1o+RZSi0qbM22f
         c3ALh8fJZi+KejNL33ua+0kxAG1POHKuDqOCdB0sTAF4M5bu9TJ3HaER0WzQ+lX7CUrj
         ok32j1ZPKUfQLnkJTHUYk8zCq7Rxzqzrd7Xju39Q0d5df9o+W0emHs/WvO4Rfdy0rjq4
         CxsIlnsCjN9i6u13sXIGO5dlSpHouDW4T27dbW7ehhp1eJTom3IwQKLJZnqgFms+08r/
         sQljcJHEvcsq3Yd+EUnYuBFlqVHEF3jSI7byUmIPLmLr8ueTgG8HbW86LnbtOW8dUchf
         0vEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=j5UqGVDciIGTz6tpsPLFlcyTVvlYKiYpvtIE967eU5o=;
        b=rxwEhODXOOMq6GsUDYFtIwlcFmYGdUD7v1jLpkLkgmdBRn8u1Bt4QAqqCoosJAjQba
         pXR1Hzb5IbNP1DtsNSOwJAdR+vtHKl9yrhgDihpGAFFrAVtalWj7uwrJQx9fuSo3DThz
         6Zrbt8QPhaY8490goLSHkkOND/MQrpigD/GpwuUi7nnf8FKY5Rs3JHyG3uPnjb55jSKj
         NbC9sni09i+4VOr2J2vHJQc0a3HdeAwtzy/1Gv4UP1gz/GSbACvjvvYmD747BeDMxuMH
         i21J6nyUk7m/SGrg9SY97TvQzrZ2io15L60gbbLKrwwKNpy3lZElMvmagq5PltWkt1If
         2Y1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HZj3x1Xr;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::829 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com. [2607:f8b0:4864:20::829])
        by gmr-mx.google.com with ESMTPS id x7si418167iow.2.2021.04.12.05.57.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 05:57:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::829 as permitted sender) client-ip=2607:f8b0:4864:20::829;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HZj3x1Xr;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::829 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x829.google.com with SMTP id h7so9775801qtx.3
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 05:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=j5UqGVDciIGTz6tpsPLFlcyTVvlYKiYpvtIE967eU5o=;
        b=HZj3x1XrBIJ7XpFd3Aea1O3t3LilsmXyxBZ85pZfAUJN1Ba/dGPYQL5dPPPbOrtzzB
         e/tpVHM8Rhfe8v29dKMotESmdcUegvEFNmhVqZYnsBhCsaDvlOyUjTQKGXQhr4rNR9Rt
         PMDJkHP5Fqd6hU8TGVftW2dcAdQ1sJEaeUV1h1nhfag4VlxvtD/NYneC4N7ZQTRCjfTB
         NTjn2pZO/heL5PtJCLMstZHdJf79G4zsZzRx4Iv1QTfT7GNvpkzZut8mFVHBnDsIk7g9
         EdByLZUm3/EPXm+0C+GbcGKtI/2QItqYRq3Ug01ShLqcYk66s3g9EIw6XLytuu/edp8W
         muRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=j5UqGVDciIGTz6tpsPLFlcyTVvlYKiYpvtIE967eU5o=;
        b=bpKznP/1CeBsBhsEdYHyg8LAIdr+hkveaR8dQvyhNKq/YfXoI34S/14CAElkwWnWEK
         DMbcMIGTtPKEH+o69hBUYXmEZwdEetz77B5eL4LeFvWUFLeyBQ2IJGebLZV3TFEFJHRP
         KNerSzxEFUvEzRDN9DOKgsFxHQ9v1Y82l7xt094gh1+ewFb+KEvs9OygFhPtDh/8zJpe
         yOFiy0vbMhRbFGAoRZyNe3U5A+bmURp8DgvF/9xyTv9XTfHCO3jXCOthF4FFozasjkt/
         Fz6z9Ux5pQ+x0ENshgHdq1RsN+wiPfMJiwe1N7s28zqWJ1VeziHuZY0NmiMU2H9jPSMT
         ziGQ==
X-Gm-Message-State: AOAM531hmhNRX1fL6qP+eXqA0UZ0F7n84s9dZ7TQHjoJP+fSIztFRU3y
	iUmloz5qqQ+3XIbm6fbBtfI/i5uozhcNQtHO
X-Received: by 2002:a05:622a:2c4:: with SMTP id a4mr25351604qtx.145.1618232241272;
        Mon, 12 Apr 2021 05:57:21 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([2001:1284:f016:a037:476a:dfcd:f18f:9ad5])
        by smtp.gmail.com with ESMTPSA id 1sm7983909qtu.96.2021.04.12.05.57.20
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Mon, 12 Apr 2021 05:57:21 -0700 (PDT)
Date: Mon, 12 Apr 2021 09:57:18 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [Outreachy kernel][PATCH 3/4 v2] staging: media: omap4iss: Replace
 macro function by static inline function in file iss_ipipeif.c
Message-ID: <2907e1496de66f59236ee6ebc84292b1454926d3.1618231618.git.alinesantanacordeiro@gmail.com>
References: <cover.1618231618.git.alinesantanacordeiro@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618231618.git.alinesantanacordeiro@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace macro function by static inline function.
Issue suggested by Julia.

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---

Changes since v1:
 - Insert file path in commit message

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


