X-GM-THRID: 6809434547497730048
X-Received: by 2002:a5b:58f:: with SMTP id l15mr4360680ybp.84.1585627347301;
        Mon, 30 Mar 2020 21:02:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:1d85:: with SMTP id d127ls6710456ybd.0.gmail; Mon, 30
 Mar 2020 21:02:26 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuce1PZiBf5HbswS9z3dBnAAaycs5zxb3VdxSQQDnNFRPoYOo2bjvXH6er9T8RRQX9AQpf/
X-Received: by 2002:a5b:c4a:: with SMTP id d10mr6205956ybr.59.1585627346066;
        Mon, 30 Mar 2020 21:02:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585627346; cv=none;
        d=google.com; s=arc-20160816;
        b=xQORrX6VERkPKQFSOFRzvsufBYZTHbHtf8O1tkCfsmxMOHvO5rzSS56VboNlr5mTfI
         c2v6TMSrLNFf7/Ax0nd7facQM9lSe0UEcq9/vEGyS9cs23ovh/YBYxdkSnzaR3TI9qIx
         fAasNRBomz8au6SA1zs0XVRbU2EwShiMD8DpQW+LSLkpPIlCUnt8D13H/6cBUVXjiWh/
         85yEsV64L8UcWqFqCdaoL/kUSUjxhkdeqIgAANVLle/0hA72HXitjYZMyu6LTvfTRq2t
         688IMaCALIpxG6RGt/U/K4cYGh7VAZeRzCs+ApQBtjEzU5nIMHx03hd2hlrzBLWaHGVg
         WnQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=A2LJJaupzp2aMGkmk87FcXXmkb49shKJ8fqP4LYjhBk=;
        b=QkijdH/e4G8mGbMMrzKn3olwSHXyIjfnStmJv+1eByS9uY3O6YdNXm6HXGLQYhIfnv
         ZAVQ/xZNOvd+W8k6BWEqYXDnDLH/oR8bEDyHteTnSMm5PYx3OCee0Pn4RVWyXm/H3JBr
         UeKqUfMy9HzPf5XD+FEwU3IYH+zMNrTrGPYBd9VjjBjqsdTFndvxsozU5/qc2NqXZyd8
         28pxNYS3G9kuR7pjm2OtT5H53Z/O2GLPJ6sQEfbUOR9NRnZW8bEjq24UeHLnd5wwEsGc
         R2isYh6Mj9Fxm2V9YaN2TAK6HrdV9GjhTEHRZ3h8OtgAooIpKH8X2Y/xop89P+gyRntz
         MigA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NjA29DnW;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id d72si687262ybh.5.2020.03.30.21.02.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 21:02:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NjA29DnW;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id v13so529195pjb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 21:02:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=A2LJJaupzp2aMGkmk87FcXXmkb49shKJ8fqP4LYjhBk=;
        b=NjA29DnWs2ZbfSxTtfEMLdJ23vHdM8ZB4q9sMcZq+m4RrlirIwVteprffzWlQxZKj4
         dYjFBafDU8VvfKIZtAkvHQiuZGh0wFeoZ1uZqyvRmqro/VVrlI8WkTTMbh9J2ZF3XBf/
         ukQJu8S4YGXiK6aX61z/neVk5x+HBlBvz7JehCpmr2uRjWTERRjDrRwXwJhZeusvp2tz
         GBqHYZs4o0Sh1qmnhp5uDt76nZtc5bG5vuIUehKEOrjVQUnMR4veBI0B21d3EHpCYD+D
         hJwTmRbHXZwWcx8+87Ey7XlV7t92atG83hqsW0DqhAHtFJ99lo2GNcqSBh+uUIbpFe5S
         nQqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=A2LJJaupzp2aMGkmk87FcXXmkb49shKJ8fqP4LYjhBk=;
        b=LYPWJRTuW8zmz2RrNzWM8lH5Sjxq4J4QrsB2rmfJj7pFBoJFVpuWDT5wgEKIMklPPB
         x+AGzbD+ui35+JgXa/3MhjrdSBVMzJgDaZYrw14nqRxSiPxaMWCpVph2+1ivumYvoJGG
         cmfPi/d5I/A/HKnlQl0NOYDtbPKLFBLqZXK1EZXH8JWVPHDMxKv71Yzd2sL6ZPy/7mCb
         HurVy3vbAlgfRsMRlb74DH6lfJNTq3JhDHyhGhTDhM9IGLBdcam2XjZgHk5iGD5hiaxW
         ZkSmNnFk3lKbNd48fsxvFoosvgkb6cD+LqVmpCiGHzMfbI0R8MZLnoCrVQjt7qsgWdYT
         rUVQ==
X-Gm-Message-State: AGi0PubaFul47p4nY1tNTJMucuQI7JnkEEjs1cE4fGMIiKM3nQAWSkjI
	/UtLtgN8zOTP+nZId24SyVwsFdRxO/1EVA==
