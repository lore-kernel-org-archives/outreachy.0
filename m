X-GM-THRID: 6808044843867045888
X-Received: by 2002:adf:a2d8:: with SMTP id t24mr3633852wra.366.1585145535355;
        Wed, 25 Mar 2020 07:12:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4690:: with SMTP id u16ls324769wrq.11.gmail; Wed, 25 Mar
 2020 07:12:14 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vstZUgz40mej7L1Sv89KKK0fulRFfbk+CkG+i1pHCquJY5LB7OGEuJHRgYKE4InvImMyxqO
X-Received: by 2002:a05:6000:114f:: with SMTP id d15mr3792897wrx.143.1585145534123;
        Wed, 25 Mar 2020 07:12:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585145534; cv=none;
        d=google.com; s=arc-20160816;
        b=KnuPNrxrkh26n/3t3RRbXEeiy3EGDfTzZjhGWgYqzQ4YJleiEmjChj6HUZNv+xTqk4
         E4xbZotpxpMs3Vdq7HlkFyRUOcpKvMbio4TEj8kX+wC4NYoVjVgCV00K0ivEBO4D/IiU
         kfKLYLWNhpVMii6WNbhLa43iHM1wZ8JobgMssvHsfGcETt2yGZN6GgpFb0ypTKLJdNoK
         AUhh4+U+RXgd0JoS+Ra0ZODvFG2vdnt2ZtENfN/Wk8vnOX0AghKIB4uUiX7V9DYEMp7U
         0iDP18jaXaMG8xgtc1inAuugxjNO3iabAm4H0ZPfZYsuK1+ul+6B6/1Cz7gzOJ481Ksm
         lTwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CYQ7zHWuw90s54E4c8nAL1qrZ3VomEm69kpr7+vqkaY=;
        b=MdxDYjqOYyzfWaESkslYZVn7rcYIku2G1VZA4vsfah8Q8X6imHOTQyHYFyCyPl1Jry
         B9DxW434Ii69ko6sEs0igo+rW5UmfdNFnmPVXSuQGzz0Cojqvi/I2X9kDwwERcytnM8t
         8Agjau8DeFlhdY7VSsYGGL5R3Q+C3otRklAqF/TlD42SEOI0Mh2kljSI8T/VTF6SPFAO
         OKOpbv64JcwraAgNHO1vi1kd/Xl7T317dSZg+MplZfIJqDgffxd4uM6W/0fZ2g0mgQaJ
         2HdL/X0CCm0OZR8xvWUXK/fVsaIoG0fGBvIyI91jofEan+GfbPdXmUSsBVNcFkeaPulu
         MYdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fNTpcApv;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id g78si394444wmg.0.2020.03.25.07.12.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 07:12:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fNTpcApv;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x243.google.com with SMTP id f20so2644175ljm.0
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 07:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CYQ7zHWuw90s54E4c8nAL1qrZ3VomEm69kpr7+vqkaY=;
        b=fNTpcApv/SxxE1J8BDNqu7+CF3mYVyqZyR4xBd8zZB+vo0hkDfSRcaPWncHyo3kBS2
         AlFktulCCGT4p93ua9MRKZPMbEB2UK5bf1Ss+y67G9VLTgnBLW54hYOxn4jdmChovf95
         RdaON+LFZiJuo5RugjL5SXL5BHMREQ6vFBrAtJkms/qdQ9l9nSUoXtuQ06ZZBSJuaF3C
         kqElZQWDpIob7rB+aPQJhKOpwU7Cb+Wsn2bafDFZp4aTltjZpn+yiLmCRXuirLSebD8z
         Rqnz7S2TJQFz7Oq3RPjUfPApiwR99VUOExEL2XYKUzY3A9RRDZO/dZei2oxswP3iMd0i
         N3VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CYQ7zHWuw90s54E4c8nAL1qrZ3VomEm69kpr7+vqkaY=;
        b=cxr0aWqpCMbBNQlpUK91MKq2onlt0UEpyS2ScpkOD1JLEdsIV+jjaXqNsWuZdC6P1t
         tN1oRQX7DmxiSl6/cM6u5AwRBePGnzDJjkRY3Wdvl4DZB/nvrfcNXj+Y735KnCI0NrFO
         5Y8DeStwAwUjmvXRxBPwa6g/YGvpepIfIRH8oE1i8LE2LLN+E4zGx9qwOEOgw7eYZ3Ic
         L7Zt1N4D1x/5r68FwiA2i3a9v2YjVTER5ymYg+yvrggMR7o++eSTR53UBfUJFK8mSDoY
         mGZdhX9hFSZenuNK5gLLGYK/Lw5BI7dxMvA4qKv2XOvp3ZBwm5m79O5zcmbNmIEFoR0f
         Se+A==
