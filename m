X-GM-THRID: 6609620704439566336
X-Received: by 2002:a24:e48b:: with SMTP id o133-v6mr4423327ith.0.1538924029004;
        Sun, 07 Oct 2018 07:53:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:25c6:: with SMTP id g189-v6ls1819260itg.0.canary-gmail;
 Sun, 07 Oct 2018 07:53:48 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63D2OFuS8HUNMPGgkuyC2fYbydzXKp6zqIY/LWNZBnS1Ud9dSTSa66lMnCjVjxX/nIvPqnI
X-Received: by 2002:a24:e38e:: with SMTP id d136-v6mr14383743ith.27.1538924028167;
        Sun, 07 Oct 2018 07:53:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538924028; cv=none;
        d=google.com; s=arc-20160816;
        b=TElekAky96sb0WAXLlAPyWLIQfAM5XXJ6EnonBQ7G0F0wFnZkhPVgLbxNKKpXOs8ET
         3S4qOQuE6Z2U18Yp7SZWaU2mLGZsIo3Q3KmbrJNxDexmwuGFhqS8Oi37slQgSaeQEETP
         0DEL5W36Z0i+BUPoTbqPSdj8B1a+0X6jwC5gErFn8K0Q3qUMzHEKymY1MXJRddqsqy6X
         zNZpQrCg7z4g4lMi9pIp6pi2CYJW2RiD3x/EqhFXLJBLS80+zMDj5JPMfEnmQsa0I2jr
         Q4VT04ybxpMFg7z7REltgU2AmYL/Hj8A6GEn9deBAwNubdYylN40gE4lOro5SFBQa9bn
         BxOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ginqTKp38KEsPobFEmQ8QIqSX/Iycv3FHqPX0LT5JEM=;
        b=X5M0c3E/vIMBy7CJU1KEcFle6UVGWWkVUTL7s7MOjsjbF4ssJci5QhgXvg8BOCIajS
         QMRlFMi339IF3cNiCVFirMqOC9vL/6KiuOKkg6oVW8UYWbeZUkNjCAHinIUBLldNvl07
         O7PLXxTBM64Ppkz8ZLTyq3S3A+porwM/jHCKbv06Iy//HjrYVuf4CVwZkmmwhsE9dh96
         fWgWZNpqmlcdJjv34WGsZypgbGdMSRaxmHKniZuMTqVW2uBJ2D5KzFg4+KKQhx+Rgn6A
         anlsM79BbnQ+hFe5ZqbBlhwZ5KZA4f1LePw6FiEKwBG1fx8GOiZej85yiBx5YI35ejQy
         AgSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UEH0ExII;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id m39-v6si163075iti.0.2018.10.07.07.53.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Oct 2018 07:53:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UEH0ExII;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id p25-v6so8913556pli.11
        for <outreachy-kernel@googlegroups.com>; Sun, 07 Oct 2018 07:53:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ginqTKp38KEsPobFEmQ8QIqSX/Iycv3FHqPX0LT5JEM=;
        b=UEH0ExII7POd0Hz5zUFSVRAhzVKMvcDY/Fb0YvHKFbULX9JlFIiEboNBjzTQAxI+Ln
         dos58v6Sn0PxIc83TZ/FVtfFDUl2+OuuKhrBJ7qw950yo2eFNadWzJNUTWF2Q3W+tpzG
         T97Pq5PMxFv4Yn5UrFLBNNA8RzFp1GND0MwyBc1OkHbf58jmAgWsqF+N1V0i5V6UcAY8
         bD3fYYCEqgVYvQqbdqD4azLPqeqDHx8jn6a4YiAViW3K6Wa/NYWuIdpmlfBibDta+BeC
         iZi23C7WQama02wtC+tdnYDKwePZhT8jNgZFYFcDkDGUGOWDxgBdYfr8FM7c150LDsdH
         QNTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ginqTKp38KEsPobFEmQ8QIqSX/Iycv3FHqPX0LT5JEM=;
        b=kEK0nQVleN6G9MIh8qSmL/PTkLS1EtA9nDsB72pFVRyOCIwPbIuGdva4LdjfhbqHSE
         Ic1AAxciqEJKkPR7aiaWlf6uyj759IWn0WgHNeFX3rvFGWqEtc0nxgsS/Sg0GyzZRX/o
         lAqUsrZyhVUw9m3W//q9h2tJt76l0D38OFViHS1ZZTgGTx2EWj5PtPK1X6QRnwq0wtYG
         OLLNey9jkkEi6MDjqFAB3e1zd2au6KA/RjYKj4wXcchCr1l9U+utKMWwwpo+r8pZw6mX
         to9/YpH9UGR8Kz2e34//ZJWwnl6d57Ie5RL+FIV9WfM7nCAHkfY6ftgCppz694eE4rrj
         WIoQ==
X-Gm-Message-State: ABuFfojM6gE1FSm12ZRpnhsuKztatJ0vd/eHR8bIrZEuJvbNfqinpjOw
	vfjdtRaTVAYMPCTGQdDG+yI=
X-Received: by 2002:a17:902:8c90:: with SMTP id t16-v6mr19712509plo.251.1538924027484;
        Sun, 07 Oct 2018 07:53:47 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([117.207.206.206])
        by smtp.gmail.com with ESMTPSA id c21-v6sm23966720pfe.93.2018.10.07.07.53.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 07 Oct 2018 07:53:46 -0700 (PDT)
Date: Sun, 7 Oct 2018 02:24:00 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: mchehab@kernel.org, gregkh@linuxfoundation.org,
	mamtashukla555@gmail.com
Subject: [PATCH v2] staging: media: davinci_vpfe: Use __func__ instead of
 function name
Message-ID: <20181006205400.GA12894@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Access current function name using __func__.
Use %s and __func__ instead of function name.
Predefined identifier __func__ gives the name of current function name.
Thus, it gives better debug information in this case. 

Issue found with checkpatch.pl

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---

change in v2:
-Put useful information above ---

 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 9594276..4d09e81 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -695,21 +695,21 @@ static int ipipe_get_gamma_params(struct vpfe_ipipe_device *ipipe, void *param)
 
 	if (!gamma->bypass_r) {
 		dev_err(dev,
-			"ipipe_get_gamma_params: table ptr empty for R\n");
+			"%s: table ptr empty for R\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_r, gamma->table_r,
 	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
 
 	if (!gamma->bypass_g) {
-		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for G\n");
+		dev_err(dev, "%s: table ptr empty for G\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_g, gamma->table_g,
 	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
 
 	if (!gamma->bypass_b) {
-		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for B\n");
+		dev_err(dev, "%s: table ptr empty for B\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_b, gamma->table_b,
-- 
1.9.1


