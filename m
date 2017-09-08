X-GM-THRID: 6463324440693309440
X-Received: by 10.25.205.75 with SMTP id d72mr159906lfg.19.1504862517445;
        Fri, 08 Sep 2017 02:21:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.152.75 with SMTP id a72ls249539wme.23.canary-gmail; Fri, 08
 Sep 2017 02:21:56 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDkMI34bifzF4k9uadVm87f4QSZyaQD6lVwEIslJfAylLPs+y63PxamKofo8TGgUq7Q1ETj
X-Received: by 10.28.87.132 with SMTP id l126mr145078wmb.23.1504862516519;
        Fri, 08 Sep 2017 02:21:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504862516; cv=none;
        d=google.com; s=arc-20160816;
        b=ug1UOzW4jNwMoEQEIcj3GgKJQjwWgCu6fiAQ2N5Amr0+d3aBulKfRs/NrjH7NnP/kt
         8520d9O7sC0Gh6REHBROjleJ8muYAQaBMFii0kpUDg6ZFbSSshXZZ61+cYdNW5O5bHso
         1WgASlVLjeP1BM6b2800Nte74aY8PTuNnhTzNXkPPp6K0ne4S+bH2bOnTHAjXVeNfAfi
         xfweJbMO8o8i6tVZQPlcSPbUluUpS2TvWoWEJxEjYRJ9rD4enOIRP14ZM+IgXiJHBcCu
         oyX3eDFmjkaV1RcXnYhB/fcV9w8d8v+McBYgL4vxNT7S2esq6ui3g6+EI+rc6NeXBoY6
         mGrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=lvnS3PRAgFTrcvOadScfFpzTzWt+iHg1uY5tLAasQJo=;
        b=uXKity55RM6SHByzigNXgXFGmfh1Gwo2BqlTDCDcX/wGVTCFp4+n5TfPiC5PF4z4im
         hnC8jzamUxaqJ/9PbOE3tQnb/r/2x8bdnLVP+enmNmyzBwovSRrnD0x/7rqEtIUKrjOy
         ovhb7UcP3fZebO4SomjF7tfDa6b2REDpwsTPg0RnkS5ezlpO66zFoIbjN/ckTZ7raO2q
         0f2isPkcjQJ3JYzjJa7kEbrgkq5JDDJOpe1Lt93/TBAptZ3U4jzw+zFpVqWIvXhT4gDo
         n/uRoOR4VzEzcFKKXV4w1LSw7Cn2dHM/Tvlm0So0nsR9j+Dot238R75Wx7ffEiEm1vT7
         VbsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id z129si61926wmc.5.2017.09.08.02.21.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 02:21:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,360,1500933600"; 
   d="scan'208";a="290138658"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Sep 2017 11:21:55 +0200
Date: Fri, 8 Sep 2017 11:21:26 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Harsha Sharma <harshasharmaiitr@gmail.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, Greg KH <gregkh@linuxfoundation.org>, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rt8712: xmit_linux: Avoid
 multiple assignments in a single line
In-Reply-To: <CANMOCy3eKKvgv_r=cWV-+sL1ZwHqMJYe2ipYioxidUQ+T1cH2A@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1709081116210.3165@hadrien>
References: <1504859870-13153-1-git-send-email-harshasharmaiitr@gmail.com> <alpine.DEB.2.20.1709081045330.3165@hadrien> <CANMOCy3eKKvgv_r=cWV-+sL1ZwHqMJYe2ipYioxidUQ+T1cH2A@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-74892800-1504862487=:3165"

--8323329-74892800-1504862487=:3165
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Fri, 8 Sep 2017, Harsha Sharma wrote:

> Hi,Thanks for your feedback.
> I will take care about readability from next time.

Don't top post.  You should respond to comments underneath the comment you
are responding to.  The person will have to go find that anyway, to
understand what your comment is about.  Please read the tutorial again, in
particular the following:

https://kernelnewbies.org/PatchPhilosophy
https://kernelnewbies.org/CheckpatchTips
and everything starting from Responding to emails on
https://kernelnewbies.org/Outreachyfirstpatch

thanks,
julia

>
> With regards,
> Harsha Sharma
>
> On Fri, Sep 8, 2017 at 2:16 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Fri, 8 Sep 2017, harsha wrote:
>
>       > Fixed coding style issue
>       >
>       > Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
>       > ---
>       >� drivers/staging/rtl8712/xmit_linux.c | 6 ++++--
>       >� 1 file changed, 4 insertions(+), 2 deletions(-)
>       >
>       > diff --git a/drivers/staging/rtl8712/xmit_linux.c
>       b/drivers/staging/rtl8712/xmit_linux.c
>       > index d13fd15..03c6b0c 100644
>       > --- a/drivers/staging/rtl8712/xmit_linux.c
>       > +++ b/drivers/staging/rtl8712/xmit_linux.c
>       > @@ -49,8 +49,10 @@ static uint remainder_len(struct pkt_file
>       *pfile)
>       >� void _r8712_open_pktfile(_pkt *pktptr, struct pkt_file
>       *pfile)
>       >� {
>       >� � � �pfile->pkt = pktptr;
>       > -� � �pfile->cur_addr = pfile->buf_start = pktptr->data;
>       > -� � �pfile->pkt_len = pfile->buf_len = pktptr->len;
>
>       I think this may be considered to be more readable as is.
>
>       julia
>
>       > +� � �pfile->cur_addr = pktptr->data;
>       > +� � �pfile->buf_start = pfile->cur_addr;
>       > +� � �pfile->pkt_len = pktptr->len;
>       > +� � �pfile->buf_len = pfile->pkt_len;
>       >� � � �pfile->cur_buffer = pfile->buf_start;
>       >� }
>       >
>       > --
>       > 1.9.1
>       >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1504859870-13153-1-git-s
> end-email-harshasharmaiitr%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
>
>
>
--8323329-74892800-1504862487=:3165--

