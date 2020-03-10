X-GM-THRID: 6801918498465382400
X-Received: by 2002:a7b:c019:: with SMTP id c25mr1126351wmb.126.1583831454273;
        Tue, 10 Mar 2020 02:10:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a5c6:: with SMTP id o189ls1555993wme.2.canary-gmail;
 Tue, 10 Mar 2020 02:10:53 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs0cfsbj2e2OH+bIKOoThDjDT0pcaWlrnKz2pQ3Lt59kMwu/4okaM7o5KcRG48xa3ZpwwIt
X-Received: by 2002:a1c:a908:: with SMTP id s8mr1102675wme.133.1583831453094;
        Tue, 10 Mar 2020 02:10:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583831453; cv=none;
        d=google.com; s=arc-20160816;
        b=HsbtPrTkRvFPmCfN+p4SBmzRb+cXDV9TcIgnYS1wyvDg3vE1aVDV1wDVMbP3D/FfTB
         XJK3cWFLb3JpZ9dqh1xmXLuWO1MG30Y53z+16Aw5NuLOL/11MgYYNFjIh1v5nco85GwK
         OfT1tml9PMZEAF+inRek/c0KyEqqVNj5PfcX2p+7xl89VilUKAtLUDTxk+o/ftoXjqXb
         ePjsKuSou0+8Pm9RvZLiFjTGEaMep9laPF/5FZUxvnVOimmPt9iWJUoUnieK4vY7wh3K
         Nn0cMMVshLWKnn+WzPJab44GFxbRaEFChuv6mlfAGcw8gKMMvJyAKLdqLeXvpMHsutYd
         tITA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OPuouKDYzlmcFZedA8XFfU0DLiXT3AYLLCz5T7ssBfA=;
        b=IVeXV8jt/4QCjnZoSAshe6FHyrlzisC+vBotvCVemdUWZoPkweJph7FEZ79G+Dp3b0
         QtDoNWAQ/+sVd0aUgtlDnPyLotUj/yR3alDKtdDwjvWvp7D6ySy7gUVj0B8mXGKIfSwZ
         d88Hc1KZoF2xzdoyKXcSmd1vQ8cc3mBkxjp4vtZD81nEmQ5922DaHWCfFoG6LaE7JFu1
         B3Y22J7UfgE00S/gPGRybvvMAv7EDsUC/ayGl7+iANnj+amqwo5okHkPzKzlOrtrrp9F
         Wby0Du05nGEOimRoYIALk/fMeeBrtzZUqKoQWqgJIhU4FP+KK9fnRzcB+inxOsUdHLYX
         lvsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gVubGI+h;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id m2si113928wmi.3.2020.03.10.02.10.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 02:10:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gVubGI+h;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id r15so9715360wrx.6
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 02:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OPuouKDYzlmcFZedA8XFfU0DLiXT3AYLLCz5T7ssBfA=;
        b=gVubGI+ho68MKgB4ewN1WKkvIaoYrGTWZ3AD1p0UH7kVnZDf5KMp8uOxQuU6n6Y/F4
         aL94tvRwgEFs0YzWFVTNv4w67acZKJD3mVbXOEQaqZv+la+AD1jrfLgpf94Hzr22NMEI
         MRBHeBp1r7ZJhYWPQPrmqsCe3BsgiJHcfVWwBhuPHozqhrhcHQOKyaXgQIANvODsqFAH
         m0Pdpo92v11aBdZADdICOao7oLiXnDpLebndWomukhwCEuqCfcpgSjav8QSrh27ElWqc
         lr3J/qNIf9LITGyZyDy0PvCwoJSto/nIWmH377PZC+tNFxkARr0iF2jEGNc0sTf1PiO0
         v+Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OPuouKDYzlmcFZedA8XFfU0DLiXT3AYLLCz5T7ssBfA=;
        b=N6JVnrL3ccVxD2OoPGE2/kqbGpQCMTM8NZ9UBhC4RlBdFmztxcg/EJT8N0O6pnqwJY
         v0RSwXyy5zt2DyYDSyxJ2gTcty/F1+HAXgpmAuB2EP7EKM8sYlmDaasFr0MhhGmJB2TK
         JDq7tpzapc5vluu0tvcWUiGxMVvHe2svXk7JGyBhwjil62+/h/5sb7aF1rwiQofu70Xy
         5Djuunw0wqwLhAnxoO4Xp5DeX8aQXi4d7M6rBuP424p/kH2zVF1TRkA0sCKKZsCmV5I8
         JDOa3ALSuFuG7k8aLVchvhrxj+kF8Ou5txV/kEA8XpcWneiAPPfOvnK6zk2EpayeAYA0
         UksQ==
