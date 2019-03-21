X-GM-THRID: 6670949781191262208
X-Received: by 2002:a67:bb15:: with SMTP id m21mr3539726vsn.192.1553206249388;
        Thu, 21 Mar 2019 15:10:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:e3d1:: with SMTP id k17ls1564821vsm.0.gmail; Thu, 21 Mar
 2019 15:10:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzxFWTrP8eKzrX3fp+JOOPXXOUtXOdVff5WlgUrk/O8K8NAQFLnSP0GOBrEumW/YOOaqQFI
X-Received: by 2002:a67:f354:: with SMTP id p20mr3650227vsm.153.1553206248674;
        Thu, 21 Mar 2019 15:10:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553206248; cv=none;
        d=google.com; s=arc-20160816;
        b=wgn78N34aRmHSvAd+Dlp64ptuwss2UpUvLvaaxBpVsAHEMhhGquA6lWLTXBBTyMWY9
         7QQPvk5BLM0Gqgl6AKcRQCd91ZIr6GBrE5X6jpGMIikpM8G1mcUO61Bpyee56trjlq7r
         P46iUiOVhb+MEu4koM88bt+LMyGMwS3OdoczH7AE9Y24nepV5bfDutifYJopn+guZofX
         i/A3/wfW97xtQKWWBcOY8+BuQXLs9vhBs6m4RWDXOBFtzUu3PMpKr2f3zm5GY5LRuoN6
         ca34VyYHuNXkeyI5crt9yAOyqx20EGqfp5N4JWd68zEqxXUF4ZUYhyqmP/F4XsdZAGoL
         y3pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=8keSVwCUaoPnHyE3wFpJ4mZmDr1k93UcYiKeJ+RV98k=;
        b=rWO+jFUYsfdKgJHxb5mzN4zcfL3vDx2sHWm5tjC6jjsMcQwko6RhmhwkEr9+kexVwh
         02/wewf7n5lH0Dv6QBVF7MKqOcwwDLE0a686AlLVnG8VE8fyhtIrnJoi522CSskmgpq7
         8B1jfNGKryTIG/QiS7em0p3DJBok7XTHny/W8Svpkh6A/nsigCJQw2ns7StC/kk/gn1M
         +RDT7I0dU56fCh9Ahpa+MaULgZK4AA0Jpvdh57M4DI+cxMrLO7kRHT+9YInm+RXnAd24
         J0Yt1Xei5eDgTYBVTVis78CUBsbSGSfYgH4fmrfGvDT/UDqdWE/hfN+5DFnlk+xEcHIT
         rDrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k2g23ygB;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::330 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com. [2607:f8b0:4864:20::330])
        by gmr-mx.google.com with ESMTPS id n137si107336vke.2.2019.03.21.15.10.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 15:10:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::330 as permitted sender) client-ip=2607:f8b0:4864:20::330;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k2g23ygB;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::330 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x330.google.com with SMTP id o74so226421ota.3
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 15:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=8keSVwCUaoPnHyE3wFpJ4mZmDr1k93UcYiKeJ+RV98k=;
        b=k2g23ygBNmcMY7rvaXGFqFZPER3nu//YxpZ9yI/i152Ls9m0FHkUoVtga335tk4UMG
         iO7uV6g6PS2VuCm0YdD3Iyxj3TYVtsPhEXnHO5riWwgB9SiFUYTGqEQhPkL0QbtEzZLk
         ndFtOJmLaN5oGzM9F7ojUpGFBTC7gLj3C+SzGWflKoyGVeAhWXa4ePcQgEVgz1iCc6TV
         9fQCYVf3ZtYA50zUPSOorVRsqk8vcQ/CHzLe2AqhXvwGoS81MVY3ofOFsUUoEtnZfLXM
         BEZlGGeueOMqRbb8rx5u8cTAY5aZ3g/3xea2HFf9t/e/HSpZh2iGN8VKYmZVQZaUmwbm
         bDlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=8keSVwCUaoPnHyE3wFpJ4mZmDr1k93UcYiKeJ+RV98k=;
        b=LCIUCHrLtLVhci9zkcJQ5QMUzOj01svPmhDqou4iu+0H/JJf1uHsQkdLgJxunqUQl1
         qj9iB28l2Ew0WmBqUt31P2CZ1uefqYo2dDKKb7qDcbnwygqIZB86PJjmAaEDupMyuFS2
         YEGbVk+BnGi28DICqb1feU4UnKNxTMypHNZcg83J2GDIdcH44wc7e2pjJEneOqEwRo0z
         FyqzqrHZQ/yuhGMR6MENi1CMmOhLiowBPez/sGGSFzGHXjlgTpcfPa3JXZgbDdUTFY2t
         LxF2EeWKBLKJTSAnXW50EpH91ISjgftDy7uUZA/yeOgwIPT7et+9E91TjINgauG0C4dK
         o1mQ==
