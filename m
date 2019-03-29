X-GM-THRID: 6673507471560015872
X-Received: by 2002:a1c:2d4c:: with SMTP id t73mr180387wmt.21.1553824828395;
        Thu, 28 Mar 2019 19:00:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:9cc7:: with SMTP id f190ls118688wme.8.canary-gmail; Thu,
 28 Mar 2019 19:00:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzGobAhtmH+0/ZfWZ3g3dLnrjvfG4FkTy256M/Mb5gpxeGFWUMrRx2CJwEuJjWr819qz36C
X-Received: by 2002:a05:600c:218e:: with SMTP id e14mr206484wme.5.1553824827467;
        Thu, 28 Mar 2019 19:00:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553824827; cv=none;
        d=google.com; s=arc-20160816;
        b=ljpcJQfLryWDRXQwtomsCo1C9F6Bw5iD7vQR0xdXzzsLD+cbShEU0kZTJ0saRHD5l7
         wooBdLfLJYhDZR2qITwf3YZFkLZmqtjk/ad+gWWC/NVBKsG16/e77rCa19UEc003Zyz1
         f3gXIZpuY9er42gpBLFWAquRQHD0LwJ6/g9AjpqVqwJHHHeEFnjoQLvelDA4U4DlP8pW
         uHIZ9SSE/fUg8nd+RviujFieXJ/KXjmwzuVbQmqeiHBky4L1/24bOUmndr0kmpRF1GlZ
         mwalzsVTz2HT8VWE18r7F+f9Sfj2jkq/5wAv57bJ4bkRKrKbbJB7uT3615l1P0nqC2D3
         931Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=s9IlcxegNJDrZwYL+7YSg3qQP1u/gOLvb1OiDwS7MEQ=;
        b=eCvf98H16XHyEHkHBEgfwtaPzAOZIL67u4Bv/l4d8b+LcLme7WI5vVAw7VbS6WFB25
         wN0AanODqJC4pOuGTJfnSnyJI8FCQQUv5LVySZPxlLV/5azFllUJcoAE4Fs9IDGkQpAz
         9kmu1gA01u/biNij6G59u8o+q58vTmKiwDhLX3bG6J5VJX+9hT7oxBPW4STINxPehemA
         7Akn3MsifZ39+uhqkxdOU/L9dr9a1re5axW2dvTjn17RFwBikvMXmvXyoXvOFXNMQVHj
         smp/7uIhcqtu/yHzqnwUhHfVpVuWwD/GoTsZAtzx9VL1+XsaUcEhFt4s6Q4hd3YFMjPg
         KoaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XNU4aswt;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id n5si55031wrj.0.2019.03.28.19.00.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 19:00:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XNU4aswt;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x543.google.com with SMTP id d1so649680edd.13
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 19:00:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=s9IlcxegNJDrZwYL+7YSg3qQP1u/gOLvb1OiDwS7MEQ=;
        b=XNU4aswtVyVaynczQ20gSKte3OWxkOvRH3MuAMHWT7y+bl/vJ02PeLwhL5Ph04zTDg
         8ueP+SQLGVWErIgZOi7BRgg4RFXq9XjECC8ReI04SwTWCrP+UihwzJ92EwVmwUq0Lzpo
         K/EYi1fG5zLe7Hdw3iUJn7sl8Klf/qYVuj46dolWdNFHhSk+41zOxHcfT2eerNHKoIfN
         i2SM9rLegHXERhBiiFjmgMAHlNlDQvTCXLE2d+K4EBvRD8Bc4Pk+Z4iNKr4/Wv0ivLjv
         oEMma5mviXg+TvAZ+rmoZ71PZNhdovDE0oZm8X4vi2OnKZrjjTLmpB6emiS6y/UJWyNp
         K9Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=s9IlcxegNJDrZwYL+7YSg3qQP1u/gOLvb1OiDwS7MEQ=;
        b=Ud8ZgoIHxcYkFftQzPfJHob2+TaBj0YYk1BQ/NjAAHoOijVbnh1f3zscW9fc4NEAki
         k7p+pv5CTV3sSUwG9tN8HUfWC1ukDj620jEz4vTQWYu0ZHJA4EUvd4lNUYAVzCZ4lV64
         +ztVHkoPhH+bJFfmGDqRfXH5rPoV/1/8DHQ4HXIrFDBEt5ONX+vd/U6KlS2ygwocwP6y
         Q6MxMZ+rwX6818ATlOUMAySt2utuc+uxAVZJS8YVZFxZBdGUmYEM3Jem3NwiGIZilAzU
         2uH89TDWSii7QGT/bpFpxOjJvBFnQ4B6NHLNxA92snfCKRSTfre08akgyeqJm6x445pJ
         1YqQ==
X-Gm-Message-State: APjAAAWUskC+fi+XIC0zrDPD2En8A79pbDzs6iN3QKWajMujwyawjvoP
	zjq+MrjaoXvnTGvh9Su6rM7uN9tloc39uI3nlJmLtg==
