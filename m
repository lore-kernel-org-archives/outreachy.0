X-GM-THRID: 6949621312143753216
X-Received: by 2002:a17:90a:4406:: with SMTP id s6mr28189494pjg.93.1618231553644;
        Mon, 12 Apr 2021 05:45:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:1062:: with SMTP id 34ls7181792pgq.6.gmail; Mon, 12 Apr
 2021 05:45:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyIXrKacMB90AWbOBWGW25GK0a7Gc6o2YvVduuAzqhcoN+l1zTf3nfpBY2dXROqQjicMiY7
X-Received: by 2002:aa7:984d:0:b029:24c:8251:6d93 with SMTP id n13-20020aa7984d0000b029024c82516d93mr5373233pfq.34.1618231552562;
        Mon, 12 Apr 2021 05:45:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618231552; cv=none;
        d=google.com; s=arc-20160816;
        b=PXpJi2+DT5r2kZ8OMwmc1mBvqov3V6vLdA3a3d9rYf/RRMXVXPoAhJFf+LTd8ICq7e
         /7uXrvYIEBwFp1YHG1OzZG9VPRTsbBbDnv49yguEBwwlc7GSNGstQQoc9NPnqhFC7iLG
         UV2BdHPldiPBQi9y4wpvWB2Sw0CJpwmn9ZGho5Zo4xX6JZhaL9s/AiTpxSWlQEYp0D/s
         87u2z9NwuOS2WYbNsdo7rLRGISRhZ95e3XLcWKC1TvU4o8T9zKnbjw8C77mkPMvogHII
         bJ+PpQi0QuFqFNkFrd87dV3kt9MZZfjurt9GsauIQj1td+jb5mVIL0GzMFJSXBbPTzpq
         z0IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3NkHK9dlRLO9E11vKDI3by0BzQKmIoCdtqsiovYik5Y=;
        b=mcMDtfLmW1ayMKv63BmdlcsGhQCfTN4sgvGgdOTHYRERgBamYcjNY5QRR9Z+qa7jpU
         unwEP2D5RUEhrJIiVcMsdQAdygBPBD1RwlrUKyQToGxZSlSRW6RWtnrhNvoShMG9t1Xs
         S2Ryz/J1V+vCHfHVHam3BHa44T5l2Szh2Y2sh98zqkzOzacbzPXB5etBSyRBwR2hdRlW
         APJBwGBTyZLK7gVdCp/YSaJERs6av0/dVtGqPNNsuwUsKNMMwl9Rpi5q/iLODWZKSF8f
         sMSbztgW5HO+NmyuP+Ppz4mawzSjH5PllD75Z0tFPWNBQu6adQWEweF6HoTwqGlG5FWr
         M+DQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ipk8DwdY;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com. [2607:f8b0:4864:20::1034])
        by gmr-mx.google.com with ESMTPS id b14si111435plh.1.2021.04.12.05.45.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 05:45:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1034 as permitted sender) client-ip=2607:f8b0:4864:20::1034;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ipk8DwdY;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1034.google.com with SMTP id k23-20020a17090a5917b02901043e35ad4aso8753036pji.3
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 05:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=3NkHK9dlRLO9E11vKDI3by0BzQKmIoCdtqsiovYik5Y=;
        b=ipk8DwdYIM+Lp82DorQ0slg4Pzo/r2oPaPaTi5pIFNe1/ELqHN5WVqqpvKrp5agVi7
         Gx1ksSa8tqNrGMYoNsPhPZhSaOD31ER84MBkAiY/652qpkOz8FUKaRflCcPolsuJqaQ6
         rpOqq2YPaucNEYx0RI65wb2mHKvNL3vYqF3r+qsPlOeAkAyS0RI4sC5PlltLhW5BvjV5
         2YyEfVsbdSgTiO+zWf6Uqxse1uXsX26RbE/T3jMRoRW5y5Qecg7fKOkxb3dgCm5JrQay
         DJlJtoybuhS1gJpZIz/YYAwCbb9okPIrZzrTJMpW3c2pTAjLeSgZ9UizoxTHQ57bJlxT
         inrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=3NkHK9dlRLO9E11vKDI3by0BzQKmIoCdtqsiovYik5Y=;
        b=neH/xXcMKXRa9iTsebnLHxVjzyqJrcTJTzhwF2zZmE8AcnV2ayxM+pJuV4KLEjf0QL
         nCAoo5FZBdk9axJa7vdY1rZT0TQqHmY7zkApfg3UhCzmuAMxVpFRFg6TXS/zMK19l65g
         nogV0ZP5J9p4hLqP7iHdbIrW5WJY34vFxbckis12M7eRQrnTAaG5npiMLNZAzJc7YBCQ
         2pDjxU356dvj+t48MpwMjBE2l5JG4+DYvWG/BPUgB3xDMf1TifOZ1jyedMwZYBrRFev0
         KJijtPgq57ieIoGtaC7Zp0v31szmY4T0n0WPTojesxr2a+AYsintv5/tArOFzroFhEe/
         k8yw==
X-Gm-Message-State: AOAM532szqs8LQQFv8H/R1otzSjYO/c4l+g/8ofxJQL5OhDezlfnO5Wz
	fYNXDRtLQsg1+ekVnjlDABs=
