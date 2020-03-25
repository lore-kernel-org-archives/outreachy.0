X-GM-THRID: 6803757345304215552
X-Received: by 2002:ac8:73c7:: with SMTP id v7mr5010635qtp.383.1585168712562;
        Wed, 25 Mar 2020 13:38:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:9ba6:: with SMTP id o38ls815068qve.8.gmail; Wed, 25 Mar
 2020 13:38:31 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtIQI7FAg5Vg7mFiVq+d38orGSdMtzQrL89j30mLNvkpAP7VxHNL+1moutLTEO+ezsaBoBt
X-Received: by 2002:a0c:e644:: with SMTP id c4mr4899164qvn.170.1585168711300;
        Wed, 25 Mar 2020 13:38:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585168711; cv=none;
        d=google.com; s=arc-20160816;
        b=Eil7Q6SFrPFzTNT10aW8f2qhusA9LcINxlg7uwk8HEVnQjAp6XlD8OrZxde60FM87y
         1CDda/SBWXYX0mpvTP3QsXrTwjPwTLpS958LdAoW/mna4+7vYTaWVY1qCiT+LODnZ4LF
         qLzZHnR7Pi2Tr/XR6tYczuL86vRm0fvHvQ1kpfgxwAFZXntHNRdeUDniuxC1Ki0KVJJG
         o2oQ48+dcrSBQpNR6dt5LI68c/hy639+Dy090L5/95PuAvOckAe7rI0BOTsj8hSH3tOk
         uQ+AyouuHzboOlu+nCzgK8BlXgmUTEPy2wby4Mr4WelGJm8s2FdpgsEPGjeh3L2y/DDY
         RX4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=q5FLHoJRoSI2yWPkxN43ftWlKD8uJFvwFo1mnxXm5Tk=;
        b=A9gkDzoZs4Ok/FLAMw+gNqvWWUuvxKQnLJErRUKIDXS3ovYDczaI4oPJDTUcFSciBh
         XsKAPcC/IUBt54BmBFJ8p64upT4LCV5Vhiu/lvEcd3YyePOYAR/JnHVuRpimCKRwXPaJ
         wngZ1961BX9lL/PvM/psL1EN+z1fwjz4Id3KBgUazRBs5Q+qXnNaPlVRB4hpa+8IZs8m
         bTymBmphfdvlEtd2s6RW6lKlQ58iciJzkdZZA/5zH0D0JbWIHY3kbrxOaFd52CJNu79s
         cXKs+PCZ4U83Zgz31e/v5LSl04ltZU24iMOKtRfFlsdxFym95qdCvxQGoZFfZ5j+tdyt
         InAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YPL0aqoY;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id m6si26821qtk.2.2020.03.25.13.38.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 13:38:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YPL0aqoY;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id f206so1623525pfa.10
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 13:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=q5FLHoJRoSI2yWPkxN43ftWlKD8uJFvwFo1mnxXm5Tk=;
        b=YPL0aqoYcG2QH58yVrGPOCn9vXClVNvaaiXbEzutPN/N9v869qVDLaxiscUCESKHxI
         BRx45tGvIfwGmeyrWibi5w/aJ0vr0RIvx1n9oCozRlBJnfa/un9GKyJ/xxOJuRkxvaTi
         6MprjBqQgF+/O/xvUylG5H228VU2HGqpAaf1PbzG4s30pIacftPvsOpNfcMcCDfAZcfv
         rpxJ3QZVbEXm2QghdxGxK3nJ3WMRlqHfKwrCBTx9+L+wtv9gMvPK1pmEkp0I8ChiEVkc
         W82wDnm0EAwF7YH7p9p5zHsSc+1B7bYqJSx+IS3YBqctJkb3MgKaUTqmpqg1C935ueVF
         L0Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=q5FLHoJRoSI2yWPkxN43ftWlKD8uJFvwFo1mnxXm5Tk=;
        b=LYzwX9T88H39lGpDWzw7RsG6+3OwNg6DW/PjL4MJ1SG8SFacXusvwrbvz9zCuIvA9f
         Ygam1MNzl7sXyMyTnKiXl35JigEWy/bnJ0CSzPl8B+7mFWRm8d3JXCE2TRYUuUUYSABZ
         7SeiR03dKolU48C30Nhk5e9GoR5IaIqnuCL0ieKWpEum8r0ZOkH9QeDXGFC3lT+yfMil
         qQM0IyeTCzHK+INYYb1OJ5SzLFGILukuGm8buSRk1dLw6fyW/b+JEMEo7rmv3d2+KTbm
         cp0L0/gxOhylSCjjmpRGZhkEtL9J9kakXnxx6/B8p0QsYmtYmcJQeNdhZN4hPl4hYSeq
         /vdg==
X-Gm-Message-State: ANhLgQ2BSswSlVxL3eZ1fuacigCeG/z81KQpYqEl+01cg/DHtYSHOity
	1e/WnQB9ENd5UQqk2zxKDS8BhZaX
X-Received: by 2002:a63:f113:: with SMTP id f19mr5136246pgi.168.1585168710235;
        Wed, 25 Mar 2020 13:38:30 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.228.147.248])
        by smtp.gmail.com with ESMTPSA id r8sm123176pjo.22.2020.03.25.13.38.26
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 25 Mar 2020 13:38:29 -0700 (PDT)
Date: Thu, 26 Mar 2020 02:08:24 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org
Subject: [PATCH v5] media: staging/intel-ipu3: css: simplify expression
Message-ID: <20200325203819.GA30916@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

An array index computed inside square brackets complicates the code
and also extends the line beyond 80 character. Add new variable to
compute array index separately and use it as an index during assignment.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---

Changes since v4:
	1. phase_taps variable implementation is now consistent in both
	the code blocks as suggested by Stefano.
	2. Also including linux-media list as a receipient of the media
	patch as advised by Sakari Ailus.
	
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


 drivers/staging/media/ipu3/ipu3-css-params.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/ipu3/ipu3-css-params.c b/drivers/staging/media/ipu3/ipu3-css-params.c
index 4533dacad4be..fbd53d7c097c 100644
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
@@ -71,6 +70,7 @@ imgu_css_scaler_setup_lut(unsigned int taps, unsigned int input_width,
 	}
 
 	for (phase = 0; phase < IMGU_SCALER_PHASES; phase++) {
+		phase_taps = phase * IMGU_SCALER_FILTER_TAPS;
 		for (tap = 0; tap < taps; tap++) {
 			/* flip table to for convolution reverse indexing */
 			s64 coeff = coeffs[coeffs_size -
@@ -81,9 +81,7 @@ imgu_css_scaler_setup_lut(unsigned int taps, unsigned int input_width,
 			/* Add +"0.5" */
 			coeff += 1 << (IMGU_SCALER_COEFF_BITS - 1);
 			coeff >>= IMGU_SCALER_COEFF_BITS;
-
-			coeff_lut[phase * IMGU_SCALER_FILTER_TAPS + tap] =
-				coeff;
+			coeff_lut[phase_taps + tap] = coeff;
 		}
 	}
 
-- 
2.17.1


