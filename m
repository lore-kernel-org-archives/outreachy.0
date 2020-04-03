X-GM-THRID: 6810932653132349440
X-Received: by 2002:a92:844f:: with SMTP id l76mr6680285ild.13.1585878168598;
        Thu, 02 Apr 2020 18:42:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:778d:: with SMTP id s135ls2841354ilc.2.gmail; Thu, 02
 Apr 2020 18:42:47 -0700 (PDT)
X-Google-Smtp-Source: APiQypKHtzShgK/q3guwJYtJRryqpsz2EG0hcSd7/X+fBgu9SI5ztDQzzyYyveDWJ3rfQPM3JRbY
X-Received: by 2002:a92:bbd8:: with SMTP id x85mr6505274ilk.40.1585878167208;
        Thu, 02 Apr 2020 18:42:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585878167; cv=none;
        d=google.com; s=arc-20160816;
        b=QsYmmdP7UkGA6h80/x1ypwn6lwJXMthDxHGgh9oDzJvGJbfpCRz0Fus889mYl/Dfyf
         iUUeIIPv+1TmvlWWVkTa4t4nLoDOMbtYtsnd0FSGjhE5Z7Jxf2Tq4vaf1B1OJyzcrXpS
         JfK2tSYaw0MNwOv4nYzDBJ4qyyoNZU93UcGWvmBvZK9YCeWDGrf/J8i5GYCgw50HXHFN
         KEu5wD4+PAyd7/orNjdmQRpKG9jH4OR94idVnslHbfZCNIvNS6HzJF/mLaphfL0oYc95
         SqCmpklscfVXXGTjVp9dAeSQ5prJTTYr8s/orSB09myI/grUnch8m1oRDVq3EI/HURno
         D70Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=4tU1ijP1oUMss+gZHdPAOpYayM4wwWRsIDBObxKGiVc=;
        b=s0TZv7yMdeG3TdJ1WRxblqoQHZyKoY1uzlBfrC8QMxAv9xWDVOYJ6mSjS0BVbiNDOF
         DpmRgOg+1UpBXrne9ASi58cvc/apyMjjBWfcJ/W4ED65stxuxEsfd8HpadxIyyxZ/AWT
         +pAjrgnWH4uxcLpVku3wk1MLDFDTJ+B0pJSnjAq5H1krHlOxkaDFm+WMLzLOXqq5z9du
         w6II8I2K5OZVE7AxBaWaea9JHshuHsfx1ohiDqZ8eA3/CmlojyC7pyMERpRdk4Mgrbgl
         FIWUZsPQMfjYOqu6GjUCnM3g+cfFVGfkvdrn9WUECb8ktH+qeAX4oR0Q8jo+NQocAzVx
         +ptA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jcNzEg9v;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id k88si446362ilg.1.2020.04.02.18.42.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 18:42:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jcNzEg9v;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x344.google.com with SMTP id r19so5699249otn.7
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2020 18:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=4tU1ijP1oUMss+gZHdPAOpYayM4wwWRsIDBObxKGiVc=;
        b=jcNzEg9v7lRqKPNG1zObRdcQjh+gk/bUr/tEisbEtBl1s86IubloinTf3XxKH1pJ48
         MjFvtnWUc4FVghMd0K9IIenpvKmY9xJRkA2egW8LZ+LUUY9tckpWwmoo04mhVO8gHDhV
         SUzUrFy6U0Mn7jHtBlYogC+rMizjsYnn5t1IaCgnhBSJ6fMfoeBs/iY7UEcpa6hr707z
         UtNoR4N/9LmswlUU+NqsLQwPd+MphCGsdz+ezQPXx6Qxej1ggf5ZYg3H5U8848PxyTmQ
         vza2rb0NNr2iNeTGReJyDtVvixNzXmqiCsRyLI+k8tQmVi4zeskFKPMFFRswTaGL8fZa
         03/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=4tU1ijP1oUMss+gZHdPAOpYayM4wwWRsIDBObxKGiVc=;
        b=Wfg2cOlfulsLPEedi3gwYP3U9Yt3eAvlf2Fwst4hqP2vEGaf4GUC+dTBplmBtLNFLk
         FYcnK+k6uHL+VWDESsTMZ57gdpqAAgb1sw5IFixhoBH60Vkk1iAwdDBUJNwlprbg1AeB
         yvKupc3uT9yB4lDJPgO6KsIbSAB3CYtLgwNV1bNNmfXd7ujshMHjMvNcPrxVh9j99E4H
         aG9q/TYQw413Rxf93fagbrdVn/yvG6wRin8H3qpEac+MkoPXrh3Mj0msJvjHWaogkKam
         +uWJB4YuEdBSW4G85t0OrKCKS7JtqTJB4r7gTFuoIjDxle+g+zgE2z7GZ+rnL0ogCvyo
         WGTg==
