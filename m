X-GM-THRID: 6210381585761435648
X-Received: by 10.180.82.101 with SMTP id h5mr628839wiy.5.1446041160608;
        Wed, 28 Oct 2015 07:06:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.92.138 with SMTP id q132ls153324wmb.25.gmail; Wed, 28 Oct
 2015 07:05:59 -0700 (PDT)
X-Received: by 10.180.10.170 with SMTP id j10mr630201wib.6.1446041159947;
        Wed, 28 Oct 2015 07:05:59 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l1si113316wmb.1.2015.10.28.07.05.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 07:05:59 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,210,1444687200"; 
   d="scan'208";a="184859729"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Oct 2015 15:05:47 +0100
Date: Wed, 28 Oct 2015 15:05:28 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: rtl8188eu: core: Remove
 wrapper function
In-Reply-To: <CA+5yK5GM1eLSCVEN-3HBCqSrPu0=hBxcQAG9k6z0H6VW4g2UUg@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510281504190.2456@hadrien>
References: <cover.1445966850.git.amitoj1606@gmail.com> <fd49b1325d024358440e5df7b74fd18bc252cdb4.1445966850.git.amitoj1606@gmail.com> <alpine.DEB.2.10.1510281027490.2456@hadrien> <CA+5yK5GM1eLSCVEN-3HBCqSrPu0=hBxcQAG9k6z0H6VW4g2UUg@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 28 Oct 2015, Amitoj Kaur Chawla wrote:

> On Wed, Oct 28, 2015 at 2:58 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> >
> > On Tue, 27 Oct 2015, Amitoj Kaur Chawla wrote:
> >
> > > Remove wrapper function that can be replaced by a single line of code.
> > >
> > > Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> > > ---
> > >  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 24 +++++++++---------------
> > >  1 file changed, 9 insertions(+), 15 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > > index 0270755..fec9ce1 100644
> > > --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > > +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > > @@ -701,12 +701,6 @@ exit:
> > >       return ret;
> > >  }
> > >
> > > -static inline void issue_probereq(struct adapter *padapter,
> > > -                               struct ndis_802_11_ssid *pssid, u8 *da)
> > > -{
> > > -     _issue_probereq(padapter, pssid, da, false);
> > > -}
> >
> > If issue_probereq is not going to be used, then maybe _issue_probereq
> > should be renamed as issue_probereq?  Is _issue_probereq actually ever
> > called with something other than false as the last argument?
>
> I can rename it to issue_probereq.
>
> It isn't called anywhere with something other than false.
> Your thoughts?

If you are sure that the argument is always false, maybe it could be
simplified away.  It looks like the whole setup with the _ was a hack to
allow that value to vary in some case, but maybe it isn't needed any more.

julia

