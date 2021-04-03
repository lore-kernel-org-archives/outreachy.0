X-GM-THRID: 6947041729185841152
X-Received: by 2002:a05:6808:c2:: with SMTP id t2mr13360020oic.28.1617485846967;
        Sat, 03 Apr 2021 14:37:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6808:a97:: with SMTP id q23ls2573550oij.0.gmail; Sat, 03
 Apr 2021 14:37:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx5X4PnBzG7mVhzFYejtnfiyULgnF2X/TnT/3wUfa5ALqY0Zdtn0MHQwK0L4gxHQ7SQ2bto
X-Received: by 2002:a05:6808:98a:: with SMTP id a10mr13704006oic.28.1617485846236;
        Sat, 03 Apr 2021 14:37:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617485846; cv=none;
        d=google.com; s=arc-20160816;
        b=snNqxsgr6khzArAVVdwzjCAYVBo3kUW0O7ijF+Pt/27sHnvMQTlpNaVbC+g0lyLxU/
         8VrYyfv33CkSpKkFt/VOj1ujDu6pR1ESnBfYz6zexveH2Brmmm7rUwfvMXmGzNNXtCT8
         QtpK2FSS607pdMqTOB3PKGBJu0krfvBfk/diNnGbwe7NZ9iYEZiKWQlW3SZgyzUF+v+B
         HJIsKQoariSbQJzli3O9o78XAe/rMJNlykzqTI6roqWny4gj4khkyMbLweRBM3Jxbmlv
         MHo18oCs27sjuDLH0akjhZ5LAqNzINaV13+wRbTq+zjQ75gIXkhcwaiY01VQwOe1PgOh
         gWZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0pyulBQT42IIN7dRsVl/51XubTD3TLWON0kNbxutpX8=;
        b=eITxAP79Nr9hiFYg1AwQTLeEfkgbsHXh6VFIF5hdFNkLcSC6k5YUP7ufyN0nMmxMBU
         cMYAA+rNurKupsN39V6qeOJfxNmgGi+yIqjZ8ETZJhGuq2haObv4od0lUOza/RZil0A+
         /m5qIt6aNliblXkfuj+je6bSvhQQ4d082vx/o3PHJOJFCc5uk6A+nL1gMSD+ZLESE2Oi
         yyQvcTYkLW0jhCRJGLgheVagMJ1m0IZ1WNGP8gA8CK1e3dUvGCXpXxt/AlnxYul156m8
         ftjytMaBj0pvuDdqfCUJcnGf04/I8y1uZgGSfBpgj3ZgfSuupYtbqUQpnZUNWrJHabAO
         rbgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O8xL1Hz4;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id v12si881093otj.0.2021.04.03.14.37.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Apr 2021 14:37:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O8xL1Hz4;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id q6-20020a17090a4306b02900c42a012202so4073361pjg.5
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Apr 2021 14:37:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0pyulBQT42IIN7dRsVl/51XubTD3TLWON0kNbxutpX8=;
        b=O8xL1Hz4M+gt3P4i3IUiIWWJru4S2gC3rgZdf8bupMX1Tj9xJSBDcxCusBbmnWyrQo
         7+I6jL4uhHU8cnrhb4+34EGGk5PJvO84lYBUY7xn61M33J25+t5TzYNPtsKBtIEXjys0
         TEaJNC0l2L3XO8OMLCuhgdRp8OtGBesZDUxS6G1LgQmj5AS3kaZQ38RHK1q47PB0U2uT
         Ktsaa7jgD0UklJu9UBS+Td+BzsKi6WYW0VuArxNZ9gfvoiTsbhPzjyxnchFJl1fNZjiP
         V4s120MZqcPIgIv9SKdDQVLevajwiIkMJEXyySqLJ4CJ7k9cI/DMihJcxHaND/MLAqeB
         sAZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0pyulBQT42IIN7dRsVl/51XubTD3TLWON0kNbxutpX8=;
        b=oSLh2VGhKNmMfNkOAWyI6TP4MIT3k/7Re8dxY4PsvER/ScjGpNIlDtvUOgOduntfFm
         v4CTO7DwcE67tnFdmKIplx5yUFI6zaWyXxGJPU3mLDMiqXJBgr+MnklBGBKS9Xl2hmrQ
         wKh+LCa4+8lFNaQICX/kVDUGaHWqRbisFH86+VIcUi1fkDNA5/4JIG45ofRDQf28PxSY
         t+gW18XhNj5j6NrNatDmZKmLoS2m6Mowt2AYVXr5Q7MiZ0NZo+bT2V50bVL9wT2TSR/C
         5/OgP+80Nd9U6qHLx7TnQ7lm1qEryHwJ+l0w8/6srms6CEzUGKJ47CpPglIxY0C/17mu
         z2fA==
