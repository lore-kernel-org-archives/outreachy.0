X-GM-THRID: 6667626897637113856
X-Received: by 2002:a62:6003:: with SMTP id u3mr15319321pfb.26.1552429567310;
        Tue, 12 Mar 2019 15:26:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:59d7:: with SMTP id k84ls9800092pfj.6.gmail; Tue, 12 Mar
 2019 15:26:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwsxEvzDTmP+cwoLHxljLzLOZxH+x+SYl+kWfEp4GAEA8CRsj9hGgpBGn9UCcG2+6H1IFqu
X-Received: by 2002:a63:cd49:: with SMTP id a9mr1505805pgj.121.1552429566668;
        Tue, 12 Mar 2019 15:26:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552429566; cv=none;
        d=google.com; s=arc-20160816;
        b=MPC2Zb+2/YlcVku3yBMi5mAGD3E22FTBWwEN+SOV6JaZpDkGae4ckIU+6xvSkFmaz3
         Ni4gWEvv28mol30hcZO/COR9nlgOIS7ZgWzbEwlN78KE1lF9Ph3ydyBBLgEraFwJOzRk
         64mjORNbHpRNLCcY3vIpHWDPYvsdqdQQgbbRaOyrQA0G+CJGpKQILqUSR3xMQat9KQyj
         uRKjUQVl227c4rMruw44BhmaoHjaqlrMs2+4iQDh7UnmDw9gRY/ppg7RCyhZ5Zc+yoyi
         ZkS/JjwvWyFKSoFvMyW6E3DxptUdkUGZPVAd9pQ9tBR0hM9bucXiJbYGRaz9nBd5MTg/
         4tHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=z9+hv59vzpf6jrhY7X8A0ZG6Ft+5nriDq9s9+FxcoV4=;
        b=BGnlMKAOKCgbophGGZMuMP4SgUjwQZ5E/68Q/KruhkL+/yIhJhxUjTSg9Xl8e0ofd4
         qIClFfBzLrHifJAIheNli2uBiK9D/EsUdiR+QdoD8QG4vK08UtmNaYbHosdMpwoeGvYf
         69vKGhqbUFoTur/sVXnyQhFap6avT7nGEdQyqj73K9dSYCfq4qTsEsPn7YgiBIxEed4o
         YPdGgf9o7SjGTIjyBImfiZ00smzhjq18rxDxbYO8aARfNr6/GhCibVOSL0RX+akWWoMP
         ko5GeNpyiP03+IjpRm9JBWaQXf3ZnXYi6qTW3bAhGNv4PioNB8U2M+7eWzEwxiTt2Cco
         neBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UU01QwVq;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id c12si593827pfc.2.2019.03.12.15.26.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 15:26:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UU01QwVq;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x243.google.com with SMTP id b4so3490175oif.6
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Mar 2019 15:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=z9+hv59vzpf6jrhY7X8A0ZG6Ft+5nriDq9s9+FxcoV4=;
        b=UU01QwVqFD2uZ04/vy68LX5ftXZ344n8gZZONcwZZNQEkUdvYQ9PRYrGgemN0eq/Y9
         WGzJFADjYJrvcfB4FwXFoFSndAc6DTJkfL4/qKIQh7RgDvHVzMm3QICsz2VD4rVdpysc
         CUANN6KvG826bUGZWG91mPXKLVmHFm3L0U8mW2viNqLT1S3BeX6fhTbF9fc2fzCbAmSS
         Bh4WanWnK+3GR8jcs9stNchIubBiXYk8KYsxPb/ot5ByVB4yZaCkR1jSMYrxTcsR77+R
         PG9fsq1T+g9CVp0b6SrvPwrQbxp+dcPQDbrO9c0i351OOhlzJoRaydyDEpHd1C6Juua2
         6U0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=z9+hv59vzpf6jrhY7X8A0ZG6Ft+5nriDq9s9+FxcoV4=;
        b=bxUI7d5Gur6BpSVxsDQJ7DD+39UzkuAqVjOzvf5LcKdqaPaSIk41F9ydderDCsaRzO
         HH22Vi/+m3bDA2C5jIm+PyzdX434RiLeJjAYSqwsDIfI9Nb5p8X26I64IhAHP9fpRqrB
         zEyGh2QCzd/virkQP8qLfnEZeCcOO7/WX2rZINCxo15HTbOQtuIiPZ0irSzagbBB7Nyq
         W7mEPOKCmE0oCTMc7Gd56Pt5FPfveHqgJqm3uIfceK6srAXHhGQeVEGeR+RED8wxpPWn
         tY0xpSOHHwN5LVDZrW9g/irQjM3izt6P1+wTKCLZwzkpj34dtJpp2zBYTpImQqI0Hzta
         jtig==
