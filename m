X-GM-THRID: 6752263859613990912
X-Received: by 2002:a65:6812:: with SMTP id l18mr4728434pgt.10.1572133940501;
        Sat, 26 Oct 2019 16:52:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9684:: with SMTP id n4ls4011345plp.11.gmail; Sat, 26
 Oct 2019 16:52:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzJL4DgNZmS93dEXUgw7P19ksCJesuYM+1ih4skpr18VNDli11uuaJzQRcNnq0a7QoP79zO
X-Received: by 2002:a17:902:6b06:: with SMTP id o6mr12244576plk.154.1572133939542;
        Sat, 26 Oct 2019 16:52:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572133939; cv=none;
        d=google.com; s=arc-20160816;
        b=r6hqwknqI2EVGRddR/woad662fkI5CEX59LbE5sTblB20Vl/hIjA/tj5OUO5yVrhKW
         RiGBmTaVbJ7lQHFRK1zED5j9DPCik4i4s+8+4xDAU7AXO/aMJcrAAgtLlJR+dtOaxnPh
         St5D70eBJsqe2mxAqgaOlZYcV36BkJ7M8+zNJblhvrDo6ANpWAS7FRz2MCd77z+kK2DJ
         +s/yMZRwxOZyC4YlEHmGgifjfxAmBxXrmUyoWUNHoI/dMo2Au4NeYvGYi5UuWWbnUyRv
         IlOFtUWp9rGBRLqzOcjqmZ+FyiSCQkXhT9N/UZZl1k9+u0H5kdBIDZYoYD0jSWhoyXNy
         Wf3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=7j+uiU//QQeYCq1CG42LPhKjQKtwoWPeb2LyyIljXks=;
        b=uKWpe7xDPE6So3wXXVfOpWssd/kKCme9lBCpL8YO7Je+fqgQMFQrTUt2m41rC7t65T
         br7jbg1IABwMDuTzvv/vGRfdARN4N63FnRalf3JIIfjHx/N2Rd6QeUY3LQa1QdxcC0ZL
         uiqjJQpie13fL4A+iuup7/2BgSYpAzvW55SEMVDNQ9E0SLIV4I5eGlZKPJI0iHq3qeIP
         eb0RwPDdkY9slGQQOj4RpnIUx7NTDpmBYMTPdYd4YI51JOR+Gdl8XsYcYmz2HAx1fol1
         Pv+SXBWk6Ti+LEe6Pd8IQiRct43yZl84FaG/ah90dNk5J8qDq70lB07lLZY2q6JRjzTb
         xFfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IOKlTvve;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id e15si110318pff.1.2019.10.26.16.52.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2019 16:52:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IOKlTvve;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x844.google.com with SMTP id o3so9053623qtj.8
        for <outreachy-kernel@googlegroups.com>; Sat, 26 Oct 2019 16:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7j+uiU//QQeYCq1CG42LPhKjQKtwoWPeb2LyyIljXks=;
        b=IOKlTvveHUbhXtgHNFBXvqdBfrUvS9CmCgMfpoFNJeKu9XaXVGZAijRqLAy5NyrY9d
         vPLv+nYcoTKVN6tYWYClv8SJMPo3QJcugXdmezjslmF5baou9yoE3spxGfKgE7cjDspU
         YOM/3BrePyMTk7PrrBuu7jUrcXMadq4kTMWVx9xGWcgjc10dyB8WgeTwq0Y36QUZuCw1
         3EkyGOoHIHpBIsxc6uXdfTnTjTynVqQne7aZjxYKcI16MV/YwYzNhbrICrc59RVln20G
         H5biSihRpz89ybv+KwFFDjm61yTb/5OwGr7ajPO96NGBPSS8wKIJPpE972FtqV54Igic
         S9vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7j+uiU//QQeYCq1CG42LPhKjQKtwoWPeb2LyyIljXks=;
        b=W6y11SVnn0pB+NAekFlvjKp+2AF+05NLutltdq9aLWqvOEutv5nYqZp2wPLMatJzLd
         6iQCBYxEtThrv/KYM07I0dftPF1WeOeGYd55u7U5zxLi39DIbuA8G7KhHYCsx2AM02Uu
         /CtihMPN6MVuiOtPa9QMwZg6zFwk7OiA6qYguAeNznMfmyCgk6nPccqk0KQjo3V41sKg
         sQQf/nhxFOn+VMLq1ysY4Fy5gluCQEYhjdX/IBMWPmW7mCt4aoRavTLlLUY/Bf8m+gxs
         90FIfZ+nlV2wVMAVGTzgkV5eNbz8C5pIkFdt3y9RFDK/Cr1VxXjrFh0EJ/PQzX+kkA3I
         PZHw==
X-Gm-Message-State: APjAAAUmbCIcscLQ8t4vEH5+EFLHJoe3smq2zmKsbp+4h+cW4xvDuZnD
	yPiqmDc6RHqGML60XulXuAmsD1kdeaNpxA==
X-Received: by 2002:ac8:34f3:: with SMTP id x48mr10944037qtb.223.1572133938564;
        Sat, 26 Oct 2019 16:52:18 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id u43sm4080154qte.19.2019.10.26.16.52.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Oct 2019 16:52:18 -0700 (PDT)
Date: Sat, 26 Oct 2019 20:52:14 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sven Van Asbroeck <TheSven73@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: fieldbus: anybuss: use
 devm_platform_ioremap_resource helper
Message-ID: <20191026235214.GA11702@cristiane-Inspiron-5420>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Use devm_platform_ioremap_resource helper which wraps
platform_get_resource() and devm_ioremap_resource() together. Issue
found by coccicheck.

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
---
 drivers/staging/fieldbus/anybuss/arcx-anybus.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/fieldbus/anybuss/arcx-anybus.c b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
index 2ecffa4..5b8d0ba 100644
--- a/drivers/staging/fieldbus/anybuss/arcx-anybus.c
+++ b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
@@ -127,12 +127,10 @@ static const struct regmap_config arcx_regmap_cfg = {
 static struct regmap *create_parallel_regmap(struct platform_device *pdev,
 					     int idx)
 {
-	struct resource *res;
 	void __iomem *base;
 	struct device *dev = &pdev->dev;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, idx + 1);
-	base = devm_ioremap_resource(dev, res);
+	base = devm_platform_ioremap_resource(pdev, idx + 1);
 	if (IS_ERR(base))
 		return ERR_CAST(base);
 	return devm_regmap_init_mmio(dev, base, &arcx_regmap_cfg);
@@ -230,7 +228,6 @@ static int controller_probe(struct platform_device *pdev)
 	struct regulator_config config = { };
 	struct regulator_dev *regulator;
 	int err, id;
-	struct resource *res;
 	struct anybuss_host *host;
 	u8 status1, cap;
 
@@ -244,8 +241,7 @@ static int controller_probe(struct platform_device *pdev)
 		return PTR_ERR(cd->reset_gpiod);
 
 	/* CPLD control memory, sits at index 0 */
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	cd->cpld_base = devm_ioremap_resource(dev, res);
+	cd->cpld_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(cd->cpld_base)) {
 		dev_err(dev,
 			"failed to map cpld base address\n");
-- 
2.7.4


