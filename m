X-GM-THRID: 6667559870599790592
X-Received: by 2002:a1f:9d49:: with SMTP id g70mr24984699vke.10.1552415136466;
        Tue, 12 Mar 2019 11:25:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:e3d1:: with SMTP id k17ls4635050vsm.0.gmail; Tue, 12 Mar
 2019 11:25:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyRyeRtxh8SveAuOXcO/+Viat1kUyINp7emNzPIs5CpaEG9xOdBsjxpk/PPwLBWMRSet5ut
X-Received: by 2002:a67:85c6:: with SMTP id h189mr25370456vsd.33.1552415135457;
        Tue, 12 Mar 2019 11:25:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552415135; cv=none;
        d=google.com; s=arc-20160816;
        b=WkKU4jtwp2ZvqT9guMWgXlfkP+uIT9Zg4F1XdfqxL1W6Xx5XPzLNFLw/HWfDBKCl3x
         0q4PFw9mXLH2vwhM/6CtxYshz2f1pOwoj8HZDA9QYpjkine36DamvFlR8KkVJnoRI+q8
         Zg4pX9Nv4+W7V23inEt1PRez5GlzYgzdJQAAWYTf7O8q1TPVLK+Qz8JSWtD8o+xGptlO
         3KqWP/U4bRpOtHnJ3Uo848B0LNwq3dh1h8eALyzsRSAw8C0EnRqvYwSjPqmtt0o0IBlC
         R1TNMEaqwfTFF9cWzmjHe6xsvvZbEhxl2Zi/STNc8JG4mlgapr5Fi0TCD2wKXKusLWCX
         CUhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=ILiFkWsigmtn0RCIqo3RrFHNmWZzgw6StSgBRDh7O9w=;
        b=Yaikm9FkeS2wfjanDPWDZXpmgsVvbk2+UucuF79vL0CtknwxKnDBbifWFaZ/A4r170
         qJha1EyQXtl3BvLKFBxdMqh6YUgm5HRvgwE6oFK3blDKChUwZgzGFhvPjAO4KDge8hsP
         AFY0jvdAbmu2YWZ2V84pAVUDOTuqySt0lSTnFYO1nkaSp8sI9iayu2KLBeVVBFHkXlhT
         K4+Q2G1cs4f/aKXvNdj4uVwezx7MZUKgxMAX2fOaO6V5n9XI3DUM/R+1f103W078I6bk
         kMeWKUBItymCBY65ZkVjx4kRVqqkBx5rT18dHXz/Ny6kfD1hxfQo0pj8X2fecIh1FYKI
         Gcfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VMRbm5Lw;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::229 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com. [2607:f8b0:4864:20::229])
        by gmr-mx.google.com with ESMTPS id c22si468607uan.1.2019.03.12.11.25.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 11:25:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::229 as permitted sender) client-ip=2607:f8b0:4864:20::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VMRbm5Lw;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::229 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x229.google.com with SMTP id t206so2947826oib.3
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Mar 2019 11:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ILiFkWsigmtn0RCIqo3RrFHNmWZzgw6StSgBRDh7O9w=;
        b=VMRbm5LwHHqHQiHng8ElhF98+DQxHJHvAh2/HROc72cF96EbCHRtDT8Hip9793S0id
         tWLy+UX6T5EZmc0Z1UmBTslWWy5jU3UaVVafndYh++5KPU9plobaCdABbCuDeUNhgE84
         0/eeeatCExxeH/ZxEWHq4i5NiXEG4jY48yP5qR1BWa1rjuPe9/3N6yMmQ+Bwoj8FfW5T
         3FPnrGSAlsAJydBR1v2WNsvygjlCo5QLMdYutn4nWPCxlBq8OxRR/E/vsai61rofjXC3
         eL4WJsyS3Tw7GVAetNt3oxn8BWwl4KyVshKoheVddDQTtUGpJgBtbXsKKqcV+0lGm1Q6
         a6Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ILiFkWsigmtn0RCIqo3RrFHNmWZzgw6StSgBRDh7O9w=;
        b=tW8szWkL3T/V36k4jzz5txLZpeUwEwziKOX8WVpIWHFkqYQ22iyT2ry7bZgmNGoWXs
         ejFn+isPaLXaoeCIH3ZxdIf5uBpEClCEp54M8c2VEUVZrJ21HVwf2DE18KCCSqqWVXNm
         JvCjSyPbi3KLO5YKfyf3rD8a8TfT4uZ75JydrGHtgRj+dvbKyMHg/olwrml7M5+iJGOL
         tBHz67STwwRAyqyuZ7+lcbQ2COd7nI6+tvw4S6zh3KdX1tiQXAiutnUk2/qg6mFoyERW
         cwJUMd4jX/iUK1zkKbXrM1b99Kpzi5AbcYovIVaYnoSwl0AQE3HRmHkratNF4GRhNAAo
         n5lg==
X-Gm-Message-State: APjAAAW2kJUTSosTIRY9fy/uh56RRWH3aQJp4xT1NxfxGxJAxTiMdTcV
	IbMH7gP1DWFzdOOw+/JvFQrrGzzkW2Y=
