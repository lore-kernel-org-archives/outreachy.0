X-GM-THRID: 6337380973243531264
X-Received: by 10.13.221.134 with SMTP id g128mr482777ywe.167.1475569130291;
        Tue, 04 Oct 2016 01:18:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.233 with SMTP id y96ls12187363ota.3.gmail; Tue, 04 Oct
 2016 01:18:49 -0700 (PDT)
X-Received: by 10.237.36.152 with SMTP id t24mr542349qtc.23.1475569129756;
        Tue, 04 Oct 2016 01:18:49 -0700 (PDT)
Return-Path: <laurana5@gmail.com>
Received: from mail-it0-x22f.google.com (mail-it0-x22f.google.com. [2607:f8b0:4001:c0b::22f])
        by gmr-mx.google.com with ESMTPS id c26si661296itd.0.2016.10.04.01.18.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 01:18:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of laurana5@gmail.com designates 2607:f8b0:4001:c0b::22f as permitted sender) client-ip=2607:f8b0:4001:c0b::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of laurana5@gmail.com designates 2607:f8b0:4001:c0b::22f as permitted sender) smtp.mailfrom=laurana5@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x22f.google.com with SMTP id o19so120854867ito.1
        for <outreachy-kernel@googlegroups.com>; Tue, 04 Oct 2016 01:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=l0xw6LETZJl9xOsEhXLef+30qLfx/JdHO7hqjHAvKkc=;
        b=F602OidloOjfJ0Jn69WHehSCbI9Xoc9t+0BIprcNYnM/Q7bklIZMZZtEcZA3DzxZc9
         Q08IDtKzeq+yEMIiDMPUIyjqAALWhhAFkWmbw0iTrpQrtIyefAnbJsL9vbk8qQZ25rSb
         WY1dHFtaCBuR1yt3RQxC30uTQe4bcQJXm2tpuyQ1w5myQgnW6YeEFzZZ+MmF/eqy1Vl2
         MzCG0g6M3p2HERO9AoscQJ53cBhbQtT6txpTkNwixyNN8lA3/+VpDIiOwfM3XnmzB6Ko
         hzwWi3LrW/xAQLcmYXMa0XarTzaiZxD6ckeL2N87Gw3sO1r0tDPetyaA93K4Fbo9dGFt
         LalQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=l0xw6LETZJl9xOsEhXLef+30qLfx/JdHO7hqjHAvKkc=;
        b=h7NqwfeUIPyZk4vXNhARgTx98iYuYFHgw/YouURaZK8qX5cUlPLetwhiOowDv3KECN
         +f19ZDQ3fJ0HXCs4MKLYLspVg8+MNg7OWuxumx0toVSxnBOntpHpQx+or0DKz32ujP27
         NK+DHBvzJx3a5eqsQPXapuN+MPbkXo57jj5p8OAxBaciEXQZUn0gEycsJD7jcDlOXNr4
         zRShu4tiqnTfGgfAG2scoWpmF9Zq5sNd7NRee2vBjcblFIlNXStkH6eraD1CUN1/+RqS
         y5FD73gU1ZjwgXiUejdzRk/+dY+NQ+/IXR1WDlIi5Iy0TLZlUgrMTILIUHdgwr9AG0ge
         z53A==
X-Gm-Message-State: AA6/9RnyRy5s4S/Bx2pZbsaYjXOdrqYASs74/bnkfBiY64FJTErxzIUmfCCgvzGhanhJUTwVMSrXd9axb4g4XA==
X-Received: by 10.36.77.142 with SMTP id l136mr22387337itb.11.1475569129528;
 Tue, 04 Oct 2016 01:18:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.19.16 with HTTP; Tue, 4 Oct 2016 01:18:47 -0700 (PDT)
Received: by 10.36.19.16 with HTTP; Tue, 4 Oct 2016 01:18:47 -0700 (PDT)
In-Reply-To: <CACrt6ML2ggFy-mC5TLYmQQur30iKN91eNSRq6eiN6+un+AYR9Q@mail.gmail.com>
References: <20160929152837.GA32652@kheixx-VB> <20161004042323.GB21357@kroah.com>
 <CACrt6ML2ggFy-mC5TLYmQQur30iKN91eNSRq6eiN6+un+AYR9Q@mail.gmail.com>
From: keila novo <laurana5@gmail.com>
Date: Tue, 4 Oct 2016 10:18:47 +0200
Message-ID: <CACrt6MKMzB6dsxYkGBF-OG54e3UGgeCcH2_iGRoyA93=f4dXOg@mail.gmail.com>
Subject: Fwd: Re: [PATCH]board/Kconfig: Add a paragraph that describes the simbol
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1140480ecea47f053e05b5dd

--001a1140480ecea47f053e05b5dd
Content-Type: text/plain; charset=UTF-8

