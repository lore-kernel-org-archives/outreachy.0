X-GM-THRID: 6659981654376841216
X-Received: by 2002:a1f:1409:: with SMTP id 9mr25562280vku.20.1550739767983;
        Thu, 21 Feb 2019 01:02:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:8442:: with SMTP id g63ls382038vsd.5.gmail; Thu, 21 Feb
 2019 01:02:46 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZyCHl6t+fjqdveGQine4j4l+pxt8qaKBgbLjesBTLfxUaxWfQvnTnD3eOzim3uJbCARjzG
X-Received: by 2002:a67:c518:: with SMTP id e24mr21953453vsk.12.1550739766090;
        Thu, 21 Feb 2019 01:02:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550739766; cv=none;
        d=google.com; s=arc-20160816;
        b=Pwt8Nc+cCXqdfYjSHF7MG9hMIF/fngbtb2PiF0uvLtnJ+BJRr0VdR7b5QGQgd8MIUe
         9fH+l6b9HGFQZyCJk3hLaLSD8d92xMrQyC2gr+BRc8GkkhhrUkkCEyTtAunQrARfgwCm
         KgHaeVVB6HCls5jQMPkE1ani5kuXQ/mWTsHYQ8zL9RX90c1w22MghTo4JvoEec3qMUNN
         6dlzJchtkNao4MCrXCD+2vzVBa/3ytoYx2JPtV70SVmzVa7iezkfK0yHjIcU4fEsxnYd
         WppQqXzV6+I4t/6i/eM/M335FGSztcs2mcemrzU3CgrrUCQyz1ucnA7mTvwe7W6nVCFE
         zohw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=yNA0vuJfDpwXrVQfpB5KnDdU7fLegeeUpCx6jxr7a6w=;
        b=krFT/slUxnNCFlvIg58zEpFTayIxnqdE8FQ8WBNndQfMxPQtlSbwAOL79hyyhATqqc
         1s6tFlADTjK0t3x+mjwZBFcfU/s6usPswLbhom6EuyqsWV4eLl+PohSMCHCyl1I8U/xD
         pXBSQPlYoFaAH4E1Rf0nVvsZH7tg3/gGtf/Ou0NpbqDHSZ8Vom8kTw26XyArIYfeG4Qz
         e7/9bIogSkvzKqsB7YzKVMr4AWW7OBwlhl1L7f2hr7MJnxz/VvuF91lmZ+Rx8ZJU6pPW
         43wimFEg17cJBqo2Kz8vjpP7nPDw5NsasF8zXdgdzhst+MtuHBjbJ9mKCgfodOWx+RxJ
         oq1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.232 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa07-03.prod.phx3.secureserver.net (p3plsmtpa07-03.prod.phx3.secureserver.net. [173.201.192.232])
        by gmr-mx.google.com with ESMTPS id k19si374840vsm.0.2019.02.21.01.02.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 01:02:46 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.232 as permitted sender) client-ip=173.201.192.232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.232 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-lj1-f182.google.com ([209.85.208.182])
	by :SMTPAUTH: with ESMTPSA
	id wkFgg21gUhQaCwkFgg7cIx; Thu, 21 Feb 2019 02:02:45 -0700
Received: by mail-lj1-f182.google.com with SMTP id a17so6989652ljd.4
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Feb 2019 01:02:44 -0800 (PST)
X-Gm-Message-State: AHQUAuZHFk8Fh2GHWnvtPox0xW7mUTcPTHkP8RT2LLZo2wgC7RD4QzMM
	0OanrHpK5miMmga0iHCTymTfdH3o2KWXkuVMuAU=
X-Received: by 2002:a2e:54f:: with SMTP id 76mr14545457ljf.20.1550739763720;
 Thu, 21 Feb 2019 01:02:43 -0800 (PST)
MIME-Version: 1.0
References: <20190221074729.GA27093@bhanusree-MacBookAir> <20190221083734.GE6397@kroah.com>
 <CAB0Mk-NDubg4tFZe8kzqhL3p31KQzPf7bJ3Pc=WsqnpwPisvJA@mail.gmail.com>
In-Reply-To: <CAB0Mk-NDubg4tFZe8kzqhL3p31KQzPf7bJ3Pc=WsqnpwPisvJA@mail.gmail.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Thu, 21 Feb 2019 14:32:31 +0530
X-Gmail-Original-Message-ID: <CAK-LDbJ178gRu7qU9M0DGD1-JG0to06-mjqMkOOUwuuMzWPL8w@mail.gmail.com>
Message-ID: <CAK-LDbJ178gRu7qU9M0DGD1-JG0to06-mjqMkOOUwuuMzWPL8w@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2 2/2] Staging: rtl8192e: Avoid
 using bool structure members
To: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfL7YRf8j1hyyfcWK2YSYg0prY/kp5qLnAlgOlAxM1ghnPb0G2K3qpbKN3LhJ4BUefzNjHil6auGwlXfFNvCGfCZUIwmz2HuB501+LLcNOIywtEewZZn/
 rSWneVJlM+XwrIVhvdkvjtrajHBpsLeVI5pL1jkOufxYXNPsNsQUOagPKqnbb9nKQn2esQRy0SrA8ZOdNaKr3vksFx4I2cVxm1c=

On Thu, Feb 21, 2019 at 2:21 PM Bhanusree Mahesh
<bhanusreemahesh@gmail.com> wrote:
>
> Ok, thanks.

No top-posting, please!

> On Thu, 21 Feb 2019 at 14:07, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Thu, Feb 21, 2019 at 01:17:29PM +0530, Bhanusree Pola wrote:
> > > -Use 'u8' with bitfield instead of 'bool' to preserve space.
> > > -Also bool size can be 1 or sizeof(int) depending on the macro
> > >  definition given to bool
> > > -inorder to avoid alignment issues the u8 bitfield is placed as last
> > >  member of the structure.
> > > -removes checkpatch.pl check:
> > >  CHECK: Avoid using bool structure members because of possible alignment
> > >  issues
> > >
> > > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> > > ---
> > >  drivers/staging/rtl8192e/dot11d.h | 3 +--
> > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8192e/dot11d.h b/drivers/staging/rtl8192e/dot11d.h
> > > index 6d2b93acfa43..a1d879d316ed 100644
> > > --- a/drivers/staging/rtl8192e/dot11d.h
> > > +++ b/drivers/staging/rtl8192e/dot11d.h
> > > @@ -33,8 +33,6 @@ enum dot11d_state {
> > >   */
> > >
> > >  struct rt_dot11d_info {
> > > -     bool enabled;
> > > -
> > >       u16 country_len;
> > >       u8  country_buffer[MAX_IE_LEN];
> > >       u8  country_src_addr[6];
> > > @@ -44,6 +42,7 @@ struct rt_dot11d_info {
> > >       u8  max_tx_power_list[MAX_CHANNEL_NUMBER + 1];
> > >
> > >       enum dot11d_state state;
> > > +     u8 enabled:1;
> >
> > Again, no, this is not ok at all.  I thought I said so the last time you
> > sent this patch.  checkpatch.pl is a "hint", you do not always have to
> > follow everything it says to do.
> >
> > thanks,
> >
> > greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAB0Mk-NDubg4tFZe8kzqhL3p31KQzPf7bJ3Pc%3DWsqnpwPisvJA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.

