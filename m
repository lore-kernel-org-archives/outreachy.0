X-GM-THRID: 6950525312871432192
X-Received: by 2002:a5b:303:: with SMTP id j3mr40998769ybp.433.1618312172720;
        Tue, 13 Apr 2021 04:09:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:240a:: with SMTP id k10ls3510322ybk.10.gmail; Tue, 13
 Apr 2021 04:09:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzV3AFn+5UvH9c8hA/7RKW1bfFfZ9x8sBMUrk2fxBTYZrHEaFPBHPYEiXLOHAOKawcF/Y0m
X-Received: by 2002:a25:ba87:: with SMTP id s7mr42439805ybg.222.1618312171714;
        Tue, 13 Apr 2021 04:09:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618312171; cv=none;
        d=google.com; s=arc-20160816;
        b=eZvLj/lwIYGYeX2lP1Wmsee+wa8feK7pqTyfl97DcjOTUsCXx5mG2UNH0+p3h5SESh
         ghrIHSMls/XRQOHavt3X7o7MJ4IOAAVDN7aGVy55sc/y6ZGcNKfoq/8s5BfiS3O8KFCE
         +QogcgXV5tHEkWSpx6n+0RYo4JeGHi7md/Ssl2T59yLVhdPa9s0H3UVkjKECo7vPDaSr
         QJP8TyR7pzRPpF2BtFlFSDLnsOu6egzJ6/gCjwe3XRi2r6qs+XGlfc4EO5GQuyp1KGOt
         +MlxCqYVHHoJOTBiI0RDfETf+PENOcvcOJ9XOoqDOn7dVmCxv5zdqyRdY2refk8EL2Sc
         a1SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wkMmVdaqiVi3xtXd845LmjsnmFo5YjLpPek7JkQnFh0=;
        b=RBrVNrI8Cq9suKmx4K0Be99xy1M60D535dxk3Pm2xqSVDQMEl6zy5VwOiZJa6F90rr
         3ORDvuqZjm0UL3DVd1Dx+zz8djFB494CVDkOZqjjWzyczilsWl4K4NY9wbICdGSO5Smf
         g65TE8M/k63vXC5dApZLUmSTSvuah0glfobLGmOw1i8ECcpkB1iZ0F/D6+uw3//nyRB4
         o3rVzlu4Babp0wquoq81VkfIAU1oCOdHEkkrldJ5TTQbK1EhIaxs2HE4LLi44in5upAO
         +IeRCaqL9vdMzlBKJVCBBelp/YbLTfRutDu3SixGa0xkP+clJBg+Qlqq93dGA4tbkcFn
         +7Sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Sq/7PrdM";
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id k6si587948ybt.0.2021.04.13.04.09.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 04:09:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Sq/7PrdM";
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x433.google.com with SMTP id o123so11204996pfb.4
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 04:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=wkMmVdaqiVi3xtXd845LmjsnmFo5YjLpPek7JkQnFh0=;
        b=Sq/7PrdMcKFFjvPyCPXpPvIwEqJsyzG21kJVszuBec1vwYduaw3CTQDQNFW2dn/von
         hXiaXtbOcrfryJR5KRclOSaBkpmesm+siY/qMKbndGvQiOiez5w+x0iLl+MPZRJqIo5m
         Wg+7BaycfkT2sywTDkrN3KLNj3ZsHxGQB0PomK76DahTDiiUF/C7FATDLlE5mz+qL4lm
         WytzfJXmLD8yPDOjW7giSiYGkF3r31/Yd93ztWMNbAHlRqzaE6y9uS+vo1Ng9Etri3qH
         rUKEWqPzoKTRX+8q3R7cmQF0vIkZabRLM2NsF3/jqbgujRod278rEfz8IbApupVk9U2X
         K2qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=wkMmVdaqiVi3xtXd845LmjsnmFo5YjLpPek7JkQnFh0=;
        b=pp+IykK9dD8MGjEgrm1PEcllIgFOdUzvWG+Lzz9+n4XOnukVSrW4tmt1GWGsl2Dbtv
         2iVLjrU6ZO95XfW191nTArcPFS3OiV8HCaso8xf3vZnz8/jgOIzH/7NH1MogqeFqMozz
         BE8znOGkDpChjsMpGyvG/z34gFBXIIXwr6cofHHNLShoN/3icQi5F8+Pbyr2d0TrveRm
         TUAHgoitnBnbcHSh5OcJjeGbbwqI7TxKtjRHQREUZxzs5Z8IkiVIeuHKYHTMXKcz90qC
         r6NxL9Sl8m3WgH/DKZot/JzsxF0ehaoyO+7YKG21FCGKn3FRa4tHqKZGbSJr+M5LMZcg
         4Arg==
