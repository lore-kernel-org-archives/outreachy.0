X-GM-THRID: 6951081935014723584
X-Received: by 2002:aa7:814c:0:b029:250:13db:3c6e with SMTP id d12-20020aa7814c0000b029025013db3c6emr10705351pfn.65.1618426548466;
        Wed, 14 Apr 2021 11:55:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:4e50:: with SMTP id c77ls1219053pfb.10.gmail; Wed, 14
 Apr 2021 11:55:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwcz9YI16GC3uiALmxVTycDl8XIiT/DAR2DDyftt+KRgcUDD0VIH8uOIGa0ou1fI4P1TdLR
X-Received: by 2002:a63:fc56:: with SMTP id r22mr28792323pgk.324.1618426547367;
        Wed, 14 Apr 2021 11:55:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618426547; cv=none;
        d=google.com; s=arc-20160816;
        b=Vr1QAkVxeT+ryRYcUyC7OiUb0KFCNfZwOyvSRVteXiqvwhE0EgvKzD4/VYumcSPT0a
         2cVuq++1i1p8Ds13pt19HQ6MbZUnwZqvcitkeaDvv+/iaS6Yjfx9wNNx2jh/xJMGF59a
         A0TUWpiMId+18O56EN7Ibpgs8Hxn20W9/7wyVUFU5znc+ZAdC0TtcbGuCpH3RcBLTuRC
         bcrT4oPuftrDq07CzmijKAMJM2N6AdBJMP2f8HqxU0CiX+TNSBk/KqhvS5W11+DexMVj
         Ror68/e8Wuj+fbjB1V+AGqb1u73Yiztlu7BDztg5199SR6PD3iLf29DI3ZOJOKPaCbLh
         tCxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=OeVselHKPVLOZzCiq1K08wuQKbTOdMwo4rrb+WFfGok=;
        b=Whcn9kRBpTMoZ8QZO0TkARJl2JzXZKAcrxSvDLtL6Bpm8GmGJ6saytC5mCbh1EqGtj
         lvgaukZryc367QYzrqnvYL4AXFZy2CVldGTp7mJEXJxm/NCVJbY0G/MaJHCmhLTZQ4PZ
         ysWrgrgDGG3xt8j4A0WpiKHZVCQwQbU3z1xM8VKxrsjD9gQbAKiforEe3qKCeUa+SPD+
         Huok74A42wOg4eBO9GLXu8emWcFZZwKbFuKWMPgML0lgCV6cDD1LRt1PMjDHfWFNhi0I
         rVW+JX1Iqsl1U9l4l41AePdfE2uhg6Tv79WMHO/1PQT8YXw2Ou6iqJ5ZKAYSxGgG/0LO
         e7DA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lFCnI3hp;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f34 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com. [2607:f8b0:4864:20::f34])
        by gmr-mx.google.com with ESMTPS id u7si33328pji.1.2021.04.14.11.55.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 11:55:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f34 as permitted sender) client-ip=2607:f8b0:4864:20::f34;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lFCnI3hp;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f34 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qv1-xf34.google.com with SMTP id j3so10439881qvs.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 11:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=OeVselHKPVLOZzCiq1K08wuQKbTOdMwo4rrb+WFfGok=;
        b=lFCnI3hp3u4Er12GAIRoPmvUADqyOluplFCmLhhcA1pMyCvN8uXDqqBRLRFOlidy7C
         CJZruXSU4BLU9OqaNUUpSFZurnqPU5hb/H695wM4wPWxe6MkllA7tlVmkz7gromzUMb/
         C728BhxLQdAD5I8vsVv+axhY1MfsjVfTftkTsXav+T7xzEUJQN6snq7WfjJRRMQbfXJD
         2FVfhEnrjQ04jyjJIWRYKKG3gACrKqjrxM3USPSAg3wU/8fYMnVJIeynLmhHqs8q+zO4
         Iev9h6wXtUPn+B2m5lnubTvZfyC5EoyqniLu2lldL0eMiy0PLD2W98+MxtI9nAc8LH9Z
         1x6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=OeVselHKPVLOZzCiq1K08wuQKbTOdMwo4rrb+WFfGok=;
        b=MTpYK8TiJDhNSbyCMjr14cz6ajoOzMo63t+X4XX39UNMX83thBcKTSbsgj32KWGHw9
         u2KoJoZeOAwOd6/JWglPJGYL/Zawj8bZwvYvpmtxfepUtaxMH01qcfcBfb7LIOjvtt2f
         n571p9h0nAoVhSgKAtcXAtHWJQLjOzCuUU0ohZ7W5pntECFjfrAkTpU8owr8euZC6Rb6
         jFtQCMTyeNNdgAtPkkdqtjih+0E2jd50nBJXAd/RKjqD0t0KqfvOMGmHtAg9bNh9f/B3
         xIui8SjWd993K+JNtfiBWRTACRJv3bB6DFLWZpuBGVe6VUR4c7Oi09H4Xgbrj4OwZBmW
         jriw==