X-Gm-Message-State: APjAAAVlWkowUiI76jTSaZFCx+Cl0SCZyMNfQuQvDQUHK2QpqMaPisM6
	SEoRxr6GmBl0BMelIKG28+g=
X-Received: by 2002:a9d:760b:: with SMTP id k11mr688395otl.135.1553206248246;
        Thu, 21 Mar 2019 15:10:48 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:c92d:a4c3:eeab:413d])
        by smtp.gmail.com with ESMTPSA id g128sm2334293oif.56.2019.03.21.15.10.47
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Mar 2019 15:10:47 -0700 (PDT)
Date: Thu, 21 Mar 2019 17:10:45 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: Convert macro into an
 inline function
Message-ID: <20190321221044.GA5622@madhuleo>
References: <20190321205206.21875-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.21.1903212155350.4720@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1903212155350.4720@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Mar 21, 2019 at 10:02:12PM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 21 Mar 2019, Madhumitha Prabakaran wrote:
> 
> > Convert macro into an inline function to maintain Linux kernel coding
> > style. In addition to that change the function names in respective call
> > sites.
> >
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> >  drivers/staging/media/davinci_vpfe/dm365_ipipeif.c | 8 ++++----
> >  drivers/staging/media/davinci_vpfe/dm365_ipipeif.h | 5 ++++-
> >  2 files changed, 8 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> > index 4380e0a8e6dc..7d750e14253c 100644
> > --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> > +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> > @@ -297,7 +297,7 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
> >  		case MEDIA_BUS_FMT_UYVY8_2X8:
> >  		case MEDIA_BUS_FMT_Y8_1X8:
> >  			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > -			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
> > +			setbit(val, IPIPEIF_CFG2_YUV16_SHIFT);
> >  			ipipeif_write(val, ipipeif_base_addr, IPIPEIF_CFG2);
> >  			break;
> >
> > @@ -345,15 +345,15 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
> >  		case MEDIA_BUS_FMT_YUYV8_1X16:
> >  		case MEDIA_BUS_FMT_YUYV10_1X20:
> >  			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > -			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
> > +			setbit(val, IPIPEIF_CFG2_YUV16_SHIFT);
> >  			break;
> >
> >  		case MEDIA_BUS_FMT_YUYV8_2X8:
> >  		case MEDIA_BUS_FMT_UYVY8_2X8:
> >  		case MEDIA_BUS_FMT_Y8_1X8:
> >  		case MEDIA_BUS_FMT_YUYV10_2X10:
> > -			SETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > -			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
> > +			setbit(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > +			setbit(val, IPIPEIF_CFG2_YUV16_SHIFT);
> >  			val |= IPIPEIF_CBCR_Y << IPIPEIF_CFG2_YUV8P_SHIFT;
> >  			break;
> >
> > diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> > index 4685d64016de..0fe9d394962f 100644
> > --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> > +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> > @@ -166,7 +166,10 @@ struct vpfe_ipipeif_device {
> >  #define IPIPEIF_RSZ_MIN			16
> >  #define IPIPEIF_RSZ_MAX			112
> >  #define IPIPEIF_RSZ_CONST		16
> > -#define SETBIT(reg, bit)   (reg = ((reg) | ((0x00000001)<<(bit))))
> > +static void setbit(u32 reg, int bit)
> > +{
> > +	reg = (reg | (0x00000001 << bit));
> > +}
> 
> This is a really nice try, but it doesn't work.  Now you are just changing
> the local variable of setbit rather than changing the variable at the call
> site.  Maybe you could pass in a pointer and the compiler would be clever
> enough to optimize it away.

It slipped my mind that function is local. I will fix it. 

Thanks

> 
> But maybe the whole thing could be eg val |= BIT(IPIPEIF_CFG2_YUV8_SHIFT);
> You could also take care of the uses of RESETBIT similarly.
> 
> julia
> 
> >  #define RESETBIT(reg, bit) (reg = ((reg) & (~(0x00000001<<(bit)))))
> >
> >  #define IPIPEIF_ADOFS_LSB_MASK		0x1ff
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190321205206.21875-1-madhumithabiw%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

