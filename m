X-GM-THRID: 6667904381849960448
X-Received: by 2002:aa7:8649:: with SMTP id a9mr3891663pfo.134.1552516567650;
        Wed, 13 Mar 2019 15:36:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:5788:: with SMTP id i8ls1464157pfj.0.gmail; Wed, 13 Mar
 2019 15:36:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwh2V46FpffB6CcHuP6tzJT3YU6EPSA9IpY0HxXvAIqZexJ1i8QvG7d8ecAj46Dr0rh1GCg
X-Received: by 2002:a63:5c41:: with SMTP id n1mr9764655pgm.28.1552516566846;
        Wed, 13 Mar 2019 15:36:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552516566; cv=none;
        d=google.com; s=arc-20160816;
        b=WSsluCDjiB39Z4a5HxlvLv1UF5N2OLbdSpDwInVq6hJ9BBYgBd0Il7KIBfMelRPl3V
         hPA1c9MDmaksSIFsZfMHYOHq/2NsNOp5e65GptJFbn6tMEBnUJJ3LhnkEcTffEr9tBtk
         nVYCyLAutyIj0UfLux3aIHVJGUIG4hQKmJNiwPyYktjdry5V73qdMcokx9lQQp6AxCAY
         uymAUMvt9A8CUmNVO4IN9kAQm7oyoWycakwE2SYdeE1YAOPmz/GluZtFIcA3f3Izf7Dt
         a87R2PmMZHoO97WE+nlzUvJbmfOJj1Wzdxxe2Ud7y/ZvJ9kbQKCL9Mi1UoTYmheutGJo
         4vVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=ATrBihzGINAjmZQu7d3eXtEI2gltt6aonWpwaFVhvME=;
        b=jaFwcsh9M9d4Eo9DSzqe0PaTG+DWV3t5WqzAlJ/1RP3p5FGs5vMfzkNUbB0zrlrHih
         DECCVdmi3lDBC8qsNoRlcRi7Pb8igZkc2kMLWrMRKmy/5pA5Ok0ivgshYE/DIz0B47+Y
         VKtxXYKEY0KF2qQqfoN22HB6x6c1wdyNUcatCtEJfPocNCalULXl0krSQrUPWzFL3Y4S
         v6ngpyPsuN1Ek4X9b6ghPsh7y3wIOb4MAPOAbSbFPxezUivfwL4suZRPYhdpcVsFCodm
         ArXbufBYgE9BFCIYHsBlu+3xN0entdDytybiAuuQxnPF6RR6OiPOV+x9JID+szZHlDKY
         bOww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mTCNuvSA;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id c12si794658pfc.2.2019.03.13.15.36.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 15:36:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mTCNuvSA;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x244.google.com with SMTP id g16so2853949oib.1
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Mar 2019 15:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ATrBihzGINAjmZQu7d3eXtEI2gltt6aonWpwaFVhvME=;
        b=mTCNuvSAZyvwYEsvtRVxu3nS9RSi3Z5t0pofT3cSr9RHDIdfQT1/dG8fHIS4KJ4JSI
         iAX9aM+5xPRWkOvyrElW8pDqIfAuVRdsxSd7loZNS50yVvmcyS20ixaPeQuBg7qW7QNt
         PBQbfM7KX8vZ5Nwgs6LmgN7nhprcz3yCSV9aNsR39hRqNYOzcNhyTnJlpvw4s0iGADTq
         KSKHA7NOhItSizTXlUzhLTlZyJYmC35eJi3wuobZb4OejJTaw7Z+MGaeS/i1p8Tpvmwc
         Gz0VfDgGJgXTR6pTK1fPIf9Z9vWzwzaVIq7pk9feCmrd2rbZVAbg3S8iYOz2aduAoNW3
         vihA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ATrBihzGINAjmZQu7d3eXtEI2gltt6aonWpwaFVhvME=;
        b=WKusYuPu2951zhjjDuIkR8PXfG6m4VtwJXODnbItvVwVGgb+yda2vbfFSVx47Yia+D
         t+KauNJwrjG+cHjdPgX43xtcz4fxBeJDl6oGQEA4Zx6dVN25PiGNDEdH7JRp/WGx4+6e
         vGUsu4zOwLikYrbxdXKMWoXWYXPA5OnrzgTGjv5JIqSIvJHMjUClhQPh/AdfiSinu9Tz
         nItiYmMljNTQ/yDlr7RhpWDnTs+fY8GkshX3lhLM+Uxslq47HI6f4jp09/haHhgq9A1X
         I4BJ1m3RcBs3Q/XmpU/NKcMvLDDWhdWyUuszdQ/szf/kqn7YRk9/LlMPtGlOnh5vw4Lo
         pteg==
