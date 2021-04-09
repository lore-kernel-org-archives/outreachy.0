X-GM-THRID: 6948788358969556992
X-Received: by 2002:a25:ad8b:: with SMTP id z11mr12348642ybi.74.1617956734277;
        Fri, 09 Apr 2021 01:25:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5b:bc3:: with SMTP id c3ls3655268ybr.6.gmail; Fri, 09 Apr
 2021 01:25:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzcQy4tsZKBRrv8WLfy3KCMLaCKszx8732Zn3ibLuDmCa8+8JofKMIuPSyLccooAOE0zP+l
X-Received: by 2002:a25:c543:: with SMTP id v64mr16532268ybe.349.1617956732673;
        Fri, 09 Apr 2021 01:25:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617956732; cv=none;
        d=google.com; s=arc-20160816;
        b=dc31Dbe52/6aNVcRd5SYZp/DBmFiwlZagXTjPhJzixoLnIcrQwTOmy92aJwWM8/bgh
         XRHZUfsRL2/QQkqtfYrgj8tFLolzQR4yn0nl+C7bIy/9mqCsA/tm0p9eFzUH1Zmxo5It
         PMED5aE6EXm2dIhbXhppnatZ+HnaQwCm5uxkJMI6fvoiDRCs4+4wQLPFE6yNuBp1IgG9
         /fVLdgzHI8S/Rw8aAHsD8+uhkfj38lGZdbs+3Y6lC47UZe26HrqZjvsjko/h352+xUSl
         xQ9FsTic/SNSFrsV09DMo71hnEeV6ir03E4xqKeQeZLBJ3CDa9Yx0HEQctKPW93fb+8v
         qr6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=o3pM2tzmTaWgehlXkCwy43Fwqjo9788JA6XZDZRtDCk=;
        b=Ykwj/1a1gN8NPhhkjof0+hCJWL6FAyml5WoogdTEywO2tkG5M8sRaoyxgqR48mgVak
         mfXRoUa66T30BAD5cwY0u/tkl9u270E3L+/90n8L+0jPtrhG8u1IyAOJhf+U3Q5nXFCv
         y7zRPmkbq1F9KZ6Xhdo8l3jTv1CmYoWRidYTbLAdsPbwN2d3AZBDw95cUZCje2+Okj7p
         Tgp26Fha+krGdm3khD2cn7TnQc02s6wmWAPdWvT5g/e4mcMnL9r//hxM/VNvcsWGawUc
         VT8sIUqMJVHA5gAZkCU0SpYOViybCl8ZoJU1WjJpRZFvIhRCKdUAeYUYIQzL73DE/o31
         IWGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.103 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa11-02.prod.phx3.secureserver.net (p3plsmtpa11-02.prod.phx3.secureserver.net. [68.178.252.103])
        by gmr-mx.google.com with ESMTPS id i10si126313ybj.3.2021.04.09.01.25.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Apr 2021 01:25:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.103 as permitted sender) client-ip=68.178.252.103;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.103 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-ua1-f49.google.com ([209.85.222.49])
	by :SMTPAUTH: with ESMTPSA
	id UmSJlT6Q51vvDUmSJljCvU; Fri, 09 Apr 2021 01:25:31 -0700
X-CMAE-Analysis: v=2.4 cv=bIzTnNyZ c=1 sm=1 tr=0 ts=60700f7b
 a=lf8M7a0c587zQ7GW57f60Q==:117 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10
 a=3YhXtTcJ-WEA:10 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10 a=pGLkceISAAAA:8
 a=OLL_FvSJAAAA:8 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8 a=AFfvQUj85srtwFEc7eAA:9
 a=QEXdDO2ut3YA:10 a=cDyXFGGuxjcA:10 a=z54qQdpIc_cA:10 a=Wv7ntmRM1ZwA:10
 a=wqjlRBnl_XkA:10 a=bt_fcZFKdygA:10 a=oIrB72frpwYPwTMnlWqB:22
 a=_sbA2Q-Kp09kWB8D3iXc:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-ua1-f49.google.com with SMTP id 33so1572120uaa.7
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 01:25:31 -0700 (PDT)
X-Gm-Message-State: AOAM530wYHdU6r55/GRUgVQ8vBDPUPvukzKPVZaVQHBCjxRtLOAOg7zX
	/ludVhuzRyP1swthkQBBF61sTwRmKsr+d082aJA=
X-Received: by 2002:ab0:2819:: with SMTP id w25mr9917224uap.76.1617956730971;
 Fri, 09 Apr 2021 01:25:30 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1617890467.git.alinesantanacordeiro@gmail.com>
 <1e6d73432d60dfb8bb3f7f2bd6bf3084091a2a39.1617890467.git.alinesantanacordeiro@gmail.com>
 <d4000598fddcf45e578462aa04b556c0ca057091.camel@collabora.com> <6bba0e0a5768e902ffec4bda563d4ca810412f84.camel@gmail.com>
