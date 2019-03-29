X-GM-THRID: 6673827435643928576
X-Received: by 2002:a1c:2044:: with SMTP id g65mr460961wmg.8.1553879715068;
        Fri, 29 Mar 2019 10:15:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:55c5:: with SMTP id j188ls442391wmb.13.canary-gmail;
 Fri, 29 Mar 2019 10:15:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqznYmqkN1Q5x8Ls2BAUNufjIzBG/rmYENCARdjQLb/pPK1oTapOVpi70AdBUc12iuu6Q53Q
X-Received: by 2002:a7b:ce1a:: with SMTP id m26mr472024wmc.16.1553879713763;
        Fri, 29 Mar 2019 10:15:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553879713; cv=none;
        d=google.com; s=arc-20160816;
        b=sDKbxB8cpgHjs6rFOoOimBWc/ibo4aYLdJ0etlKq4iaNDEugx70+XcLsnlO7ov6MSo
         rtahdzgap/R0T/PxFVOz9kZHDMFWigHi6q72S0jbmLIbba2MRilFiXvkDouFEg0MYT7k
         CxhP8tjgodX+m9+GL+qWjuGt5Dv9dSFDOdMZQeMNgDZ6SvewXv3WPseyb0ozHJlyzf5Q
         UpH65OfofJCbCoCRlGbOgz9PV5a+rO2wqWylUs2ccC9DFccnDTRMQi546YiOyFyi+7dN
         uQJNFYVU65qdRiWeX9m72kdCecnZ/fPZQvz9WVElyr1h2WYfxsF+C5F+OjM1n3H85QlK
         qSoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=S+Up0YDQEknM0IG/W3xSuFzKX3oe/mg922qAFBJOVIg=;
        b=oTVqQXKaSle7pzIjhM9Ef70fRGDXWT1lyPIbQ62PDIdifv8lTISdHH1/4v/j4+sGPa
         D/JmS9YOThhGmU3wjOCr7SR0q0V7CWwB8ExFlI+Nhjv+gAajMxwrtuGWJ5EUUih6wXm9
         x12o9HRMb8b/ExS9Anl082KlRIGVyvDgqgoOFD7npuhUWiMavZScZWhTSkvxV0ax7MYx
         ta1I4pNvFze8LjxkyoSMMt1pogypQeK10myoKTXg4KRO8HmsYVORzO0YBw/NAewLLnyi
         vxJ+lre5+4EWR24hszPLnF/QncbyErcDg5ZZ9H+dMfHDDppdhBNQPJjVD0Vh4BweoI8N
         Ihrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e28+lS8O;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id n5si183912wrj.0.2019.03.29.10.15.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 10:15:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e28+lS8O;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x12e.google.com with SMTP id r25so1932406lfn.13
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 10:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=S+Up0YDQEknM0IG/W3xSuFzKX3oe/mg922qAFBJOVIg=;
        b=e28+lS8OMygHFoCk6FzjDci9UzJXGZZfYPqO9vREJdsz1NWZKsqJBDf4cei0LYse6B
         3rE/kFOxoWqpF7nVJThpC9Js/Swx9B/ljOF3fYJvEq8S/fopsUN4TwRU+fZX9a3Otps+
         nLJcoJysdsBx9LJU31gGfBLbVPGRcpcpxCMCYN24qew12dkHrcQ7EbI+cNWAeTK5TH2N
         vxwUlnlSZ20PB0KT4YO6DD+Nd8cePrF5n+yYhAFfGbkt1068Adp1aMwESSV5Vs8tYc3m
         qxCCZLGWt2qdFhSiV36qpIGGh54OCpeYnFqnPKCT9RWPpMVslEP1Y0PGeNpgNZXg/0Rh
         RcUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=S+Up0YDQEknM0IG/W3xSuFzKX3oe/mg922qAFBJOVIg=;
        b=s/65AHdF4uRkwbaSkXU0rkVreJcrLjOT//kLfww6LjtSYM8NDIpIluRsZlmQvbW/FM
         Kk4AXyf6O1c1T37DXTFSIcfLNSP9DT/R3i5065/UEKvIyd3gK69fEsDGNo0GNVGLrxFB
         kMzb91G8iBwg8KDN+7GcbkkndWnIGka+RalCeTvKQMwNFh73vaIr63GTgIzCIwQu6VC1
         M844HTvV7HPdz/ew4PC/Mk0PiLhP0DBsoop/vHGo9gkpcSTQL8IoLi/St5TfLIiirBG9
         /t8oJ0N3JkE1WQQfBpHir8DugL11wnF7v20JTTV8qgC36YOOjWnrMr3yVkKFMvKJcS+W
         OFeA==
