X-GM-THRID: 6390634706454446080
X-Received: by 10.46.21.91 with SMTP id 27mr772093ljv.0.1488016560024;
        Sat, 25 Feb 2017 01:56:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.65 with SMTP id y1ls262819ljd.17.gmail; Sat, 25 Feb 2017
 01:55:59 -0800 (PST)
X-Received: by 10.25.234.202 with SMTP id y71mr886646lfi.2.1488016559177;
        Sat, 25 Feb 2017 01:55:59 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v70si325913wmf.0.2017.02.25.01.55.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Feb 2017 01:55:59 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,203,1484002800"; 
   d="scan'208";a="262039189"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Feb 2017 10:55:58 +0100
Date: Sat, 25 Feb 2017 10:55:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
cc: Varsha Rao <rvarsha016@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>, w.d.hubbs@gmail.com, 
    chris@the-brannons.com, kirk@reisers.ca, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: speakup: Replace BUG_ON()
 with WARN_ON().
In-Reply-To: <20170225094123.ssback7e4kmw2ett@var.youpi.perso.aquilenet.fr>
Message-ID: <alpine.DEB.2.20.1702251055390.2088@hadrien>
References: <58b067d9.4d8d620a.8af7e.1ae6@mx.google.com> <alpine.DEB.2.20.1702241814330.3089@hadrien> <3607bae1-f325-4a95-bbe8-d94fcf492009@googlegroups.com> <20170225094123.ssback7e4kmw2ett@var.youpi.perso.aquilenet.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-648496406-1488016558=:2088"

--8323329-648496406-1488016558=:2088
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 25 Feb 2017, Samuel Thibault wrote:

> Hello,
>
> Varsha Rao, on sam. 25 févr. 2017 01:32:42 -0800, wrote:
> >     > -        BUG_ON(!group);
> >     > -        spin_lock_irqsave(&speakup_info.spinlock, flags);
> >     > -        retval = message_show_helper(buf, group->start, group->end);
> >     > -        spin_unlock_irqrestore(&speakup_info.spinlock, flags);
> >     > +        if (WARN_ON(!group)) {
> >     > +                spin_lock_irqsave(&speakup_info.spinlock, flags);
> >     > +                retval = message_show_helper(buf, group->start, group->
> >     end);
> >     > +                spin_unlock_irqrestore(&speakup_info.spinlock, flags);
> >     > +        }
> >     > +
>
> >      What code do you consider to be the recovery
> >     code?  BUG_ON always crashed the kernel, so there was no recovery code
> >     before.  What new code have you added to perform the recovery?
> >    
> >     I didn't understand regarding recovery. Here further changes has to be
> > made. As message_show is passed as argument in  __ATTR().
> >     It has been called multiple times in drivers/staging/speakup/kobjects.c and
> > in the following way:
> >
> >  __ATTR(announcements, S_IWUSR | S_IRUGO, message_show, message_store);
>
> So it's called on writes to a sys file. Just returning an -EINVAL error
> there is fine.
>
> >      What is
> >     the value of retval if the branch is or is not taken?  Is this the
> >     meaningful value in each case?
> >
> >    retval is assigned with size of the message to be displayed. Few of the
> > things are not clear.
>
> Julia asked about when the branch is *not* taken. In that case retval is
> still 0, that's not a useful value. Please make retval -INVAL instead of
> 0.
>
> And then with all these fixed (including the WARN_ON logic inversion),
> your patch makes perfect sense to me.

-EINVAL ?

julia

>
> Samuel
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170225094123.ssback7e4kmw2ett%40var.youpi.perso.aquilenet.fr.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-648496406-1488016558=:2088--

