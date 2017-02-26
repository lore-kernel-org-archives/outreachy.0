X-GM-THRID: 6388897294904721408
X-Received: by 10.46.92.131 with SMTP id q125mr1226893ljb.15.1488109991685;
        Sun, 26 Feb 2017 03:53:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.93 with SMTP id 90ls326351ljb.13.gmail; Sun, 26 Feb 2017
 03:53:11 -0800 (PST)
X-Received: by 10.46.88.70 with SMTP id x6mr1139115ljd.22.1488109991214;
        Sun, 26 Feb 2017 03:53:11 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p185si545544wme.1.2017.02.26.03.53.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 03:53:11 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,208,1484002800"; 
   d="scan'208";a="262119662"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Feb 2017 12:53:10 +0100
Date: Sun, 26 Feb 2017 12:53:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v4] staging: rtl8192u: Remove
 ternary operator
In-Reply-To: <CAOCi2DE6hbgroFNfo5P8hDxgMxk2JCez1zADarnZVCL2uJrCCw@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1702261251150.2166@hadrien>
References: <1487575302-12460-1-git-send-email-gs051095@gmail.com> <20170224172356.GB11385@kroah.com> <CAOCi2DE6hbgroFNfo5P8hDxgMxk2JCez1zADarnZVCL2uJrCCw@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-2109528065-1488109990=:2166"

--8323329-2109528065-1488109990=:2166
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 26 Feb 2017, Gargi Sharma wrote:

> On Fri, Feb 24, 2017 at 10:53 PM, Greg KH <gregkh@linuxfoundation.org>
> wrote:
> >
> > On Mon, Feb 20, 2017 at 12:51:42PM +0530, Gargi Sharma wrote:
> > > Relational and logical operators evaluate to either true or false.
> > > Lines with ternary operators were found using coccinelle script. In a
> > > few cases using logical && operator would suffice. Hence those were
> > > changed to improve readability.
> > >
> > > Coccinelle Script:
> > > @r@
> > > expression A,B;
> > > symbol true,false;
> > > binary operator b = {==,!=,&&,||,>=,<=,>,<};
> > > @@
> > > - (A b B) ? true : false
> > > + A b B
> > >
> > > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > > ---
> > > Changes in v4:
> > >         - Aligned operands for && and added a newline.
> > > Changes in v3:
> > >         - Converted ? operator to &&.
> > > Changes in v2:
> > >         - Converted ? operator to if else statements.
> > >
> > > ---
> > > ---
> > >  drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c | 17
> +++++++++--------
> > >  1 file changed, 9 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
> b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
> > > index c27397b..b17bdf9 100644
> > > --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
> > > +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
> > > @@ -977,16 +977,18 @@ void HTOnAssocRsp(struct ieee80211_device *ieee)
> > >       HTSetConnectBwMode(ieee, (HT_CHANNEL_WIDTH)(pPeerHTCap->ChlWidth),
> (HT_EXTCHNL_OFFSET)(pPeerHTInfo->ExtChlOffset));
> > >if (pHTInfo->bCurBW40MHz)Is this the if statement you are talking about?
> Should I remove this or fix the alignment for the next statement?
>
> Thanks,
> Gargi
>
> > > -             pHTInfo->bCurTxBW40MHz = ((pPeerHTInfo->RecommemdedTxWidth
> == 1)?true:false);
> > > +
> > > +     pHTInfo->bCurTxBW40MHz = (pPeerHTInfo->RecommemdedTxWidth == 1);

The code just above was originally below an if that was preceeded by a //.
Ad you can see just above, you reduced the indentation, to reflect that
the code is not really under an if any more.  Greg thought it looked odd.
You can just get rid of the if under //.  In general, the policy in the
Linux kernel is that there should not be code under comments.  It should
just be removed.

julia

> >
> > While the indentation does make sense, it does not look correct with the
> > if statement still there, right?  Please fix this up when you resend
> > this.
> >
> > thanks,
> >
> > greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAOCi2DE6hbgroFNfo5P8hDx
> gMxk2JCez1zADarnZVCL2uJrCCw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-2109528065-1488109990=:2166--

