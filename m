X-GM-THRID: 6803757345304215552
X-Received: by 2002:ab0:6796:: with SMTP id v22mr11811980uar.41.1584904750654;
        Sun, 22 Mar 2020 12:19:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:354c:: with SMTP id o70ls60145uao.1.gmail; Sun, 22 Mar
 2020 12:19:09 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vus8fHMZ9kxl2952OOuPuNNqh+tTeX5I3YyAZIHHRRD8grDnXJmsvNQazeSGMtnwhAvqMys
X-Received: by 2002:a9f:2c8d:: with SMTP id w13mr11930243uaj.51.1584904749382;
        Sun, 22 Mar 2020 12:19:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584904749; cv=none;
        d=google.com; s=arc-20160816;
        b=ELzpa60eJ91c+4KZY4BwLVmPacjTjJBnj04FPgODl4klnkYMAthkvBhKSZqS5nMwmQ
         Z93ew5R9KMS4+QFtwElDP8pfF+ZtTNQoc+s/1WqTr4JKTxkVKjc4AcZRrzw92EYoX7p3
         8XhqM0KalkrvR3WMFf0ky4iyOAZvXCFZiO1g+x1+28iiX3cAk+nhx4OeaFNzH3ku3vkn
         y1ofQq+UjNk7r+EaBpjtezoGtiGja1dYxpO2QsuRs1WnHGbDd3VCEGd5hQfeL6r8iN+z
         zc1Mm3/Yd4N1cxb/CCG8Q0RHWekX1xp40lDEdhAc32z8YGVzFtXw2PGqcyvbvUi35JGm
         VSzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Sy1jw0koKAJeVxsBec0uGKaUTT4NgaXIq1/WmLgWUkA=;
        b=rXIdn5gvIdjeLpVjdWHHjq9dPosCgpOwpjkmLdLZFT40Cid2G4keZHujhs6SczDuh1
         UR70vzdyZ/Te5vc3xlwoZZiZk2t7NCVOz94FSfe4bUj3aVLB6UgbXuoMsxBsKouQBvOr
         Tbi5oEXbl7vel7mCGsu8XphOQkswYhYV6zMAQlyASDihRB9iTiCcUF+VRa/Bu4HEYW7G
         PpnYjo8o0WqAP9owpqMMAlsdLoP6fqy8m6aHsQXaoQwLP2sZTh5Nf5uqcLWksXkjgfgY
         woPa2Hsk1V9IEASQy6zfKTzXR7Rtir5wrIvowqj5go7vrP6H2ClbzOFMHVDbpRpT+bsM
         YwrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vvx2XDdz;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id c9si654240vsq.2.2020.03.22.12.19.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 12:19:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vvx2XDdz;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id ng8so5074140pjb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 12:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Sy1jw0koKAJeVxsBec0uGKaUTT4NgaXIq1/WmLgWUkA=;
        b=Vvx2XDdzxJdCt/vmV2YMqti5qP1kZy6PPi3zFMp7Cv7vpLl5CFaZo+rb3bePyv1qVg
         rDBGAPrlrmbJEpNC1pG5+pu441q549xa0iOQeK5PgMLUHjSkkoVMUIdHui2m4ORI8xmT
         2mziEFJIHxNqgxE6tWAUkrTPQ7+G9ixASSXbsSpwcgAZvZnFRzbj7X7G5+1Hq7VVzQ5M
         VFG9FHOPo3rgPneRGffn0fViW20bVIuMiROEezIsn1F/eNj69ZVNd2jD08UQ7+8yfkAp
         0dCr/MMH7MVKsDBC0JAdIEawYYwNtuZc4gIFFBS+83oZN1a+SdtYYmDr6z/EF7Bni4W6
         AJWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Sy1jw0koKAJeVxsBec0uGKaUTT4NgaXIq1/WmLgWUkA=;
        b=HvIVAKGOtWfodasGqFqlZElLHbFgPC3bc9hnN90nkcirWkMxN1nbzWWALE76lrIML8
         EPXdq1i+yHl0SP8rzS1DXHqplKiVMNcwhJRgNHadUmCNdJzkASeEB2DNplguSFC47d3n
         FGMNk2JGkB9GJCbiP0R2GEoGt81VxfcGOu+HdMta6QMB1bvWeJRDprKdJEjOcJ7zagDU
         d8jOvPoIABAYn9UH1xdPo/opEMT7BUfmzjFfa5HywicJcLsQ0xymykTELj1p5KmQUtCD
         84kAEck0WbJjg8nDwZT4ODV/BcmQkQzgOF6BkSVwIEno3LJ3df4Fen1FRvLjHOBCw3es
         saHw==