X-Gm-Message-State: ANhLgQ0tSXh8yolowwSP+gxpHcuIQl43ky5KI1Weg0rc9tTOb7oyJ3rx
	n4TirR5WUC3XhzhE0oG+NonSQOOtACB86oZIqs7oA/sL
X-Received: by 2002:a05:6000:ca:: with SMTP id q10mr25760914wrx.78.1583831452746;
 Tue, 10 Mar 2020 02:10:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200310082329.3274-1-payalskshirsagar1234@gmail.com> <20200310090829.GB2479270@kroah.com>
In-Reply-To: <20200310090829.GB2479270@kroah.com>
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Date: Tue, 10 Mar 2020 14:40:38 +0530
Message-ID: <CAJyzNh=XXN4bDuY+iRWZ4FrnF11-w=SiLgr1ffG7RrWWVM+c9w@mail.gmail.com>
Subject: Re: [PATCH v2] [Outreachy kernel] staging: vt6655: remove line over
 80 characters
To: Greg KH <gregkh@linuxfoundation.org>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000002007f105a07c7f07"

--0000000000002007f105a07c7f07
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 10, 2020, 2:38 PM Greg KH <gregkh@linuxfoundation.org> wrote:

> On Tue, Mar 10, 2020 at 01:53:29PM +0530, Payal Kshirsagar wrote:
> > Remove line over 80 characters.
>
> That's the same thing that the subject says :(
>
> And you did not remove it, you reformatted the code to not have any
> lines over 80 characters.  Writing the changelog text properly is almost
> always harder than the actual code change itself.
>
> >
> > Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> > ---
> > Change in patch description from "Fix" to "Remove".
>
> This should read:
>  v2: Change in patch description from "Fix" to "Remove".
>
> Can you do a v3 please?
>

Sure, will do that.

Payal

thanks,
>
> greg k-h
>

--0000000000002007f105a07c7f07
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Tue, Mar 10, 2020, 2:38 PM Greg KH &lt;<a href=3D"mailto:gregkh@linuxfou=
ndation.org" target=3D"_blank" rel=3D"noreferrer">gregkh@linuxfoundation.or=
g</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Tue, Mar 10, 20=
20 at 01:53:29PM +0530, Payal Kshirsagar wrote:<br>
&gt; Remove line over 80 characters.<br>
<br>
That&#39;s the same thing that the subject says :(<br>
<br>
And you did not remove it, you reformatted the code to not have any<br>
lines over 80 characters.=C2=A0 Writing the changelog text properly is almo=
st<br>
always harder than the actual code change itself.<br>
<br>
&gt; <br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payalskshirsagar=
1234@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">payalskshir=
sagar1234@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt; Change in patch description from &quot;Fix&quot; to &quot;Remove&quot;=
.<br>
<br>
This should read:<br>
=C2=A0v2: Change in patch description from &quot;Fix&quot; to &quot;Remove&=
quot;.<br>
<br>
Can you do a v3 please?<br></blockquote></div></div><div dir=3D"auto"><br><=
/div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"></blockquote></div></div><div dir=3D"auto"><span style=3D"font-family=
:sans-serif">Sure, will do that.=C2=A0</span><br></div><div dir=3D"auto"><s=
pan style=3D"font-family:sans-serif"><br></span></div><div dir=3D"auto"><sp=
an style=3D"font-family:sans-serif">Payal</span></div><div dir=3D"auto"><br=
></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex">
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div></div>

--0000000000002007f105a07c7f07--

