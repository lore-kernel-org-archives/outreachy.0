X-GM-THRID: 6950644769369358336
X-Received: by 2002:a65:590a:: with SMTP id f10mr32431256pgu.358.1618323095170;
        Tue, 13 Apr 2021 07:11:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:9255:: with SMTP id 21ls794110pfp.2.gmail; Tue, 13 Apr
 2021 07:11:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyoMEQvJRJO6v3NAxCmNXLaaSRKuJn8l3Z5dMmW1yULTa6WIHkftJkIZt+14P1ajysS+EIt
X-Received: by 2002:a63:30b:: with SMTP id 11mr32340037pgd.245.1618323092032;
        Tue, 13 Apr 2021 07:11:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618323092; cv=none;
        d=google.com; s=arc-20160816;
        b=c0hTTJjBcSsJk8gD3/VjWWJ4Ij6p70vWuaipQxrlUgCdQNaFO2ux1W5tMWy87lc47g
         Or7gbuRe+p9EdoP/IQgB06cDt8NBcWtrD2H/kYAKg4WZQy0lJsMu+iuv6SPmQFT7pcoU
         +rCVCgnMx0IcHgRbC1ww2F597JsKbpzfqj1dDKDDHI/B36XFnXcHpKeXqUehzemyvety
         VonbAVjIVB5ABvEgvmkjZYVPkEvwD7qmrHcbxva3TWIcOadHBpT5HglaJI2k6/bHIb6Y
         GcCT4v8umOIyAIK+h/gp0utjyKT9Oc3RnSoUfvIbsu7W8dc6aktaMKhau17nQD46l9NV
         3tkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=29Kz76z7ZOP2iBx6/3DXnAWj3+GXDiiIznMC8bIFGsc=;
        b=wWsaUZZMC8GlSGkebNsbww+cjPp/c8J1m4CjfaW6yEsid2riTLE3QCVsWf3OkHT/Nx
         1IDHJH45qEwEoEQE/x/xe0z/gRJvNkW4FcLKkzfbKNksYisP8/v/TDpJ+ZM/dDp0WXIQ
         2NQVi7XIX6Br4vBPyqdtYX5PW3NktlPs8yCwQTSTYk8A3M3B+hfq2e0YfZK2vAcVJtPL
         aB1tUkRh5v8U3TOY2tCL8kFpnUHukbvrOfZBj5k1tArY9uTzvquUaQGo1ao+Tijg4O3M
         q/AI7Id6Fnls7RyiqA5dTKlE1p2J1YBhrUQ27QOdDwI8H6FLQx89th2fdMNFQP4CUwPP
         zMSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HCWAtwaB;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id a8si890667plp.2.2021.04.13.07.11.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 07:11:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HCWAtwaB;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1036.google.com with SMTP id nm3-20020a17090b19c3b029014e1bbf6c60so4873869pjb.4
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 07:11:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=29Kz76z7ZOP2iBx6/3DXnAWj3+GXDiiIznMC8bIFGsc=;
        b=HCWAtwaBVQdx3DeevYRszuLqOubsNmDDTOTU+FUgQJHr5WOPHzKY87DtFvsPI+S/81
         QR2Gk6DnFiU7zXEedpL+oq4LOUtxyg/lImKv8ezFR7EdoMoVQSNQLHIRLdjVv7XqWJws
         YGI9DeOoohjqarltgk4Fx+sy2IJ3LcRCnH4OII2+i/AKfoulTZHV2ZsmzrWG968gDgD1
         mcyiN/l+u3pl6Kh3xjmOZuaFH/61ucMxERgSLrl2UZaLj66WFwAb4fvHbJog9pkbE7mU
         AH2yjEx19AvArSSuSmm6RoOsDYo7gsx1mHjrND7Q5oFIW2/VIk3+gaRsKRHNyarn1rmy
         TrRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=29Kz76z7ZOP2iBx6/3DXnAWj3+GXDiiIznMC8bIFGsc=;
        b=LByl5gOWle8E/WVHVK15T8IyBjwJy+pEy/3Gi3JNEVk6FIEnvJQiZoeIE/7JNPvodR
         mf4z63WH/GKkMJhU1MLhaWPl49bnP1pbtE6BaXRyjQHo9kGQKyMnuMUyuwChWuNvZ0m6
         1P2FZB1xiiu4D/7YX5Q2hnv8IhJXi4Ksml2r9mbtkOvEYTbX0/U4jq7+OiDyz3mglLI/
         kkgDubWESsrWnnOW7Wf59s/QyirK4Z+phNE5sZel9547gzzb4s3S8vGUtKT2+Lq3h/nL
         536Gb1gvXk7HOoPjFJrErbJprGib2Ye94qgLvTDtau+WT+wb06hQ2jW/VSyavqKPkMwQ
         Hp5w==
X-Gm-Message-State: AOAM533iLMthQ2dc44M9b4hp1fCH0xZ4kYs5fa/0NSFtemAZfWcZUcu5
	tvqVkKqSjPiD8Ec8QgBGcp0=
X-Received: by 2002:a17:90b:390f:: with SMTP id ob15mr244765pjb.100.1618323091571;
        Tue, 13 Apr 2021 07:11:31 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id ms8sm2519954pjb.57.2021.04.13.07.11.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 07:11:31 -0700 (PDT)
Date: Tue, 13 Apr 2021 19:41:20 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: narmstrong@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org,
	khilman@baylibre.com, jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	linux-amlogic@lists.infradead.org, mitali_s@me.iitr.ac.in
Subject: [PATCH v3] staging: media: meson: vdec: declare u32 as static const
Message-ID: <YHWmiBYAbOUw5YrY@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Declared 32 bit unsigned int as static constant inside a function and
replaced u32[] {x,y} as canvas3, canvas4 in codec_h264.c
This indicates the value of canvas indexes will remain constant throughout execution.

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
Changes from v2:- Rebased this patch and made changes against mainline code
Changes from v1:- Rectified mistake by declaring u32 as static const
properly as static const u32 canvas'x'[]

 drivers/staging/media/meson/vdec/codec_h264.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/meson/vdec/codec_h264.c b/drivers/staging/media/meson/vdec/codec_h264.c
index c61128fc4bb9..80141b89a9f6 100644
--- a/drivers/staging/media/meson/vdec/codec_h264.c
+++ b/drivers/staging/media/meson/vdec/codec_h264.c
@@ -287,10 +287,10 @@ static void codec_h264_resume(struct amvdec_session *sess)
 	struct amvdec_core *core = sess->core;
 	struct codec_h264 *h264 = sess->priv;
 	u32 mb_width, mb_height, mb_total;
+	static const u32 canvas3[] = { ANCO_CANVAS_ADDR, 0 };
+	static const u32 canvas4[] = { 24, 0 };
 
-	amvdec_set_canvases(sess,
-			    (u32[]){ ANC0_CANVAS_ADDR, 0 },
-			    (u32[]){ 24, 0 });
+	amvdec_set_canvases(sess, canvas3, canvas4);
 
 	dev_dbg(core->dev, "max_refs = %u; actual_dpb_size = %u\n",
 		h264->max_refs, sess->num_dst_bufs);
-- 
2.30.2