In-Reply-To: <6bba0e0a5768e902ffec4bda563d4ca810412f84.camel@gmail.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Fri, 9 Apr 2021 10:25:19 +0200
X-Gmail-Original-Message-ID: <CAK-LDb+L-hXpVgFpAz95921p6JOPZ8=BSYAiqjRpYv0oV=YK2A@mail.gmail.com>
Message-ID: <CAK-LDb+L-hXpVgFpAz95921p6JOPZ8=BSYAiqjRpYv0oV=YK2A@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH 1/2 v2] staging: media: hantro:
 Align line break to the open parenthesis in file hantro_hw.h
To: ascordeiro <alinesantanacordeiro@gmail.com>
Cc: Ezequiel Garcia <ezequiel@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CMAE-Envelope: MS4xfNSNnKc2zM/fn3wGRE+eSDkIFdYm4W4JGbZDDkFG7QkYzvrOK/BJL4N+eQROiEsEfUfqrvqT9K0FCmQA6bVWxVdpc3diIK9JGlmMuNx8cO/g00Lr0LjP
 E5l0CR6gQJwjF6JKFMix0CkNsBUeUze5X4TkAlmdTgM43r3GBUBLyNq1S6An3dzSGtH7hhsoBBybedpj+kBGZo9oqaCPWYoXsLJCFHmK264n4pgF5JQSN3b7

On Thu, Apr 8, 2021 at 7:41 PM ascordeiro
<alinesantanacordeiro@gmail.com> wrote:
>
> Em qui, 2021-04-08 =C3=A0s 13:20 -0300, Ezequiel Garcia escreveu:
> > Ola Aline,
> Ola Ezequiel,
>
> > Welcome to the kernel community. Hope you enjoy some of this
> > Outreachy adventures.
> Thank you!
>
> > Normally, when you submit a v2, we want to know what changed
> > between the first submission and v2.
> >
> > If you are subscribed to linux-media, you can read some
> > of the series with a vN+1 and look how it's done. Examples:
> >
> > https://www.spinics.net/lists/linux-media/msg190043.html
> >
> > https://www.spinics.net/lists/linux-media/msg189923.html
> >
> > I'm sure your Outreachy mentors can tell you more.
> Thank you for the examples, it won't happen again.
>
> The reason for sending a v2 is that I sent my very first patchset
> yesterday and I sent the cover-letter together, but (I think) I wasn't
> supposed to, and as the patches weren't marked as [PATCH 1/2] and
> [PATCH 2/2] in the email - since I commited all the files with the same
> message - I tought it was wrong and sent again today.
>
> However, I just realized that I've changed just the subject of the e-
> mail, but I would've to change the commit message, right? And then, it
> would be a second version, am I right?

Your next version should be v3 with information about changes since
v1 under --- . If you send it with v2, it'll still be confusing for people
because then they have to manually find out the difference between
two different patchsets with the same subject line. :)

You can also check 'Revising your patches' section in the tutorial.

> Thank you in advance,
>
> > On Thu, 2021-04-08 at 11:07 -0300, Aline Santana Cordeiro wrote:
> > > Aligns line break with the remaining function arguments
> > > to the open parenthesis. Issue found by checkpatch.
> > >
> > > Signed-off-by: Aline Santana Cordeiro <
> > > alinesantanacordeiro@gmail.com>
> > > ---
> > >  drivers/staging/media/hantro/hantro_hw.h | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/media/hantro/hantro_hw.h
> > > b/drivers/staging/media/hantro/hantro_hw.h
> > > index 34c9e46..a650b9c 100644
> > > --- a/drivers/staging/media/hantro/hantro_hw.h
> > > +++ b/drivers/staging/media/hantro/hantro_hw.h
> > > @@ -207,7 +207,7 @@ hantro_h264_mv_size(unsigned int width,
> > > unsigned int height)
> > >  void hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx);
> > >  void rk3399_vpu_mpeg2_dec_run(struct hantro_ctx *ctx);
> > >  void hantro_mpeg2_dec_copy_qtable(u8 *qtable,
> > > -       const struct v4l2_ctrl_mpeg2_quantization *ctrl);
> > > +                                 const struct
> > > v4l2_ctrl_mpeg2_quantization *ctrl);
> > >  int hantro_mpeg2_dec_init(struct hantro_ctx *ctx);
> > >  void hantro_mpeg2_dec_exit(struct hantro_ctx *ctx);
> > >
> >
> >
>
>
> --
> You received this message because you are subscribed to the Google Groups=
 "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/outreachy-kernel/6bba0e0a5768e902ffec4bda563d4ca810412f84.camel%40gmail.c=
om.



--=20
Vaishali

