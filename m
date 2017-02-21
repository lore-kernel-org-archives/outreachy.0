X-GM-THRID: 6389607750950715392
X-Received: by 10.28.148.199 with SMTP id w190mr745155wmd.19.1487706635780;
        Tue, 21 Feb 2017 11:50:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.137.136 with SMTP id l130ls1801248wmd.24.canary-gmail; Tue,
 21 Feb 2017 11:50:34 -0800 (PST)
X-Received: by 10.28.95.133 with SMTP id t127mr1400294wmb.20.1487706634886;
        Tue, 21 Feb 2017 11:50:34 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q4si1356513wma.3.2017.02.21.11.50.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 11:50:34 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,190,1484002800"; 
   d="scan'208";a="214261173"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Feb 2017 20:50:33 +0100
Date: Tue, 21 Feb 2017 20:50:33 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Johan Hovold <johan@kernel.org>
cc: Julia Lawall <julia.lawall@lip6.fr>, Gargi Sharma <gs051095@gmail.com>, 
    outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    elder@kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: loop variable to
 loop index
In-Reply-To: <20170221181950.GD10245@localhost>
Message-ID: <alpine.DEB.2.20.1702212049350.2117@hadrien>
References: <1487696353-11316-1-git-send-email-gs051095@gmail.com> <alpine.DEB.2.20.1702211830560.3448@hadrien> <20170221181950.GD10245@localhost>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 21 Feb 2017, Johan Hovold wrote:

> On Tue, Feb 21, 2017 at 06:31:28PM +0100, Julia Lawall wrote:
> > On Tue, 21 Feb 2017, Gargi Sharma wrote:
> >
> > > Change array index from the loop bound variable to loop index.
> > > Once all the loopback devices have been found, free the pointer
> > > array containing the dirent structures. The pointer to dirent
> > > structures must be individually freed before freeing the pointer
> > > array.
> > >
> > > Coccinelle Script:
> > > @@
> > > expression arr,ex1,ex2;
> > > @@
> > >
> > > for(ex1 = 0; ex1 < ex2; ex1++) { <...
> > >   arr[
> > > - ex2
> > > + ex1
> > >   ]
> > >   ...> }
>
> Another good catch, but you should change the patch summary to something
> more descriptive (and less detailed) like:
>
> 	staging: greybus: loopback_test: fix device-name leak
>
> and possibly also make it more clear from the commit message that we've
> been leaking these strings whenever there have been more than one
> loopback device. (The memory is returned once the test program exits,
> but still).
>
> Care to send a v2 with those changes?
>
> > > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > > ---
> > >  drivers/staging/greybus/tools/loopback_test.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
> > > index 18d7a3d..1c01833 100644
> > > --- a/drivers/staging/greybus/tools/loopback_test.c
> > > +++ b/drivers/staging/greybus/tools/loopback_test.c
> > > @@ -636,7 +636,7 @@ int find_loopback_devices(struct loopback_test *t)
> > >  	ret = 0;
> > >  done:
> > >  	for (i = 0; i < n; i++)
> > > -		free(namelist[n]);
> > > +		free(namelist[i]);
> >
> > I guess this is a test, so no one ever tried running it :)
>
> It is a test tool, but we've been using it quite a bit.

I guess I don't know what n is.  I would have expected that it would be an
out of bounds array reference, at least sometimes.

julia

>
> Thanks,
> Johan
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170221181950.GD10245%40localhost.
> For more options, visit https://groups.google.com/d/optout.
>

