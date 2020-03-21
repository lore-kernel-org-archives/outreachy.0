X-GM-THRID: 6802515514721566720
X-Received: by 2002:aca:3255:: with SMTP id y82mr9886649oiy.44.1584774291348;
        Sat, 21 Mar 2020 00:04:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:474a:: with SMTP id u71ls3156954oia.0.gmail; Sat, 21 Mar
 2020 00:04:50 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vscXDisGZFShysJeRNNzdNaLdYFQGhPwQEQ+FRzSuc0fgFbtc/GXNTOr/qm+3EuuU3ZAgys
X-Received: by 2002:aca:c488:: with SMTP id u130mr9795626oif.154.1584774289966;
        Sat, 21 Mar 2020 00:04:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584774289; cv=none;
        d=google.com; s=arc-20160816;
        b=xZcwYz4/5/t4g0JdrZ9pyKblgM0YlNDXgemaaiHPQZ2VmPTJK44KCZeaE7FHoEh6yC
         v4PgvizLrHiLiKdIuXhMMbdeE8ZiPebpykAfWKe7MK0YNcDcNFvbqebOHhM2LGKnGgLh
         u8WKZHDyA2yAsbqSTKIK30AipKlVAU+IWKGtTPGZeNKXWBkoSK7awBgXuOGJ7UiiOfQ8
         02Pu+NaZZ250J+ozb0MXsndb84YI8ndwXbC4DOyw+uo89Xk8Xgn8sT6R4cbZo1Bk9Tpj
         HyULzY23NRWL8aJ0Nh5QeblPr6FZD6y/hErFBOmOtcsgLnFKY4LTVqmrrDgTFWcOXmIF
         xZkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=0VE4t9eGrnOPqakwc7oK3WrIUDIH+kEnkSpf+SdHPZQ=;
        b=g+2DU5PmJkIqqDlaUGF5bIYqx0hvkoMuM+aqALXKTv6L/XQ5X9b04X3kgVP/kWBVzl
         YLuGXRaUJbHqTBBt3+UvY15SXrDuI8QdkWXc2Ut4T3Pb/pBlI4C+CfPycC4Qr4Pq+ku3
         kUq+j8ncuynjiGbNjSLvRkdbik+yKLTSxAqdbYHOfVYC1H3+ffyysKkEToLodRjAThTU
         e2n2mzWIO01xhgmUT5weLLAAJUhiyy8lQeRd4jQq583QbbfJsPexJHycLIGKMrnKK4Lj
         buANhaict2M5hYbuT5qinq8GTIghki7L0Pi12Rw1qJXALPWcDbLdi2ZB6Og8+COJj0/d
         mJjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C0R8MmLI;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::32a as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com. [2607:f8b0:4864:20::32a])
        by gmr-mx.google.com with ESMTPS id n5si33133otf.3.2020.03.21.00.04.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 00:04:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::32a as permitted sender) client-ip=2607:f8b0:4864:20::32a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C0R8MmLI;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::32a as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x32a.google.com with SMTP id e19so8325010otj.7
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 00:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=0VE4t9eGrnOPqakwc7oK3WrIUDIH+kEnkSpf+SdHPZQ=;
        b=C0R8MmLINssoGfYCTomTJTSzXbfkJN0ZwHVI+2n87FZnf+JNGF1XTKOr081M5f5pRo
         4Cm8FAzXXUB0aMA4xj+WaM5BibKvxjONwK+XKT4JFFNeP28aWIoHh0wHAcig+UZ6kSwx
         5OVANgTQTG8ShE4ZECixaDqxF9xPndLmOGIEnDe0edrCKslztBmMm6OM1iPixV1mmq/D
         h33phitkifinmFS2YM04mt+hUOmX2DVYMeOndV2RRxbL0f7Z1jmutf3JbR2dQJQ0G7ZG
         J47pJcC5zw2hImPxWzYciFfIe2X4iBpnyg1WYhK/3BlP8a0S+j7rAGK4yx+HVMVaL4uv
         54Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=0VE4t9eGrnOPqakwc7oK3WrIUDIH+kEnkSpf+SdHPZQ=;
        b=DHRpvbifMxSG9dhCpnZoI04qRIwGhy2XJSWWXcqEDWuoMDTJ/mFwZ3ZK5/6exhreYT
         O5FkyUmtqezio6dV0HrDhnB+UNOp31jiVEJUpFsjewnPfQa4UNGUuJ6O4FDrUG/poIrV
         mjOH8yNgyuSjc1/heQtNa/G8aO7QIBEzWBKq/Wb5Ijtiz2w40VfVlToLWCIczYm5816b
         OgR87LGdUG2/+VUl1lv/bM7SrFI7qaFxkm8kfDMP19sY2uPutPO9acA56u22Mt+5XPTn
         Zn/FDFr1PBYi+KzAhOta3Pz1Rl4efed9Z6u0NzQCK/vYKEFM2ZHd48EAtebVlZqohHi2
         mzLg==
X-Gm-Message-State: ANhLgQ2Yl1m29UKcSeIIizcD/CHBTwvA8ixocDt/y4WvGpTlutMvy4PZ
	zo+WYue1R/MLMeOhWLgKx8s=
X-Received: by 2002:a9d:64ca:: with SMTP id n10mr10217052otl.325.1584774289742;
        Sat, 21 Mar 2020 00:04:49 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from ManjaroKDE ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id p130sm2872230oig.51.2020.03.21.00.04.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Mar 2020 00:04:49 -0700 (PDT)
Message-ID: <7cb25312f9f972d73881e488c3bcf2c4e438456a.camel@gmail.com>
Subject: Re: [Outreachy kernel] Outreachy patches caught up on.
From: John Wyatt <jbwyatt4@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Julia Lawall <julia.lawall@inria.fr>,
 "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Date: Sat, 21 Mar 2020 00:04:43 -0700
In-Reply-To: <20200321065134.GA849159@kroah.com>
References: <20200320141418.GA707555@kroah.com>
	 <024f9fe964fce4a9ede1d58c87b7bb75c6a35ac2.camel@gmail.com>
	 <20200321065134.GA849159@kroah.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sat, 2020-03-21 at 07:51 +0100, Greg KH wrote:
> On Fri, Mar 20, 2020 at 11:33:41AM -0700, John Wyatt wrote:
> > On Fri, 2020-03-20 at 15:14 +0100, Greg KH wrote:
> > > Hi all,
> > > 
> > > I'm now caught up on all submitted outreachy patches that I can
> > > apply.
> > > 
> > > If you have not gotten an email from my patch system saying that
> > > your
> > > patch was applied, consider it lost, and please rebase and resend
> > > it.
> > 
> > Hi Greg,
> > 
> > I just sent my patch in ~10 hours ago.
> > 
> > Do I need to rebase/resend it?
> > 
> > If I do, should I make it a v2?
> > 
> > Apologies if you already answered this earlier in the mailing list.
> 
> Julia provided comments on what you need to do to fix up your patch,
> please follow them and resend a v2.

I believe I did in v2. The code wasn't at issue-the description was?

Julia-please advise.

https://groups.google.com/forum/#!original/outreachy-kernel/RqwZpdvL8Js/tIbnooMBBQAJ


