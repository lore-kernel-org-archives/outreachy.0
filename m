X-GM-THRID: 6669000631583244288
X-Received: by 2002:a1c:6c15:: with SMTP id h21mr489117wmc.10.1552748672930;
        Sat, 16 Mar 2019 08:04:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:3d6:: with SMTP id 205ls1461348wmd.1.gmail; Sat, 16 Mar
 2019 08:04:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwXh+DQExowqOWvMr9f+EwrZhUD9tc3ysctmwFlX7LhD1yYy8wNC2Tc0/7kKtRbODM6Hxm9
X-Received: by 2002:a1c:7a06:: with SMTP id v6mr490182wmc.17.1552748672133;
        Sat, 16 Mar 2019 08:04:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552748672; cv=none;
        d=google.com; s=arc-20160816;
        b=GbmG7U1z/g7KhK8hqMMWo88oS+dSwomhJc+nfNy4TiD9H4gxEvsT9TBMNgELrhVqd+
         bMtaPdpktSDScAJukPogeN9I+0DyaCS0WF/n7OpOWksedW786w91PEB0i6M+mZI47fm3
         ByaxDrAfTlbqd9ngrGQBB0qcuAtZsw1RhPzDSAW+yA1x8XtvIIpB8sdpEl8XoYpl2lJ1
         /m30DnaFe6hSSwaPTXwbhgBekYrpDcEYV2uW0R5e8KT06jWsYWnEzk3Q5TFXiuyTe57G
         jLbc4sUVasRqctvLPOsnpTUGbTaOsG6vNx2M94FHN/4ITIzsLnD3DQ4fLd+8p+vHcuq4
         Xmhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=2jLFCSQzU0OQSJSQC974gBTbGFlb0jvMz8NNu+gBAqI=;
        b=baS78TYhcUFvNEXKb1ComytjLyxmLKije2Ozl55Ck5ZoZEOyyZyXE7xuFAqCpBCPAu
         jGFgyttFg2jxPu5vNdYBpV8bV2RpTK8TJ3C9pi4l36lFEnT6TwTwh9RiF4q795Km/Xzl
         A2xKg9mB+FG4WXdHahB3vXm8zbqmwKccpvyZ8IVDxB+n0j7KEFqxwnlPyiQte2iHYVZk
         kqnF0DBKwTdQglYXsbeTpy/FE8LYoYP4WFaK0hEn0XwvheDERGkALzQ8c9kqdLIqpRMd
         d3yEtA3Uf/AKdGDYrmUHqK/tIhf2EF+8IyC8w1OAqxKM3FpwjPa/A2Jt2WNUojSwSxEj
         ryKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q6si187210wmf.4.2019.03.16.08.04.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 08:04:32 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,486,1544482800"; 
   d="scan'208";a="299578957"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2019 16:04:31 +0100
Date: Sat, 16 Mar 2019 16:04:31 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: mt7621-mmc: Fix ret.cooci
 warnings
In-Reply-To: <CAB0Mk-PTtuhpbAQ3PsaPhuOfDXybUYNYrV-8FktpJYPsveUz2Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1903161604190.2487@hadrien>
References: <20190316144812.7427-1-bhanusreemahesh@gmail.com> <20190316144812.7427-2-bhanusreemahesh@gmail.com> <alpine.DEB.2.21.1903161556580.2487@hadrien> <CAB0Mk-PTtuhpbAQ3PsaPhuOfDXybUYNYrV-8FktpJYPsveUz2Q@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Bhanusree Mahesh wrote:

> On Sat, 16 Mar 2019 at 20:28, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> >
> > On Sat, 16 Mar 2019, Bhanusree Pola wrote:
> >
> > > Return the value directly instead of storing it in local variable err.
> > > The semantic patch that fixes this problem is as follows
> >
> > You can drop the now unused variable in this patch too.  This patch
> > introduced the problem, so it would be better for all patches to leave the
> > kernel in a reasonable state.
>
> This was automatically done by using --in-place flag. so i removed
> unused variable in the next patch.
> Do you want me to do both in same patch and resend?

Yes, please.

julia

>
> Bhanusree
> >
> > julia
> >
> > >
> > > // <smpl>
> > > @@
> > > local idexpression ret;
> > > expression e;
> > > @@
> > >
> > > -ret =
> > > +return
> > >      e;
> > > -return ret;
> > > // </smpl>
> > >
> > > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> > > ---
> > >  drivers/staging/mt7621-mmc/sd.c | 3 +--
> > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/staging/mt7621-mmc/sd.c b/drivers/staging/mt7621-mmc/sd.c
> > > index 4b26ec896a96..5943e95ed1c3 100644
> > > --- a/drivers/staging/mt7621-mmc/sd.c
> > > +++ b/drivers/staging/mt7621-mmc/sd.c
> > > @@ -763,8 +763,7 @@ static int msdc_app_cmd(struct mmc_host *mmc, struct msdc_host *host)
> > >       mrq.cmd = &cmd; cmd.mrq = &mrq;
> > >       cmd.data = NULL;
> > >
> > > -     err = msdc_do_command(host, &cmd, 0, CMD_TIMEOUT);
> > > -     return err;
> > > +     return msdc_do_command(host, &cmd, 0, CMD_TIMEOUT);
> > >  }
> > >
> > >  static int msdc_tune_cmdrsp(struct msdc_host *host, struct mmc_command *cmd)
> > > --
> > > 2.17.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190316144812.7427-2-bhanusreemahesh%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903161556580.2487%40hadrien.
> > For more options, visit https://groups.google.com/d/optout.
>

