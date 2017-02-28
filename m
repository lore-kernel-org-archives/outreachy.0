X-GM-THRID: 6392087189982806016
X-Received: by 10.13.220.198 with SMTP id f189mr646339ywe.121.1488286684092;
        Tue, 28 Feb 2017 04:58:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.34 with SMTP id n31ls916747ota.4.gmail; Tue, 28 Feb
 2017 04:58:02 -0800 (PST)
X-Received: by 10.129.80.11 with SMTP id e11mr655360ywb.133.1488286682266;
        Tue, 28 Feb 2017 04:58:02 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x233.google.com (mail-it0-x233.google.com. [2607:f8b0:4001:c0b::233])
        by gmr-mx.google.com with ESMTPS id b188si1958269ite.3.2017.02.28.04.58.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 04:58:02 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::233 as permitted sender) client-ip=2607:f8b0:4001:c0b::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::233 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x233.google.com with SMTP id 68so1732869itg.0
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 04:58:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ExR9bqMR3LfEQvWlJmgPwllYN1SzwKEGkMgcEFjSjT8=;
        b=aXV3uYzG/K+m3vkwUxjQWbR3B1qsBq+VDxkb2adcxL+axRe4YdupwzwYwmFH8Zztuq
         UhXqiKBIsfcerSVNLeFWs80qPSp1AYJzQ9gCPd8Z8c85fSSOTlEXfRNfhmedVEHjWDiO
         7/tE3oCecLY1EdDU48Xhntu97n5Mve/YoVDlMfNm5JDsZaXAnDskUpxd9kkGMJsiXRdo
         tEvpj7dxULeo7KmdMb3g97g1y5o77MCtbl7s9V2Gf+2ZvPi/d9Tj32WM3HuyzfLZ+lMB
         vrHNXy7Z7ysCurObv76VbyT1eZQ7qC/rK8PqplL7cfJDDpX3/+SKcI1cy7o0lDVm1aaL
         NnTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ExR9bqMR3LfEQvWlJmgPwllYN1SzwKEGkMgcEFjSjT8=;
        b=DxTdR3x5RZNsL3b5/BZX2SoJSktmrikV4U+IKw6Z6L1SeOZIzJfRMqEkr8sl6juLhI
         GQXo2V9Sm6RDEFCwae46OyUQ1PYDJ+Fu3m0vexwUVcVxgEB3NsyAAUnoFFdA64wzVniO
         +DjZRlutHRhXywRSK3FepgLjwCEyzlfCoJwuWJAUjYiSc8u6qG08rFL8oOzd1sMz9YS9
         MAm83aGJaFnH/f2X4vI77f39vGdGlUKFPJhhknvZXfVWfOdnUDw2mQxZttsOM6eMT7bF
         jgYmDA1Pi/lhxqHa7fWGOb+lnm4CHAlV/fjqzFcup7jKAuKbIb+bhvp7zBitEkpOguRv
         IecA==
X-Gm-Message-State: AMke39krlMsHwGWv2xHcdBAcG0OGN33gWHVLNDnJqorbkFX/cpHYkEz5mQ2msL4OBQ0JFmXdJ1B6feNNgc0bAA==
X-Received: by 10.36.64.198 with SMTP id n189mr2535036ita.6.1488286682032;
 Tue, 28 Feb 2017 04:58:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Tue, 28 Feb 2017 04:57:31 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1702281118570.3056@hadrien>
References: <CAOCi2DEcHAT-kGakEWfuO7xmYQ5OSK-MTxVmuLfPcAwkapx-yg@mail.gmail.com>
 <alpine.DEB.2.20.1702281118570.3056@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Tue, 28 Feb 2017 18:27:31 +0530
Message-ID: <CAOCi2DGfGYUfur8X3A7zqpoFpwfjM92BOmHg1uveLkvUdFVtNw@mail.gmail.com>
Subject: Re: [Outreachy kernel] Coccinelle Challenge problem 6
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1134f06201caa1054996bf11

--001a1134f06201caa1054996bf11
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 28, 2017 at 3:49 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Tue, 28 Feb 2017, Gargi Sharma wrote:
>
> > Hi,
> > Here's my Coccinelle script for problem 6.
> >
> > @a@
> > expression pos, n, mem;
> > type t;
> > identifier var;
> > iterator name list_for_each_entry, list_for_each;
> > @@
> >
> > - list_for_each(pos, n)
> > + list_for_each_entry(var, n, mem)
> >   {
> >   ... when != var
>

> I think you want when != pos here too?
Yeah, I do. I'll correct that. What I also want to do is remove the
declaration for "pos"
if it not being used in the function anywhere once list_for_each and
list_entry has
been removed. I'm drawing a blank as to how to approach that. Any
suggestions that
you might have?

thanks,
gargi


>
> julia
>
> > - var = list_entry(pos, t, mem);
> >   ... when != pos
> >   }
> >
> > Thanks,
> > Gargi
> >
> > --
> > You received this message because you are subscribed to the Google
Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://
groups.google.com/d/msgid/outreachy-kernel/CAOCi2DEcHAT-kGakEWfuO7x
> > mYQ5OSK-MTxVmuLfPcAwkapx-yg%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >
>
> --
> You received this message because you are subscribed to the Google Groups
"outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1702281118570.3056%40hadrien
.
> For more options, visit https://groups.google.com/d/optout.

