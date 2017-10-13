X-GM-THRID: 6476511892724514816
X-Received: by 10.36.41.6 with SMTP id p6mr2287461itp.35.1507931167659;
        Fri, 13 Oct 2017 14:46:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.81.3 with SMTP id f3ls1698001iob.0.gmail; Fri, 13 Oct 2017
 14:46:06 -0700 (PDT)
X-Received: by 10.107.132.25 with SMTP id g25mr1868958iod.15.1507931166902;
        Fri, 13 Oct 2017 14:46:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507931166; cv=none;
        d=google.com; s=arc-20160816;
        b=IVPgJtgraHbQCbvMeDjxZgotsTIg+6gHl6bXe0OYzL4OSlkVnQKx6sbR+r2nT5f3+y
         d/tXTB5Q29UXUMd87dcDjImBWbGCKwwPMR3G1rpCNYG2dUh7DT2+5S2StXji32LOCHTN
         /9nwOcf99Uyaud8OgqMbExg17cRQuuxtNytz3/zT3SuvtrMbZc+qkJ2p6l3CJlpJfWsc
         iQF8Xu9WFXKU5oiLACcDbqDx0i+1jJP4QNo5Cc/241J1LZlWzPSiqoL9HQd7v8weM87q
         6C6qzZSfOG14BVf9323abz12bPge7GpGfUaUaObOSM+wn60VeYEZK2ZA4T5RGKVGc9im
         W2bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature
         :arc-authentication-results;
        bh=AAj/+6dmpEVNv1lfH7e8ZavenbIIvQEmHEUtfnTgyqg=;
        b=XT+k0d+NDF9oE2Otx7mLp/zEESmPB/TBJDb9G1TwlaiGrNcK1kd5/zdc7rHUSytm1p
         Vu9sqAogqQODDmQvXTKmCOII1hknxK1uu7AxyXNxUFVLMjvGFBRL6mUD/35Zl4DwuUUm
         zTO3dTZdGJx2tWBjyGIoAfWzetuGdbrvZ5Bu20xmH7p4hy5ONvYs6PFLhLbMZ8RTzUdh
         h+eUTC3DGtjqwkFlqhw900TgKnQffx8lJLZ+HR0c5pCJTV4d0MrDK1zxpUXQwD/JrMoY
         9ynbPq/ICWCm6ovIM6Fgl6XU4EvRezQE89tUqyplEZUVwnhAUFRXUIhg1HJwHtKDZ0C8
         p0PQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vKpjxtLa;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id b2si241912itg.3.2017.10.13.14.46.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 14:46:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vKpjxtLa;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id b85so11336670pfj.13
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Oct 2017 14:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AAj/+6dmpEVNv1lfH7e8ZavenbIIvQEmHEUtfnTgyqg=;
        b=vKpjxtLazWrW+rkIJdXT+u2U5lfl2BAHFYgIMDbZzLPUv87psF5t0tj7roL33kuEVY
         MX3HyLRkGtXiJNXxVUR8FBzhl97413ORxWIu4k8KxGMGbPeHMIAhn0QEy+/gf07qlkHX
         7+dNb7XJcwFPeEAuDLNMKZtG+pcR3zymyKddLsUmL/OpGpsJKj5531ON7soGA3imKEIP
         X54b6sVytkfx2CDhLs1rYLOfeiGpqupi0yxtjnkS92Lc3NeZREPAUqkrdYopowHq9Twh
         kTf/1HP3Nt+FKsZMbg2t+40EXm/d1nu7CBAMZ8oOSPSu/nsG1YFLvAWj0bxW4wlSH7eu
         iH2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AAj/+6dmpEVNv1lfH7e8ZavenbIIvQEmHEUtfnTgyqg=;
        b=Ey594kN5okME7gI63n53WmN3Y29G4iDQ9fiuIXKQQQzYEVG4m7gXgCz3xzHZ3orfpU
         poqzhC12o3dr09Ksymhx44d+HlSemzEolU8HssgQxRYjSiv3cHwwJJ1iwTYDEdUamgDF
         N5vZbq2nbUFVmQrgK3S5dkwXGN7oQ98fZAS3NKm3Ktlm4RbYbRvBBmuwYDS9aT2e9Qps
         1cLoDwExZuQTfNAhC6hRO+10Og1NlmsBuXKVEJvIswnf1dv1jeqRgtXqUS36mVG+Y6Se
         3wQVBp4iiqcZx90E0Yv3pyzoLQhfgo8u8fvAXGNWnTfXlGob2fX9+9YV7FBwEoxtBuLd
         RXAQ==
X-Gm-Message-State: AMCzsaXXWfaZjhz13hW/fvL0RPK3JB4wM8uCaGKktv6Y+Dcc84ln4XL0
	0aNlqeUSO1LUP3eSbCLIMJ8=
X-Google-Smtp-Source: AOwi7QDPzzVTz70aYVHDEdVy02l1IgMOupL0xEFVCRGTlhEt1HIN0mauxJs2mkxB/n1ffi50hPR09A==
X-Received: by 10.98.88.198 with SMTP id m189mr2522472pfb.130.1507931166186;
        Fri, 13 Oct 2017 14:46:06 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [10.0.2.15] ([45.113.152.79])
        by smtp.googlemail.com with ESMTPSA id f24sm5165728pfk.183.2017.10.13.14.46.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 14:46:05 -0700 (PDT)
Message-ID: <1507931160.5597.0.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: Replace symbolic
 permissions with octal permissions
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, w.d.hubbs@gmail.com, chris@the-brannons.com,
  kirk@reisers.ca, samuel.thibault@ens-lyon.org, speakup@linux-speakup.org, 
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
 outreachy-kernel@googlegroups.com
Date: Sat, 14 Oct 2017 03:16:00 +0530
In-Reply-To: <alpine.DEB.2.20.1710132343330.3147@hadrien>
References: <1507930425-5471-1-git-send-email-shreeya.patel23498@gmail.com>
	 <alpine.DEB.2.20.1710132343330.3147@hadrien>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

On Fri, 2017-10-13 at 23:44 +0200, Julia Lawall wrote:
> 
> On Sat, 14 Oct 2017, Shreeya Patel wrote:
> 
> > 
> > Resolve following checkpatch issue:
> > WARNING: Symbolic permissions 'S_IRUGO' are not preferred.
> > Consider using octal permissions '0444'.
> > 
> > Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> > ---
> >  drivers/staging/speakup/speakup_bns.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/speakup/speakup_bns.c
> > b/drivers/staging/speakup/speakup_bns.c
> > index 60bcf0d..402b0fb 100644
> > --- a/drivers/staging/speakup/speakup_bns.c
> > +++ b/drivers/staging/speakup/speakup_bns.c
> > @@ -120,7 +120,7 @@ static struct spk_synth synth_bns = {
> >  };
> > 
> >  module_param_named(ser, synth_bns.ser, int, 0444);
> > -module_param_named(dev, synth_bns.dev_name, charp, S_IRUGO);
> > +module_param_named(dev, synth_bns.dev_name, charp, 0444);
> This change is already made.  You need to update your staging tree.
> 
> julia

Oh, ok i'll do it.


> 
> > 
> >  module_param_named(start, synth_bns.startup, short, 0444);
> > 
> >  MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-
> > based).");
> > --
> > 2.7.4
> > 
> > --
> > You received this message because you are subscribed to the Google
> > Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.
> > com.
> > To view this discussion on the web visit https://groups.google.com/
> > d/msgid/outreachy-kernel/1507930425-5471-1-git-send-email-
> > shreeya.patel23498%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> > 

