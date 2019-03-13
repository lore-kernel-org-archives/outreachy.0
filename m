X-GM-THRID: 6666504737930608640
X-Received: by 2002:ac8:2f74:: with SMTP id k49mr7019515qta.45.1552461210125;
        Wed, 13 Mar 2019 00:13:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:58c4:: with SMTP id m187ls526041qkb.7.gmail; Wed, 13 Mar
 2019 00:13:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx53F2hQ71vZS1Do1+ItwvdAVWSkXXwi6Bt3n3BmPnpRR2fU65ZT3q/Vdwujjxs9K6/kOh4
X-Received: by 2002:a37:9f88:: with SMTP id i130mr1623937qke.3.1552461209456;
        Wed, 13 Mar 2019 00:13:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552461209; cv=none;
        d=google.com; s=arc-20160816;
        b=yq7G3bTi+e50zjri/CxdhKwf6yobeAVXkRWF/VyiyHjAF9MdH+Ur01RSK/3C+fAkcU
         KckTpM2fOhdd5SU809iJYfIGwIoXQRDNSGsnwtUUJ4kxm4KnEM3pvdLW4Zh0oT9UeM6t
         KZFCUBBRjvVcRAirLBT/JsIiXVYEXVyYpvlFfSHsPZ485xyL71pGkAvrExXplpjvFCq3
         tgXr8jyPIY6+CzU3m+Dq+pwzEofpNVhHdU742Q1AxhqVKEVNCc+MKWu/SN6HP+tw1DZu
         6kxpUZLiLlqPcM5LFXH5ZBzEWl5YXs+buhZV0ZbmSJSTMskmfCPhFTUhEj0m4q9SalBF
         iocA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bOQM8XtldPTVFMVoTCk9KsZru6Uo23qvObr9/mrdiYY=;
        b=pEuoite3oEPPeJRhjbR0YxtyubzAiaLXOaIsoBruCYRZMwb4H3cm6vts1nmUrT+7+z
         uLoynOu+CUbjQgaVvBerDtjwvMQ7oTj5dnA8qQk8zhRv5k19zkz0lyLiP5ucMXWs8kj2
         8riXJ6V6LkukLLs6XEp5Pta4WQnxca5/pQU0d21ArS83zntk0YHs9b7S98DKjyhbzEvM
         1Oq3hrGeQnlU5VRPrgceWJR1X0SPcC4VgZyjuzysD66zRyuMlT836pFlLieNFOsMNALV
         B17HfwwWODa/m2Mj2MaM+TuQ7YgQFmN/U/0S0458PUjV9/K7yceuaZqgn0CnUVPyjckA
         bIvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M2gnc12T;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id h21si164367qtq.0.2019.03.13.00.13.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 00:13:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M2gnc12T;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x843.google.com with SMTP id f11so743778qti.7
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Mar 2019 00:13:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bOQM8XtldPTVFMVoTCk9KsZru6Uo23qvObr9/mrdiYY=;
        b=M2gnc12TYFVUYGcfMQ3WEechi9yS+VmP9WLGBPwUSu7mtb9b7EXX0KGujKHqjn8338
         jPlAY8lXJp87r6X/zPP/JqnADvz0v5T7b1BW8RuURkCQo3VZbycRpvfw7gcp5wqw0xet
         YZ4vzt3f12jzmKA9W78eXirKF3eAYMfCZpV/2MqVatfGPv6gMDTdvz4567nZ6G03wxSS
         h8hxeH29ZuBm4m3iqXjLD4C3VRDRKVEAcAMD3cQHs2Yn4Hk6aT+mn04zyoZgJxJyRNDW
         RoAtYjIHFEaRSg9YaOviuAekGw9GniltXPR+F0Zt+TVgTY7DXu4+q97Y9eSXA2TU0QPD
         zR4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bOQM8XtldPTVFMVoTCk9KsZru6Uo23qvObr9/mrdiYY=;
        b=TZEsf5qFmp9xB5WFuj6XW7Pc2h9wRXULzELIQMZYCGQtv7CH/uJqFBLUVIGoFMjVl/
         uSRP8fWvu9+Tm50uINPHPWf+wNdRnhAtauYeEt9vqWonxLd4EmoPYkcCv/s6axsssjAb
         W6UnWJSHikOKwqIKnLuriQIPndAR22XBYTLl90mCt5S7lmNQW0sjHEFlLMkJTJRkENm2
         7QDzmmeEQIFUidRQIZvK7CXuGLJ2x51IXc78V084kf5UMlaffi223iwhV+iu0eOAY6NL
         3JPCvR1Z8D/kzv7vEKUzciIog7qJda7hmgR1euxIBcjVFyJYQ4xABVzZHAyHcdnRggCv
         hhHQ==
