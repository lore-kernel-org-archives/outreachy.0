X-GM-THRID: 6810513252473110528
X-Received: by 2002:a05:6830:15cf:: with SMTP id j15mr2442433otr.292.1585833513182;
        Thu, 02 Apr 2020 06:18:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:fd02:: with SMTP id b2ls1442470oii.2.gmail; Thu, 02 Apr
 2020 06:18:32 -0700 (PDT)
X-Google-Smtp-Source: APiQypJxrumBFpyewyMzoClwjXxIFG8FFbBDkrhZGqVrvih7M0mSEMNuLCQ1av96ZG7cJojF2+nT
X-Received: by 2002:a05:6808:649:: with SMTP id z9mr1256250oih.11.1585833512060;
        Thu, 02 Apr 2020 06:18:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585833512; cv=none;
        d=google.com; s=arc-20160816;
        b=kEki28RAYcdpR+AL6bM1vv3V3zbOF27/+y59sxFBUe7qMEtiDdhmd1Lhz2dbWylLyE
         sQEesSXhwfe4w5n2j2aLiya/eddt6apDH4yfPPHbdSr83RMMfQmMrT6wg2H9Y4Vk4upJ
         73YfczAoJnv7L+VSCF7JsKSrrR01KCbTQayQHNJuBj4oXEAlzTFVEDmlBIJhsvcqTKqv
         +5vUXQ9cn7wpxGl8k+9EJtmNhOLQyDGPLnncZ4mQTzdzI9Q6SPuU5EXGHvkMZ0m+L+9d
         nPg3enrczEhgySFusYlAVmtLTkCvSDaSJ7OPX/tZiGcGmgvjdFBd6Ml6sdNFD7ejNzR4
         S4ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Rx858t+dTGPln7+W8KHp+iUBl098mVdBBsA9bdtjvEM=;
        b=D5t6UJUWpEV2HjKrSaGh4/7CUAI/qxRSGVPk7wVdVvZpHLVB9+xM4MciGPAOPxUvQs
         8iQbkddYQ8lrgTmUiXjujv0CSnP+r3QFW7xm1V2olay2cR2ZChzQKGxaY59nf/qIkoNk
         kmj61YEXf3h/ux5Zj2NCEmzAg8O0Rly3Tl5cke/TGm06HXd7ReVvlc6/gTu5vrBwTQHG
         psERRGy1VvgUINC2zFfFs3feO4OSqOi/P/2tEMj1EPg2G08ucmCLZ3wXZs0nfhy/U0wT
         TKmF/BLZtGo+bbWywXAT0sm6Hf2SLXQ2+GcoC2/sLHSRvncET8WVNgTYShic+K5LLhfh
         GZiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=npuCEbcv;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id n5si436472otf.3.2020.04.02.06.18.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 06:18:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=npuCEbcv;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe43.google.com with SMTP id y138so2260560vsy.0
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2020 06:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Rx858t+dTGPln7+W8KHp+iUBl098mVdBBsA9bdtjvEM=;
        b=npuCEbcveW4UUcIC3Ooa9t6dE3d3zCbN5Z3N4NuMcfjdFabJZ+Kmeb2cZl/E7yKX40
         auz/oJymbjOunyZKci450fkt7/zoxSLQi9GnHeF09Lx5j66NkxXpQftrviyMWXXNB1r+
         2ZnAM0mfJLX6ibF/PC5T2PDC9Vk2KkfPCuKlS02sPbtNXUqLKQwBDPZhahoqcN/zQiFS
         FmaDtbh3gadqzYZqRHFffNIgIhj9ukWayS9/mSl9uQyxK/Kv/lGKBUc9UDBiLv3juocJ
         MOPGZAGqxrx8g0feFo35OachmwEvtUux9/K6mTciBO2OtZOnmTe2vkV7K3lnWyXcFkN+
         +Otg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Rx858t+dTGPln7+W8KHp+iUBl098mVdBBsA9bdtjvEM=;
        b=IlUeVCe5McKAeBi2ZNfHBqdSeyU/sJGakEQL5v/zMXPwBEArmtS0vGqeeDOKdiI5nX
         hWKODkoHktK2xJMGMsAwflUF6gSuJG8AmNjlR/yviJQdJIP/6PVvIKb5Fa6+KYc6Ew91
         v9zEto7utKhvn1Y8TeEjKyk3srwKWHwaFsAXpMgdZ4syfkEM+k+tbRHM0pd1jrPiqfjJ
         9nSddoOGgTif9n506cjTH49yia1SH8rCzFyyIbRku39QevD108Q4ECo2oCi7uvfifqNO
         fktsaenqZ4eeUTXGMQZMMQNnOFg34coYCHeWjOAdiKkSQjYzFPlIFdHw8S2QmbBamYOw
         x0ag==
X-Gm-Message-State: AGi0PuaPUr8AWzxQ8OztOzsCEdBlUK9sse6ZQMXu5wdB707/Y1b2JqhV
	kiWV5Kq1mVSh2tfkytDvCfBx+R2kIKmkaUtjmMM=
X-Received: by 2002:a67:2ec6:: with SMTP id u189mr2327550vsu.200.1585833511505;
 Thu, 02 Apr 2020 06:18:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200331230940.GA12376@siyah2> <20200401055650.GA1903894@kroah.com>
 <CAL9LiB+PSd68yRfkrbr9yHkShzuPceJHosvswETO1-w1zgkqFw@mail.gmail.com> <alpine.DEB.2.21.2004021442590.3014@hadrien>