X-Received: by 2002:a17:906:c2d0:: with SMTP id ch16mr11864198ejb.197.1553824827188;
 Thu, 28 Mar 2019 19:00:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190328181705.32572-1-sanjana99reddy99@gmail.com> <alpine.DEB.2.21.1903281947070.2760@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903281947070.2760@hadrien>
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Date: Fri, 29 Mar 2019 07:30:15 +0530
Message-ID: <CAO-bXGDRrh4e=MYnbVisuzJ3TR2B7jBSSocrOGCF-o7dWqdWZQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: Avoid unnecessary
 braces around else.
To: Julia Lawall <Julia.Lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000de281105853208f9"

--000000000000de281105853208f9
Content-Type: text/plain; charset="UTF-8"

On Fri, 29 Mar 2019, 00:17 Julia Lawall, <julia.lawall@lip6.fr> wrote:

>
>
> On Thu, 28 Mar 2019, Sanjana Sanikommu wrote:
>
> > Remove unnecessary brace around else statement.
>
> The braces are indeed unnecessary, but there is no else in this code.
>

   I will change to "if".

    Thank you
     Sanjana

>
> julia
>
>
> > Issue found using checkpatch.pl
> >
> > WARNING: braces {} are not necessary for single statement blocks
> >
> > Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> > ---
> >  drivers/staging/wilc1000/host_interface.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/wilc1000/host_interface.c
> b/drivers/staging/wilc1000/host_interface.c
> > index a10c31bce07f..150ba033198f 100644
> > --- a/drivers/staging/wilc1000/host_interface.c
> > +++ b/drivers/staging/wilc1000/host_interface.c
> > @@ -1399,9 +1399,8 @@ int wilc_set_join_req(struct wilc_vif *vif, u8
> *bssid, const u8 *ies,
> >       if (ies) {
> >               conn_info->req_ies_len = ies_len;
> >               conn_info->req_ies = kmemdup(ies, ies_len, GFP_KERNEL);
> > -             if (!conn_info->req_ies) {
> > +             if (!conn_info->req_ies)
> >                       return -ENOMEM;
> > -             }
> >       }
> >
> >       result = wilc_send_connect_wid(vif);
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20190328181705.32572-1-sanjana99reddy99%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--000000000000de281105853208f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Fri, 29 Mar 2019, 00:17 Julia Lawall, &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><br>
<br>
On Thu, 28 Mar 2019, Sanjana Sanikommu wrote:<br>
<br>
&gt; Remove unnecessary brace around else statement.<br>
<br>
The braces are indeed unnecessary, but there is no else in this code.<br></=
blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">=C2=A0=
 =C2=A0I will change to &quot;if&quot;.</div><div dir=3D"auto"><br></div><d=
iv dir=3D"auto">=C2=A0 =C2=A0 Thank you=C2=A0</div><div dir=3D"auto">=C2=A0=
 =C2=A0 =C2=A0Sanjana</div><div dir=3D"auto"><div class=3D"gmail_quote"><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">
<br>
julia<br>
<br>
<br>
&gt; Issue found using <a href=3D"http://checkpatch.pl" rel=3D"noreferrer n=
oreferrer" target=3D"_blank">checkpatch.pl</a><br>
&gt;<br>
&gt; WARNING: braces {} are not necessary for single statement blocks<br>
&gt;<br>
&gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"mailto:sanjana99reddy9=
9@gmail.com" target=3D"_blank" rel=3D"noreferrer">sanjana99reddy99@gmail.co=
m</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/wilc1000/host_interface.c | 3 +--<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/stagi=
ng/wilc1000/host_interface.c<br>
&gt; index a10c31bce07f..150ba033198f 100644<br>
&gt; --- a/drivers/staging/wilc1000/host_interface.c<br>
&gt; +++ b/drivers/staging/wilc1000/host_interface.c<br>
&gt; @@ -1399,9 +1399,8 @@ int wilc_set_join_req(struct wilc_vif *vif, u8 *=
bssid, const u8 *ies,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (ies) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0conn_info-&gt;re=
q_ies_len =3D ies_len;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0conn_info-&gt;re=
q_ies =3D kmemdup(ies, ies_len, GFP_KERNEL);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!conn_info-&gt;re=
q_ies) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!conn_info-&gt;re=
q_ies)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0return -ENOMEM;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0result =3D wilc_send_connect_wid(vif);<br>
&gt; --<br>
&gt; 2.17.1<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@goog=
legroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@g=
ooglegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20190328181705.32572-1-sanjana99reddy99%40=
gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.g=
oogle.com/d/msgid/outreachy-kernel/20190328181705.32572-1-sanjana99reddy99%=
40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/=
d/optout</a>.<br>
&gt;<br>
</blockquote></div></div></div>

--000000000000de281105853208f9--

