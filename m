X-GM-THRID: 6331000982206414848
X-Received: by 10.157.58.34 with SMTP id j31mr447755otc.129.1474051033995;
        Fri, 16 Sep 2016 11:37:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.41.80 with SMTP id p77ls1336144itp.4.gmail; Fri, 16 Sep
 2016 11:37:13 -0700 (PDT)
X-Received: by 10.66.88.234 with SMTP id bj10mr10660589pab.36.1474051033208;
        Fri, 16 Sep 2016 11:37:13 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 142si4648994pfx.2.2016.09.16.11.37.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 11:37:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id pp5so3759181pac.2
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 11:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=w/7/emT1TkHi7U80FkwyMGhREsZxzLEz9sKUXLwjYGc=;
        b=W8Rx6t90zYvW6jgnap7a2kJSxWZi0Fi3ELd8Jx9r5AMWgBRhMUaz0GOEm6uFzdYVx6
         9Rx5rnco8Co2BOs3CSd2u8nhZzEzizmXcMpysZ8JGOg+cJDa3g46PrPWya9ADGZTxHag
         wj2hQ0RbkokJdhFIgFADOFfLFb2Vrtl+sOEy3GOxVCdorW3nCT/06Fud8EimWNc37XRs
         LJroPb2tAVh6o3gsQpvCaEVSpeHyS17ltfBdZz5LL7xsguVWmTcrY1o+ONuipos4LC8y
         g0Drx57Hs71A2gte/ECyu/yx2TTG9UpjMk6uhHRK4C/K2/XA/xBZjIuLwtJLwSbHFnPf
         W7wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=w/7/emT1TkHi7U80FkwyMGhREsZxzLEz9sKUXLwjYGc=;
        b=RviFiIxGLrLQSo0Q4iRUHhcmumqz/rCkxjf7iwVNSYaw/2RLVjd0cqngFxnME28wob
         WSTeozxmnanZ5y7rhruxzZHIkR4tK9r6RTOwMU/KiFSyTU67JU2QNShnwIDYJHL3bljl
         1cZrEz1obQBfCL7d6l1YUkIc57Y+zdRjua9aQMmcJtOZcpJ5KO0WvKobJuzyNt3QWZrF
         NGiJTIrynVNoSOUwCOEzBdFhijhJ7sFbnknWU5ldqT2DycFX9O5jMi4H4k0tiNvFKDOC
         6GzQ2FLLjOa5dFw6nhHTJdC6LG4YXTqtACSdqv9MArsLxd++z045eiyX5DUqdhlCx++H
         7Fag==
X-Gm-Message-State: AE9vXwObNdAJ47zh1CSDF+CquJa1c+rjGjppnoMcFxqe9nQf8fkIIZNgRK1SFLT9+RyvYg==
X-Received: by 10.66.161.195 with SMTP id xu3mr25227606pab.68.1474051033018;
        Fri, 16 Sep 2016 11:37:13 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.244.96])
        by smtp.gmail.com with ESMTPSA id 27sm12936211pfr.29.2016.09.16.11.37.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 11:37:12 -0700 (PDT)
Date: Sat, 17 Sep 2016 00:06:58 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: media: davinci_vpfe: Use BIT macro instead of left
 shifting 1
Message-ID: <20160916183658.GA26442@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces left shifts on 1 with the BIT(x) macro, as suggested
by checkpatch.pl.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 .../staging/media/davinci_vpfe/davinci_vpfe_user.h | 36 +++++++++++-----------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
index f4f35c9..d3f34f9 100644
--- a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
+++ b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
@@ -544,41 +544,41 @@ struct vpfe_isif_raw_config {
 /* IPIPE module configurations */
 
 /* IPIPE input configuration */
-#define VPFE_IPIPE_INPUT_CONFIG		(1 << 0)
+#define VPFE_IPIPE_INPUT_CONFIG		BIT(0)
 /* LUT based Defect Pixel Correction */
-#define VPFE_IPIPE_LUTDPC		(1 << 1)
+#define VPFE_IPIPE_LUTDPC		BIT(1)
 /* On the fly (OTF) Defect Pixel Correction */
-#define VPFE_IPIPE_OTFDPC		(1 << 2)
+#define VPFE_IPIPE_OTFDPC		BIT(2)
 /* Noise Filter - 1 */
-#define VPFE_IPIPE_NF1			(1 << 3)
+#define VPFE_IPIPE_NF1			BIT(3)
 /* Noise Filter - 2 */
-#define VPFE_IPIPE_NF2			(1 << 4)
+#define VPFE_IPIPE_NF2			BIT(4)
 /* White Balance.  Also a control ID */
-#define VPFE_IPIPE_WB			(1 << 5)
+#define VPFE_IPIPE_WB			BIT(5)
 /* 1st RGB to RBG Blend module */
-#define VPFE_IPIPE_RGB2RGB_1		(1 << 6)
+#define VPFE_IPIPE_RGB2RGB_1		BIT(6)
 /* 2nd RGB to RBG Blend module */
-#define VPFE_IPIPE_RGB2RGB_2		(1 << 7)
+#define VPFE_IPIPE_RGB2RGB_2		BIT(7)
 /* Gamma Correction */
-#define VPFE_IPIPE_GAMMA		(1 << 8)
+#define VPFE_IPIPE_GAMMA		BIT(8)
 /* 3D LUT color conversion */
-#define VPFE_IPIPE_3D_LUT		(1 << 9)
+#define VPFE_IPIPE_3D_LUT		BIT(9)
 /* RGB to YCbCr module */
-#define VPFE_IPIPE_RGB2YUV		(1 << 10)
+#define VPFE_IPIPE_RGB2YUV		BIT(10)
 /* YUV 422 conversion module */
-#define VPFE_IPIPE_YUV422_CONV		(1 << 11)
+#define VPFE_IPIPE_YUV422_CONV		BIT(11)
 /* Edge Enhancement */
-#define VPFE_IPIPE_YEE			(1 << 12)
+#define VPFE_IPIPE_YEE			BIT(12)
 /* Green Imbalance Correction */
-#define VPFE_IPIPE_GIC			(1 << 13)
+#define VPFE_IPIPE_GIC			BIT(13)
 /* CFA Interpolation */
-#define VPFE_IPIPE_CFA			(1 << 14)
+#define VPFE_IPIPE_CFA			BIT(14)
 /* Chroma Artifact Reduction */
-#define VPFE_IPIPE_CAR			(1 << 15)
+#define VPFE_IPIPE_CAR			BIT(15)
 /* Chroma Gain Suppression */
-#define VPFE_IPIPE_CGS			(1 << 16)
+#define VPFE_IPIPE_CGS			BIT(16)
 /* Global brightness and contrast control */
-#define VPFE_IPIPE_GBCE			(1 << 17)
+#define VPFE_IPIPE_GBCE			BIT(17)
 
 #define VPFE_IPIPE_MAX_MODULES		18
 
-- 
2.7.4


