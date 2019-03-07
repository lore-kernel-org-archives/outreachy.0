X-GM-THRID: 6665413421410811904
X-Received: by 2002:a17:906:16c6:: with SMTP id t6mr1785935ejd.6.1551990467304;
        Thu, 07 Mar 2019 12:27:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:f182:: with SMTP id gs2ls1432261ejb.5.gmail; Thu, 07
 Mar 2019 12:27:46 -0800 (PST)
X-Google-Smtp-Source: APXvYqz394CYwVjzrQ3PiWi6cJphroGmtxqCI1BQOSgTh0KI8PSXqfe/qBtTgJ9Oz8Cqt22vVvs1
X-Received: by 2002:a17:906:d541:: with SMTP id gk1mr1789364ejb.0.1551990466565;
        Thu, 07 Mar 2019 12:27:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551990466; cv=none;
        d=google.com; s=arc-20160816;
        b=oLiVZD94HxBGVmDOnrrIs5kMnUZ9SJuInPL2/4QAPvPO99tDnlJaAL5/79zt8NPj/V
         Tp6r/CeHGzNrNmpLCNhtUxs71XAgaAjRy2mxsiaOUq6v/JLOQ5WJS3hwLcPBcBS4o94o
         wJvSHY+HuM67eKnRTGNWrzK+TzEmah892nAMjegx6VxT5GJKlXjkmxXAUChoXc09Fcei
         KWehGUh2Uy+pJo5kWveOwWT2bz2FE0OoW3zCpSrtz+hFzo0XrDbm3JZQgMFmUlyDSBlF
         j6qa3mdkSnOsShRgzm/LQirsg0UneDDkkGmJp2DcXZ31WvWSbiyi2jSz1UWZjyx/wItz
         uXMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Ilf67fydtO53nFysYH2jjGL22fVu0IzrB+jN8LEukDM=;
        b=GnwGKMvX71KnmtQgi83o3zcghK86TJk570yzg+LIwNugTRn5Z/wdFRIDJWjiDr0t71
         Md3v2c4wxqkMSnJ8138E9YjZNu7+icOQHZx9hvia386mjWyNqQ9rb28tpsaokFnTWQC5
         Ilxs3riSIPqikIkD/KEHp8TJJPqWC39zgjb/DSUPwRg9+MqOdHGK1TQxX4Trhy2veyia
         E+cSUf0m2tmZYmz875VFS6W/Kx4z0lNDCUPrW9Ov/g97aftYFn7XVk4T6YfH4EyU0qMi
         RS9q4nYg5toIlY9WtZvihp9ukW2mHJ9XE/O8D3e6hfDUeahb3wX8AN4chhU4omHVOQ7k
         OuBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a7si315801edb.1.2019.03.07.12.27.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 12:27:46 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,453,1544482800"; 
   d="scan'208";a="372409968"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2019 21:27:20 +0100
Date: Thu, 7 Mar 2019 21:27:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Greg KH <gregkh@linuxfoundation.org>
cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: fwserial: Convert macro
 into an inline function
In-Reply-To: <20190307202026.GA5287@kroah.com>
Message-ID: <alpine.DEB.2.21.1903072126560.2558@hadrien>
References: <20190306224809.12524-1-madhumithabiw@gmail.com> <20190307200347.GB27056@kroah.com> <alpine.DEB.2.21.1903072107520.2558@hadrien> <20190307202026.GA5287@kroah.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 7 Mar 2019, Greg KH wrote:

> On Thu, Mar 07, 2019 at 09:08:53PM +0100, Julia Lawall wrote:
> >
> >
> > On Thu, 7 Mar 2019, Greg KH wrote:
> >
> > > On Wed, Mar 06, 2019 at 04:48:09PM -0600, Madhumitha Prabakaran wrote:
> > > > Convert macro into an inline function to make codebase better
> > > >
> > > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > > ---
> > > >  drivers/staging/fwserial/fwserial.c | 5 ++++-
> > > >  1 file changed, 4 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/staging/fwserial/fwserial.c b/drivers/staging/fwserial/fwserial.c
> > > > index a1b90ea7fcb8..aec0f19597a9 100644
> > > > --- a/drivers/staging/fwserial/fwserial.c
> > > > +++ b/drivers/staging/fwserial/fwserial.c
> > > > @@ -19,7 +19,10 @@
> > > >
> > > >  #include "fwserial.h"
> > > >
> > > > -#define be32_to_u64(hi, lo)  ((u64)be32_to_cpu(hi) << 32 | be32_to_cpu(lo))
> > > > +inline u64 be32_to_u64(__be32 hi, __be32 lo)
> > > > +{
> > > > +	return ((u64)be32_to_cpu(hi) << 32 | be32_to_cpu(lo));
> > > > +}
> > >
> > > For some reason I thought the kernel had a function that already did
> > > this, but it doesn't, which is really odd.  Anyway, that's something
> > > that could be done in the future, as this is done all over the place in
> > > different drivers.
> >
> > Actually, as far as I can see, only two occurrences, in
> > drivers/target/sbp/sbp_target.c and
> > drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c
> >
> > Perhaps there are some other variants that are more popular.
>
> The file include/linux/io-64-nonatomic-hi-lo.h open-codes this 4
> different times, as does include/linux/ml5/device.h and then there is

Ah, I only looked at .c files :)

julia

> HILO_GEN() which tries to do the right thing for this type of macro, but
> it's specific to a single driver.
>
> Odds are it is also open-coded in many other drivers as well :(
>
> thanks,
>
> greg k-h
>