X-Gm-Message-State: APjAAAUAmz08hxaiOSJbvywKLx0CBf88vuaWI7GTOvuQicOfTOM/uPMF
	xWJSmMBGcS/DW1dwDAjxlnXvlpgH7UqG1Q==
X-Received: by 2002:aca:bb02:: with SMTP id l2mr66968oif.114.1552429564833;
        Tue, 12 Mar 2019 15:26:04 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:432c:e4:1d2b:f2ed:b6ff])
        by smtp.gmail.com with ESMTPSA id 3sm3860971ots.75.2019.03.12.15.26.03
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 12 Mar 2019 15:26:04 -0700 (PDT)
Date: Tue, 12 Mar 2019 17:26:01 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: sm750fb: Remove
 unnecessary local variables
Message-ID: <20190312222600.GB30660@madhuleo>
References: <20190312215737.29200-1-madhumithabiw@gmail.com>
 <20190312220320.GA17305@kroah.com>
 <20190312220840.GA17773@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190312220840.GA17773@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 12, 2019 at 03:08:40PM -0700, Greg KH wrote:
> On Tue, Mar 12, 2019 at 03:03:20PM -0700, Greg KH wrote:
> > On Tue, Mar 12, 2019 at 04:57:37PM -0500, Madhumitha Prabakaran wrote:
> > > Remove unnecessary local variables in function get_mxclk_freq.
> > > Issue found by Coccinelle using ret.cocci.
> > > 
> > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > ---
> > >  drivers/staging/sm750fb/ddk750_chip.c | 17 +++++++----------
> > >  1 file changed, 7 insertions(+), 10 deletions(-)
> > > 
> > > diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> > > index 90f5480304f4..d0462f21fe36 100644
> > > --- a/drivers/staging/sm750fb/ddk750_chip.c
> > > +++ b/drivers/staging/sm750fb/ddk750_chip.c
> > > @@ -33,19 +33,16 @@ void sm750_set_chip_type(unsigned short dev_id, u8 rev_id)
> > >  
> > >  static unsigned int get_mxclk_freq(void)
> > >  {
> > > -	unsigned int pll_reg;
> > > -	unsigned int M, N, OD, POD;
> > > -
> > >  	if (sm750_get_chip_type() == SM750LE)
> > >  		return MHz(130);
> > >  
> > > -	pll_reg = peek32(MXCLK_PLL_CTRL);
> > > -	M = (pll_reg & PLL_CTRL_M_MASK) >> PLL_CTRL_M_SHIFT;
> > > -	N = (pll_reg & PLL_CTRL_N_MASK) >> PLL_CTRL_N_SHIFT;
> > > -	OD = (pll_reg & PLL_CTRL_OD_MASK) >> PLL_CTRL_OD_SHIFT;
> > > -	POD = (pll_reg & PLL_CTRL_POD_MASK) >> PLL_CTRL_POD_SHIFT;
> > > -
> > > -	return DEFAULT_INPUT_CLOCK * M / N / (1 << OD) / (1 << POD);
> > > +	return DEFAULT_INPUT_CLOCK * (peek32(MXCLK_PLL_CTRL) &
> > > +	       PLL_CTRL_M_MASK) >> PLL_CTRL_M_SHIFT /
> > > +	       (peek32(MXCLK_PLL_CTRL) & PLL_CTRL_N_MASK) >>
> > > +	       PLL_CTRL_N_SHIFT / (1 << (peek32(MXCLK_PLL_CTRL) &
> > > +	       PLL_CTRL_OD_MASK) >> PLL_CTRL_OD_SHIFT) / (1 <<
> > > +	       (peek32(MXCLK_PLL_CTRL) & PLL_CTRL_POD_MASK) >>
> > > +	       PLL_CTRL_POD_SHIFT);
> > 
> > Oh wow, that's almost impossible to now read.
> > 
> > Sometimes you want intermediate variables for the programmer, not for
> > the compiler.  The end result is the same, but please tell me that you
> > could figure out what that one single return line actually does :(
> > 
> > Remember, we write C code for people to understand first, and the CPU to
> > understand second as we have to maintain it for the future.
> 
> Also, this change might be wrong, and at the least, will be slower as
> you now call peek() a lot more times.  Is that a function that has no
> side-affects on the hardware?  At the least it is doing a device access,
> so you only want to do that once if possible.
> 
> Remember, there is real hardware behind the driver, that's why the
> driver is written in the first place :)
> 
> thanks,
> 
> greg k-h

Even I thought the same, when I was editing it but I was unsure about Coccinelle. 

Thanks,
Madhumitha