X-Gm-Message-State: APjAAAUMl6xJ1K6VvUxwrSLMQURehy8G+wgEQad+B8p1afBiu1JSexFY
	pJUDMmK+AxHcVN1kn6vnVNh5UqwaFz7uO02BgKwoSA==
X-Received: by 2002:a19:9e0d:: with SMTP id h13mr25143501lfe.51.1553879713575;
 Fri, 29 Mar 2019 10:15:13 -0700 (PDT)
MIME-Version: 1.0
References: <1553871519-8008-1-git-send-email-payal.s.kshirsagar.98@gmail.com> <20190329161930.GB26815@kroah.com>
In-Reply-To: <20190329161930.GB26815@kroah.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Fri, 29 Mar 2019 22:45:01 +0530
Message-ID: <CANTOzWHSz93Veai+hd1gqmUQpcD6LEqSVWZTN9P-_ksq=1hDcg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtlwifi: rtl8822be: compress
 two lines into one
To: Greg KH <greg@kroah.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000059f65005853ed0a6"

--00000000000059f65005853ed0a6
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 29, 2019, 9:49 PM Greg KH <greg@kroah.com> wrote:

> On Fri, Mar 29, 2019 at 08:28:39PM +0530, Payal Kshirsagar wrote:
> > Challenge suggested by coccinelle.
> >
> > Returning something from a function need not to be stored in a variable,
> > can be return directly.
> >
> > This patch compress two lines into one using following semantic patch:
> >
> > @@
> > local idexpression ret;
> > expression e;
> > @@
> >
> > -ret = e;
> > +return e;
> > -return ret;
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> > diff -u -p a/phy.c b/phy.c
> > --- a/phy.c
> > +++ b/phy.c
>
> Um, have you tried applying this?  Your patches have to be able to be
> applied at the "root" of the kernel source tree, not buried in some
> random subdirectory :)
>

Okay I will apply it on a root directory and will send it again.
Thanks,
Payal

thanks,
>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20190329161930.GB26815%40kroah.com
> .
> For more options, visit https://groups.google.com/d/optout.
>

--00000000000059f65005853ed0a6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Fri, Mar 29, 2019, 9:49 PM Greg KH &lt;<a href=3D"mailto:greg@kroah.com"=
>greg@kroah.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On F=
ri, Mar 29, 2019 at 08:28:39PM +0530, Payal Kshirsagar wrote:<br>
&gt; Challenge suggested by coccinelle.<br>
&gt; <br>
&gt; Returning something from a function need not to be stored in a variabl=
e, <br>
&gt; can be return directly.<br>
&gt; <br>
&gt; This patch compress two lines into one using following semantic patch:=
<br>
&gt; <br>
&gt; @@<br>
&gt; local idexpression ret;<br>
&gt; expression e;<br>
&gt; @@<br>
&gt; <br>
&gt; -ret =3D e;<br>
&gt; +return e;<br>
&gt; -return ret;<br>
&gt; <br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank" rel=3D"noreferrer">payal.s.kshirsagar.98=
@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt; diff -u -p a/phy.c b/phy.c<br>
&gt; --- a/phy.c<br>
&gt; +++ b/phy.c<br>
<br>
Um, have you tried applying this?=C2=A0 Your patches have to be able to be<=
br>
applied at the &quot;root&quot; of the kernel source tree, not buried in so=
me<br>
random subdirectory :)<br></blockquote></div></div><div dir=3D"auto"><br></=
div><div dir=3D"auto">Okay I will apply it on a root directory and will sen=
d it again.</div><div dir=3D"auto">Thanks,</div><div dir=3D"auto">Payal</di=
v><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote">=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
thanks,<br>
<br>
greg k-h<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@googlegro=
ups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@google=
groups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/20190329161930.GB26815%40kroah.com" rel=3D"nore=
ferrer noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outr=
eachy-kernel/20190329161930.GB26815%40kroah.com</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/op=
tout</a>.<br>
</blockquote></div></div></div>

--00000000000059f65005853ed0a6--

