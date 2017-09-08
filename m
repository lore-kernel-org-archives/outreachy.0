X-GM-THRID: 6463324440693309440
X-Received: by 10.13.222.129 with SMTP id h123mr1442261ywe.150.1504862176386;
        Fri, 08 Sep 2017 02:16:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.200.85 with SMTP id w82ls950290itf.22.gmail; Fri, 08 Sep
 2017 02:16:15 -0700 (PDT)
X-Received: by 10.202.108.207 with SMTP id h198mr1252898oic.95.1504862175597;
        Fri, 08 Sep 2017 02:16:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504862175; cv=none;
        d=google.com; s=arc-20160816;
        b=JonVOk0XLuUASHtFsCf9rlWKgTrmmLAUNqDegoqEAxJFdzhXxjdlCfcwE1c/zPlBgE
         6eTUMSHqSci/GYCM1zonvGUGz+9di6aexM1c1XqN1v0t9+1BqLJZ5SryNqiZ6kI14+MV
         4yOdgUYzyjbEQ6sweupIsUEQXoZDj9xI8gTZbjY4qdXhIYWPoAlRI9Gibk7aXC324g3R
         q4w2ZzFo4b/Z5ve7MAdctzB+FBgcJfVGcelsPrFm0x36mRfIcKDHOVLJgV7huVTR8evU
         SdADK2bHS8bytQBl8velfOOv5ldxX3cQ1ePb+ispySX843hw3Hr6DirWPuJiVJPTkT7Q
         BI9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=pPkhAu4gRtVWk86lnrHbmZ42PXOb/lFN9B4yzxqmPuw=;
        b=X0tNthSAKM6kKICWU9bdnO1U7bNevFFcTawvEreup7jKBuovKd/sV0xVq7ByuG6vjt
         Wm8LFSn7iAc7pc3zmpJbi2cNq3jG3PfG0iuggXH38aH44UQhA5HP+WOWx1bUE/sf9wl2
         QYAlZjeawNbG1twkLEnE9J1o4LrNX6IynBublraZFR94k40vPvKmXH0bvyqhZgJCnl8J
         eE4aCwBwOSv71D5i5JXg+BpomtwZIS8KrVH7yBejEQMigMRGD7F8IirPieytjBD32uZ/
         otxx3vIfv1D9JSYO67MrAwdJLzuJXvaq+JBxMTHpD/n9xoiJl4oAif/CQ0m51oNPsALU
         w+PA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T6fDyLm6;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id 76si67251vko.9.2017.09.08.02.16.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 02:16:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T6fDyLm6;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id v203so515896vkv.1
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 02:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=pPkhAu4gRtVWk86lnrHbmZ42PXOb/lFN9B4yzxqmPuw=;
        b=T6fDyLm6kaXO3w5yYWHGDzYbtrkTB54NDKalVdMO8ftwW4lwoUn0k7UFQWGUvqYIuS
         PTz5NX+ZewT0B9mdlTCJzhfP5Zh1sSUh3DDKLCAXAizsmvaB6wcdber0xvABC/ObEWk7
         0PBUnqy4X6LqF4BiAfjkJQo4H+/HfTXjzrH0butw55PjVp3nF6u6ffmcRqb0rgp2qvW0
         fu8Q2hzfl4+MDWYspmYuYLmgxuJ67Zr1x+y0VDfP0M4ZarhBWvQdJMinaismLyuH97GV
         D5s6jl8IPPOrpMke2ZSESLcIsNoUzdyLjDofstyRebcS6eR/k/to5xuTUDRjxOzkfihu
         w+vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=pPkhAu4gRtVWk86lnrHbmZ42PXOb/lFN9B4yzxqmPuw=;
        b=dJNdEZw2LlLimOM8v/yLeNCO2TaHBYVfQUaaye4Xe0c4uy+rF17NVwF0fdWpYSf/l6
         psJ4rdCPY3IvD91gPRu14l4TdB3fpjeVNE8p/k/BM1ENgEyVTPnLILsrDMKzqxWvkdzT
         EF08HGQ7fzMc5ww/r/y//zWVZKy1WfNdBKoKMuCzcZJojAfPt+Jt0W/JWXv2mEJTrt38
         770TxLO1J5Yn4Nj7cRNDQv+S0C9d5sFZvAqB5j28PVMHxQetTxZCh8vwwq67uGu1G4f9
         N6M9CrOC0CfDz9BbavMJlw+7r4emYlselKPemKb+ykl+wZvJgRbGDkaMkBOKDoPz5Bcz
         xAFg==
X-Gm-Message-State: AHPjjUj7nHciFy7mwkOGNkqWOvkGNs2T4Uh7ORqkVc50tzCevvAq7q8I
	wOwfYQva615E4IkOAcpFmhXHzQfOaA==
X-Google-Smtp-Source: AOwi7QDxhamRMdTf3bGST6DFS5nMuc8Ot4q3RsERttOYTP+VdKpOIrl14uXMhm5FfhsGaOLdT9UfZH9XV6Mte+hJAzI=
X-Received: by 10.31.50.86 with SMTP id y83mr1293559vky.147.1504862175341;
 Fri, 08 Sep 2017 02:16:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.10.5 with HTTP; Fri, 8 Sep 2017 02:16:14 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709081045330.3165@hadrien>