X-Gm-Message-State: APjAAAUMe82HjWil/gDX9nLKTcsB/uOHNgd+yTetm/qTKv8H7t0Qa40Q
	fzfhZqSB0i5LpVsMV9gG9UPIPdMPnpM=
X-Received: by 2002:aca:aa55:: with SMTP id t82mr310677oie.29.1552516564703;
        Wed, 13 Mar 2019 15:36:04 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:432c:8990:5097:524f:ad64])
        by smtp.gmail.com with ESMTPSA id c19sm873479oih.46.2019.03.13.15.36.03
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 13 Mar 2019 15:36:04 -0700 (PDT)
Date: Wed, 13 Mar 2019 17:36:01 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl872bs: Remove local
 variables in functions
Message-ID: <20190313223559.GC5065@madhuleo>
References: <20190313155425.5548-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.21.1903132045230.2515@hadrien>
 <20190313214945.GB5065@madhuleo>
 <alpine.DEB.2.21.1903132304420.2515@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1903132304420.2515@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 13, 2019 at 11:06:53PM +0100, Julia Lawall wrote:
> 
> 
> On Wed, 13 Mar 2019, Madhumthia Prabakaran wrote:
> 
> > On Wed, Mar 13, 2019 at 08:48:09PM +0100, Julia Lawall wrote:
> > >
> > >
> > > On Wed, 13 Mar 2019, Madhumitha Prabakaran wrote:
> > >
> > > > Remove declarations of local variables in functions rtw_init_cmd_priv
> > > > and rtw_init_evt_priv.
> > > > Issue suggested by Coccinelle using ret.cocci.
> > > >
> > > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > > ---
> > > >  drivers/staging/rtl8723bs/core/rtw_cmd.c | 10 ++--------
> > > >  1 file changed, 2 insertions(+), 8 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > index 91520ca3bbad..814a4b7677a9 100644
> > > > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > @@ -297,18 +297,12 @@ struct	cmd_obj	*_rtw_dequeue_cmd(struct __queue *queue)
> > > >
> > > >  u32 rtw_init_cmd_priv(struct cmd_priv *pcmdpriv)
> > > >  {
> > > > -	u32 res;
> > > > -
> > > > -	res = _rtw_init_cmd_priv(pcmdpriv);
> > > > -	return res;
> > > > +	return _rtw_init_cmd_priv(pcmdpriv);
> > > >  }
> > > >
> > > >  u32 rtw_init_evt_priv(struct	evt_priv *pevtpriv)
> > > >  {
> > > > -	int	res;
> > > > -
> > > > -	res = _rtw_init_evt_priv(pevtpriv);
> > > > -	return res;
> > > > +	return _rtw_init_evt_priv(pevtpriv);
> > > >  }
> > >
> > > I wonder if there is something more drastic that you could do here.  The
> > > functions that these functions call (the ones with the _s) are called only
> > > once.  They have a different return type (sint) than these functions
> > > (u32).  They are declared as extern, but they are only used in the file in
> > > which they are defined.  It looks like things could be greatly simplified.
> > >
> > > julia
> > >
> > >
> > > >
> > > >  void rtw_free_evt_priv(struct	evt_priv *pevtpriv)
> > > > --
> > > > 2.17.1
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190313155425.5548-1-madhumithabiw%40gmail.com.
> > > > For more options, visit https://groups.google.com/d/optout.
> > > >
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903132045230.2515%40hadrien.
> > > For more options, visit https://groups.google.com/d/optout.
> >
> > Should I submit this as patch series, along with other modified file.
> 
> I'm not sure to understand the question.  I expect that the changes I
> suggest above would need to be in one patch, because the kernel has to be
> able to compiler after each patch is applied.
> 
> Please respond to messages right below the text you are responding to, and
> not at the end of the message.  There is currently a good chance that your
> comments will be missed, because one doesn't pay much attention to what
> comes after the bla bla bla information about the group.
> 
> julia
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903132304420.2515%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

The change need to be made in two files -  drivers/staging/rtl8723bs/core/rtw_cmd.c
1) drivers/staging/rtl8723bs/core/rtw_cmd.c
2) drivers/staging/rtl8723bs/include/cmd_osdep.h (to remove extern from function prototypes) 

So that's reason why I asked whether it has to be send as patch series or I can submit it as individual patches. 

In rtw_cmd.c, along with the change already made, I will change the return expression. i.e. 

