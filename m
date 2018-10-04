X-GM-THRID: 6608480923427012608
X-Received: by 2002:adf:f742:: with SMTP id z2-v6mr739219wrp.22.1538656866848;
        Thu, 04 Oct 2018 05:41:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:9aa4:: with SMTP id a33-v6ls999000wrc.25.gmail; Thu, 04
 Oct 2018 05:41:06 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63p82fXa+GmwLfzrn4+w3bvJOO4YIrefyZKJQR5w4Gpt3WKVZ2K420Gxk6Av3rg6mvDp+eY
X-Received: by 2002:adf:8237:: with SMTP id 52-v6mr750350wrb.1.1538656866005;
        Thu, 04 Oct 2018 05:41:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1538656865; cv=pass;
        d=google.com; s=arc-20160816;
        b=BYsPn3+p/rFaOtgIMv7sfnGemyoIb5cPpLOgtOMuFmZ8LpYxFuH4Hhb1qJE9dK3doe
         VNJGOPbhQdBcUwayyQ/yMVLMdfLvs2b6NygGWlIYCbFCBsdkSPq6w5NV9fbzBnt3eDvo
         fM2psXnCSEOeg3OFXB4nkH8u+mSo2U3yXFukAU1kFG5xA/x8LFdnW9Qtnp6qNHhtWbFi
         O8YuRzWVnG9VYkDbldFTL0dqm+bR659/iMk/WNuM/IlTnXC5TMVnNJdJFjmqFRXKmC3h
         n6AInlRttc2L+rUe8pe6utfujI8FrjpxDd7EETuKnC502d29ZVfzSuU4z5yC7cBJZN8C
         fSEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=xDcxliWXL9Y4EFTWL55jXxMLo6P3q5gmPwpts5Gdx4Y=;
        b=sCWr4KHo564qYKakpZIA12wZ3M4a1dqHprL20+DqYlKNbq3TvtQ98fWDsfPhhDCqql
         NH5gUoYFdBo9a5UeDJmUoKOxjpSdZgYL0h6dBYx09kNVmvCaWwr0WkVbrCu/TcI3qPGI
         geioBCbbqdmLSsp3xoKe2n4zXX0uiDHJeR/WFwJdyh/JoyZEDKc14xILrRCZUW+cubx4
         jv5aMjWAf2nA71kUzlgaXaVZoEMrM7soPnn44DKWbOMu7V39dLaq8Yi+IvrElzoIDx+u
         pF9Y/5/WRaq440jkWNB7+FM/jXEO2EpLjTSeIfC0u1UDnpEOlFs5EROpvRCieb6348qK
         S/DQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="Z/S1nh6A";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o52.zoho.eu (sender-of-o52.zoho.eu. [31.186.226.248])
        by gmr-mx.google.com with ESMTPS id l184-v6si196782wmb.1.2018.10.04.05.41.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 05:41:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) client-ip=31.186.226.248;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="Z/S1nh6A";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1538656865; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=CcFLalv0AM+CIiOhNV7CWoDMbQtBWePJc3vWLAG+LsxZaBiClu16qW9wnX/9xx6SNLTOGswObeIeRtxkrDT0GsCzVV4tJlLy4YARgydOXgPoli/YEWCEyXCIUkkty7DnRmfq3+mDELtsEg19hqa62fu/aqTAmwrwY3gLj8U2vFY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1538656865; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=xDcxliWXL9Y4EFTWL55jXxMLo6P3q5gmPwpts5Gdx4Y=; 
	b=XuveS4nhERSIVupLbk8izCjeKefxllIeDeF63Z9yETSY7E3hIG2Rk3ozFfRAzhwloNk3YThXI8Jr1j9uRnKUd4+VuIVH0TZLrSB5WA9L8K1MzNZGtd2R6VJCLd7IBr2Dz416saq5cQnDSd78RjOjMBiFsSgCxNdsJV8IlGOiE4E=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1538656865;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=2278; bh=xDcxliWXL9Y4EFTWL55jXxMLo6P3q5gmPwpts5Gdx4Y=;
	b=Z/S1nh6Aikjj8ZPVo50TezA4lgEojssgMGZKRqmKEfJpL5AAwrvpVqKQ023XGAGI
	LNMooKQ5v0X/txKQpnjmrB7TMow1wql7gk9o9uMKBYhWk4Jq4kUDsen53dFHAc6iAuz
	6aAl4dN31IUrjfzKOM15HiX+gxD5XpwZsXd38Nsw=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1538656863237997.9768258040885; Thu, 4 Oct 2018 14:41:03 +0200 (CEST)
Date: Thu, 4 Oct 2018 13:41:01 +0100
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: clocking-wizard: match parenthesis indentation
Message-ID: <20181004124101.GA11993@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Match parenthesis indentation after line end, and fixed alignment
to conform to the coding style guidelines.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 .../clocking-wizard/clk-xlnx-clock-wizard.c   | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
index cae7e6e695b0..15b7a82f4b1e 100644
--- a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
+++ b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
@@ -199,10 +199,10 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 		ret = -ENOMEM;
 		goto err_disable_clk;
 	}
-	clk_wzrd->clks_internal[wzrd_clk_mul] = clk_register_fixed_factor(
-			&pdev->dev, clk_name,
-			__clk_get_name(clk_wzrd->clk_in1),
-			0, reg, 1);
+	clk_wzrd->clks_internal[wzrd_clk_mul] = clk_register_fixed_factor
+			(&pdev->dev, clk_name,
+			 __clk_get_name(clk_wzrd->clk_in1),
+			 0, reg, 1);
 	kfree(clk_name);
 	if (IS_ERR(clk_wzrd->clks_internal[wzrd_clk_mul])) {
 		dev_err(&pdev->dev, "unable to register fixed-factor clock\n");
@@ -219,10 +219,10 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 		goto err_rm_int_clk;
 	}
 
-	clk_wzrd->clks_internal[wzrd_clk_mul_div] = clk_register_fixed_factor(
-			&pdev->dev, clk_name,
-			__clk_get_name(clk_wzrd->clks_internal[wzrd_clk_mul]),
-			0, 1, reg);
+	clk_wzrd->clks_internal[wzrd_clk_mul_div] = clk_register_fixed_factor
+			(&pdev->dev, clk_name,
+			 __clk_get_name(clk_wzrd->clks_internal[wzrd_clk_mul]),
+			 0, 1, reg);
 	if (IS_ERR(clk_wzrd->clks_internal[wzrd_clk_mul_div])) {
 		dev_err(&pdev->dev, "unable to register divider clock\n");
 		ret = PTR_ERR(clk_wzrd->clks_internal[wzrd_clk_mul_div]);
@@ -243,8 +243,8 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 		reg = readl(clk_wzrd->base + WZRD_CLK_CFG_REG(2) + i * 12);
 		reg &= WZRD_CLKOUT_DIVIDE_MASK;
 		reg >>= WZRD_CLKOUT_DIVIDE_SHIFT;
-		clk_wzrd->clkout[i] = clk_register_fixed_factor(&pdev->dev,
-				clkout_name, clk_name, 0, 1, reg);
+		clk_wzrd->clkout[i] = clk_register_fixed_factor
+			(&pdev->dev, clkout_name, clk_name, 0, 1, reg);
 		if (IS_ERR(clk_wzrd->clkout[i])) {
 			int j;
 
-- 
2.19.0



