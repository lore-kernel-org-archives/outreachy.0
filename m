X-GM-THRID: 6808625193830842368
X-Received: by 2002:adf:f48d:: with SMTP id l13mr14816423wro.96.1585568810454;
        Mon, 30 Mar 2020 04:46:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:56d2:: with SMTP id m18ls370669wrw.3.gmail; Mon, 30 Mar
 2020 04:46:49 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvE+awL9bZ5E9u/jHSSBAX92Ixg4zfzwX+zyjQValwqldrkzDA6GbhvFCfgoXRp0jdh9De5
X-Received: by 2002:a5d:4c87:: with SMTP id z7mr15545476wrs.39.1585568809215;
        Mon, 30 Mar 2020 04:46:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585568809; cv=none;
        d=google.com; s=arc-20160816;
        b=odS3IOOZLFTm8TaXXAKPF0u6JyP0ILjMb0xHU8HgxtEd92JFzmhKo7lzlEKKmYO5b5
         efAW4O4RhjSN7l3O14UDWCLvHvnVoxMUQX8lub/7FWMs+EqaJxENRCVpPkOO0j9HOYvH
         J6ijZF6gvPKB/zZssln2QzmtY+m33zjGq7DdnLu+VV7PiGNScnl5L1FBi1y9ASkvDxQN
         iENyI+eUHjjAppCjd4IpVB3NbECTIxccxJ7zzUd7da0B1ZcSffYpxMyJUvNB9izLWe7W
         DdK384WmpuQ+4Dl9UdF5ptRxPIG7ZqjkoX53T4dXHhisiJpPqkpa2+KDrU2qcyzPiP80
         NT4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=7KlyXYD77bnLygM0H+yfxfm7karIj0Ys6cZ5mV5F830=;
        b=pj1TcKMZKyD3UDGopvE/w516grTXZLXay8mWGIt6sslBYree5RSeIJ3k2JZDByIYT/
         jSsphfboXsOgQqdTDKP7IeUDh6iHepTYRpVzf+125KdKQQsLSaJ+SaPYpMvGY+/8MByj
         tENymTKUzgrWmSIB4vsrPc7gviB3TzidsgnqocyxpLhMhUN57jV5ToY/bs1P53fsVD1m
         v9x3qE6HgYwibwI7HGu2CbN/WHiYVXqySJkF8UZyUgBNQmYeFIWOu+XQkpqxeM2cC52B
         aFxuk3Han31HhwBXZe419axw/deILdtrtxL0E3Qqz/+e+gWhSbpjbL8wCKyK7dcEDxW6
         uPQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i18si1397684wml.1.2020.03.30.04.46.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 04:46:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,324,1580770800"; 
   d="scan'208";a="442944751"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Mar 2020 13:46:48 +0200
Date: Mon, 30 Mar 2020 13:46:48 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Stefano Brivio <sbrivio@redhat.com>, 
    Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: omap4iss: Use BIT()
 macro.
In-Reply-To: <d09f3d39c7fc8326711119c73954bfbd8c92091a.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2003301344570.2432@hadrien>
References: <20200326210247.4746-1-jane.pnx9@gmail.com>  <20200330101107.1c84b8f6@elisabeth> <d09f3d39c7fc8326711119c73954bfbd8c92091a.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> > > diff --git a/drivers/staging/media/omap4iss/iss_regs.h b/drivers/staging/media/omap4iss/iss_regs.h
> > > index 09a7375c89ac..7adc944e1a5d 100644
> > > --- a/drivers/staging/media/omap4iss/iss_regs.h
> > > +++ b/drivers/staging/media/omap4iss/iss_regs.h
> > > @@ -38,7 +38,7 @@
> > >  #define ISS_CTRL_CLK_DIV_MASK				(3 << 4)
> > >  #define ISS_CTRL_INPUT_SEL_MASK				(3 << 2)
> > >  #define ISS_CTRL_INPUT_SEL_CSI2A			(0 << 2)
> > > -#define ISS_CTRL_INPUT_SEL_CSI2B			(1 << 2)
> > > +#define ISS_CTRL_INPUT_SEL_CSI2B			(BIT(2))
> > >  #define ISS_CTRL_SYNC_DETECT_VS_RAISING			(3 << 0)
> >
> > The existing code is saying: there are three bits to select the input,
> > starting from bit number 2. For those three bits, 0 means the CSI2A
> > input is selected, and 1 means CSI2B is selected.
> >
> > You're changing it to: there are three bits to select the input,
> > starting from bit number 2. For those three bits, 0 means the CSI2A
> > input is selected. CSI2B is a special case, though: register bit 2 needs
> > to be set.
> >
>
> Oh, So defining BIT(2) totally changed the logic?

I'm not sure what you mean by "the logic". BIT is nice to use when there
area a lot of 1 << X, because it makes clear which different its are
relevant.  When 1 << X is mixed with other things, it breaks the pattern to
suddenly use BIT for one of them.

julia