---------- Mensaje reenviado ----------
De: "keila novo" <laurana5@gmail.com>
Fecha: 4 oct. 2016 7:41
Asunto: Re: [PATCH]board/Kconfig: Add a paragraph that describes the simbol
Para: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Cc:

I made that change because when a checked with chechpatch.pl, it took a
warning that said: "please write a paragraph that describes the config
symbol fully". So I tried to fix it adding a little paragraph on the top of
the file.
I will try to add the changes that you suggest , I will do my best.

Thanks,

Keila



2016-10-04 6:23 GMT+02:00 Greg Kroah-Hartman <gregkh@linuxfoundation.org>:

> On Thu, Sep 29, 2016 at 05:28:37PM +0200, Keila Novo wrote:
> >
> > Commit:
>
> What is that line for?
>
> > The staging board allows continous upstream
> > in-tree development and integration of
> > new platform devices.
>
> You have trailing whitespace, and you wrapped your paragraph at an odd
> line length, why?
>
> >
> > Signed-off-by: Keila Novo <laurana5@gmail.com>
> > ---
> >  drivers/staging/board/Kconfig | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/drivers/staging/board/Kconfig
> b/drivers/staging/board/Kconfig
> > index 3f287c4..830337d 100644
> > --- a/drivers/staging/board/Kconfig
> > +++ b/drivers/staging/board/Kconfig
> > @@ -1,3 +1,7 @@
> > +#
> > +#Staging board gives support and configures the kernel build
> > +#with new type of devices, making them compatible.
> > +#
>
> I don't understand that sentence at all, could you rephrase it somehow?
>
> And why not an extra ' ' after the comment character?
>
> And finally, why make this change at all?  Kconfig files usually do not
> have comments in them, right?
>
> thanks,
>
> greg k-h
>

--001a1140480ecea47f053e05b5dd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">---------- Mensaje reenviado ----------<br>De: &=
quot;keila novo&quot; &lt;<a href=3D"mailto:laurana5@gmail.com">laurana5@gm=
ail.com</a>&gt;<br>Fecha: 4 oct. 2016 7:41<br>Asunto: Re: [PATCH]board/Kcon=
fig: Add a paragraph that describes the simbol<br>Para: &quot;Greg Kroah-Ha=
rtman&quot; &lt;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxf=
oundation.org</a>&gt;<br>Cc: <br><br type=3D"attribution"><div dir=3D"ltr">=
I made that change because when a checked with <a href=3D"http://chechpatch=
.pl" target=3D"_blank">chechpatch.pl</a>, it took a warning that said: &quo=
t;please write a paragraph that describes the config symbol fully&quot;. So=
 I tried to fix it adding a little paragraph on the top of the file.<div>I =
will try to add the changes that you suggest , I will do my best.</div><div=
><br></div><div>Thanks,</div><div><br></div><div>Keila</div><div><br></div>=
<div><br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">2016-10-04 6:23 GMT+02:00 Greg Kroah-Hartman <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank">gregkh@linuxfou=
ndation.org</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Thu, Sep 2=
9, 2016 at 05:28:37PM +0200, Keila Novo wrote:<br>
&gt;<br>
&gt; Commit:<br>
<br>
What is that line for?<br>
<span><br>
&gt; The staging board allows continous upstream<br>
&gt; in-tree development and integration of<br>
&gt; new platform devices.<br>
<br>
</span>You have trailing whitespace, and you wrapped your paragraph at an o=
dd<br>
line length, why?<br>
<span><br>
&gt;<br>
&gt; Signed-off-by: Keila Novo &lt;<a href=3D"mailto:laurana5@gmail.com" ta=
rget=3D"_blank">laurana5@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/board/Kconfig | 4 ++++<br>
&gt;=C2=A0 1 file changed, 4 insertions(+)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/board/Kconfi<wbr>g b/drivers/staging/boar=
d/Kconfi<wbr>g<br>
&gt; index 3f287c4..830337d 100644<br>
&gt; --- a/drivers/staging/board/Kconfi<wbr>g<br>
&gt; +++ b/drivers/staging/board/Kconfi<wbr>g<br>
&gt; @@ -1,3 +1,7 @@<br>
&gt; +#<br>
&gt; +#Staging board gives support and configures the kernel build<br>
&gt; +#with new type of devices, making them compatible.<br>
&gt; +#<br>
<br>
</span>I don&#39;t understand that sentence at all, could you rephrase it s=
omehow?<br>
<br>
And why not an extra &#39; &#39; after the comment character?<br>
<br>
And finally, why make this change at all?=C2=A0 Kconfig files usually do no=
t<br>
have comments in them, right?<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div><br></div>
</div>

--001a1140480ecea47f053e05b5dd--

