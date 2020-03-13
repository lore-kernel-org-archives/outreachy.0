X-GM-THRID: 6803757345304215552
X-Received: by 2002:a17:90a:178e:: with SMTP id q14mr4750590pja.132.1584123201457;
        Fri, 13 Mar 2020 11:13:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b712:: with SMTP id d18ls4773306pls.1.gmail; Fri, 13
 Mar 2020 11:13:19 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuf673jGJsHIeDZtprZ0UtNo0GUWSghLNU4lEDWF3vnkO23MYi3rWlB40Pj7qvhB6bD2j53
X-Received: by 2002:a17:90b:90:: with SMTP id bb16mr11437252pjb.24.1584123199714;
        Fri, 13 Mar 2020 11:13:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584123199; cv=none;
        d=google.com; s=arc-20160816;
        b=PkQr5uazNQFRDinZkGEn351EqttpuUNfGlAZ+eKffaiC+KIEou26gQ3QhUg7tOeo3C
         WLl9KjNw3Xc+LrMUlBmzS1bbxk3pYiH7cyuSYhQ3ODFDzXEjsy0DxrqklfKvPVRFDPDT
         mOEc/zZCZ/z45uQ6yyH575XBUK+gaNXks5osL4BaGD/VQYQCJSeZ+zIIbgKhre5bQyzQ
         hmiTUh/Lldy9qtOXsublQs77xLZA2HDV3DGeLNN5KIReWd1C4Zh2Eyr3uZU8MtNpj/fb
         sMkenRVOWABjNNy7ci3+yLKCu+TMD23uuwjh1JQlRNGAvcmoR/eOmK4uj93aRwUkSe5Z
         Fuug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=TD+uMVExpepYcH8gHmfOwpJM3JBjq5MqlSvZR2zqPhY=;
        b=qDJzq4NEBt1yE6leDvS6tJEhjGtayC2179MEKqqDcVrdy04eieHPrf2art8Wuz0biX
         7sG2c4K0W9FEnnrOZVk8iRDg4lZdvvhXpNHE/D5t3BDOb1SVbexAto4pF6RCRQMrblr+
         Il5GnPAEwSUOXhql+3OiisiFMmQ8Aqvo99fy2OXFeCbK4KBJW0ruD1Uv/14b5dCfMcYv
         z9vApMrxgz01xtfNGj7l1ucytVwL02H2XU4aL4iI0o7Hm/Z5nWNbpkAQavuw5owwBb4c
         ni6bjJfCvHYQzpZWbNxEdsz35IL6wSp0yh8XBi9iWbqdiTd9sv2tu5GA/TEgfiRNTQ2C
         cfVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="AxVJ/MEU";
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id l12si450823plt.5.2020.03.13.11.13.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 11:13:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="AxVJ/MEU";
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id u68so5707709pfb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 11:13:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=TD+uMVExpepYcH8gHmfOwpJM3JBjq5MqlSvZR2zqPhY=;
        b=AxVJ/MEUQpGjst5DKNXXqL6ZECbmY6OBSdyuWCYSGVWtE4Os2/Vc1RxwR4sE5NVK1V
         rNdOs2ouP6QD9vousUDminBg4A+APhX3SXsq/VdGsC8ID+9HSgcB2Ft1Ds4nhlMW+RmL
         Zvjpqy58KluLQOkMuzjU/EH/dHSn4aW1pXssbKlXCuZvmHRoDsOiA+UE99440mOwzyxs
         qPJR/GHjXkSsoVjGvZoSXD/86PkuIOKYwxSTQQLz02OEfQDtRcdePyf9xd330nCaDcAJ
         3l/o1nURWsXR+PoOrafxxs1xExVo11pS1Oi1pHJgEGYUNaStf4tmLK1LpwEktWziy9g0
         bQ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=TD+uMVExpepYcH8gHmfOwpJM3JBjq5MqlSvZR2zqPhY=;
        b=Pns5sWGl7WYSV9ei1+UPWmhWvVSVin6Wc9Callgt4Y5Dl9gPXbWdcKXOM19zskMoIp
         LwtEU80GrH3k7JpI2/sptbiwIKImeJfjDpqAYKgaaxYrDx47xS642HUhbeGoSiXyPJiC
         LzI77aC3yvXYnoRgqktNdNTSardIRF1zxxAZ8kp7dXfD3UwMd4l2TuRvAw+tVWkZ68G7
         +s00BahiuoNBi4ycv7RV9OzV5BpY0VXtcbfGlPy+ZU9MmmcOcgFLH71Z7Iy7CR9SQhfY
         PJ2pmStC45WHGmdR1hS88oZAVgQkKc0QAij7/RBfAuU26AB3r00OphXfjCPkPZ4hS8bw
         Fwvw==
X-Gm-Message-State: ANhLgQ2WAeroxnURxWtwItEdgn6RqbyqLL2kMoI0sW1xsfXxfcFE/mtr
	92htTjJZ4yF2GI06AHNDPj6vh9DV
X-Received: by 2002:a63:441e:: with SMTP id r30mr13932765pga.51.1584123199237;
        Fri, 13 Mar 2020 11:13:19 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.228.147.139])
        by smtp.gmail.com with ESMTPSA id i187sm18939616pfg.33.2020.03.13.11.13.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Mar 2020 11:13:18 -0700 (PDT)
Date: Fri, 13 Mar 2020 23:43:13 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com, mchehab@kernel.org,
	sakari.ailus@linux.intel.com
Subject: [PATCH] media: staging/intel-ipu3: css: simplify expression
Message-ID: <20200313181305.GA20332@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

An array index computed inside square brackets leading to complexity
and code line exceeding 80 character. Add new variable to compute
array index separately and use it as an index during assignment.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/media/ipu3/ipu3-css-params.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/ipu3/ipu3-css-params.c b/drivers/staging/media/ipu3/ipu3-css-params.c
index 4533dacad4be..4b15e767bf32 100644
--- a/drivers/staging/media/ipu3/ipu3-css-params.c
+++ b/drivers/staging/media/ipu3/ipu3-css-params.c
@@ -50,12 +50,13 @@ imgu_css_scaler_setup_lut(unsigned int taps, unsigned int input_width,
 	int exponent = imgu_css_scaler_get_exp(output_width, input_width);
 	int mantissa = (1 << exponent) * output_width;
 	unsigned int phase_step;
+	int phase_taps = 0;
 
 	if (input_width == output_width) {
 		for (phase = 0; phase < IMGU_SCALER_PHASES; phase++) {
+			phase_taps = phase * IMGU_SCALER_FILTER_TAPS;
 			for (tap = 0; tap < taps; tap++) {
-				coeff_lut[phase * IMGU_SCALER_FILTER_TAPS + tap]
-					= 0;
+				coeff_lut[phase_taps + tap] = 0;
 			}
 		}
 
-- 
2.17.1


