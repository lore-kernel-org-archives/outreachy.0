X-GM-THRID: 6475389666031828992
X-Received: by 10.99.100.134 with SMTP id y128mr1621958pgb.125.1507669143024;
        Tue, 10 Oct 2017 13:59:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.185.6 with SMTP id z6ls2400922pfe.1.gmail; Tue, 10 Oct 2017
 13:59:01 -0700 (PDT)
X-Received: by 10.98.20.210 with SMTP id 201mr1441185pfu.18.1507669141959;
        Tue, 10 Oct 2017 13:59:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507669141; cv=none;
        d=google.com; s=arc-20160816;
        b=HUZJ/kQWrADDvwiIm3kOuJ3nEl6qLUtuQzuAql31b9BDdEaORAeADGHrULWP7Sp92p
         DazShWFnzQjevLODEufQUTT2va+kAvXnMXr2Jf31KsL6cyCjeBjWuNkQU5WFRCLqOorA
         +arFhlYnDm64DINrsisYdb706TFW/1TqoEg0xGYlS1k6C2hS2kcTUHs4PsjO6rKVJlSw
         j+p/6OTAlQGof+oJPPniYrtuh2O/hDKk9lZPEb6du3ejP4St+hAuz0u6p9JeeNro9yMH
         tKw14BX8SXtc8Rc4UraeZe1i29MCnKHqH3MMReyYnGefEjZHwJ8Zf4+6hejW3pL//ujw
         qfxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=KN82NL2Xc/QPRoGzyewqGzxY8Oo8QM6FhVGRoUhjKNs=;
        b=psDjrdNPb7JfPRmAutremXlkBxrMVycHLQWjCN8epsjZUV737cuGP4VKEAEVvMR4pP
         pCrnOT5wH/ozpmUmtrCb7LBkr7xkzUdgepnBBxQjJtrJZGVG/LMYxWxzXH8UhE1iaHQk
         3EtGbDtqHYXm1WS0gWeuqlRe5Yn80CGBLbMOdyIM8zIj7iHsvXTWQX2iY3YEYKvqK/q+
         LvJFUf43y4R/XbMrWah4jEaJB0h4LOM+L5fD21x3kzJrd8MhtcRvxi9ZYn8xRXOwW8FI
         bcOAnasGMX0R6cw0c/pd7Dlt38lcUIAJAE0P0GM6s5v63mtx+RzYRwsrNJJRD+ZmYtB7
         1tQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c1CfcOes;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id w11si1338951pfk.4.2017.10.10.13.59.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Oct 2017 13:59:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c1CfcOes;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id h28so208560pfh.5
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Oct 2017 13:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KN82NL2Xc/QPRoGzyewqGzxY8Oo8QM6FhVGRoUhjKNs=;
        b=c1CfcOesEqgBizC0M6JTukFpA/xU+5Za2RbsMG8SLUE6UdiBI200sB/IX7uqiEY7Hq
         0ryNP/DDw2Vim1IFjRMz5SD5/hHODRhPEDZqSsFlwM/GRwBSKTGKL2b4i3GClRpxS10W
         9rQplo5kaYMa+9/8mHztSs3ENcBZlbORXK4somrswlBj/DEZMklkhvFm9NGy99HhRZSr
         lTWqS2qKl1mk1ke/Eb/EQW7xh9ESTcqC0HfHraj/vR5hSTDeh9zCY3aqKq1VAiAIi5GS
         UyKyFACljSVl3/hjD2IVIv2plTzvrQkRYUmE1QVze8vyRIZKFDdu/U3dUl/GH5+pDMtN
         zdzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KN82NL2Xc/QPRoGzyewqGzxY8Oo8QM6FhVGRoUhjKNs=;
        b=PDw1wmI4Z24V8verY+jT7S7jNyTCsD1FJiq4h6c/c1EuuSsZ5W69D6qRrMKJT/pJOr
         M46C8iXX28jfaMwhZ9W8f00FL37POrpMu8F23syDocUoeNh8aO/xPzlbAFCbNl5MVXXh
         zefq3FG0jeB9duCmWXOp2SlOTvfAItB5GNSkZ2tMV3savt+7uvdYMPLMcCw9QExA3fx7
         T0eV2RZIeRHJTLdK6Yb5emj/blznyiLmAiDPPAT7UahJaFjZYeaZH2QFrokyVnd648TC
         zoujN2NR1eCkxKXI7iQG/yo7XrnVoX+ls45s0+Vnixp0mLDJz2o0TU6Q4dWTyq+NNIhg
         RmlQ==
X-Gm-Message-State: AMCzsaVUqi+BauMwlES4fOFbqldORsVbr+C8548gaA3IjR4bSoE/Pg/c
	Ete14Rg8+0HJtCxbQnUW3+aFJMIR
X-Google-Smtp-Source: AOwi7QAL2M3usRPcjt3qjJJ1/2ALXZGf+X1QEcBgpjAmBnEys4MYLgfonQBHNmJtsgErpapKz4GBHQ==
X-Received: by 10.99.104.67 with SMTP id d64mr13537766pgc.164.1507669141552;
        Tue, 10 Oct 2017 13:59:01 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id b19sm5145523pfd.182.2017.10.10.13.59.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Oct 2017 13:59:00 -0700 (PDT)
Date: Tue, 10 Oct 2017 14:58:58 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
	David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
	gregkh@linuxfoundation.org
Subject: [PATCH] drm/tinydrm: Remove explicit .best_encoder assignment
Message-ID: <20171010205858.GA4806@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Since the driver is relying on the atomic helpers, remove the explicit
.best_encoder assignment and let the core call
drm_atomic_helper_best_encoder().

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/gpu/drm/tinydrm/core/tinydrm-pipe.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-pipe.c b/drivers/gpu/drm/tinydrm/core/tinydrm-pipe.c
index 177e9d8..bc55de2 100644
--- a/drivers/gpu/drm/tinydrm/core/tinydrm-pipe.c
+++ b/drivers/gpu/drm/tinydrm/core/tinydrm-pipe.c
@@ -50,7 +50,6 @@ static int tinydrm_connector_get_modes(struct drm_connector *connector)
 
 static const struct drm_connector_helper_funcs tinydrm_connector_hfuncs = {
 	.get_modes = tinydrm_connector_get_modes,
-	.best_encoder = drm_atomic_helper_best_encoder,
 };
 
 static enum drm_connector_status
-- 
2.7.4


