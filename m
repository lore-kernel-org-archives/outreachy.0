X-GM-THRID: 6389618960460939264
X-Received: by 10.200.34.66 with SMTP id p2mr7841421qtp.8.1487702642569;
        Tue, 21 Feb 2017 10:44:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.218 with SMTP id v87ls2916835iov.10.gmail; Tue, 21 Feb
 2017 10:44:01 -0800 (PST)
X-Received: by 10.99.208.69 with SMTP id s5mr9845502pgi.38.1487702641800;
        Tue, 21 Feb 2017 10:44:01 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x235.google.com (mail-it0-x235.google.com. [2607:f8b0:4001:c0b::235])
        by gmr-mx.google.com with ESMTPS id d20si2049104itc.1.2017.02.21.10.44.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 10:44:01 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::235 as permitted sender) client-ip=2607:f8b0:4001:c0b::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::235 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x235.google.com with SMTP id 203so120633432ith.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Feb 2017 10:44:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=m4tNvLMiXx1zSoyacUY2sWMWnVlVOWQmaBNRcpyt/YU=;
        b=fiIoSyZ766xnjvKMd4Hj6AJpt3HUKF5hZEzXXRY17ykldNmJ9fJqAuliiMO00Gz3KF
         vph7YQCimGXY3BgqU4bEcqfxJ7Z85BCn5mLs/rDVwwln0LI0hgCsdvvZDOo35i0vRMja
         PoZTwksYBR9OGalqh+dpg/WGPZ5kYEhyM4/CKeJ0pn3qIzGDeRjbENcfSM2URc+o2WQT
         c/VVQD5ThOr+0cf+Wza0/yBYROdikEI0X4okmlvdI6Ldf4oobgRms3Zdp216FLIfAbQC
         BpCGH3CR8MHNLThn3YCsCHcRIFUXJ6Wn85V0yhQzpj8/K0HXOSrSmm4SW9q7TsExXUzj
         yqYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=m4tNvLMiXx1zSoyacUY2sWMWnVlVOWQmaBNRcpyt/YU=;
        b=LZvo7opF1msnJLFqEufSuOF5BIn6mgPgnDkOOkyInje/OL8hUoyyP5FCJhzfMNDh2u
         /sXqCdwHLNrf0Y6mzriceWTM3WXVXhhSd7ywaWxuPjNCAZ4wzKBI1fcz3On/vBth9+ae
         QyHXbjOA0gJlsK9GnXsOaafyciUeV/03S6tzTbJqZ1mDF7/eZwN+jRj4ciQh3RmnB09h
         R9lZUqD5y6Qhw2z4UwTKJmwozHu+tDGQ/FrYbh+wkjrnh34/IdvfwUXyTJfT0A9jgy9k
         4ZApUbiUCUCvZvZpBzNHZwu5Y+dJXykBSsi1byizoxQCdM+VFjxVey+zz8eGgmwYCR0y
         KrVQ==
X-Gm-Message-State: AMke39mkMckR/ujtS7or0TQYI7XG2kk51xnDOeAjSaHz40az+BsrHoeArJozbpkyKxhBRqvezvaBo8KwKHvwXQ==
X-Received: by 10.107.27.82 with SMTP id b79mr20307079iob.218.1487702641519;
 Tue, 21 Feb 2017 10:44:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Tue, 21 Feb 2017 10:43:31 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1702211850270.3448@hadrien>
References: <CAOCi2DHM+X0ksQZ2ZBXPkbJu5uv5kerHRpaJaFEG8C36CA72jA@mail.gmail.com>
 <alpine.DEB.2.20.1702211850270.3448@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Wed, 22 Feb 2017 00:13:31 +0530
Message-ID: <CAOCi2DGCD8KvJ6qPyNHh5g1oNKWW+z8dov2dnT1XRO-4Z0y5bQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Coccinelle Challenge Problem 2
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a11409bf47ab09f05490ec3f8

