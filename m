X-GM-THRID: 6754389089918648320
X-Received: by 2002:a0c:8887:: with SMTP id 7mr10046384qvn.189.1572658465691;
        Fri, 01 Nov 2019 18:34:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:15a2:: with SMTP id f2ls2766497qkk.4.gmail; Fri, 01
 Nov 2019 18:34:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxIhOL5Op+jkNp/VPzQdgVq7961PVbdNCEUFyvS9ake+FiWnQlCYGiKgMVRbsS0Ih3MhRTQ
X-Received: by 2002:a37:a54c:: with SMTP id o73mr6344036qke.164.1572658464627;
        Fri, 01 Nov 2019 18:34:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572658464; cv=none;
        d=google.com; s=arc-20160816;
        b=e29aR+YNSyaNf3PNl2UJ5XgDdOy96zkzX724kRPyc2InmJoLu1fdCuNOkDreB4PnMT
         96g7KpWnDIUH4OLFMBYU4MIEgoKwoxok51eJEHIEBa4VbzxHkjlAFV9vGdPK7huZsRTS
         Tax3uzimhsntBkNvpG5qX8sDVUUjf+fM1w37AnjHOL3qt79W26/D+9hBNYOPx1e2qly0
         nR7/XBwirZ0MF/Ls0mfHw7J5y/sAnRvTo66yjA+2AbVNWzq0c0Ph7RVAZ0h3TbyMAhOb
         qUCWM0+Lxg8cHMIDBZT9RAull3dJuW9PpUxrf7v/PP4Vz8McwRCzzXARpvtc9c68Tsi/
         P+7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=SRQ8cvSJSfl7LRg/DLwbs5NIHlvY+FhUn8tPgtCCDq8=;
        b=NerCTl49k6/QOxV5wlSgk3dEpKTxdv2WJ30JYILuGc2KKzhwEatj7zRdadL1pm+rtC
         +m6QTFVl0oPIsox3LKxDo53qYNokABoKQ4SHpPFIaOMxQ5M2mG6opKgel4T1jp1sLi1f
         q1KzcYUrkQ/F5fmiTGnrxzZ/4HOsv14dEoFWGRI29Z3MlUGF3dvApowxEp4nde27fduB
         coI9B+rsdcFR4hSD6z+tUnpo7YAG7WWVgatuKQiGvdZGMChV4f9W9bJiGadbbhwYbRid
         n0bjn7YqYeOtwd8QzYE8Bia0paz/tlzysJyvlYKI0TjmzXeH9oiCL8sfIpctTQ5EwjS2
         zTVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="pESP/vpH";
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id y41si664549qtb.5.2019.11.01.18.34.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 18:34:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="pESP/vpH";
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id g9so5086891plp.3
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 18:34:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=SRQ8cvSJSfl7LRg/DLwbs5NIHlvY+FhUn8tPgtCCDq8=;
        b=pESP/vpHanwMak3Sot3sr8l6HtUh8tEpiKNUnVx0eBgbOgAoiMo58riCYo0KfAsKk4
         4AMODSFlvuj3XfFguEGCubAZIMeD5spsaU4tSUkc0rEkwInZaWJGhLzldxIgqGsXICGM
         WJeqAJyra9GxV4SUjUQrMesbfuQmvFxfm2g0XeQ24Y/lBWlYfNixq4LP8lG71oRG9tQL
         sgU5lTvldq15tLlhiHJYwZjrnlqgk2hpeLPlnJRaJcAOykaOYffsqsyurZcB2UOT+jCg
         MDwcvpS41pQFSU12c1rKRro+HrEdkB9fKVRaSna3ldnLRCk3dhsFCphKCIcfT81kD8Qz
         5VQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=SRQ8cvSJSfl7LRg/DLwbs5NIHlvY+FhUn8tPgtCCDq8=;
        b=M0Q/xsI6TeRz64/n6u/II8fBUcbwhg2m6zvrrLDdLIFQdmO+7zq1MA1rUEUa9aWDro
         sgbxoAC/4GQd3hn1hsVKcxK3ZgXRam36ju2AhlM5fTjmt5MzT0R9UnBnlaNI88hiHhZd
         yp/frPZq61nxhDfEiSDF3ysMFHR3DQqXsG5+70rsOXqUmUtW7SZ8tDNSuBMC6IJ40GYk
         bApCNEY2Pv3sf6eTuwYFqIH3UO7L9u8k4R5j0Y7V5geAvDAbfesrg9haNsVGfwHZlr9t
         Y+wjn9usJzu6+6/TkiCi5fWxzbAgOzQ729aLpBNBIpTXQvQ9arb4L0/bPp4nP7b5xWb1
         dxfg==
X-Gm-Message-State: APjAAAXgFt5WGTZRBp6rQDhzISuYP1PRgcdooaIr6C43Pi6Ck94UupX3
	uvV+o87Av5cXGBqvc+3QhryP2kqdd+A=
X-Received: by 2002:a17:902:7089:: with SMTP id z9mr14831168plk.51.1572658463741;
        Fri, 01 Nov 2019 18:34:23 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([104.216.216.194])
        by smtp.gmail.com with ESMTPSA id i102sm9640695pje.17.2019.11.01.18.34.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 18:34:23 -0700 (PDT)
Date: Fri, 1 Nov 2019 20:34:19 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] media: staging/intel-ipu3: Fix wrong
 assignment to boolean variable
Message-ID: <20191102013419.aoumfkx46ws6qas4@gmail.com>
Mail-Followup-To: Julia Lawall <julia.lawall@lip6.fr>,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
References: <20191101171914.rphvreggpu6qj77e@gmail.com>
 <alpine.DEB.2.21.1911012009460.2883@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1911012009460.2883@hadrien>

Thanks for your feedback. I'll edit the subject.

On Fri, Nov 01, 2019 at 08:10:10PM +0100, Julia Lawall wrote:
> 
> 
> On Fri, 1 Nov 2019, Javier F. Arias wrote:
> 
> > This patch fixes a warning by replacing the incorrect value with
> > a boolean.
> > Issue found by Coccinelle.
> 
> The value is not really incorrect or wrong.  It is just not expressed in
> an ideal way.
> 
> julia
> 
> >
> > Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> > ---
> >  drivers/staging/media/ipu3/ipu3-css.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/media/ipu3/ipu3-css.c b/drivers/staging/media/ipu3/ipu3-css.c
> > index fd1ed84c400c..f36de501edc6 100644
> > --- a/drivers/staging/media/ipu3/ipu3-css.c
> > +++ b/drivers/staging/media/ipu3/ipu3-css.c
> > @@ -1450,7 +1450,7 @@ bool imgu_css_pipe_queue_empty(struct imgu_css *css, unsigned int pipe)
> >  bool imgu_css_queue_empty(struct imgu_css *css)
> >  {
> >  	unsigned int pipe;
> > -	bool ret = 0;
> > +	bool ret = false;
> >
> >  	for (pipe = 0; pipe < IMGU_MAX_PIPE_NUM; pipe++)
> >  		ret &= imgu_css_pipe_queue_empty(css, pipe);
> > --
> > 2.20.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191101171914.rphvreggpu6qj77e%40gmail.com.
> >