X-Gm-Message-State: AGi0PuaHaN2Ar1ZfToNpO+6sUPy1Kf6esbUjSSFHvypmB8suvRtE7Tk2
	McD+/zi0dzAAiAtKtqOALJSTexf1keqKqYqXBKmqV/kd7t8=
X-Received: by 2002:a2e:b008:: with SMTP id y8mr2007817ljk.107.1585145533567;
 Wed, 25 Mar 2020 07:12:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200325072905.29066-1-debsoumyajit100@gmail.com>
 <20200325072905.29066-2-debsoumyajit100@gmail.com> <20200325123858.GB3454907@kroah.com>
 <CAMS7mKDKRoNEGZbaLf5pkLfU=e9RZp17DJx1TEyyJsWW18gvBw@mail.gmail.com> <20200325140828.GA3533410@kroah.com>
In-Reply-To: <20200325140828.GA3533410@kroah.com>
From: Soumyajit Deb <debsoumyajit100@gmail.com>
Date: Wed, 25 Mar 2020 19:42:01 +0530
Message-ID: <CAMS7mKCyF55VV0EA2T-Q2OesmyUBOS8obZnNQ=BTT-nVz+eHDw@mail.gmail.com>
Subject: Re: [PATCH 1/6] staging: hp100: Properly indent the multiline comment
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, perex@perex.cz, sbrivio@redhat.com
Content-Type: multipart/alternative; boundary="00000000000072185f05a1ae74b9"

--00000000000072185f05a1ae74b9
Content-Type: text/plain; charset="UTF-8"

Sorry,I didn't know that reply has to be on the mailing list too.
Will keep that in mind from now on.
Thank you.

On Wed, 25 Mar 2020 at 19:38, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Wed, Mar 25, 2020 at 06:15:42PM +0530, Soumyajit Deb wrote:
> > Okay, I will remove the blank line and send the v2 of this patch.
> > Thank You
>
> <snip>
>
> For some reason you sent this only to me, which is a bit rude to
> everyone else on the mailing list.  I'll be glad to respond if you
> resend it to everyone.
>
> thanks,
>
> greg k-h
>
>
>
>
> Great question, care to ask this on the XXXXXXXX mailing list and CC me?
> That
> way I can answer it in public to enable everyone else to know the answer,
> and
> let the search engines pick it up.
>
> Also, please read the following two links on why it is not good to
> directly email people:
>         http://www.arm.linux.org.uk/news/?newsitem=11
>         http://www.eyrie.org/~eagle/faqs/questions.html
>
> thanks,
>
> greg k-h
>

--00000000000072185f05a1ae74b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Sorry,I didn&#39;t know that reply has to be on the m=
ailing list too.</div><div>Will keep that in mind from now on.</div><div>Th=
ank you.<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Wed, 25 Mar 2020 at 19:38, Greg KH &lt;<a href=3D"mail=
to:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">On Wed, Mar 25, 20=
20 at 06:15:42PM +0530, Soumyajit Deb wrote:<br>
&gt; Okay, I will remove the blank line and send the v2 of this patch.<br>
&gt; Thank You<br>
<br>
&lt;snip&gt;<br>
<br>
For some reason you sent this only to me, which is a bit rude to<br>
everyone else on the mailing list.=C2=A0 I&#39;ll be glad to respond if you=
<br>
resend it to everyone.<br>
<br>
thanks,<br>
<br>
greg k-h<br>
<br>
<br>
<br>
<br>
Great question, care to ask this on the XXXXXXXX mailing list and CC me?=C2=
=A0 That<br>
way I can answer it in public to enable everyone else to know the answer, a=
nd<br>
let the search engines pick it up.<br>
<br>
Also, please read the following two links on why it is not good to<br>
directly email people:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://www.arm.linux.org.uk/news/?ne=
wsitem=3D11" rel=3D"noreferrer" target=3D"_blank">http://www.arm.linux.org.=
uk/news/?newsitem=3D11</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://www.eyrie.org/~eagle/faqs/que=
stions.html" rel=3D"noreferrer" target=3D"_blank">http://www.eyrie.org/~eag=
le/faqs/questions.html</a><br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div>

--00000000000072185f05a1ae74b9--

