X-GM-THRID: 6337407610900185088
X-Received: by 10.25.24.147 with SMTP id 19mr99797lfy.18.1475560860620;
        Mon, 03 Oct 2016 23:01:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.152 with SMTP id e24ls310849lji.49.gmail; Mon, 03 Oct
 2016 23:00:59 -0700 (PDT)
X-Received: by 10.46.33.202 with SMTP id h71mr94078lji.22.1475560859976;
        Mon, 03 Oct 2016 23:00:59 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 185si1456565wmr.2.2016.10.03.23.00.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 23:00:59 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,441,1473112800"; 
   d="scan'208";a="195519212"
Received: from p57801a74.dip0.t-ipconnect.de (HELO hadrien.local) ([87.128.26.116])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 04 Oct 2016 08:00:56 +0200
Date: Tue, 4 Oct 2016 08:00:43 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elizabeth Ferdman <gnudevliz@gmail.com>
cc: Oleg Drokin <oleg.drokin@intel.com>, outreachy-kernel@googlegroups.com, 
    amsfield22@gmail.com, daniel.baluta@intel.com, andreas.dilger@intel.com, 
    jsimmons@infradead.org, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: lustre: move int literal
 to right side of comparison test
In-Reply-To: <20161004022031.GA7732@localhost>
Message-ID: <alpine.DEB.2.10.1610040759300.2900@hadrien>
References: <20161004005807.GA13033@localhost> <C9C47919-34D8-49D2-80AA-345EDD169236@intel.com> <20161004022031.GA7732@localhost>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 3 Oct 2016, Elizabeth Ferdman wrote:

> On Mon, Oct 03, 2016 at 09:04:56PM -0400, Oleg Drokin wrote:
> >
> > On Oct 3, 2016, at 8:58 PM, Elizabeth Ferdman wrote:
> >
> > > Move the integer literal 0 to the right side of the comparison test
> > > for improved readability.
> > >
> > > Error caught by checkpatch:
> > > Constants should be placed on the right side of the comparison.
> > >
> > > Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
> > > ---
> > > drivers/staging/lustre/lustre/lov/lov_object.c | 8 ++++----
> > > 1 file changed, 4 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/staging/lustre/lustre/lov/lov_object.c b/drivers/staging/lustre/lustre/lov/lov_object.c
> > > index 52f7363..49a288f 100644
> > > --- a/drivers/staging/lustre/lustre/lov/lov_object.c
> > > +++ b/drivers/staging/lustre/lustre/lov/lov_object.c
> > > @@ -597,7 +597,7 @@ static const struct lov_layout_operations lov_dispatch[] = {
> > > 	enum lov_layout_type		    __llt;		  \
> > > 									\
> > > 	__llt = __obj->lo_type;					 \
> > > -	LASSERT(0 <= __llt && __llt < ARRAY_SIZE(lov_dispatch));	\
> > > +	LASSERT(__llt >= 0 && __llt < ARRAY_SIZE(lov_dispatch));	\
> >
> > Do you think this is more readable than the version before it?
> >
> >  at least the previous one easily shows that:
> > 0 <= llt < ARRAY_SIZE(lov_dispatch)
> >
>
> Hey Oleg,
> In my opinion, yes. I like reading from left to right rather than
> staring at a compound inequality so to me it's
> more readable. __llt is the important part, so the way I think is
> __llt has to be greater than or equal to 0 and less than
> arraysize(lov_dispatch). Obviously the compound way says the exact same
> thing, but it doesn't read from left to right in the same way.
>
> Actually, it looks so much like a compound inequality that
> I initially glossed over the && part and kept thinking, 'ok the left
> side results in either 0 or 1, and that's supposed to be less than array
> size?'... which I realize doesn't make sense, but that's just the way I
> interpreted it initially. Then I looked at it again and saw the &&.
>
> Lastly, since the rule is to put constants on the right side, I figured
> that way is more readable because that's the standard way of doing it,
> therefore it's more readable...as in, it conforms to the way the rest of
> the code in the kernel looks, it's not necessarily better or worse.

I think that A < x && x < B etc should be quite common in the kernel.
The constant on the right rule is more appropriate, in my opinion, when
there is only one comparison.

julia

>
> Thanks for the reply,
> Liz
>
> > (same with the rest).
> >
> > > 	lov_dispatch[__llt].op(__VA_ARGS__);			    \
> > > })
> > >
> > > @@ -652,7 +652,7 @@ do {								    \
> > > 									\
> > > 	lov_conf_freeze(__obj);						\
> > > 	__llt = __obj->lo_type;					 \
> > > -	LASSERT(0 <= __llt && __llt < ARRAY_SIZE(lov_dispatch));	\
> > > +	LASSERT(__llt >= 0 && __llt < ARRAY_SIZE(lov_dispatch));	\
> > > 	lov_dispatch[__llt].op(__VA_ARGS__);			    \
> > > 	lov_conf_thaw(__obj);						\
> > > } while (0)
> > > @@ -700,11 +700,11 @@ static int lov_layout_change(const struct lu_env *unused,
> > > 	struct lu_env *env;
> > > 	int refcheck;
> > >
> > > -	LASSERT(0 <= lov->lo_type && lov->lo_type < ARRAY_SIZE(lov_dispatch));
> > > +	LASSERT(lov->lo_type >= 0 && lov->lo_type < ARRAY_SIZE(lov_dispatch));
> > >
> > > 	if (conf->u.coc_md)
> > > 		llt = lov_type(conf->u.coc_md->lsm);
> > > -	LASSERT(0 <= llt && llt < ARRAY_SIZE(lov_dispatch));
> > > +	LASSERT(llt >= 0 && llt < ARRAY_SIZE(lov_dispatch));
> > >
> > > 	cookie = cl_env_reenter();
> > > 	env = cl_env_get(&refcheck);
> > > --
> > > 2.1.4
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161004022031.GA7732%40localhost.
> For more options, visit https://groups.google.com/d/optout.
>

