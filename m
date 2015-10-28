X-GM-THRID: 6210381585761435648
X-Received: by 10.13.204.132 with SMTP id o126mr37472352ywd.50.1446040557960;
        Wed, 28 Oct 2015 06:55:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.102.7 with SMTP id fk7ls1330623igb.18.canary; Wed, 28 Oct
 2015 06:55:57 -0700 (PDT)
X-Received: by 10.67.14.227 with SMTP id fj3mr24828004pad.17.1446040557519;
        Wed, 28 Oct 2015 06:55:57 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x22b.google.com (mail-qk0-x22b.google.com. [2607:f8b0:400d:c09::22b])
        by gmr-mx.google.com with ESMTPS id t64si3069311ywd.2.2015.10.28.06.55.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 06:55:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22b as permitted sender) client-ip=2607:f8b0:400d:c09::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qk0-x22b.google.com with SMTP id n129so3258204qkc.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 06:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=lQi8sTDmlGO6pbBgzLF7H3PgaAXoeYeAGufElqil8Yg=;
        b=j9W3vJ285oEhn4ld8UTfyheFOzQzwMTv7D3Ts64xVndUgo1f2YrPMXbP/U/Brl0/NO
         O/mN01k14EhIgt8X57coaK7mEgMBpoT+dyVzLiT+nyjAQM1qzTFZr7RjOrdRKnyMW8Au
         T5XDmqw3Pdu/ODVSAmR4iWzRm44j99QH60Q+Yd94LhxjthxavRlBnVYPpx2RAP1mFSJZ
         /335GkbmubElv4ygexQ85SxK0aqrFCpXSsBY3A5L2YA4c9hx8Vx+/4RKj8EHv/E1LlJD
         nPkEzXeybIIfdUgmt6vxshhR1TQlVNOgy/RIJWwwkhKBPB0Cx3iPWNWW+fsUc+N2cVtc
         TW1Q==
MIME-Version: 1.0
X-Received: by 10.55.195.135 with SMTP id r7mr59515863qkl.4.1446040557302;
 Wed, 28 Oct 2015 06:55:57 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Wed, 28 Oct 2015 06:55:57 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510281027490.2456@hadrien>
References: <cover.1445966850.git.amitoj1606@gmail.com>
	<fd49b1325d024358440e5df7b74fd18bc252cdb4.1445966850.git.amitoj1606@gmail.com>
	<alpine.DEB.2.10.1510281027490.2456@hadrien>
Date: Wed, 28 Oct 2015 19:25:57 +0530
Message-ID: <CA+5yK5GM1eLSCVEN-3HBCqSrPu0=hBxcQAG9k6z0H6VW4g2UUg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: rtl8188eu: core: Remove
 wrapper function
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 28, 2015 at 2:58 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Tue, 27 Oct 2015, Amitoj Kaur Chawla wrote:
>
> > Remove wrapper function that can be replaced by a single line of code.
> >
> > Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> > ---
> >  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 24 +++++++++---------------
> >  1 file changed, 9 insertions(+), 15 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > index 0270755..fec9ce1 100644
> > --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > @@ -701,12 +701,6 @@ exit:
> >       return ret;
> >  }
> >
> > -static inline void issue_probereq(struct adapter *padapter,
> > -                               struct ndis_802_11_ssid *pssid, u8 *da)
> > -{
> > -     _issue_probereq(padapter, pssid, da, false);
> > -}
>
> If issue_probereq is not going to be used, then maybe _issue_probereq
> should be renamed as issue_probereq?  Is _issue_probereq actually ever
> called with something other than false as the last argument?

I can rename it to issue_probereq.

It isn't called anywhere with something other than false.
Your thoughts?

-- 
Amitoj