X-Gm-Message-State: AGi0PuYzBA3oVvBSnoyS1hNFUx9lPRlOVvRDS/wWgCZkRZ/euPmKNdCN
	Q5sIcw6UsDArqPvSghgtksutJKGvoE68YQ==
X-Received: by 2002:a4a:92cd:: with SMTP id j13mr5039878ooh.96.1585878166813;
        Thu, 02 Apr 2020 18:42:46 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id t19sm1809875oih.52.2020.04.02.18.42.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2020 18:42:46 -0700 (PDT)
Message-ID: <4bd376a6db77ef779972f377cc2c3789d03668e7.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: emxx_udc: Remove unused code
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy-kernel@googlegroups.com, Greg Kroah-Hartman
	 <gregkh@linuxfoundation.org>, Saiyam Doshi <saiyamdoshi.in@gmail.com>, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Date: Thu, 02 Apr 2020 18:42:44 -0700
In-Reply-To: <20200403015057.7a972c79@elisabeth>
References: <20200402021706.788533-1-jbwyatt4@gmail.com>
	 <20200403015057.7a972c79@elisabeth>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Fri, 2020-04-03 at 01:50 +0200, Stefano Brivio wrote:
> On Wed,  1 Apr 2020 19:17:06 -0700
> "John B. Wyatt IV" <jbwyatt4@gmail.com> wrote:
> 
> > Remove unused code surrounded by an #if 0 block.
> > 
> > Code has not been altered since 2014 as reported by git blame.
> > 
> > Reported by checkpatch.
> > 
> > Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> > ---
> >  drivers/staging/emxx_udc/emxx_udc.h | 6 ------
> >  1 file changed, 6 deletions(-)
> > 
> > diff --git a/drivers/staging/emxx_udc/emxx_udc.h
> > b/drivers/staging/emxx_udc/emxx_udc.h
> > index 9c2671cb32f7..bbfebe331033 100644
> > --- a/drivers/staging/emxx_udc/emxx_udc.h
> > +++ b/drivers/staging/emxx_udc/emxx_udc.h
> > @@ -9,12 +9,6 @@
> >  #define _LINUX_EMXX_H
> >  
> >  /*--------------------------------------------------------------
> > -------------*/
> > -/*----------------- Default undef */
> > -#if 0
> > -#define DEBUG
> > -#define UDC_DEBUG_DUMP
> > -#endif
> > -
> >  /*----------------- Default define */
> >  #define	USE_DMA	1
> >  #define USE_SUSPEND_WAIT	1
> 
> Formally, this is fine. But... think about it: this driver might be
> rather buggy, so the first thing one might want to do with it is to
> "enable" those two defines.
> 
> In general, that stuff has to disappear, and proper debugging
> facilities have to be used, but with a driver in this state, as long
> as
> proper debugging facilities aren't there, you might be doing more
> harm
> than good.

DEBUG is not actually used as far as I can tell (I am still new to
kernel debugging systems to please correct me). There is only a pair of
.c and .h files for this small driver.

UDC_DEBUG_DUMP is only used twice in the entire kernel-both for if
statements.

Should we just set it to:

#define UDC_DEBUG_DUMP 0

And leave the other 3 lines out? Please let me know for a v2.

> 
> -- 
> Stefano
> 


