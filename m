X-GM-THRID: 6803757345304215552
X-Received: by 2002:a17:90a:bf17:: with SMTP id c23mr11639040pjs.17.1584138505818;
        Fri, 13 Mar 2020 15:28:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:58a:: with SMTP id 132ls4685215pgf.5.gmail; Fri, 13 Mar
 2020 15:28:24 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvsp5VH35qj0040rtSCg5ARjFMx9IsAnasIpSOIfXJf1OpGfYhO+E+KZlK8IJVSWmDxAIIf
X-Received: by 2002:a63:36cd:: with SMTP id d196mr15253013pga.280.1584138504207;
        Fri, 13 Mar 2020 15:28:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584138504; cv=none;
        d=google.com; s=arc-20160816;
        b=d14vKEBKzqO0/M0Ky/Vaip4WsfytdVW6rcctklCUwIFwGN8VZuqNfx98JtNaENOWpN
         DdZs6lbfUroVuw47gGR5pzqe/fg6yzrpKq8Eo8/M6arH5a8u8vEQWqdULDnE308J+wuI
         qVke1zcBD0qq/it9c5BRGku2aj96IEwbT99pLtD22KVbggS1IReuHvEsuVIT+2OuluTM
         EioLOoRlD4HN0MYT4etcA8tPpk3RXkoSD35GqYqoN8wqs21Ee+8sQgnRk/hXLqfTpb9h
         87iEJyDaMc5WRCoGY+KKbv2xe4FXAAW2duI5ZcKcZCGHpDPcDvQAiI8gGPqPeY5IFD6W
         Rxvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=35KBJUGWp84Yg4nGvctgEaZmc32zcFwB1/TBvppGkog=;
        b=OrD7sqLkkMI/JgISJx31T5bK4PcHycq+gbT2NhlyUctVVq3KzDOn5WsX0kT8/NUdzg
         5IvQijnlbJ4kcxIbsM2qKyjtcUPRpnjVNqZiw6S69xmrBBybFI//Ul0A+7U1+RECuUp2
         1oHpa2i2FASAGzRJGtPiqVQZPXuzNtqDH9PLsIFJIcNcLsZpZcwoo3QUJsqbpxS3SDwE
         JXIeWgBIzMz3OsrYHfHgzpb2VTvL6BsbVn52mCcgeAeXbj+tur2nibwAtm9RP+/ugWFJ
         LGXnKD7kMmydnWMY7VkYGuSKFPMUBB7jNTrxa28aN3tA6Z4pUqABCo/LxDbw6xO+HDqI
         uylQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RlbNEttb;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id k3si457640plt.1.2020.03.13.15.28.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 15:28:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RlbNEttb;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id w65so6116981pfb.6
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 15:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=35KBJUGWp84Yg4nGvctgEaZmc32zcFwB1/TBvppGkog=;
        b=RlbNEttbNuqUtTmPoNB4du3NQj3dAyUcock4aH3Q9jaSTXMdrHJAcRLIUIlW8x8vdw
         DKqYNM6fwCIbAYK6T6e7clpT4hBGYM73qGCtvI1tMcQO+eBpj98C7EmtbNwdil51WFlW
         82cIFv5ITlL0M3e2ehXbMkc81wkzw8az+rnz52ZZwTY4PqOe5F9ILvcRhA4tUtnr4nJY
         lDosngBCe8Nw1HXy8u+uKi/9vU5BzsIbiFBv7BKJStPClGYpZfwZvywzNfG1csXLoVtG
         +KJg/IVMLSz21wcJzFslzQu+XCU/g7VepFvvZQ6I+gRwCI+bC32mcv2Uyx0HNAPlxgZP
         DoLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=35KBJUGWp84Yg4nGvctgEaZmc32zcFwB1/TBvppGkog=;
        b=RyICVNIsZlQd+42UfZGF/sxZmd5VHQIpx2PjXXgvXY/2dg7e7kQMdN0ATRcmlqbEkP
         LGcw0s3vRaZqGuEOjl4zIhxJ4xOkj/SudQF8JUurnpuDOrX/d3C4ECtnVTNFuEw3YkUm
         +WVbEErNnxGuxbrM2PHWtaoqZsXL5B5R9RRLc+oHxQXs9fHeRTnQZ55O9Y2rIZDLqAMv
         b+BF88oEnLyv2SYh2LhMN1dl6ARYW+oqnB8Jm+8rGxK1dUmwVk7VS+MrAaBsuPuM0UPf
         fWbvTzKYOq3Dk3X1JzFRz7XAdZxVbkyn0Y0FNIvxURJx0Qyfkjck+UHbWRasoF/AtOKM
         E2Ag==
X-Gm-Message-State: ANhLgQ3hbDO+FUiNGabwRgcbG3n+iL3C3g3A1JxH19LfcjHagiKsIhMi
	aXoVAwglX//StXroy7mj+6pU2Tv5
X-Received: by 2002:a63:2b4e:: with SMTP id r75mr15428177pgr.32.1584138503802;
        Fri, 13 Mar 2020 15:28:23 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.228.147.139])
        by smtp.gmail.com with ESMTPSA id r14sm3136235pjj.48.2020.03.13.15.28.18
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Mar 2020 15:28:23 -0700 (PDT)
Date: Sat, 14 Mar 2020 03:58:15 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com,
	kieran.bingham@ideasonboard.com, sakari.ailus@linux.intel.com,
	mchehab@kernel.org
Subject: [PATCHi v3] media: staging/intel-ipu3: css: simplify expression
Message-ID: <20200313222811.GA31838@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

An array index computed inside square brackets complicates the code
and also extends the line beyond 80 character. Add new variable to
compute array index separately and use it as an index during assignment.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Changes since v2:
  - Added feedback from Julia
        1. Rephrase patch description to make it concise and simpler.
Changes since v1:
  - Added feedback from Helen
        1. Updated variable type to "unsigned int" from earlier "int"
        2. Implemented the change in another area in same scope
        3. Left newly added variable uninitialised. 

 drivers/staging/media/ipu3/ipu3-css-params.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/ipu3/ipu3-css-params.c b/drivers/staging/media/ipu3/ipu3-css-params.c
index 4533dacad4be..5622319b69ff 100644
--- a/drivers/staging/media/ipu3/ipu3-css-params.c
+++ b/drivers/staging/media/ipu3/ipu3-css-params.c
@@ -49,13 +49,13 @@ imgu_css_scaler_setup_lut(unsigned int taps, unsigned int input_width,
 	int tap, phase, phase_sum_left, phase_sum_right;
 	int exponent = imgu_css_scaler_get_exp(output_width, input_width);
 	int mantissa = (1 << exponent) * output_width;
-	unsigned int phase_step;
+	unsigned int phase_step, phase_taps;
 
 	if (input_width == output_width) {
 		for (phase = 0; phase < IMGU_SCALER_PHASES; phase++) {
+			phase_taps = phase * IMGU_SCALER_FILTER_TAPS;
 			for (tap = 0; tap < taps; tap++) {
-				coeff_lut[phase * IMGU_SCALER_FILTER_TAPS + tap]
-					= 0;
+				coeff_lut[phase_taps + tap] = 0;
 			}
 		}
 
@@ -82,8 +82,8 @@ imgu_css_scaler_setup_lut(unsigned int taps, unsigned int input_width,
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