X-Gm-Message-State: AOAM5309ZGBV+pu3pmlS+8vVIw6SqBApN7Z2P65UQtMsZqv12TFldeyN
	u9twmhGSI4H/F5yyTJHTeJw=
X-Received: by 2002:a05:6214:f27:: with SMTP id iw7mr40641329qvb.50.1618426546599;
        Wed, 14 Apr 2021 11:55:46 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from ?IPv6:2001:1284:f016:a037:66e0:478a:8197:7396? ([2001:1284:f016:a037:66e0:478a:8197:7396])
        by smtp.gmail.com with ESMTPSA id x82sm259362qkb.0.2021.04.14.11.55.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 11:55:46 -0700 (PDT)
Message-ID: <fae832b2555f1d971b45fcdfe34952aa03a42e4d.camel@gmail.com>
Subject: Re: [PATCH] staging: media: atomisp: pci: Format multi-line
 comments according to coding-style in file atomisp_cmd.c
From: ascordeiro <alinesantanacordeiro@gmail.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman
	 <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Date: Wed, 14 Apr 2021 15:55:42 -0300
In-Reply-To: <20210414183325.GD3@paasikivi.fi.intel.com>
References: <20210414182755.GA2799@focaruja>
	 <20210414183325.GD3@paasikivi.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0 (by Flathub.org) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Em qua, 2021-04-14 às 21:33 +0300, Sakari Ailus escreveu:
> Hi Aline,
> 
> Thanks for the patch.
> 
> On Wed, Apr 14, 2021 at 03:27:55PM -0300, Aline Santana Cordeiro
> wrote:
> > Format multi-line comments according to the coding-style.
> > Issue detected by checkpatch.pl.
> > 
> > Signed-off-by: Aline Santana Cordeiro <
> > alinesantanacordeiro@gmail.com>
> > ---
> >  drivers/staging/media/atomisp/pci/atomisp_cmd.c | 109
> > ++++++++++++++----------
> >  1 file changed, 65 insertions(+), 44 deletions(-)
> > 
> > diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
> > b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
> > index 592ea99..6113785 100644
> > --- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
> > +++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
> > @@ -67,7 +67,8 @@
> >   * At 15fps this means 133ms. We set the timeout a bit longer.
> >   * Each flash driver is supposed to set its own timeout, but
> >   * just in case someone else changed the timeout, we set it
> > - * here to make sure we don't damage the flash hardware. */
> > + * here to make sure we don't damage the flash hardware.
> > + */
> >  #define FLASH_TIMEOUT 800 /* ms */
> >  
> >  union host {
> > @@ -562,7 +563,8 @@ irqreturn_t atomisp_isr(int irq, void *dev)
> >                          * and driver needs to keep old
> > sequence_temp value.
> >                          * NOTE: There is assumption here that ISP
> > will not
> >                          * start processing next frame from sensor
> > before old
> > -                        * one is completely done. */
> > +                        * one is completely done.
> > +                        */
> >                         if (atomic_read(&asd->sequence) ==
> > atomic_read(
> >                                 &asd->sequence_temp))
> >                                 atomic_set(&asd->sequence_temp,
> > @@ -1247,7 +1249,8 @@ void atomisp_buf_done(struct
> > atomisp_sub_device *asd, int error,
> >  
> >         if (IS_ISP2401) {
> >                 /* If there are no buffers queued then
> 
> This should begin with:
> 
>                 /*
>                  *
> 
> And the same for the rest. Apart from this the patch seems fine.
> 
Hi Sakari,

I'm going to send a v2 correcting all the multi-line comments that are
not beginning like this.

Besides, there are single line comments with different styles, a few
like this:

case 1:				/* comment */

and the other like this:
				/*
case2:				 * comment
 				 */

Should I standardize these ones to the first case?

Thank you for yout attention,
Aline