X-Received: by 2002:a17:90a:1d4:: with SMTP id 20mr1501615pjd.95.1585627344990;
        Mon, 30 Mar 2020 21:02:24 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from ?IPv6:2601:1c0:5400:122:2697:be21:1d90:fb7a? ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id d26sm11306174pfo.37.2020.03.30.21.02.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 21:02:24 -0700 (PDT)
Message-ID: <2284c3244be70e2b18d760883e679476b5b13861.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/3] Staging: vt6655: Remove
 CARDbSoftwareReset definition.
From: Briana Oursler <briana.oursler@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>, Stefano Brivio <sbrivio@redhat.com>
Cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net, 
	outreachy-kernel@googlegroups.com
Date: Mon, 30 Mar 2020 21:02:23 -0700
In-Reply-To: <alpine.DEB.2.21.2003301654140.2432@hadrien>
References: <cover.1585442480.git.briana.oursler@gmail.com>
	 <99a02f7f8fe001b30d3e4839c7793922c37027e4.1585442480.git.briana.oursler@gmail.com>
	 <20200330164514.7f0c2272@elisabeth>
	 <alpine.DEB.2.21.2003301654140.2432@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.5 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mon, 2020-03-30 at 16:55 +0200, Julia Lawall wrote:
> 
> On Mon, 30 Mar 2020, Stefano Brivio wrote:
> 
> > On Sat, 28 Mar 2020 18:23:40 -0700
> > Briana Oursler <briana.oursler@gmail.com> wrote:
> > 
> > > Remove uncalled function CARDbSoftwareReset and comments related
> > > to it.
> > 
> > I'm not a native English speaker, so I'm not entirely sure about
> > this:
> > would you really *call* a function "uncalled"?
> > 
> > To me, an "uncalled" function sounds like an undesired function.
> > Which
> > is true, but that's not, strictly speaking, the reason why you're
> > removing it. You're removing it because it's not called. Not
> > because
> > it's uncalled.
> > 
> > Or... is it exactly the same?
> 
> Actually, it seems minimally ok to me.  But "Remove the function XXX
> that
> is never called" would indeed be more clear.
> 
> julia
> 
Okay, that makes sense, I will go ahead and make the change. I'll
update the phrase as it appears throughout the series shortly. Thanks,
Julia, clear commit descriptions are definitely tough for me at this
stage.

> > > Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> > > ---
> > >  drivers/staging/vt6655/card.c | 20 --------------------
> > >  drivers/staging/vt6655/card.h |  1 -
> > >  2 files changed, 21 deletions(-)
> > > 
> > > diff --git a/drivers/staging/vt6655/card.c
> > > b/drivers/staging/vt6655/card.c
> > > index e65c9825ea5a..135010d2c7d3 100644
> > > --- a/drivers/staging/vt6655/card.c
> > > +++ b/drivers/staging/vt6655/card.c
> > > @@ -12,7 +12,6 @@
> > >   *      CARDbAddBasicRate - Add to BasicRateSet
> > >   *      CARDbIsOFDMinBasicRate - Check if any OFDM rate is in
> > > BasicRateSet
> > >   *      CARDvSetLoopbackMode - Set Loopback mode
> > > - *      CARDbSoftwareReset - Sortware reset NIC
> > >   *      CARDqGetTSFOffset - Calculate TSFOffset
> > >   *      CARDbGetCurrentTSF - Read Current NIC TSF counter
> > >   *      CARDqGetNextTBTT - Calculate Next Beacon TSF counter
> > > @@ -843,25 +842,6 @@ void CARDvSetLoopbackMode(struct vnt_private
> > > *priv,
> > >  	/* set Baseband loopback */
> > >  }
> > > 
> > > -/*
> > > - * Description: Software Reset NIC
> > > - *
> > > - * Parameters:
> > > - *  In:
> > > - *      priv         - The adapter to be reset
> > > - *  Out:
> > > - *      none
> > > - *
> > > - * Return Value: none
> > > - */
> > > -bool CARDbSoftwareReset(struct vnt_private *priv)
> > > -{
> > > -	/* reset MAC */
> > > -	if (!MACbSafeSoftwareReset(priv))
> > > -		return false;
> > > -
> > > -	return true;
> > > -}
> > > 
> > 
> > This newline should be removed for consistency. I mean, either this
> > one, or the one after CARDvSetLoopbackMode() -- nobody will be able
> > to tell which one you chose. :)
> > 
Will do! 

Thanks for reviewing, 

Briana
> > >  /*
> > >   * Description: Calculate TSF offset of two TSF input
> > 
> > --
> > Stefano
> > 
> > --
> > You received this message because you are subscribed to the Google
> > Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit 
> > https://groups.google.com/d/msgid/outreachy-kernel/20200330164514.7f0c2272%40elisabeth
> > .
> > 


