X-GM-THRID: 6948530391534796800
X-Received: by 2002:a05:6808:907:: with SMTP id w7mr3700727oih.94.1617830808340;
        Wed, 07 Apr 2021 14:26:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:c650:: with SMTP id w77ls793127oif.1.gmail; Wed, 07 Apr
 2021 14:26:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx6ZZueuiFAbPKcU4WAALz2kjUzEcwqrbhj8nfrq09fp9VA+iNW0UPW8CFkmbNEyQMto5TK
X-Received: by 2002:aca:2418:: with SMTP id n24mr3577401oic.103.1617830807602;
        Wed, 07 Apr 2021 14:26:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617830807; cv=none;
        d=google.com; s=arc-20160816;
        b=Z1r00EL0Jzn5zMWKWPoUrhi7wG9snllJIa05SqwR9oJHZ4CGtyThGq4W3218tl+Gv2
         33Ku1M/Uqc2mLvhndhVIMmp7ovDx2R+yQ0H2305E1MD9rBw36Q9reNwUJ1GSEwQLUPZu
         eEX8tvPNMgc2ILTg/WHG052LO23+k02yu0debz/sCS6XaNN46H4jaH1aWjSTVWHv/ZRo
         aFLS1pJMr0mMylvrRX77EvfLCvl/kUKH4nHJwbuMhHllpT/eHdpPr8s03a0wLLYudUpe
         iUcJ1Inw6QdAFkk3CglglIMI9Xi27qyg/k/nW5/Su9UidcbeFBtFXLsfNai2WSdVJ59r
         PyTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=rBvCDlUD9+QrMvuUFtxmfpbAHHnvTaccTwMtx3DApDw=;
        b=wXt1R/MsLxI+1RQPdDQcCgO1udEEjUWFi7vIZSxT8Sg4M7/BCAdttsqAFU+cd+zpZq
         QIpkNzclgdtZFhHZ89OIc2BddIvN9PKXU9KV01s+6n5TaMdcJPegwJzWHDdZ9zkOZ00j
         Wf7slbkMVNDDwqcITrTQhs64aLJSxbb3bFs/pJMWHuTYr68+g06b9y3/3ea0NW3k3bRw
         fPvMwCGD4ki00NP2hhHUvenBcs+LThPWmWpvqZ23oauDlA8hyTFDvmQdWQZXmsoqqKhT
         ZiOsJ6VQgwdY/ekKorBmUQypk3BGqcxADEBx0/oDsgJz0TFPVdIDf6Jel9gGAJs3o9dq
         +nSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WVAjnkAM;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f36 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com. [2607:f8b0:4864:20::f36])
        by gmr-mx.google.com with ESMTPS id k10si1633346otj.2.2021.04.07.14.26.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 14:26:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f36 as permitted sender) client-ip=2607:f8b0:4864:20::f36;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WVAjnkAM;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f36 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qv1-xf36.google.com with SMTP id x27so9818784qvd.2
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Apr 2021 14:26:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rBvCDlUD9+QrMvuUFtxmfpbAHHnvTaccTwMtx3DApDw=;
        b=WVAjnkAMIwoB4WirZGCF1M7bthlOa3ydPDmNIc3WNS1wBdMGTMVfDjUXkZ4Azr6JqG
         gOieQN6tx4oV2FV00xBUPG8V0oAe0eK1IfFqnm8GCupPFgKDZDW8BYgVuLwaCYI1g4x6
         fn7Tb3+UTu0w6tS41BGZeXpNawER8oCSSQReqwMHCHUeVhyYVMBIvbFmH0ZTBWneSvG5
         ojF3cJJTUWpJs8B/cUvmx2QoxKoo3UsQYEJVpQtTuyjBunc6oyCzUtWcmDaURs66Vtwr
         nj+44Ki3fbDNF1jPVFaKmoWQLXlqs/oWoVlJhsWM9QnT8CxlgWpz1Vs4DebqfsIMA3td
         7QOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rBvCDlUD9+QrMvuUFtxmfpbAHHnvTaccTwMtx3DApDw=;
        b=iOs4sXTKQMw0Yg8GzEXGI8gvHyoDPnHfdzXCvz5EOcT1QhLlBX41leQQ1zXitoXXmO
         8NCjS3HcuiJx68BYurNOkU/FfDpgDaO42ZINmkjcXJR0HEG+kEOSCm2OJcxOSfNZ4RAD
         cx3ACxK/ItSkyh4ATVqZQS2UBdx1FZ1HyNaFET0pjb6oftSpSmHcDUBaL5hDBAp1Jz6q
         GohW6YEP27dGg0EjnB+jwlrC9cdEewUfhjRvxWNMCL1blyuTj+giy0kwjc8RUWZMvHs8
         zUI6gvJGApYp898hQvRv3qrWhZ0b99vYPJSxNWbTy9svaDB/o/qClAEaQ1DotuO/phq6
         Iy6Q==
X-Gm-Message-State: AOAM532q/RUpKcnOe5lyB/oXAsL75CsVj2+gmrQmpandawgnmU7KW00o
	xRXq46w+bK1h8AElKzZ4Aq4=
X-Received: by 2002:ad4:5ec9:: with SMTP id jm9mr5468217qvb.24.1617830807202;
        Wed, 07 Apr 2021 14:26:47 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([2001:1284:f013:b099:91d8:678f:6a0a:466d])
        by smtp.gmail.com with ESMTPSA id r17sm17023418qtx.62.2021.04.07.14.26.46
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Wed, 07 Apr 2021 14:26:46 -0700 (PDT)
Date: Wed, 7 Apr 2021 18:26:44 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, alinesantanacordeiro@gmail.com
Subject: [PATCH 1/2] staging: media: hantro: Align line break to the open
 parenthesis
Message-ID: <1e6d73432d60dfb8bb3f7f2bd6bf3084091a2a39.1617829497.git.alinesantanacordeiro@gmail.com>
References: <cover.1617829497.git.alinesantanacordeiro@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617829497.git.alinesantanacordeiro@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Aligns line break with the remaining function arguments
to the open parenthesis. Issue found by checkpatch.

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---
 drivers/staging/media/hantro/hantro_hw.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 34c9e46..a650b9c 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -207,7 +207,7 @@ hantro_h264_mv_size(unsigned int width, unsigned int height)
 void hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx);
 void rk3399_vpu_mpeg2_dec_run(struct hantro_ctx *ctx);
 void hantro_mpeg2_dec_copy_qtable(u8 *qtable,
-	const struct v4l2_ctrl_mpeg2_quantization *ctrl);
+				  const struct v4l2_ctrl_mpeg2_quantization *ctrl);
 int hantro_mpeg2_dec_init(struct hantro_ctx *ctx);
 void hantro_mpeg2_dec_exit(struct hantro_ctx *ctx);
 
-- 
2.7.4