--001a11409bf47ab09f05490ec3f8
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 21, 2017 at 11:24 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Tue, 21 Feb 2017, Gargi Sharma wrote:
>
> > Hi,
> >
> > Here's my coccinelle script to parentheses around the right hand side
of an
> > assignment.
> >
> > @@ expression e, e1, e2; @@
> > e =
> > -(
> >         e1 + e2
> > -)
> >
> > @@ expression e, e1, e2; @@
> > e =
> > -(
> >         e1 - e2
> > -)
> >
> > @@ expression e, e1;
> > contant c; @@
> > e =
> > -(
> >         e1 << c
> > -)
> >
> > @@ expression e, e1;
> > constant c; @@
> > e =
> > -(
> >         e1 >> c
> > -)
>
> It looks reasonable.  I don't think you need to restrict the right side of
> >> and << to constants, though.
>
> Also, the whole thing can actually be much shorter, because there is a
> "binary operator" metavariable type.  So you could say:
>


> @@
> binary operator bop = {+,-,>>,<<};
> expression e, e1, e2;
> @@

Awesome! This makes the patch so much more concise.

>
> e =
> - (
>   e1 bop e2
> - )
>
> Although, your version is probably more readable, because "bop" doesn't
> really look like a binary operator.
>
> Did you try, eg
>
> e =
> - (e1 + e2)
> + e1 + e2
>
> ?  This is not a good solution, but it could be good to think about why.

I tried this after reading this mail :). I think it's not a good solution
because
of the false positives that it will give. Also for the cases where there's
no
space around '+' will be replaced as well which is not the intended use case
for the patch. And all the cases where we have shifted the operands to avoid
the 80 character limit, will all be moved on the same line.

gargi
>
> julia
>
> > thanks,
> > gargi
> >
> > --
> > You received this message because you are subscribed to the Google
Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com
/d/msgid/outreachy-kernel/CAOCi2DHM%2BX0ksQZ2ZBXPk
> > bJu5uv5kerHRpaJaFEG8C36CA72jA%40mail.gmail.com.
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
> To view this discussion on the web visit https://groups.google.com/d/ms
gid/outreachy-kernel/alpine.DEB.2.20.1702211850270.3448%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

--001a11409bf47ab09f05490ec3f8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Tue, Feb 21, 2017 at 11:24 PM, Julia Lawall &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>=
&gt; wrote:<br>&gt;<br>&gt;<br>&gt;<br>&gt; On Tue, 21 Feb 2017, Gargi Shar=
ma wrote:<br>&gt;<br>&gt; &gt; Hi,<br>&gt; &gt;<br>&gt; &gt; Here&#39;s my =
coccinelle script to parentheses around the right hand side of an<br>&gt; &=
gt; assignment.<br>&gt; &gt;<br>&gt; &gt; @@ expression e, e1, e2; @@ =C2=
=A0<br>&gt; &gt; e =3D =C2=A0<br>&gt; &gt; -( =C2=A0<br>&gt; &gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 e1 + e2<br>&gt; &gt; -) =C2=A0<br>&gt; &gt; =C2=A0<br>=
&gt; &gt; @@ expression e, e1, e2; @@ =C2=A0<br>&gt; &gt; e =3D =C2=A0<br>&=
gt; &gt; -( =C2=A0<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 e1 - e2 =C2=A0<=
br>&gt; &gt; -)<br>&gt; &gt; =C2=A0<br>&gt; &gt; @@ expression e, e1;<br>&g=
t; &gt; contant c; @@ =C2=A0<br>&gt; &gt; e =3D =C2=A0<br>&gt; &gt; -( =C2=
=A0<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 e1 &lt;&lt; c =C2=A0<br>&gt; &=
gt; -)<br>&gt; &gt; =C2=A0<br>&gt; &gt; @@ expression e, e1;<br>&gt; &gt; c=
onstant c; @@ =C2=A0<br>&gt; &gt; e =3D =C2=A0<br>&gt; &gt; -( =C2=A0<br>&g=
t; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 e1 &gt;&gt; c =C2=A0<br>&gt; &gt; -)<br=
>&gt;<br>&gt; It looks reasonable.=C2=A0 I don&#39;t think you need to rest=
rict the right side of<br>&gt; &gt;&gt; and &lt;&lt; to constants, though.<=
br>&gt;<br>&gt; Also, the whole thing can actually be much shorter, because=
 there is a<br>&gt; &quot;binary operator&quot; metavariable type.=C2=A0 So=
 you could say:<br>&gt;<div><br></div><div><br>&gt; @@<br>&gt; binary opera=