X-Gm-Message-State: AOAM531TpdEwP5Cja9ZLrxuBGuTR8sfL0UxMva+uj4y78CWB1Re/RL1w
	sNEoLmK08WMppJShE09d7GXQ8sXn5EpGUQ==
X-Received: by 2002:a17:903:2309:b029:e7:1063:e6aa with SMTP id d9-20020a1709032309b02900e71063e6aamr18215297plh.52.1617485845616;
        Sat, 03 Apr 2021 14:37:25 -0700 (PDT)
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from djbComp (S0106ac202ecb0523.gv.shawcable.net. [70.67.120.89])
        by smtp.gmail.com with ESMTPSA id b10sm11668439pgm.76.2021.04.03.14.37.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 14:37:25 -0700 (PDT)
Date: Sat, 3 Apr 2021 14:37:24 -0700
From: Deborah Brouwer <deborahbrouwer3563@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
	insafonov@gmail.com, martin@kaiser.cx, simon.fodin@gmail.com,
	straube.linux@gmail.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: core: add comma
 within a comment
Message-ID: <20210403213724.GA18745@djbComp>
References: <20210403210930.17781-1-deborahbrouwer3563@gmail.com>
 <alpine.DEB.2.22.394.2104032315200.7875@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2104032315200.7875@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sat, Apr 03, 2021 at 11:16:16PM +0200, Julia Lawall wrote:
> 
> 
> On Sat, 3 Apr 2021, Deborah Brouwer wrote:
> 
> > Add a comma to separate repeated words in a comment. The comma preserves
> > the meaning of the comment while also stopping the checkpatch warning:
> > WARNING: Possible repeated word: 'very'.
> 
> Thanks.  That is more understandable.  Isn't this a v2?  If so, there
> should be v2 after PATCH and an explanation of the change under the ---
> 
> julia
Hi Julia, no this is not a v2.  I found the same comment, generating the same
error, in a different file.  Since I changed it in
rtl8723bs/core/rtw_xmit.c [1], I thought I should be consistent and change
it here as well.  

[1] https://lore.kernel.org/r/2944d1a0e8769edb489bb336423625a61d314d05.1617229359.git.deborahbrouwer3563@gmail.com

> 
> 
> >
> > Signed-off-by: Deborah Brouwer <deborahbrouwer3563@gmail.com>
> > ---
> >  drivers/staging/rtl8188eu/core/rtw_xmit.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
> > index ed81cbc5e191..99e44b2c6f36 100644
> > --- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
> > +++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
> > @@ -1243,7 +1243,7 @@ s32 rtw_free_xmitbuf(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
> >   * If we turn on USE_RXTHREAD, then, no need for critical section.
> >   * Otherwise, we must use _enter/_exit critical to protect free_xmit_queue...
> >   *
> > - * Must be very very cautious...
> > + * Must be very, very cautious...
> >   *
> >   */
> >
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20210403210930.17781-1-deborahbrouwer3563%40gmail.com.
> >