X-Gm-Message-State: AOAM532ACSvCTcxfAnaxeW/7EZ7L0Q/H5gB+Fk24KCjOHh/Q/w2PjxDQ
	4ICAw8fx7iYjum69xvOHgs4=
X-Received: by 2002:a65:5c88:: with SMTP id a8mr30376055pgt.130.1618312170656;
        Tue, 13 Apr 2021 04:09:30 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id s20sm10295296pfh.144.2021.04.13.04.09.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 04:09:30 -0700 (PDT)
Date: Tue, 13 Apr 2021 16:39:19 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, martin.blumenstingl@googlemail.com,
	narmstrong@baylibre.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org, khilman@baylibre.com
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	linux-amlogic@lists.infradead.org, mitali_s@me.iitr.ac.in
Subject: Re: Subject: [PATCH v2] staging: media: meson: vdec: declare u32 as
 static const appropriately
Message-ID: <YHV734NB4flpFjbF@kali>
References: <YHU56OM+C2zY34VP@kali>
 <00c8a239-49d3-fedb-ec67-076e8b823efa@xs4all.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <00c8a239-49d3-fedb-ec67-076e8b823efa@xs4all.nl>

On Tue, Apr 13, 2021 at 09:26:01AM +0200, Hans Verkuil wrote:
> On 13/04/2021 08:27, Mitali Borkar wrote:
> > Declared 32 bit unsigned int as static constant inside a function
> > appropriately.
> > 
> > Reported-by: kernel test robot <lkp@intel.com>
> > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > ---
> > 
> > Changes from v1:- Rectified the mistake by declaring u32 as static const
> > properly.
> > 
> >  drivers/staging/media/meson/vdec/codec_h264.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/media/meson/vdec/codec_h264.c b/drivers/staging/media/meson/vdec/codec_h264.c
> > index ea86e9e1c447..80141b89a9f6 100644
> > --- a/drivers/staging/media/meson/vdec/codec_h264.c
> > +++ b/drivers/staging/media/meson/vdec/codec_h264.c
> > @@ -287,8 +287,8 @@ static void codec_h264_resume(struct amvdec_session *sess)
> >  	struct amvdec_core *core = sess->core;
> >  	struct codec_h264 *h264 = sess->priv;
> >  	u32 mb_width, mb_height, mb_total;
> > -	static const u32[] canvas3 = { ANCO_CANVAS_ADDR, 0 };
> > -	static const u32[] canvas4 = { 24, 0 };
> > +	static const u32 canvas3[] = { ANCO_CANVAS_ADDR, 0 };
> > +	static const u32 canvas4[] = { 24, 0 };
> 
> This is a patch on top of your previous (v1) patch. That won't work
> since the v1 is not merged, you need to make a patch against the current
> mainline code.
>
But Sir, since I have made changes in the code, and committed them, now,
if I open that file, it will contain those changes. Then should I
rewrite the patch body more accurately? 

> Regards,
> 
> 	Hans
> 
> >  
> >  	amvdec_set_canvases(sess, canvas3, canvas4);
> >  
> > 
> 

