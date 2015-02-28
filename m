X-GM-THRID: 5152931053568
X-Received: by 10.194.63.208 with SMTP id i16mr222255wjs.2.1425153827598;
        Sat, 28 Feb 2015 12:03:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.83.40 with SMTP id n8ls288737wiy.14.gmail; Sat, 28 Feb
 2015 12:03:47 -0800 (PST)
X-Received: by 10.180.101.101 with SMTP id ff5mr1244017wib.5.1425153827359;
        Sat, 28 Feb 2015 12:03:47 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ev8si348346wib.3.2015.02.28.12.03.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 28 Feb 2015 12:03:47 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,668,1418079600"; 
   d="scan'208";a="101652042"
Received: from unknown (HELO hadrien.local) ([207.164.135.98])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Feb 2015 21:03:45 +0100
Date: Sat, 28 Feb 2015 15:03:41 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/5] Staging: lustre: lustre: ldlm:
 Concatenate strings into single string
In-Reply-To: <20150228200158.GA12813@example.com>
Message-ID: <alpine.DEB.2.10.1502281502490.2688@hadrien>
References: <1425150717-30750-1-git-send-email-hamohammed.sa@gmail.com> <1425152027-31192-1-git-send-email-hamohammed.sa@gmail.com> <alpine.DEB.2.10.1502281455370.2688@hadrien> <20150228200158.GA12813@example.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 28 Feb 2015, Haneen Mohammed wrote:

> On Sat, Feb 28, 2015 at 02:56:10PM -0500, Julia Lawall wrote:
> > On Sat, 28 Feb 2015, Haneen Mohammed wrote:
> >
> > > This patch concatenate two consecutive strings into one, addressing checkpatch.pl warning:
> > >  "Consecutive strings are generally better as a single string"
> > >
> > > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > > ---
> > >  drivers/staging/lustre/lustre/ldlm/ldlm_pool.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
> > > index bfdb2b3..0d65d80 100644
> > > --- a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
> > > +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
> > > @@ -688,8 +688,8 @@ static int lprocfs_pool_state_seq_show(struct seq_file *m, void *unused)
> > >  			      "  GP:  %d\n",
> > >  			      grant_step, grant_plan);
> > >  	}
> > > -	seq_printf(m, "  GR:  %d\n" "  CR:  %d\n" "  GS:  %d\n"
> > > -		      "  G:   %d\n" "  L:   %d\n",
> > > +	seq_printf(m, "  GR:  %d\n  CR:  %d\n  GS:  %d\n"
> > > +		      "  G:   %d\n  L:   %d\n",
> >
> > The two lines are consecutive strings also.  Checkpatch should have given
> > you a warning on your result.
> >
> > julia
> >
>
> Strangely it didn't so I thought that was special case. Should I
> combine them all into one?

OK, maybe it doesn't because of the \n?  The idea of combining the strings
is so that one can grep for what one sees on a line.  But with the \n's
that is already the case.  So maybe it is OK as is.

julia


>
> Thanks,
> Haneen
> > >  		      grant_rate, cancel_rate, grant_speed,
> > >  		      granted, limit);
> > >
> > > --
> > > 1.9.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425152027-31192-1-git-send-email-hamohammed.sa%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150228200158.GA12813%40example.com.
> For more options, visit https://groups.google.com/d/optout.
>