tor bop =3D {+,-,&gt;&gt;,&lt;&lt;};<br>&gt; expression e, e1, e2;<br>&gt; =
@@<br><br>Awesome! This makes the patch so much more concise.<br><br>&gt;<b=
r>&gt; e =3D<br>&gt; - (<br>&gt; =C2=A0 e1 bop e2<br>&gt; - )<br>&gt;<br>&g=
t; Although, your version is probably more readable, because &quot;bop&quot=
; doesn&#39;t<br>&gt; really look like a binary operator.<br>&gt;<br>&gt; D=
id you try, eg<br>&gt;<br>&gt; e =3D<br>&gt; - (e1 + e2)<br>&gt; + e1 + e2<=
br>&gt;<br>&gt; ?=C2=A0 This is not a good solution, but it could be good t=
o think about why.<br><br>I tried this after reading this mail :). I think =
it&#39;s not a good solution because<div>of the false positives that it wil=
l give. Also for the cases where there&#39;s no</div><div>space around &#39=
;+&#39; will be replaced as well which is not the intended use case</div><d=
iv>for the patch. And all the cases where we have shifted the operands to a=
void</div><div>the 80 character limit, will all be moved on the same line.<=
/div><div><br>gargi<br>&gt;<br>&gt; julia<br>&gt;<br>&gt; &gt; thanks,<br>&=
gt; &gt; gargi<br>&gt; &gt;<br>&gt; &gt; --<br>&gt; &gt; You received this =
message because you are subscribed to the Google Groups<br>&gt; &gt; &quot;=
outreachy-kernel&quot; group.<br>&gt; &gt; To unsubscribe from this group a=
nd stop receiving emails from it, send an<br>&gt; &gt; email to <a href=3D"=
mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" target=3D"_blank">o=
utreachy-kernel+unsubscribe@g<wbr>ooglegroups.com</a>.<br>&gt; &gt; To post=
 to this group, send email to <a href=3D"mailto:outreachy-kernel@googlegrou=
ps.com" target=3D"_blank">outreachy-kernel@googlegroups.<wbr>com</a>.<br>&g=
t; &gt; To view this discussion on the web visithttps://<a href=3D"http://g=
roups.google.com/d/msgid/outreachy-kernel/CAOCi2DHM%2BX0ksQZ2ZBXPk" target=
=3D"_blank">groups.google.com<wbr>/d/msgid/outreachy-kernel/CAOC<wbr>i2DHM%=
2BX0ksQZ2ZBXPk</a><br>&gt; &gt; bJu5uv5kerHRpaJaFEG8C36CA72jA%<a href=3D"ht=
tp://40mail.gmail.com" target=3D"_blank"><wbr>40mail.gmail.com</a>.<br>&gt;=
 &gt; For more options, visit <a href=3D"https://groups.google.com/d/optout=
" target=3D"_blank">https://groups.google.com/d/op<wbr>tout</a>.<br>&gt; &g=
t;<br>&gt; &gt;<br>&gt;<br>&gt; --<br>&gt; You received this message becaus=
e you are subscribed to the Google Groups &quot;outreachy-kernel&quot; grou=
p.<br>&gt; To unsubscribe from this group and stop receiving emails from it=
, send an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googleg=
roups.com" target=3D"_blank">outreachy-kernel+unsubscribe@g<wbr>ooglegroups=
.com</a>.<br>&gt; To post to this group, send email to <a href=3D"mailto:ou=
treachy-kernel@googlegroups.com" target=3D"_blank">outreachy-kernel@googleg=
roups.<wbr>com</a>.<br>&gt; To view this discussion on the web visit <a hre=
f=3D"https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.170=
2211850270.3448%40hadrien" target=3D"_blank">https://groups.google.com/d/ms=
<wbr>gid/outreachy-kernel/alpine.DE<wbr>B.2.20.1702211850270.3448%40ha<wbr>=
drien</a>.<br>&gt; For more options, visit <a href=3D"https://groups.google=
.com/d/optout" target=3D"_blank">https://groups.google.com/d/op<wbr>tout</a=
>.<br></div></div></div>

--001a11409bf47ab09f05490ec3f8--