X-Received: by 2002:aca:5dc1:: with SMTP id r184mr2588614oib.127.1552415134695;
        Tue, 12 Mar 2019 11:25:34 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:432c:9838:e357:690:7f06])
        by smtp.gmail.com with ESMTPSA id e12sm3666421otr.1.2019.03.12.11.25.33
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 12 Mar 2019 11:25:34 -0700 (PDT)
Date: Tue, 12 Mar 2019 13:25:32 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: Remove an
 unnecessary initialization in function
Message-ID: <20190312182531.GB17075@madhuleo>
References: <20190312173730.23281-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.20.1903121850370.4097@hadrien>
 <20190312180344.GA17075@madhuleo>
 <alpine.DEB.2.20.1903121912480.4097@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1903121912480.4097@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 12, 2019 at 07:15:53PM +0100, Julia Lawall wrote:
> 
> 
> On Tue, 12 Mar 2019, Madhumthia Prabakaran wrote:
> 
> > On Tue, Mar 12, 2019 at 06:52:44PM +0100, Julia Lawall wrote:
> > >
> > >
> > > On Tue, 12 Mar 2019, Madhumitha Prabakaran wrote:
> > >
> > > > Remove an unnecessary initialization of local variable dt_stat in function.
> > > > Issue suggested by Coccinelle using ret.cocci.
> > > >
> > > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > > ---
> > > >  drivers/staging/speakup/speakup_decpc.c | 5 ++---
> > > >  1 file changed, 2 insertions(+), 3 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/speakup/speakup_decpc.c b/drivers/staging/speakup/speakup_decpc.c
> > > > index 459ee0c0bd57..3ad49bb93829 100644
> > > > --- a/drivers/staging/speakup/speakup_decpc.c
> > > > +++ b/drivers/staging/speakup/speakup_decpc.c
> > > > @@ -233,9 +233,8 @@ static struct spk_synth synth_dec_pc = {
> > > >
> > > >  static int dt_getstatus(void)
> > > >  {
> > > > -	dt_stat = inb_p(speakup_info.port_tts) |
> > > > -		 (inb_p(speakup_info.port_tts + 1) << 8);
> > > > -	return dt_stat;
> > > > +	return inb_p(speakup_info.port_tts) |
> > > > +	       (inb_p(speakup_info.port_tts + 1) << 8);
> > >
> > > This doesn't look correct, because dt_stat is not declared in this
> > > function.  Did you get this result from the semantic patch that is at:
> > >
> > > https://kernelnewbies.org/JuliaLawall
> > >
> > > That says "local idexpression ret;", so it should only report on the case
> > > where the variable is declared in the same function.
> > >
> > > julia
> > >
> > > >  }
> > > >
> > > >  static void dt_sendcmd(u_int cmd)
> > > > --
> > > > 2.17.1
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190312173730.23281-1-madhumithabiw%40gmail.com.
> > > > For more options, visit https://groups.google.com/d/optout.
> > > >
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903121850370.4097%40hadrien.
> > > For more options, visit https://groups.google.com/d/optout.
> >
> > Yes.
> >
> > 1. I created a file in home ret.cocci, which is
> >
> > @@
> > local idexpression ret;
> > expression e;
> > @@
> >
> > -ret =
> > +return
> >      e;
> > -return ret;
> >
> > 2. I run a command
> > spatch --sp-file ret.cocci --no-includes --dir git/kernels/staging/drivers/staging/ > ret.out
> > which generated this file.
> 
> The approach looks fine, but I don't get any output related to that file.
> Can you double check that your semantic patch is exactly as you have put
> it above?  What do you get when you run it giving the name of the specific
> file?
> 
> julia
> 
> >
> > Please correct me, if I'm wrong here
> >
> > Thanks,
> > Madhu
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190312180344.GA17075%40madhuleo.
> > For more options, visit https://groups.google.com/d/optout.
> >

I did have same semantic patch.

Output of file -

...
...
HANDLING: git/kernels/staging/drivers/staging/speakup/main.c
HANDLING: git/kernels/staging/drivers/staging/speakup/speakup_bns.c
HANDLING: git/kernels/staging/drivers/staging/speakup/speakup_apollo.mod.c
HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_sii164.c
diff = 
HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_chip.c
diff = 
HANDLING: git/kernels/staging/drivers/staging/sm750fb/sm750.c
HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_swi2c.c
HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_mode.c
HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_dvi.c
HANDLING: git/kernels/staging/drivers/staging/sm750fb/sm750_accel.c
HANDLING: git/kernels/staging/drivers/staging/sm750fb/sm750fb.mod.c
HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_hwi2c.c
HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_display.c
HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_power.c
HANDLING: git/kernels/staging/drivers/staging/sm750fb/sm750_hw.c
HANDLING: git/kernels/staging/drivers/staging/sm750fb/sm750_cursor.c

Here, Do I need to consider the file, which states diff =
HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_chip.c

Thanks,
Madhumitha