X-Gm-Message-State: ANhLgQ0duC7bLCmY/e+XJQ/27+ZjQDa6ZPFeUn4Kmw7i2wjs9sKLRxTI
	TtMd+a38+FGZYfTnoa/wTSoKParu
X-Received: by 2002:a17:902:7615:: with SMTP id k21mr17914531pll.160.1584904748208;
        Sun, 22 Mar 2020 12:19:08 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.240.207.191])
        by smtp.gmail.com with ESMTPSA id t17sm10372592pgn.94.2020.03.22.12.19.05
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Mar 2020 12:19:07 -0700 (PDT)
Date: Mon, 23 Mar 2020 00:49:03 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Cc: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4] media: staging/intel-ipu3: css: simplify expression
Message-ID: <20200322191859.GA13840@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

An array index computed inside square brackets complicates the code
and also extends the line beyond 80 character. Add new variable to
compute array index separately and use it as an index during assignment.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Changes since v3:
	1. Removed extra 'i' alongside word PATCH in the subject line
	2. Removed extra curly braces that are no more needed post
	implemented changes. Pointed out by Stefano.
Changes since v2:
  - Added feedback from Julia
        1. Rephrase patch description to make it concise and simpler. 
Changes since v1:
  - Added feedback from Helen
        1. Updated variable type to "unsigned int" from earlier "int"
        2. Implemented the change in another area in same scope
        3. Left newly added variable uninitialised. 
	
 drivers/staging/media/ipu3/ipu3-css-params.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/ipu3/ipu3-css-params.c b/drivers/staging/media/ipu3/ipu3-css-params.c
index 4533dacad4be..cc526c57248c 100644
--- a/drivers/staging/media/ipu3/ipu3-css-params.c
+++ b/drivers/staging/media/ipu3/ipu3-css-params.c
@@ -49,14 +49,13 @@ imgu_css_scaler_setup_lut(unsigned int taps, unsigned int input_width,
 	int tap, phase, phase_sum_left, phase_sum_right;
 	int exponent = imgu_css_scaler_get_exp(output_width, input_width);
 	int mantissa = (1 << exponent) * output_width;
-	unsigned int phase_step;
+	unsigned int phase_step, phase_taps;
 
 	if (input_width == output_width) {
 		for (phase = 0; phase < IMGU_SCALER_PHASES; phase++) {
-			for (tap = 0; tap < taps; tap++) {
-				coeff_lut[phase * IMGU_SCALER_FILTER_TAPS + tap]
-					= 0;
-			}
+			phase_taps = phase * IMGU_SCALER_FILTER_TAPS;
+			for (tap = 0; tap < taps; tap++)
+				coeff_lut[phase_taps + tap] = 0;
 		}
 
 		info->phase_step = IMGU_SCALER_PHASES *
@@ -82,8 +81,8 @@ imgu_css_scaler_setup_lut(unsigned int taps, unsigned int input_width,
 			coeff += 1 << (IMGU_SCALER_COEFF_BITS - 1);
 			coeff >>= IMGU_SCALER_COEFF_BITS;
 
-			coeff_lut[phase * IMGU_SCALER_FILTER_TAPS + tap] =
-				coeff;
+			phase_taps = phase * IMGU_SCALER_FILTER_TAPS + tap;
+			coeff_lut[phase_taps] = coeff;
 		}
 	}
 
-- 
2.17.1