References: <1504859870-13153-1-git-send-email-harshasharmaiitr@gmail.com> <alpine.DEB.2.20.1709081045330.3165@hadrien>
From: Harsha Sharma <harshasharmaiitr@gmail.com>
Date: Fri, 8 Sep 2017 14:46:14 +0530
Message-ID: <CANMOCy3eKKvgv_r=cWV-+sL1ZwHqMJYe2ipYioxidUQ+T1cH2A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rt8712: xmit_linux: Avoid
 multiple assignments in a single line
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="001a114391a865b2720558aa07e4"

--001a114391a865b2720558aa07e4
Content-Type: text/plain; charset="UTF-8"

Hi,
Thanks for your feedback.
I will take care about readability from next time.

With regards,
Harsha Sharma

On Fri, Sep 8, 2017 at 2:16 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Fri, 8 Sep 2017, harsha wrote:
>
> > Fixed coding style issue
> >
> > Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> > ---
> >  drivers/staging/rtl8712/xmit_linux.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8712/xmit_linux.c
> b/drivers/staging/rtl8712/xmit_linux.c
> > index d13fd15..03c6b0c 100644
> > --- a/drivers/staging/rtl8712/xmit_linux.c
> > +++ b/drivers/staging/rtl8712/xmit_linux.c
> > @@ -49,8 +49,10 @@ static uint remainder_len(struct pkt_file *pfile)
> >  void _r8712_open_pktfile(_pkt *pktptr, struct pkt_file *pfile)
> >  {
> >       pfile->pkt = pktptr;
> > -     pfile->cur_addr = pfile->buf_start = pktptr->data;
> > -     pfile->pkt_len = pfile->buf_len = pktptr->len;
>
> I think this may be considered to be more readable as is.
>
> julia
>
> > +     pfile->cur_addr = pktptr->data;
> > +     pfile->buf_start = pfile->cur_addr;
> > +     pfile->pkt_len = pktptr->len;
> > +     pfile->buf_len = pfile->pkt_len;
> >       pfile->cur_buffer = pfile->buf_start;
> >  }
> >
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/1504859870-13153-1-git-send-email-harshasharmaiitr%
> 40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a114391a865b2720558aa07e4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>Thanks for your feedback.</div><div>I will take ca=
re about readability from next time.</div><div><br></div><div>With regards,=
</div><div>Harsha Sharma</div></div><div class=3D"gmail_extra"><br><div cla=
ss=3D"gmail_quote">On Fri, Sep 8, 2017 at 2:16 PM, Julia Lawall <span dir=
=3D"ltr">&lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">juli=
a.lawall@lip6.fr</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><s=
pan class=3D""><br>
<br>
On Fri, 8 Sep 2017, harsha wrote:<br>
<br>
&gt; Fixed coding style issue<br>
&gt;<br>
&gt; Signed-off-by: Harsha Sharma &lt;<a href=3D"mailto:harshasharmaiitr@gm=
ail.com">harshasharmaiitr@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8712/xmit_<wbr>linux.c | 6 ++++--<br>
&gt;=C2=A0 1 file changed, 4 insertions(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8712/<wbr>xmit_linux.c b/drivers/stagi=
ng/rtl8712/<wbr>xmit_linux.c<br>
&gt; index d13fd15..03c6b0c 100644<br>
&gt; --- a/drivers/staging/rtl8712/<wbr>xmit_linux.c<br>
&gt; +++ b/drivers/staging/rtl8712/<wbr>xmit_linux.c<br>
&gt; @@ -49,8 +49,10 @@ static uint remainder_len(struct pkt_file *pfile)<b=
r>
&gt;=C2=A0 void _r8712_open_pktfile(_pkt *pktptr, struct pkt_file *pfile)<b=
r>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pfile-&gt;pkt =3D pktptr;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0pfile-&gt;cur_addr =3D pfile-&gt;buf_start =3D pk=
tptr-&gt;data;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0pfile-&gt;pkt_len =3D pfile-&gt;buf_len =3D pktpt=
r-&gt;len;<br>
<br>
</span>I think this may be considered to be more readable as is.<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; +=C2=A0 =C2=A0 =C2=A0pfile-&gt;cur_addr =3D pktptr-&gt;data;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0pfile-&gt;buf_start =3D pfile-&gt;cur_addr;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0pfile-&gt;pkt_len =3D pktptr-&gt;len;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0pfile-&gt;buf_len =3D pfile-&gt;pkt_len;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pfile-&gt;cur_buffer =3D pfile-&gt;buf_start=
;<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.<wbr>com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/1504859870-13153-1-git-send-email-harshash=
armaiitr%40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://groups.g=
oogle.com/d/<wbr>msgid/outreachy-kernel/<wbr>1504859870-13153-1-git-send-<w=
br>email-harshasharmaiitr%<wbr>40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>opto=
ut</a>.<br>
&gt;<br>
</font></span></blockquote></div><br></div>

--001a114391a865b2720558aa07e4--

