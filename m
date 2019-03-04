X-GM-THRID: 6664357391399649280
X-Received: by 2002:a67:8093:: with SMTP id b141mr13250403vsd.37.1551715291515;
        Mon, 04 Mar 2019 08:01:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:204:: with SMTP id 4ls3698212uas.1.gmail; Mon, 04 Mar
 2019 08:01:30 -0800 (PST)
X-Google-Smtp-Source: APXvYqyOpeBTMUrY/iM4uMlRZOmaszgNQJ+bP7PD/02LeZUMKUGF5yqce79+RTJfV8MJTAXuWJi+
X-Received: by 2002:ab0:664d:: with SMTP id b13mr13185729uaq.8.1551715290774;
        Mon, 04 Mar 2019 08:01:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551715290; cv=none;
        d=google.com; s=arc-20160816;
        b=GhgoFgAfaCkRnTPc8fOtFgif+QbsJTTs9Kt/AdLasjpHKQU3Oa8kpQvFT0DDZKnXPn
         JUM4oV/ewXwTu+gN6g2mc184dsbi/YtahDqGKDooPGYbWulDPW/0nugCWNhUCgyTPIMK
         008PQvh5zEBh984nlHwUfad5BcMfCbwEUrXNNQ6qf/caing30nrYIFe0AX+noVAqsVUX
         WqhIH1Q+RrvyaEEFLy1p1Qce6lMNL+Ewj1xAFerXy4S/vpCqQBY20WSWFbiYLrIcli78
         O0njKiHBCmBsFsuH3N4nqdpA4TXcktZ76Ws1XYWDo422YOhz79UyGxg2PBDw2+VgJfVZ
         wwSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=O2HDJgMyKOses0io2UuvBDEvyThwxQIh58IZdUK5npE=;
        b=kQDZBtQ70uL/6AAOeyt1HyEmP92v4mkGqIxKhw/KBBMM2+EBmSWDiIfzw5vyGw4+Pn
         cE8SWZSlpwwJKdECcSVVed4FCITOnsiWLKaMWQ7o03F+cRMFLGpkv4H7cSM+3ldy8h0i
         E3nGfDiWO2ghmVp/Y8y/MdYa0/FRQh89uwys0Pw2XR4kGXbtoJrwFZ1MzropRLLGU0DN
         49UurMJCGIalsxhRYEn8MH21CuM8Pu65RCrfAtHRAdA0XanwQBLCsM7Snf4W4TpTTxHh
         +hKUNs5AajGXEIt42To+7El0CaNyDbxDVzqLHd2JuJEkbckKRW3tsAJam9esMRbFSDcJ
         gqpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hbA7D38g;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id m195si390900vkd.4.2019.03.04.08.01.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 08:01:30 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hbA7D38g;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x244.google.com with SMTP id i8so4215468oib.10
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 08:01:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=O2HDJgMyKOses0io2UuvBDEvyThwxQIh58IZdUK5npE=;
        b=hbA7D38gvsRIhl2NjBJOpc8BYqKblPKTkMC51l7BjuWAuenv8BUTQwUzNKEIJXM32U
         +uVJs98sB/AO+a/z/uYDoi1FpiB8xNzPHGM88OZzkJ2f5+TjVGA2jH0IbWFitmzjVJE9
         Avy6ZWHDuVihhOhUytZmEkKSxbPyostA1Npg1WYM9p61dB6NqSN2vStox5VHDpyBSakq
         Bi2oEnWR168KnLT4h+VJqiocuIY7T4cruhKHkGqPK9nHJuReLknRvnsvSd4kpytgRIl1
         b7nS0V1ew8GxKw8EzBeFvAqAyg+PB6tH+kH85gwKMwIRBU51ZMWZkb+3wEs34uwA9Us0
         yDjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=O2HDJgMyKOses0io2UuvBDEvyThwxQIh58IZdUK5npE=;
        b=qYLQWZkAR/yC7ZxUOkaD4eJgXeAskZRehD7y/kBOdcI6UOqGHsyKbCyR87IgV7ilSF
         m1bnGoKrc6W71bB4yejRoq6/PbnJODGm4LUoL2UziN99gNx9N32khMqrG0fYs6YqwQ09
         6Fk+O2yGyIdZfo7V0kIoY7Yq08gRZGD70lZtooLhSBV2gDueNZuMWC5mzXrFXe24DEgw
         0vKfeJtLcG7r/thMOJ/tPfsvGMtC3g6vKM2onFobSMHoa9zvTnzm+iVikGPAGHXikRnH
         QPsoQ6zd0DF6J59ER634YrEVbQqlzGzReJ69FRQjVAbpXgYsCnXtn59NvQcTcj89OuJH
         mx4w==
X-Gm-Message-State: APjAAAUxvFIpsJ8GvPSfCtxkQAIB/0LYcREDqwK52KJjU/ohYH4DH/g/
	/XYb8kKr4OqJZ0Z1jNiz/BbdIKZrDnQ=
X-Received: by 2002:aca:e144:: with SMTP id y65mr12665453oig.156.1551715290141;
        Mon, 04 Mar 2019 08:01:30 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id s126sm2539978oia.24.2019.03.04.08.01.29
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 04 Mar 2019 08:01:29 -0800 (PST)
Date: Mon, 4 Mar 2019 10:01:27 -0600
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: Fix space around
 binary operator
Message-ID: <20190304160125.GB20855@madhuleo>
References: <20190304023013.18421-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.21.1903040837450.2559@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1903040837450.2559@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Mar 04, 2019 at 08:37:58AM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 3 Mar 2019, Madhumitha Prabakaran wrote:
> 
> > Fix the check as per Linux kernel style for use of spaces
> > CHECK: spaces preferred around that '-'
> >
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> 
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> 
> > ---
> >  drivers/staging/vt6655/rf.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> > index 825b6ab5c0de..fd09b9771cf5 100644
> > --- a/drivers/staging/vt6655/rf.c
> > +++ b/drivers/staging/vt6655/rf.c
> > @@ -792,7 +792,7 @@ bool RFbSetPower(
> >  			byDec = byPwr + 10;
> >
> >  		if (byDec >= priv->byMaxPwrLevel)
> > -			byDec = priv->byMaxPwrLevel-1;
> > +			byDec = priv->byMaxPwrLevel - 1;
> >
> >  		byPwr = byDec;
> >  		break;
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190304023013.18421-1-madhumithabiw%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903040837450.2559%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

Thanks. 
I will resend this one. 

Madhumitha