X-Gm-Message-State: APjAAAVVQJZqToutTneMqbGwXw5Ye42L3VRH0gXHpHV45YL+PcS3ki4L
	yDd8niB1zK8OuhdTwOn29+/wCdn8iyNOhVfXLZBoZg==
X-Received: by 2002:aed:3c0f:: with SMTP id t15mr33815862qte.282.1552461209146;
 Wed, 13 Mar 2019 00:13:29 -0700 (PDT)
MIME-Version: 1.0
References: <1552375016-5169-1-git-send-email-digholebhagyashri@gmail.com>
 <1552375016-5169-2-git-send-email-digholebhagyashri@gmail.com> <20190312193710.GA13828@kroah.com>
In-Reply-To: <20190312193710.GA13828@kroah.com>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Wed, 13 Mar 2019 12:42:52 +0530
Message-ID: <CAOMPgjgzwdHauwCDinascFSpJobB3EyamyXg4CAZMgNeGps77Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] staging: rtl8712: Modify coding style alignments.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000e61b1d0583f48aca"

--000000000000e61b1d0583f48aca
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 13, 2019 at 1:07 AM Greg Kroah-Hartman <
gregkh@linuxfoundation.org> wrote:

> On Tue, Mar 12, 2019 at 12:46:56PM +0530, Bhagyashri Dighole wrote:
> > @@ -583,8 +583,13 @@ u32 r8712_tkip_encrypt(struct _adapter *padapter,
> u8 *pxmitframe)
> >                       stainfo = pattrib->psta;
> >               else
> >                       stainfo = r8712_get_stainfo(&padapter->stapriv,
> > +<<<<<<< HEAD
> >                                 &pattrib->ra[0]);
> >               if (stainfo != NULL) {
> > +=======
> > +                                                 &pattrib->ra[0]);
> > +             if (stainfo) {
> > +>>>>>>> 172fbd1... staging: rtl8712: Modify coding style alignments.
> >                       prwskey = &stainfo->x_UncstKey.skey[0];
> >                       for (curfragnum = 0; curfragnum <
> pattrib->nr_frags;
> >                            curfragnum++) {
>
> You obviously did not build this change, as this is incorrect, you have
> git merge markers stuck here in your patch :(
>
> Please, ALWAYS test build your patches to verify you do not break
> anything when you create them.
>

I update this changes in v2.

>
> thanks,
>
> greg k-h
>

--000000000000e61b1d0583f48aca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 13, 2019 at 1:07 AM Greg =
Kroah-Hartman &lt;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linu=
xfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">On Tue, Mar 12, 2019 at 12:46:56PM +0530, Bhagyashri Dighole=
 wrote:<br>
&gt; @@ -583,8 +583,13 @@ u32 r8712_tkip_encrypt(struct _adapter *padapter,=
 u8 *pxmitframe)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0stainfo =3D pattrib-&gt;psta;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0stainfo =3D r8712_get_stainfo(&amp;padapter-&gt;stapriv,<br>
&gt; +&lt;&lt;&lt;&lt;&lt;&lt;&lt; HEAD<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;pattrib-&gt;ra[0]);<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (stainfo !=3D=
 NULL) {<br>
&gt; +=3D=3D=3D=3D=3D=3D=3D<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;pattrib-&gt;ra[0]);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (stainfo) {<br>
&gt; +&gt;&gt;&gt;&gt;&gt;&gt;&gt; 172fbd1... staging: rtl8712: Modify codi=
ng style alignments.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0prwskey =3D &amp;stainfo-&gt;x_UncstKey.skey[0];<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0for (curfragnum =3D 0; curfragnum &lt; pattrib-&gt;nr_frags;<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 curfragnum++) {<br>
<br>
You obviously did not build this change, as this is incorrect, you have<br>
git merge markers stuck here in your patch :(<br>
<br>
Please, ALWAYS test build your patches to verify you do not break<br>
anything when you create them.<br></blockquote><div><br></div><div>I update=
 this changes in v2. <br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div>

--000000000000e61b1d0583f48aca--

