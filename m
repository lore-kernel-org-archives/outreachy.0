X-GM-THRID: 6395922242043117568
X-Received: by 10.46.87.27 with SMTP id l27mr3497498ljb.28.1489168238134;
        Fri, 10 Mar 2017 09:50:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.73 with SMTP id y9ls1088415ljd.8.gmail; Fri, 10 Mar 2017
 09:50:36 -0800 (PST)
X-Received: by 10.46.77.69 with SMTP id a66mr3639132ljb.11.1489168236968;
        Fri, 10 Mar 2017 09:50:36 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l138si13916wmg.0.2017.03.10.09.50.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 09:50:36 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,141,1486422000"; 
   d="scan'208";a="264076340"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2017 18:50:36 +0100
Date: Fri, 10 Mar 2017 18:50:22 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] Doubt regarding use of a function
In-Reply-To: <CAKG5xWiM9k_5dhtK5_1A=JRatEar3=FuYCpFf9Q81iPszb0A5w@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1703101847510.3356@hadrien>
References: <CAKG5xWiq5T9fgTpnb2vtCwFv4HrBnyBBtYGTpp1_zUS5k-Gq_g@mail.gmail.com> <alpine.DEB.2.20.1703101826170.3356@hadrien> <CAKG5xWiM9k_5dhtK5_1A=JRatEar3=FuYCpFf9Q81iPszb0A5w@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 10 Mar 2017, sayli karnik wrote:

> On Fri, Mar 10, 2017 at 10:56 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Fri, 10 Mar 2017, sayli karnik wrote:
> >
> >> ieee80211 has the following function which to me does nothing-
> >> void ieee80211_tkip_null(void)
> >> {
> >>      printk("============>%s()\n", __func__);
>
> This printk is commented..forgot the '//' before it
>
> >>      return;
> >> }
> >>
> >> Before its function call there is this comment-
> >> /* These function were added to load crypte module autoly */
> >>          ieee80211_tkip_null();
> >>
> >> Is this function needed in the driver? If not, can I send in a patch
> >> removing it?
> >
> > Are there any maintainers associated with the file?  They would know
> > better.  I can't see that the function is doing anything useful.
> >
> maintainer.pl just displays Greg.

Greg,

Is there a general policy about:

functions that do nothing
code under comments
boring logging message

Can we assume that the code as it is in staging basically works, and while
these things may have been a useful reminder in the past, now they can go?

Or is that too much to assume for a general rule?

thanks,
julia


>
> > julia
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1703101826170.3356%40hadrien.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKG5xWiM9k_5dhtK5_1A%3DJRatEar3%3DFuYCpFf9Q81iPszb0A5w%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

