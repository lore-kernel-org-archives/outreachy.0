X-GM-THRID: 6397785232436625408
X-Received: by 10.25.67.80 with SMTP id m16mr795919lfj.27.1489615092481;
        Wed, 15 Mar 2017 14:58:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.190.83 with SMTP id o80ls90543lff.53.gmail; Wed, 15 Mar
 2017 14:58:11 -0700 (PDT)
X-Received: by 10.46.76.17 with SMTP id z17mr871718lja.13.1489615091265;
        Wed, 15 Mar 2017 14:58:11 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 82si121215wmg.3.2017.03.15.14.58.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 14:58:11 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,170,1486422000"; 
   d="scan'208";a="264751236"
Received: from pd95b94e4.dip0.t-ipconnect.de (HELO hadrien.intern) ([217.91.148.228])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Mar 2017 22:58:09 +0100
Date: Wed, 15 Mar 2017 22:57:52 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Alison Schofield <amsfield22@gmail.com>
cc: Tamara Diaconita <diaconitatamara@gmail.com>, corbet@lwn.net, 
    outreachy-kernel@googlegroups.com, linux-doc@vger.kernel.org, 
    Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Documentation: Fix typos
In-Reply-To: <20170315215619.GA4673@d830.WORKGROUP>
Message-ID: <alpine.DEB.2.20.1703152257450.4005@hadrien>
References: <20170315175811.4187-1-diaconita.tamara@gmail.com> <alpine.DEB.2.20.1703152107120.4005@hadrien> <20170315215619.GA4673@d830.WORKGROUP>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 15 Mar 2017, Alison Schofield wrote:

> On Wed, Mar 15, 2017 at 09:07:56PM +0100, Julia Lawall wrote:
> >
> >
> > On Wed, 15 Mar 2017, Tamara Diaconita wrote:
> >
> > > Fix typos in sync_file.txt to make documentation grammatically correct.
> >
> > It's a bit picky, but you are not making the text grammatically correct,
> > You are fixing spelling mistakes, but not changing any aspect of the
> > grammar.
> >
> > julia
> >
>
> I'm wondering if there is one 'official' dictionary linux kernel
> follows?

Perhaps not, if there is no preference for US vs UK spelling.

julia

>
> > >
> > > Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> > > ---
> > >  Documentation/sync_file.txt | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/Documentation/sync_file.txt b/Documentation/sync_file.txt
> > > index 269681a..c3d033a 100644
> > > --- a/Documentation/sync_file.txt
> > > +++ b/Documentation/sync_file.txt
> > > @@ -37,7 +37,7 @@ dma_fence_signal(), when it has finished using (or processing) that buffer.
> > >  Out-fences are fences that the driver creates.
> > >
> > >  On the other hand if the driver receives fence(s) through a sync_file from
> > > -userspace we call these fence(s) 'in-fences'. Receiveing in-fences means that
> > > +userspace we call these fence(s) 'in-fences'. Receiving in-fences means that
> > >  we need to wait for the fence(s) to signal before using any buffer related to
> > >  the in-fences.
> > >
> > > --
> > > 2.9.3
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170315175811.4187-1-diaconita.tamara%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1703152107120.4005%40hadrien.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170315215619.GA4673%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.
>

