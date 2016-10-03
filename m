X-GM-THRID: 6336950026186522624
X-Received: by 10.31.191.7 with SMTP id p7mr5535327vkf.8.1475491461307;
        Mon, 03 Oct 2016 03:44:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.50.244 with SMTP id u107ls9902556otb.37.gmail; Mon, 03 Oct
 2016 03:44:20 -0700 (PDT)
X-Received: by 10.200.55.21 with SMTP id o21mr3643332qtb.61.1475491460943;
        Mon, 03 Oct 2016 03:44:20 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id z73si1544106pfa.1.2016.10.03.03.44.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 03:44:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id i85so2059816pfa.0
        for <outreachy-kernel@googlegroups.com>; Mon, 03 Oct 2016 03:44:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=C/Bx557lCkRaw7EBM4r8Bh3DaopoWk6IDdrJtTwZOT4=;
        b=NyXoYZnDfW1bO7LzieEhl9ah9+Wg+B7am1Bgw6T/V7Ew9E7XPozo68Fp6BOui//ijr
         Lm7V0W3OIg5Vm55p+Qj5VowzwCYSe8Pcjm0kLsWNVzagbcfInetTLXq4lgvFekZMW247
         6j34tAEYZbldG4r1BfxCNuoAw6vrBznPu8koamH1Zw4q2+dv1FglZ5+vQZvoEAGRA11F
         SVAniG+BpNuXMveRt2WzHzMtNCRzvf+9Zf9SPhhVlgRnuhlocz1JsLOPMEnkX4SsX6Ku
         N+S9TDXVrx8OEgRpAryM5UoOj14E1FOBX/KxwnKKbBjD+CHDoSBwimdNSyRBgAyvoovP
         UYDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=C/Bx557lCkRaw7EBM4r8Bh3DaopoWk6IDdrJtTwZOT4=;
        b=c4BBBiYgBG+BDMLk3LwztGSTdD87DjHwoDXN2XdifCrAMuv9ad5zeRhd8TikZoaUFh
         UJgaY5PriVl6rQO2PAre/zknoH837Xt+RpQvm8zQ2Kx9DwRbF5CbcuQsITOGv84aeAjH
         n+5MwTJzLq0+2f9DCT3FNuiONafoojvKC5UG5F7VfU+4W1BXkP68CdoILRkSD00pHNer
         6EIeu2hSrEjpofIOFz0JJlNkqTaAc3wrCh6wJf6LuWEKq23HOipo9p5xJ97bfH9Bi7/R
         udDWLgYCfm3JaySHy7+w3e8wj2npS0vd8hUpgwhIx1ulXbeunqhbVVbVPuOqCIQxGehj
         Mwtw==
X-Gm-Message-State: AA6/9RkHDuqH1OAT3eDmHebZsIv+LA7em/+0HlYTqtylSp241ziRAP4qRY/icP8RPwU/cg==
X-Received: by 10.98.129.132 with SMTP id t126mr1739713pfd.59.1475491460717;
        Mon, 03 Oct 2016 03:44:20 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id c64sm39879877pfa.0.2016.10.03.03.44.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 03:44:19 -0700 (PDT)
Date: Mon, 3 Oct 2016 16:14:14 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: Bryan O'Donoghue <pure.logic@nexus-software.ie>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>,
	Bryan O'Donoghue <pure.logic@nexus-software.ie>,
	Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [Outreachy Kernel] [PATCH] staging: greybus:
 Constify local struct gb_loopback_stats
Message-ID: <20161003104414.GA18762@toblerone>
References: <20161002192224.GA5295@toblerone>
 <alpine.DEB.2.10.1610022135511.3327@hadrien>
 <1475489763.28319.85.camel@nexus-software.ie>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1475489763.28319.85.camel@nexus-software.ie>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 03, 2016 at 11:16:03AM +0100, Bryan O'Donoghue wrote:
> On Sun, 2016-10-02 at 21:36 +0200, Julia Lawall wrote:
> > 
> > On Mon, 3 Oct 2016, Rehas Sachdeva wrote:
> > 
> > > The local declaration "struct gb_loopback_stats reset" is not
> > modified
> > > throughout its scope and hence can be made const. Done using
> > Coccinelle.
> > >
> > > Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> > > ---
> > >� drivers/staging/greybus/loopback.c | 2 +-
> > >� 1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/greybus/loopback.c
> > b/drivers/staging/greybus/loopback.c
> > > index 7882306..fb5a068 100644
> > > --- a/drivers/staging/greybus/loopback.c
> > > +++ b/drivers/staging/greybus/loopback.c
> > > @@ -837,7 +837,7 @@ static int gb_loopback_request_handler(struct
> > gb_operation *operation)
> > >
> > >� static void gb_loopback_reset_stats(struct gb_loopback *gb)
> > >� {
> > > -�����struct gb_loopback_stats reset = {
> > > +�����const struct gb_loopback_stats reset = {
> > 
> > Should it also be static?� I recall this comment being made in
> > another
> > case, but I don't know what the tradeoffs are.
> 

Yes it can be static too, since we are not updating it, so we don't care
if its value is retained in subsequent function calls. I agree with Bryan that
we might as well make all locally scoped const variables static too.

Making it static decreases the size of text segment, without affecting any
other segment. I don't know if its particularly useful.

Rehas

> const yes agree - good catch.
> 
> static ... can't see a reason why TBH. Making this variable static we
> might as well declare all locally scoped variables static.
> 
> ---
> bod