X-Received: by 2002:a17:902:8344:b029:ea:fc89:fa72 with SMTP id z4-20020a1709028344b02900eafc89fa72mr4649548pln.45.1618231552084;
        Mon, 12 Apr 2021 05:45:52 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id i22sm11367148pgj.90.2021.04.12.05.45.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 05:45:51 -0700 (PDT)
Date: Mon, 12 Apr 2021 18:15:42 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, narmstrong@baylibre.com,
	mchehab@kernel.org, gregkh@linuxfoundation.org,
	khilman@baylibre.com, jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in, linux-amlogic@lists.infradead.org
Subject: Re: [PATCH v2] staging: media: meson: vdec: declare u32 as const and
 static const
Message-ID: <YHRA9i+BjveJOUvn@kali>
References: <YHIDufKhTEeuxyl5@kali>
 <88d04746-717d-5a7a-7ea7-67cf6c95aba9@xs4all.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <88d04746-717d-5a7a-7ea7-67cf6c95aba9@xs4all.nl>

On Mon, Apr 12, 2021 at 11:17:22AM +0200, Hans Verkuil wrote:
> On 10/04/2021 21:59, Mitali Borkar wrote:
> > Declared 32 bit unsigned int as static constant inside a function and
> > replaced u32[] {x,y} as canvas1, canvas2 in codec_mpeg12.c
> > This indicates the value of canvas indexes will remain constant throughout execution.
> > Replaced u32 reg_base and u32 reg_name with const u32 reg_base and const
> > u32 reg_name as it will contain data/registry bases to write static
> > const indexes declared above and will keep track of of contiguos
> > registers after each reg_base.
> > This makes code look better, neater. It improves readability.
> > 
> > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > ---
> >  drivers/staging/media/meson/vdec/codec_mpeg12.c | 5 +++--
> 
> Also change drivers/staging/media/meson/vdec/codec_h264.c.
> 
> It's a nice improvement, so let's do this for both callers of amvdec_set_canvases().
>
I have done chnages in codec_h264.c Now, should I send that as new
patch?

> Regards,
> 
> 	Hans
> 
> >  drivers/staging/media/meson/vdec/vdec_helpers.c | 2 +-
> >  drivers/staging/media/meson/vdec/vdec_helpers.h | 2 +-
> >  3 files changed, 5 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/staging/media/meson/vdec/codec_mpeg12.c b/drivers/staging/media/meson/vdec/codec_mpeg12.c
> > index 21e93a13356c..861d8584f22f 100644
> > --- a/drivers/staging/media/meson/vdec/codec_mpeg12.c
> > +++ b/drivers/staging/media/meson/vdec/codec_mpeg12.c
> > @@ -65,6 +65,8 @@ static int codec_mpeg12_start(struct amvdec_session *sess)
> >  	struct amvdec_core *core = sess->core;
> >  	struct codec_mpeg12 *mpeg12;
> >  	int ret;
> > +	static const u32 canvas1[] = { AV_SCRATCH_0, 0 };
> > +	static const u32 canvas2[] = { 8, 0 }
> >  
> >  	mpeg12 = kzalloc(sizeof(*mpeg12), GFP_KERNEL);
> >  	if (!mpeg12)
> > @@ -80,8 +82,7 @@ static int codec_mpeg12_start(struct amvdec_session *sess)
> >  		goto free_mpeg12;
> >  	}
> >  
> > -	ret = amvdec_set_canvases(sess, (u32[]){ AV_SCRATCH_0, 0 },
> > -				  (u32[]){ 8, 0 });
> > +	ret = amvdec_set_canvases(sess, canvas1, canvas2);
> >  	if (ret)
> >  		goto free_workspace;
> >  
> > diff --git a/drivers/staging/media/meson/vdec/vdec_helpers.c b/drivers/staging/media/meson/vdec/vdec_helpers.c
> > index 7f07a9175815..df5c27266c44 100644
> > --- a/drivers/staging/media/meson/vdec/vdec_helpers.c
> > +++ b/drivers/staging/media/meson/vdec/vdec_helpers.c
> > @@ -177,7 +177,7 @@ static int set_canvas_nv12m(struct amvdec_session *sess,
> >  }
> >  
> >  int amvdec_set_canvases(struct amvdec_session *sess,
> > -			u32 reg_base[], u32 reg_num[])
> > +			const u32 reg_base[], const u32 reg_num[])
> >  {
> >  	struct v4l2_m2m_buffer *buf;
> >  	u32 pixfmt = sess->pixfmt_cap;
> > diff --git a/drivers/staging/media/meson/vdec/vdec_helpers.h b/drivers/staging/media/meson/vdec/vdec_helpers.h
> > index cfaed52ab526..ace8897c34fe 100644
> > --- a/drivers/staging/media/meson/vdec/vdec_helpers.h
> > +++ b/drivers/staging/media/meson/vdec/vdec_helpers.h
> > @@ -17,7 +17,7 @@
> >   * @reg_num: number of contiguous registers after each reg_base (including it)
> >   */
> >  int amvdec_set_canvases(struct amvdec_session *sess,
> > -			u32 reg_base[], u32 reg_num[]);
> > +			const u32 reg_base[], const u32 reg_num[]);
> >  
> >  /* Helpers to read/write to the various IPs (DOS, PARSER) */
> >  u32 amvdec_read_dos(struct amvdec_core *core, u32 reg);
> > 
> 

