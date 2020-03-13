X-GM-THRID: 6803797198848917504
X-Received: by 2002:a0c:9104:: with SMTP id q4mr6045781qvq.61.1584136482856;
        Fri, 13 Mar 2020 14:54:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:a784:: with SMTP id q126ls5630115qke.11.gmail; Fri, 13
 Mar 2020 14:54:41 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvL/WBktqaUqnDk0Gk/6vIUPX3LhR+fuoxKA7HZPaL8hn5REZ2qLME85y2D20tRE+ihWtKG
X-Received: by 2002:a37:66cf:: with SMTP id a198mr15469426qkc.203.1584136481643;
        Fri, 13 Mar 2020 14:54:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584136481; cv=none;
        d=google.com; s=arc-20160816;
        b=SWhEGmebyDCyTIHPuYR2l7ytfAOpssJaM24M04A2r0llvu4PX9kG9pmI8BWzU2rUOh
         HF6m9vB5bp0Fb5i6lbyxb8YrpqtGnJqmbImmTzgnJYH6VGfLbJ9YylayLmcqMykN7H+g
         JhJchp85pChY+UFFUZaxHnDGSnrqb8LFLiBKXqzY4W7UJBj1c2P3xEG3Ra/TiE3/Pp+4
         tpYsi+n7oOnYlIYf/ifiLZtjzaFzmK5x3NwmJR1miX9073vdvUfXCMhf8xnWuLaX0Fyh
         CtIU0qZztwu7m+XdP2Zza/TmQf3hobi2So27ioxjNd8U8TFkPaSC/AKXA7JVCO2RQ86S
         Jv0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=cXP5DdQCpxUnXbLWHin/s+XVDxOSlaFnTt40+Upwp9k=;
        b=n5pXIZgeIQ8GcBUGSIEokskKqcKfpRBfBTO2PNMJZHp5Obg1mplUoes2O+l/EBv3lG
         Tnqz1Wu9iLuyKTtCEQKO4NoPurtl6h2XTEFfTvVwc9Q+HkFF9kfaKcDIdyqOI/WuDNRo
         +EMzf6gGJxuT6ImEvDYohEf+41Q7GKuJI9ubE+HoA4dbqCgYzzY7nZkOiVjsbHQFQRC3
         stosfsxgfisJq5vGvZYqHGv8lplhh7O+ExnED38gbOLv7euO1oCCJUMD02UxwRFpFbuF
         5QL9kxAWUeYDh4lLkg7AA7j4BjRieYy8LUa68HveQvw/6Q4e9sGFUe+iGwhV4YeWSBkX
         7ifA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b="wrF08/za";
       spf=neutral (google.com: 2607:f8b0:4864:20::644 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id c6si695442qko.3.2020.03.13.14.54.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 14:54:40 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::644 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b="wrF08/za";
       spf=neutral (google.com: 2607:f8b0:4864:20::644 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pl1-x644.google.com with SMTP id j20so4914163pll.6
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 14:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=cXP5DdQCpxUnXbLWHin/s+XVDxOSlaFnTt40+Upwp9k=;
        b=wrF08/zafhucqi7I0w7Y8zH21ZME3VFB/Pc4qcmu7vrrH45GsTiSWwjoR2yd0ZB0KQ
         tqIGX1Po1oES+b0uj7qif9LqDsC2pkIlHYdn4Gg9Jx5cPg/WxlATLL8E7sIb0hG7/UNq
         pGAuDXIzqU1UQJPxV3PFY31dMr7MYLJEfW861inQEVmk7aFSEnOSiK9vp3J9sNrhhgHs
         2amiR6wJxaFEP8IgFNCXUozHsZCIheioxo/f/F2six6hf8AeKDeIe8tMDy4OJx/iiN2A
         k04LeygzUeELl7iU7BeyY6FfHvY13zjsCY08F+6M+3QF+JYDrmh7UCnwBdyXY41qDgS4
         HPjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=cXP5DdQCpxUnXbLWHin/s+XVDxOSlaFnTt40+Upwp9k=;
        b=ndaWYuGjIE4+l9xMjwu4gZ32cIheZtn3T8o4539nVgb0pTV4YtB8O5YEgLAU3BSt+U
         FxBC3E7HV/nGZ+BhwskhgaBgO1bmUopxiOcLiCV+457iHaOS1XTFEeCnvLXvA2JrkiVr
         p+OuFsPEZ9I60VCa0DOV8DcmXHSwtJw6/e5RYkOONZuX/cnyvZdWzL/C4xEx/Gw9I3Pg
         1waIdCxTKwZlm8/7GqX6RsWQmlEniZd/sN63A0uFryTaYMGAhvlmA+Kr/hEJJFd0ER+F
         tX+7tkAGGUVA8RVCHpzB9wHzfBmLU/iw38aIWkB2MdMtAKj//9ZQxoMOX6n3lhvE9iFX
         sUkg==
X-Gm-Message-State: ANhLgQ2OatViNcVnt65E1ZRfjEcQyd/76T+nWOzjtMBBy97RHbHJBZIg
	lTUhEf3rsugqVUc3rnMtG959Aw==
X-Received: by 2002:a17:902:7594:: with SMTP id j20mr12775566pll.118.1584136479708;
        Fri, 13 Mar 2020 14:54:39 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.113.213.153])
        by smtp.gmail.com with ESMTPSA id e20sm6460146pfi.171.2020.03.13.14.54.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 14:54:39 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: [PATCH v2 2/4] staging: media: imx: remove temporary variable
Date: Sat, 14 Mar 2020 03:24:04 +0530
Message-Id: <20200313215406.2485-3-kgupta@es.iitr.ac.in>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200313215406.2485-1-kgupta@es.iitr.ac.in>
References: <20200313215406.2485-1-kgupta@es.iitr.ac.in>

Remove unnecessary local variable `ret` in file `imx6-mipi-csi2.c` and
directly returning the value assigned to `ret.`

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/media/imx/imx6-mipi-csi2.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/imx/imx6-mipi-csi2.c b/drivers/staging/media/imx/imx6-mipi-csi2.c
index cd3dd6e33ef0..8ab823042c09 100644
--- a/drivers/staging/media/imx/imx6-mipi-csi2.c
+++ b/drivers/staging/media/imx/imx6-mipi-csi2.c
@@ -592,22 +592,19 @@ static int csi2_probe(struct platform_device *pdev)
 	csi2->pllref_clk = devm_clk_get(&pdev->dev, "ref");
 	if (IS_ERR(csi2->pllref_clk)) {
 		v4l2_err(&csi2->sd, "failed to get pll reference clock\n");
-		ret = PTR_ERR(csi2->pllref_clk);
-		return ret;
+		return PTR_ERR(csi2->pllref_clk);
 	}
 
 	csi2->dphy_clk = devm_clk_get(&pdev->dev, "dphy");
 	if (IS_ERR(csi2->dphy_clk)) {
 		v4l2_err(&csi2->sd, "failed to get dphy clock\n");
-		ret = PTR_ERR(csi2->dphy_clk);
-		return ret;
+		return PTR_ERR(csi2->dphy_clk);
 	}
 
 	csi2->pix_clk = devm_clk_get(&pdev->dev, "pix");
 	if (IS_ERR(csi2->pix_clk)) {
 		v4l2_err(&csi2->sd, "failed to get pixel clock\n");
-		ret = PTR_ERR(csi2->pix_clk);
-		return ret;
+		return PTR_ERR(csi2->pix_clk);
 	}
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-- 
2.17.1


