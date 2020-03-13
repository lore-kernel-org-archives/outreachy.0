X-GM-THRID: 6803797198848917504
X-Received: by 2002:aa7:9ab1:: with SMTP id x17mr15978735pfi.36.1584132494410;
        Fri, 13 Mar 2020 13:48:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:82c9:: with SMTP id u9ls4989687plz.3.gmail; Fri, 13
 Mar 2020 13:48:13 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuIcpOHy5fMcEEEZNEfkDHznFkJA26tDVRds7H9SY9k7/+pUTHU3ZB68vLc/OZBvPG7zHpC
X-Received: by 2002:a17:90a:a511:: with SMTP id a17mr11718527pjq.178.1584132492747;
        Fri, 13 Mar 2020 13:48:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584132492; cv=none;
        d=google.com; s=arc-20160816;
        b=mw5FZ18sVtViJ8yICnfRgeuIid3o5UBbMmo/z3dgNuFH1ch5FZktfO1coG9dLPTqVP
         0IKw6UqLr1MGy7cU6zB7EhmfqBByvGb/koeyf4CkxZssthBZfvSNNuFpDpX4bzHR4zdP
         tAQctbj606rdmU6dk2gtnrWnLg6KpHasmadcv072+A/vzuUfAz8NjcidbZV/J9C/8O9Q
         aBlKlB9csqznuD8irWTxSYNYMPFek3mOnNk2Le01l1InnmEsXF92UQn5CeDO7vA+6Ksw
         n3QJuAh9NMm8Ij1ku63PrwTmPSa+tYgS515d9qcMdxSMR86qDddixRyJ1pmgk7KwmAoh
         WRAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=cXP5DdQCpxUnXbLWHin/s+XVDxOSlaFnTt40+Upwp9k=;
        b=oPSxyvfCpRG9QYhDD62M53N1q/FDS38wBCG/ucXUJBLLXARukCnFiFHTJDyo72ZT+P
         GJDjknBmTVRCS8xinBoQA8CKnSDjoujCnoH501c224qW4351RpeQm3SOBIaF2mPD7gQG
         a/QuwJnDNN99Kw/7aCz/3d9Sytn8wPkFk0fMBJvJH5of+C8mr6TMDFXLeDhGOvWGkQAZ
         bJXQR+7bgTmuHKs9VO6GSlZe6A2s2RTbq4YCaeT2EZEwzHKgh2BDuXDiQYPib4ZtPDBY
         RLGXOu/7Q1t3mqYN8fzMrjiq8Vq4DqKmwZmG+7LnMT7fqrZXqhQmC5g+G26Q9UJs5Kop
         uqzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=wPIF8A9g;
       spf=neutral (google.com: 2607:f8b0:4864:20::642 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id h10si611981pju.1.2020.03.13.13.48.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 13:48:12 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::642 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=wPIF8A9g;
       spf=neutral (google.com: 2607:f8b0:4864:20::642 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pl1-x642.google.com with SMTP id f8so4827162plt.10
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 13:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=cXP5DdQCpxUnXbLWHin/s+XVDxOSlaFnTt40+Upwp9k=;
        b=wPIF8A9gh88Bc3boMZ2WU92Sk5LOos44c2c/tct8IgwYGM6eQt3gEKFvZRq1ZG/1Wb
         JmRCXwZl1YBFl9BcN/Wb0ZRydYt85YE4YHXLLnR9sP0csI7zZfic9Ay+gtkL8kFN9Y9+
         BpqR9JYcdNE6IaRYoJ8dLMZxNis4EhK+M0Wskfd1hiG3GM8a0gQowjQQRzwBMvHUMsWd
         eFrx3F5tZApUPZMkl0m40OX3kqThe5QMsnJU8aKrRqKB8DYsvzy2L/u8zO2YMYYomPlJ
         PtJndKhD9ahMD1ZgrHwvWtvBQwMdD44Xnoxlvm3Az+ebDSvBYPoIrpQ6rjfhb6IZobFn
         v9JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=cXP5DdQCpxUnXbLWHin/s+XVDxOSlaFnTt40+Upwp9k=;
        b=PU1sa7Breb5HFWk288qRjCG0Uucqx11MeQ0H99+kJejGrxd+WHXWCXFWZO5q+E11/6
         T0fpdbZjE+AC/uzx6mx7q93N1fHjYpsqi8p3eVOFbyyNkCF1ch0NUOqQ2QwiX8J17d5g
         gprQV6cIjBbGLi97SzLuaUPH5Vwgq8UpUf0nG7sZb4bdFRxg+heWi4ZuNmsAAETDy/Sy
         PPbiSTSzCpizOLO8ycRF7c79wmKTTtvUkVAekNQzoZJTLVPs2PbYENEBk6QKyjknR2Vt
         /QsRSdq+gz/a0yBP2Jwt3yigW4f3EFtUMkrdhpv0fxMHlTD9tW1u4qBknm/n7h5gcmSZ
         FuiA==
X-Gm-Message-State: ANhLgQ2yvEKrPQZHsyJooBaJyQE274S4BOCezwF96cT3q8jnXWNky0Or
	JQAXBvYNYLqDp5zsdDXhxMR+ndjEjWA=
X-Received: by 2002:a17:90a:cb06:: with SMTP id z6mr5411222pjt.41.1584132491839;
        Fri, 13 Mar 2020 13:48:11 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.113.213.153])
        by smtp.gmail.com with ESMTPSA id 128sm46667360pfe.163.2020.03.13.13.48.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 13:48:11 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: [PATCH 2/5] staging: media: imx: remove temporary variable
Date: Sat, 14 Mar 2020 02:17:36 +0530
Message-Id: <20200313204739.32676-3-kgupta@es.iitr.ac.in>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200313204739.32676-1-kgupta@es.iitr.ac.in>
References: <20200313204739.32676-1-kgupta@es.iitr.ac.in>

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