--001a1134f06201caa1054996bf11
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Tue, Feb 28, 2017 at 3:49 PM, Julia Lawall &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br>&gt=
;<br>&gt;<br>&gt;<br>&gt; On Tue, 28 Feb 2017, Gargi Sharma wrote:<br>&gt;<=
br>&gt; &gt; Hi,<br>&gt; &gt; Here&#39;s my Coccinelle script for problem 6=
.<br>&gt; &gt;<br>&gt; &gt; @a@<br>&gt; &gt; expression pos, n, mem;<br>&gt=
; &gt; type t;<br>&gt; &gt; identifier var;<br>&gt; &gt; iterator name list=
_for_each_entry, list_for_each;<br>&gt; &gt; @@<br>&gt; &gt;<br>&gt; &gt; -=
 list_for_each(pos, n)<br>&gt; &gt; + list_for_each_entry(var, n, mem)<br>&=
gt; &gt; =C2=A0 {<br>&gt; &gt; =C2=A0 ... when !=3D var<br>&gt;<div><br>&gt=
; I think you want when !=3D pos here too?<div>Yeah, I do. I&#39;ll correct=
 that. What I also want to do is remove the declaration for &quot;pos&quot;=
=C2=A0</div><div>if it not being used in the function anywhere once list_fo=
r_each and list_entry has</div><div>been removed. I&#39;m drawing a blank a=
s to how to approach that. Any suggestions that</div><div>you might have?</=
div><div><br></div><div>thanks,</div><div>gargi</div><div><br></div><div><b=
r>&gt;<br>&gt; julia<br>&gt;<br>&gt; &gt; - var =3D list_entry(pos, t, mem)=
;<br>&gt; &gt; =C2=A0 ... when !=3D pos<br>&gt; &gt; =C2=A0 }<br>&gt; &gt;<=
br>&gt; &gt; Thanks,<br>&gt; &gt; Gargi<br>&gt; &gt;<br>&gt; &gt; --<br>&gt=
; &gt; You received this message because you are subscribed to the Google G=
roups<br>&gt; &gt; &quot;outreachy-kernel&quot; group.<br>&gt; &gt; To unsu=
bscribe from this group and stop receiving emails from it, send an<br>&gt; =
&gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups=
.com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>&gt; &gt; To po=
st to this group, send email to <a href=3D"mailto:outreachy-kernel@googlegr=
oups.com">outreachy-kernel@googlegroups.com</a>.<br>&gt; &gt; To view this =
discussion on the web visithttps://<a href=3D"http://groups.google.com/d/ms=
gid/outreachy-kernel/CAOCi2DEcHAT-kGakEWfuO7x">groups.google.com/d/msgid/ou=
treachy-kernel/CAOCi2DEcHAT-kGakEWfuO7x</a><br>&gt; &gt; mYQ5OSK-MTxVmuLfPc=
Awkapx-yg%<a href=3D"http://40mail.gmail.com">40mail.gmail.com</a>.<br>&gt;=
 &gt; For more options, visit <a href=3D"https://groups.google.com/d/optout=
">https://groups.google.com/d/optout</a>.<br>&gt; &gt;<br>&gt; &gt;<br>&gt;=
<br>&gt; --<br>&gt; You received this message because you are subscribed to=
 the Google Groups &quot;outreachy-kernel&quot; group.<br>&gt; To unsubscri=
be from this group and stop receiving emails from it, send an email to <a h=
ref=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com">outreachy-ke=
rnel+unsubscribe@googlegroups.com</a>.<br>&gt; To post to this group, send =
email to <a href=3D"mailto:outreachy-kernel@googlegroups.com">outreachy-ker=
nel@googlegroups.com</a>.<br>&gt; To view this discussion on the web visit =
<a href=3D"https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.=
20.1702281118570.3056%40hadrien">https://groups.google.com/d/msgid/outreach=
y-kernel/alpine.DEB.2.20.1702281118570.3056%40hadrien</a>.<br>&gt; For more=
 options, visit <a href=3D"https://groups.google.com/d/optout">https://grou=
ps.google.com/d/optout</a>.</div></div></div>

--001a1134f06201caa1054996bf11--