In-Reply-To: <alpine.DEB.2.21.2004021442590.3014@hadrien>
From: Gokce Kuler <gokcekuler@gmail.com>
Date: Thu, 2 Apr 2020 16:18:05 +0300
Message-ID: <CAL9LiB+u+xxxrPzFEgrOTznojBrium5WhE+Ofiig5Vqs8NDyrA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: gasket: using octal
 permissions instead of symbolic permissions
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, 
	Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>, benchan@chromium.org
Content-Type: multipart/alternative; boundary="00000000000020524505a24ea352"

--00000000000020524505a24ea352
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Can I edit like #define GASKET_SYSFS_RO(_name,_permission_, _show_function,
_attr_type)    ?

Julia Lawall <julia.lawall@inria.fr>, 2 Nis 2020 Per, 15:43 tarihinde =C5=
=9Funu
yazd=C4=B1:

> On Thu, 2 Apr 2020, Gokce Kuler wrote:
>
> > checkpatch.pl did not show any warning about this. Can I add the
> permission head to __ATTR_RO() ?
>
> What do you mean by permission head?
>
> julia
>
> >
> > Greg KH <gregkh@linuxfoundation.org>, 1 Nis 2020 =C3=87ar, 08:56 tarihi=
nde
> =C5=9Funu yazd=C4=B1:
> >       On Wed, Apr 01, 2020 at 02:09:40AM +0300, Gokce Kuler wrote:
> >       > Since octal permissions is preffered to symbolic permissions,
> >       > octal permissions is used.Problem found checkpatch.pl.
> >       >
> >       > Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> >       > ---
> >       >  drivers/staging/gasket/gasket_sysfs.h | 2 +-
> >       >  1 file changed, 1 insertion(+), 1 deletion(-)
> >       >
> >       > diff --git a/drivers/staging/gasket/gasket_sysfs.h
> b/drivers/staging/gasket/gasket_sysfs.h
> >       > index 1d0eed6..28dc422 100644
> >       > --- a/drivers/staging/gasket/gasket_sysfs.h
> >       > +++ b/drivers/staging/gasket/gasket_sysfs.h
> >       > @@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {
> >       >
> >       >  #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)
>                \
> >       >       {
>             \
> >       > -             .attr =3D __ATTR(_name, S_IRUGO, _show_function,
> NULL),          \
> >       > +             .attr =3D __ATTR(_name, 0444, _show_function,
> NULL),          \
> >
> >       Why not use __ATTR_RO() instead?
> >
> >       thanks,
> >
> >       greg k-h
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> >
> https://groups.google.com/d/msgid/outreachy-kernel/CAL9LiB%2BPSd68yRfkrbr=
9yHkShzuPceJHosvswETO1-w1zgkqFw%40mail.gmail.com
> .
> >
> >

--00000000000020524505a24ea352
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Can I edit like #define GASKET_SYSFS_RO(_name,_permission_=
, _show_function, _attr_type)=C2=A0 =C2=A0 ?</div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">Julia Lawall &lt;<a href=3D"mai=
lto:julia.lawall@inria.fr">julia.lawall@inria.fr</a>&gt;, 2 Nis 2020 Per, 1=
5:43 tarihinde =C5=9Funu yazd=C4=B1:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">On Thu, 2 Apr 2020, Gokce Kuler wrote:<br>
<br>
&gt; <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=3D"_blank">=
checkpatch.pl</a> did not show any warning about this. Can I add the permis=
sion head to __ATTR_RO() ?=C2=A0<br>
<br>
What do you mean by permission head?<br>
<br>
julia<br>
<br>
&gt;<br>
&gt; Greg KH &lt;<a href=3D"mailto:gregkh@linuxfoundation.org" target=3D"_b=
lank">gregkh@linuxfoundation.org</a>&gt;, 1 Nis 2020 =C3=87ar, 08:56 tarihi=
nde =C5=9Funu yazd=C4=B1:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Wed, Apr 01, 2020 at 02:09:40AM +0300, Go=
kce Kuler wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Since octal permissions is preffered to=
 symbolic permissions,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; octal permissions is used.Problem found=
 <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=3D"_blank">chec=
kpatch.pl</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Signed-off-by: Gokce Kuler &lt;<a href=
=3D"mailto:gokcekuler@gmail.com" target=3D"_blank">gokcekuler@gmail.com</a>=
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 drivers/staging/gasket/gasket_sys=
fs.h | 2 +-<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 1 file changed, 1 insertion(+), 1=
 deletion(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; diff --git a/drivers/staging/gasket/gas=
ket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; index 1d0eed6..28dc422 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --- a/drivers/staging/gasket/gasket_sys=
fs.h<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +++ b/drivers/staging/gasket/gasket_sys=
fs.h<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -75,7 +75,7 @@ struct gasket_sysfs_a=
ttribute {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 #define GASKET_SYSFS_RO(_name, _s=
how_function, _attr_type)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0{=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0.attr =3D __ATTR(_name, S_IRUGO, _show_function, NULL),=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0.attr =3D __ATTR(_name, 0444, _show_function, NULL),=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Why not use __ATTR_RO() instead?<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0thanks,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0greg k-h<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>
&gt; To view this discussion on the web visit<br>
&gt; <a href=3D"https://groups.google.com/d/msgid/outreachy-kernel/CAL9LiB%=
2BPSd68yRfkrbr9yHkShzuPceJHosvswETO1-w1zgkqFw%40mail.gmail.com" rel=3D"nore=
ferrer" target=3D"_blank">https://groups.google.com/d/msgid/outreachy-kerne=
l/CAL9LiB%2BPSd68yRfkrbr9yHkShzuPceJHosvswETO1-w1zgkqFw%40mail.gmail.com</a=
>.<br>
&gt;<br>
&gt;</blockquote></div>

--00000000000020524505a24ea352--

