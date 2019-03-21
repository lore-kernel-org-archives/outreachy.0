X-GM-THRID: 6670738983645872128
X-Received: by 2002:a2e:864f:: with SMTP id i15mr88214ljj.13.1553153509801;
        Thu, 21 Mar 2019 00:31:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5637:: with SMTP id b23ls473819lff.6.gmail; Thu, 21 Mar
 2019 00:31:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyPXw8yOu1HWY1WxpNYqlB3hFQ/PKSuKi0UNEzbwo+p16PeurCCzIbIgnpwCkZSOWhncVB2
X-Received: by 2002:ac2:4427:: with SMTP id w7mr117521lfl.17.1553153508967;
        Thu, 21 Mar 2019 00:31:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553153508; cv=none;
        d=google.com; s=arc-20160816;
        b=RVv1i5kJWFg+pCtsVO0HGnrvNBtI7FzfmWk+p2/fgTnNgVRuNsug+kDvug2TE4z6mV
         JpA0h8jtMY3GcfVwyJxbczLPvNU4NpbLb6JmFqUcaH2MidPhwk+u+XSyXxUiLwG2pyTE
         JV2iE9dNcYCZx1XX5me0fBibt5OmArADbJTndJ4PWWeES85GFH/qo601sabR/tx4JSqT
         wL8SQXEeiKRrNVZgEPdXdPF22Rb457cb2mSFi7I7Ytn9Kl77/Y0LFYwpI6HMl26TmCiv
         zTWNR4aWVzXJ4i1ICAAUjjDpX2cHH2EEkA6iRSXwz9mi3FighUMgddK1WCP/MFOLsddA
         +Oug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=i898UaJLA6OQKOVeDo/aXniCgZmWNCwc1FlM+y10Amw=;
        b=V+FFSadPc0jWIzS2VyY0r0nf9RxiTSqYGDCKpKz7e7FCi4oi0KwNpcNUGyLy+fDmq9
         W++6TtIj50ptkzmz2BMJ1J86Wmnm5AbMgRoZTeLdZ/MzYM1PDELOLmhDHJBZf459tgeM
         +ukoSFqzyF0BoLNgsphL0SB8VDiRTKhfLBMVDxjPk/e3yKQPnGh5SWuVpn12KR0czvD9
         QojbZO4zLPzyTh03DALnOHHzyB67p8BTsl+T3F3eZgqeKvV3n/lmu5TkmFT4MfZdGAMU
         hQrCcJfA4lLjym5iMBKucpqwxIjhe92oTRALfGEjMpjaPnxxvsO4Oz8VER1i6rhfD2tW
         SoRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=unKzYm4u;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id h14si272743lja.2.2019.03.21.00.31.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 00:31:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=unKzYm4u;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x143.google.com with SMTP id 5so3812919lft.12
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 00:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=i898UaJLA6OQKOVeDo/aXniCgZmWNCwc1FlM+y10Amw=;
        b=unKzYm4uPokyGeH3v9taoOGQ4m5olwVeGTCnTuLnx5+uKC3LolUrSuJEfHVScoCJLQ
         JyVe2aW8dW+UUYR8mjCYekoE9Ffq4TXFCknAajMcyU5o9ll4Xf06lPcfFHnjjlSlwszl
         ksh8XbffVB7yi4rsS646115N8fAxR1cjLD8t+sPlKo3rPVuuFCdDUokrFCHLmj/vS4BE
         TyElHj4TLnEwtz/2xY+FdOJnnl1Coi9/DiKsviFtoySgkkL/4XuhvOIUXg+VoOzdnvYi
         YPkZQMogI0OqOPATUS/HtlojOvUvpkEQJFoYFTIk/95oT8l5V15dWYDlfgMnfBXDsN23
         k72A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=i898UaJLA6OQKOVeDo/aXniCgZmWNCwc1FlM+y10Amw=;
        b=MCBkfkZZ3rj1kZ33zk6Ce4Br7Sb4QpxbOHYUh2mvJDBPkxZkWgLD7y0erPkMsMWZi4
         BqwduRHwEKNWJQt1s68ST6sKCjuLO4Uy3wHT6rBk+MuEUOVa6Gku4FFI3B/ekbLJWHbP
         5qleHoIKeUpbArgpIprEcrFwZLIz4khfq/OtqqEhTmEuj87l2v7Lw7V17gv88tPhHnWZ
         ff+IyqoIdsZ1fCfIg05dyV3D3+40M46h95WWYG0DH9FPEaS0RbC6xCIa8MFfjr+vyxCA
         X0E9gvQcbc/4L2NUGFSjzhmvaulapqzfv05ky15tZOkaGKA4LXC0P2SP3AA257kjKU72
         ceSA==
X-Gm-Message-State: APjAAAVrQXd0Y8015TJa22c5XXSmIXiCJiWReKTW0X70ZWQaiXclXP40
	ldiqczDoAuJcSmn/wLoF2PwguFS+Mt/yHup9czKN4g==
X-Received: by 2002:a19:c314:: with SMTP id t20mr1133461lff.114.1553153508856;
 Thu, 21 Mar 2019 00:31:48 -0700 (PDT)
MIME-Version: 1.0
References: <1553152434-10057-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
 <20190321071646.GA28171@kroah.com>
In-Reply-To: <20190321071646.GA28171@kroah.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Thu, 21 Mar 2019 13:01:36 +0530
Message-ID: <CANTOzWHxLi37jO0hAKp6iOW9qoyAYCKjBxJLO=5Rra=J6KDAPA@mail.gmail.com>
Subject: Re: [PATCH] v2 [Outreachy kernel] staging: vt6655: spaces around operators
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000002d5943058495bb16"

--0000000000002d5943058495bb16
Content-Type: text/plain; charset="UTF-8"

On Thu, 21 Mar 2019 at 12:49, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Thu, Mar 21, 2019 at 12:43:54PM +0530, Payal Kshirsagar wrote:
> > Add spaces around operators
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/vt6655/device_main.c |  2 +-
> >  drivers/staging/vt6655/rf.c          | 26 ++++++++++++--------------
> >  2 files changed, 13 insertions(+), 15 deletions(-)
>
> What changed from v1?
>
> Always put that below the --- line.
>
> Please fix up and send a v3.
>
Okay, i will resend v3 by mentioning the change.
thanks!
payal


> thanks,
>
> greg k-h
>

--0000000000002d5943058495bb16
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, 21 Mar 2019 at 12:49, Greg KH=
 &lt;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.o=
rg</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">On Thu, Mar 21, 2019 at 12:43:54PM +0530, Payal Kshirsagar wrote:<br>
&gt; Add spaces around operators<br>
&gt; <br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank">payal.s.kshirsagar.98@gmail.com</a>&gt;<=
br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/vt6655/device_main.c |=C2=A0 2 +-<br>
&gt;=C2=A0 drivers/staging/vt6655/rf.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =
26 ++++++++++++--------------<br>
&gt;=C2=A0 2 files changed, 13 insertions(+), 15 deletions(-)<br>
<br>
What changed from v1?<br>
<br>
Always put that below the --- line.<br>
<br>
Please fix up and send a v3.<br></blockquote><div>Okay, i will resend v3 by=
 mentioning the change.</div><div>thanks!</div><div>payal<br></div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div>

--0000000000002d5943058495bb16--

