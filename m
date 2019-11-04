X-GM-THRID: 6755114272133480448
X-Received: by 2002:a92:6c12:: with SMTP id h18mr31195785ilc.6.1572893701823;
        Mon, 04 Nov 2019 10:55:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5e:df41:: with SMTP id g1ls1292674ioq.13.gmail; Mon, 04 Nov
 2019 10:55:00 -0800 (PST)
X-Google-Smtp-Source: APXvYqyFO4GxqSGhE3e1qWBjnQ/HhVOxNhf1aJfsSfdqBarXM7olZ7el21O8mMz0MPoWx3QWJvHi
X-Received: by 2002:a6b:6f16:: with SMTP id k22mr10699237ioc.205.1572893700603;
        Mon, 04 Nov 2019 10:55:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572893700; cv=none;
        d=google.com; s=arc-20160816;
        b=nSiKREoLjHFSn3/IGJqMzkeoeESO6VOH5AlwxSzlK55aHpeW1nCKGZnuHAW1kwA01X
         ZuRjagRpNySe01m54ddyo1aP+p1MpaNL4Nm8R07D+/8v4ROQ3JMpgPLPs3Nw5gdx+fMK
         xvmrHQFKVXk4O4qwFMZdBhZYCAR+nBqXLBBz4dfxHRGkVTfnyd6SvzEOM/I2UnvcABCR
         aCxTgFLQ8hv6ML0k9M1bW6HZjeXpuiXwS52aeRi1ADylMMkH9HM2iBXiCmxsUbV8Knhi
         pp6GcNjNeYlOq0tMHdpfu2kkRXD8MdaDl3+a6QVawaCkQrn5giwLNtnzbYLHB94nJFeO
         sX4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UGVnaFipR/GrB/6hfrr17vjy/wp7z4VWMiX515y8JUQ=;
        b=FkFDjZO2p85bvSpybbKpAHbnrzsJjxMLtdxDh40EzsVeHoFSgbO3QneocVdibWE+im
         F0YOwetKBeUlQawRsRHdFWfg7EaHq4WhGbS3Lt/PHRIeIbQa7REQ+Zq4LS2PDHBincIt
         t9opk7AqYfaTf/8i+rrcSXTJFv50lQnQ4vawsMJkd5fgZgLKYu/UQm6XJEL9H0ZcRoE9
         77MGF19V5BuYIgjI+Zq5h8SJxCa9Qgrn+/a/q7I/6jgpscjqltrJOxt0Qns1/KzWy5ph
         UfAgamCQ0JDebDyYkD5e9/iW+QpJ+TKb5gQAUh35eflXGOGwkFn0Gq8EWJ7hFkiR5hyN
         U8kA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PwFKZnau;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id a17si970815iok.0.2019.11.04.10.55.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 10:55:00 -0800 (PST)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PwFKZnau;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe44.google.com with SMTP id y23so5187054vso.1
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 10:55:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UGVnaFipR/GrB/6hfrr17vjy/wp7z4VWMiX515y8JUQ=;
        b=PwFKZnauf86z6DcvLO2QyvOOInIlbr5bAtcVQgpOKJEhFQLvTmaJnNKUL2eiHjgpgU
         VA59Plu46SRQyFK4CRbX5dyfYDYNPcZ9qeIZC0GaHzOiN9EuZ0ImhNcZVsN18Db32oK2
         49cwWtQX7No5SdMwMiUeZDZ6ETcngc6H8mNuyVws3/IqIB06buCAqlayChDPN1WY5G4Z
         4U3NLv9AW06mdr2gxGayTiDjeup4IQvskyW7LFB4ekGgBsD5gi/PTliFFrJNQLwnYXMe
         7x9VgMGHBGQW6CM6XfJHEd5HcEvFSvAbT2fnPYp0yvTct5EKLWSSW4VvoeTbjTDElo5H
         7zfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UGVnaFipR/GrB/6hfrr17vjy/wp7z4VWMiX515y8JUQ=;
        b=GdY5uhZVnng2hnQEwC1Rfn4X2ZJbSW8qasWyNNbmnPjsiX6OPNLpMfkJLx4fB6yjbQ
         pgMxoeJOzqVaY1HBPHBPxyV1MGHdPg2E8jPiv2PFO0oxizqGokct72ponZ6dSgOMuehq
         QG3wmeoMvys/cLCFYgqsvkYrdB29OOIQJliaMUg4PCxVTLIZRllY9dlf1vZYuYPRiktr
         SHUG6f3aCFR4ojMqlc7bJsOHOkVUXKI/eeIiEt2B7vb1trMnw3oD+pkjhUI9t9Onla23
         /dAgpKrRio+a63HTSFiDHrsr4rFWPDpVuqhwzw/bwKXkgWOAZq1Y/oxAcr1UStjiRD7n
         zn8A==
X-Gm-Message-State: APjAAAW1zGw1dX+a8MXgfIXEQp3fKxTa+LndxSMyeMX6BaFQSSmFuKVX
	DsMWiJsv7zxl/qLl0lC9iFy9VN9FgyJI8kq9k+w=
X-Received: by 2002:a67:6bc1:: with SMTP id g184mr12928098vsc.161.1572893700076;
 Mon, 04 Nov 2019 10:55:00 -0800 (PST)
MIME-Version: 1.0
References: <cover.1572797322.git.chime.evan.dri.devel@gmail.com>
 <alpine.DEB.2.21.1911031716390.2557@hadrien> <CANR89jb9zSo_pq4rqQvH5s50R6W6t6SSZXXByb5bhjYO8SoO_A@mail.gmail.com>
 <CANR89jaS4PROzaUW9Z01n8=CpFP1xJE=Gh-WyChhrCBExae55g@mail.gmail.com>
In-Reply-To: <CANR89jaS4PROzaUW9Z01n8=CpFP1xJE=Gh-WyChhrCBExae55g@mail.gmail.com>
From: evan chime <chime.evan.dri.devel@gmail.com>
Date: Mon, 4 Nov 2019 18:54:08 +0000
Message-ID: <CANR89jakkdy4VTt7G0ktjdokscEWPb8=AEJZ_DWOimWcsdXjcg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 0/3] Add comment to memory barrier
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, laurent.pinchart@ideasonboard.com, 
	mchehab@kernel.org, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000433905059689da22"

--000000000000433905059689da22
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 4 Nov 2019 at 13:26, evan chime <chime.evan.dri.devel@gmail.com>
wrote:

>
>
> On Sun, 3 Nov 2019 at 16:27, evan chime <chime.evan.dri.devel@gmail.com>
> wrote:
>
>>
>> On Sun, 3 Nov 2019 at 16:18, Julia Lawall <julia.lawall@lip6.fr> wrote:
>>
>>>
>>>
>>> On Sun, 3 Nov 2019, Evan Chime wrote:
>>>
>>> > Include outreachy mailing list in "cc" list. No change
>>> >
>>> > Evan Chime (3):
>>> >   Staging: media: omap4iss: Add comment to memory barrier
>>> >   Staging: media: omap4iss: Add comment to memory barrier
>>> >   Staging: media: omap4iss: Add comment to memory barrier
>>>
>>> Each patch should have a different subject.  If you end up with patches
>>> with the same subject, you should make the subjects more specific or
>>> merge
>>> them.
>>>
>>> In this case, though, I think that this is an issue that only someone
>>> with
>>> a deep knowledge of the code could really address.  The question is not
>>> what a memory barrier does, but why one is needed at a particular place
>>> in
>>> the code.
>>>
>>> julia
>>
>>
>> Thanks for the feedback Julia
>>
>> Kind Regards
>> Evan
>>
>
> Please I have studied the function. From what I understand, the function
> checks if ISS submodule needs to wait for next interrupt. If yes, makes t=
he
> caller to sleep while waiting for such event.
>
>
> The atomic_set(stopping, 1) indicates whether the submodule needs to wait=
,
> where stopping is the flag, and atomic_set(stopping, 0) indicates no need
> to wait
>
>
> According to the comment before the first atomic_set() call and the
> smp_wmb() call that follows which says:
>
> /* Atomic set() doesn=E2=80=99t include memory barrier on ARM platform fo=
r SMP
> scenario. We=E2=80=99ll call it here to avoid race conditions */, the smp=
_wmb()
> call is I think, to avoid reordering of the atomic_set() operation
>
>
> So can I use one of the following, as the comment
>
>
> A) prevent reordering of atomic_set()
>
>
> B) sync module with it=E2=80=99s idle state(from the comment that introdu=
ced the
> function)
>
>
> C) ensures *stopping is persistent
>
>
> D) none of the above :)
>

Please forgive me for the first email, just noticed I didn=E2=80=99t say wh=
o it was
coming from at the end.


I have studied the function. From what I understand, the function checks if
ISS submodule needs to wait for next interrupt. If yes, makes the caller to
sleep while waiting for such event.


The atomic_set(stopping, 1) indicates whether the submodule needs to wait,
where stopping is the flag, and atomic_set(stopping, 0) indicates no need
to wait


According to the comment before the first atomic_set() call and the
smp_wmb() call that follows which says:

/* Atomic set() doesn=E2=80=99t include memory barrier on ARM platform for =
SMP
scenario. We=E2=80=99ll call it here to avoid race conditions */, the smp_w=
mb()
call is I think, to avoid reordering of the atomic_set() operation


So can I use one of the following, as the comment


A) prevent reordering of atomic_set()


B) sync module with it=E2=80=99s idle state(from the comment that introduce=
d the
function)


C) ensures *stopping is persistent


D) none of the above :)


Kind regards

Evan



>
>
>>
>>
>>>
>>> >
>>> >  drivers/staging/media/omap4iss/iss.c | 6 +++---
>>> >  1 file changed, 3 insertions(+), 3 deletions(-)
>>> >
>>> > --
>>> > 2.17.1
>>> >
>>> > --
>>> > You received this message because you are subscribed to the Google
>>> Groups "outreachy-kernel" group.
>>> > To unsubscribe from this group and stop receiving emails from it, sen=
d
>>> an email to outreachy-kernel+unsubscribe@googlegroups.com.
>>> > To view this discussion on the web visit
>>> https://groups.google.com/d/msgid/outreachy-kernel/cover.1572797322.git=
.chime.evan.dri.devel%40gmail.com
>>> .
>>> >
>>>
>>> --
>>> You received this message because you are subscribed to the Google
>>> Groups "outreachy-kernel" group.
>>> To unsubscribe from this group and stop receiving emails from it, send
>>> an email to outreachy-kernel+unsubscribe@googlegroups.com.
>>> To view this discussion on the web visit
>>> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1911=
031716390.2557%40hadrien
>>> .
>>>
>>

--000000000000433905059689da22
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, 4 Nov 2019 at 13:26, evan chime &lt;<a href=3D"mail=
to:chime.evan.dri.devel@gmail.com">chime.evan.dri.devel@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div><br></div><div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, 3 Nov 2=
019 at 16:27, evan chime &lt;<a href=3D"mailto:chime.evan.dri.devel@gmail.c=
om" target=3D"_blank">chime.evan.dri.devel@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Sun, 3 Nov 2019 at 16:18, Julia Lawall &=
lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@l=
ip6.fr</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
<br>
On Sun, 3 Nov 2019, Evan Chime wrote:<br>
<br>
&gt; Include outreachy mailing list in &quot;cc&quot; list. No change<br>
&gt;<br>
&gt; Evan Chime (3):<br>
&gt;=C2=A0 =C2=A0Staging: media: omap4iss: Add comment to memory barrier<br=
>
&gt;=C2=A0 =C2=A0Staging: media: omap4iss: Add comment to memory barrier<br=
>
&gt;=C2=A0 =C2=A0Staging: media: omap4iss: Add comment to memory barrier<br=
>
<br>
Each patch should have a different subject.=C2=A0 If you end up with patche=
s<br>
with the same subject, you should make the subjects more specific or merge<=
br>
them.<br>
<br>
In this case, though, I think that this is an issue that only someone with<=
br>
a deep knowledge of the code could really address.=C2=A0 The question is no=
t<br>
what a memory barrier does, but why one is needed at a particular place in<=
br>
the code.<br>
<br>
julia</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks for =
the feedback Julia</div><div dir=3D"auto"><br></div><div dir=3D"auto">Kind=
=C2=A0Regards</div></div></div><div><div class=3D"gmail_quote"><div dir=3D"=
auto">Evan=C2=A0</div></div></div></blockquote><div dir=3D"auto"><br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div class=3D"gmail_quote"><div dir=3D"=
auto"></div><div dir=3D"auto"></div></div></div></blockquote><div dir=3D"au=
to"><p style=3D"margin:0px;font-stretch:normal;font-size:17px;line-height:n=
ormal;font-family:&quot;.SF UI Text&quot;;color:rgb(69,69,69)"><span style=
=3D"font-family:&quot;.SFUIText&quot;;font-size:17pt">Please I have studied=
 the function. From what I understand, the function checks if ISS submodule=
 needs to wait for next interrupt. If yes, makes the caller to sleep while =
waiting for such event.=C2=A0</span></p><p style=3D"margin:0px;font-stretch=
:normal;font-size:17px;line-height:normal;font-family:&quot;.SF UI Text&quo=
t;;color:rgb(69,69,69);min-height:20.3px"><span style=3D"font-family:&quot;=
.SFUIText&quot;;font-size:17pt"></span><br></p><p style=3D"margin:0px;font-=
stretch:normal;font-size:17px;line-height:normal;font-family:&quot;.SF UI T=
ext&quot;;color:rgb(69,69,69)"><span style=3D"font-family:&quot;.SFUIText&q=
uot;;font-size:17pt">The atomic_set(stopping, 1) indicates whether the subm=
odule needs to wait, where stopping is the flag, and atomic_set(stopping, 0=
) indicates no need to wait=C2=A0</span></p><p style=3D"margin:0px;font-str=
etch:normal;font-size:17px;line-height:normal;font-family:&quot;.SF UI Text=
&quot;;color:rgb(69,69,69);min-height:20.3px"><span style=3D"font-family:&q=
uot;.SFUIText&quot;;font-size:17pt"></span><br></p><p style=3D"margin:0px;f=
ont-stretch:normal;font-size:17px;line-height:normal;font-family:&quot;.SF =
UI Text&quot;;color:rgb(69,69,69)"><span style=3D"font-family:&quot;.SFUITe=
xt&quot;;font-size:17pt">According to the comment before the first atomic_s=
et() call and the smp_wmb() call that follows which says:</span></p><p styl=
e=3D"margin:0px;font-stretch:normal;font-size:17px;line-height:normal;font-=
family:&quot;.SF UI Text&quot;;color:rgb(69,69,69)"><span style=3D"font-fam=
ily:&quot;.SFUIText&quot;;font-size:17pt">/* Atomic set() doesn=E2=80=99t i=
nclude memory barrier on ARM platform for SMP scenario. We=E2=80=99ll call =
it here to avoid race conditions */, the smp_wmb() call is I think, to avoi=
d reordering of the atomic_set() operation</span></p><p style=3D"margin:0px=
;font-stretch:normal;font-size:17px;line-height:normal;font-family:&quot;.S=
F UI Text&quot;;color:rgb(69,69,69);min-height:20.3px"><span style=3D"font-=
family:&quot;.SFUIText&quot;;font-size:17pt"></span><br></p><p style=3D"mar=
gin:0px;font-stretch:normal;font-size:17px;line-height:normal;font-family:&=
quot;.SF UI Text&quot;;color:rgb(69,69,69)"><span style=3D"font-family:&quo=
t;.SFUIText&quot;;font-size:17pt">So can I use one of the following, as the=
 comment=C2=A0</span></p><p style=3D"margin:0px;font-stretch:normal;font-si=
ze:17px;line-height:normal;font-family:&quot;.SF UI Text&quot;;color:rgb(69=
,69,69);min-height:20.3px"><span style=3D"font-family:&quot;.SFUIText&quot;=
;font-size:17pt"></span><br></p><p style=3D"margin:0px;font-stretch:normal;=
font-size:17px;line-height:normal;font-family:&quot;.SF UI Text&quot;;color=
:rgb(69,69,69)"><span style=3D"font-family:&quot;.SFUIText&quot;;font-size:=
17pt">A) prevent reordering of atomic_set()</span></p><p style=3D"margin:0p=
x;font-stretch:normal;font-size:17px;line-height:normal;font-family:&quot;.=
SF UI Text&quot;;color:rgb(69,69,69);min-height:20.3px"><span style=3D"font=
-family:&quot;.SFUIText&quot;;font-size:17pt"></span><br></p><p style=3D"ma=
rgin:0px;font-stretch:normal;font-size:17px;line-height:normal;font-family:=
&quot;.SF UI Text&quot;;color:rgb(69,69,69)"><span style=3D"font-family:&qu=
ot;.SFUIText&quot;;font-size:17pt">B) sync module with it=E2=80=99s idle st=
ate(from the comment that introduced the function)</span></p><p style=3D"ma=
rgin:0px;font-stretch:normal;font-size:17px;line-height:normal;font-family:=
&quot;.SF UI Text&quot;;color:rgb(69,69,69);min-height:20.3px"><span style=
=3D"font-family:&quot;.SFUIText&quot;;font-size:17pt"></span><br></p><p sty=
le=3D"margin:0px;font-stretch:normal;font-size:17px;line-height:normal;font=
-family:&quot;.SF UI Text&quot;;color:rgb(69,69,69)"><span style=3D"font-fa=
mily:&quot;.SFUIText&quot;;font-size:17pt">C) ensures *stopping is persiste=
nt=C2=A0</span></p><p style=3D"margin:0px;font-stretch:normal;font-size:17p=
x;line-height:normal;font-family:&quot;.SF UI Text&quot;;color:rgb(69,69,69=
);min-height:20.3px"><span style=3D"font-family:&quot;.SFUIText&quot;;font-=
size:17pt"></span><br></p><p style=3D"margin:0px;font-stretch:normal;font-s=
ize:17px;line-height:normal;font-family:&quot;.SF UI Text&quot;;color:rgb(6=
9,69,69)"><span style=3D"font-family:&quot;.SFUIText&quot;;font-size:17pt">=
D) none of the above :)</span></p></div></div></div></blockquote><div dir=
=3D"auto"><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"gmail=
_quote"><div dir=3D"auto"><p style=3D"margin:0px;font-stretch:normal;font-s=
ize:17px;line-height:normal;font-family:&quot;.SF UI Text&quot;;color:rgb(6=
9,69,69)"><span style=3D"font-family:&quot;.SFUIText&quot;;font-size:17pt">=
</span></p></div></div></div></blockquote><div dir=3D"auto"><p class=3D"p1"=
 style=3D"margin:0px;font-stretch:normal;font-size:17px;line-height:normal;=
font-family:&quot;.SF UI Text&quot;;color:rgb(69,69,69)"><span class=3D"s1"=
 style=3D"font-family:&quot;.SFUIText&quot;;font-size:17pt">Please forgive =
me for the first email, just noticed I didn=E2=80=99t say who it was coming=
 from at the end.</span></p><p class=3D"p2" style=3D"margin:0px;font-stretc=
h:normal;font-size:17px;line-height:normal;font-family:&quot;.SF UI Text&qu=
ot;;color:rgb(69,69,69);min-height:20.3px"><span class=3D"s1" style=3D"font=
-family:&quot;.SFUIText&quot;;font-size:17pt"></span><br></p><p class=3D"p1=
" style=3D"margin:0px;font-stretch:normal;font-size:17px;line-height:normal=
;font-family:&quot;.SF UI Text&quot;;color:rgb(69,69,69)"><span class=3D"s1=
" style=3D"font-family:&quot;.SFUIText&quot;;font-size:17pt">I have studied=
 the function. From what I understand, the function checks if ISS submodule=
 needs to wait for next interrupt. If yes, makes the caller to sleep while =
waiting for such event.=C2=A0</span></p><p class=3D"p2" style=3D"margin:0px=
;font-stretch:normal;font-size:17px;line-height:normal;font-family:&quot;.S=
F UI Text&quot;;color:rgb(69,69,69);min-height:20.3px"><span class=3D"s1" s=
tyle=3D"font-family:&quot;.SFUIText&quot;;font-size:17pt"></span><br></p><p=
 class=3D"p1" style=3D"margin:0px;font-stretch:normal;font-size:17px;line-h=
eight:normal;font-family:&quot;.SF UI Text&quot;;color:rgb(69,69,69)"><span=
 class=3D"s1" style=3D"font-family:&quot;.SFUIText&quot;;font-size:17pt">Th=
e atomic_set(stopping, 1) indicates whether the submodule needs to wait, wh=
ere stopping is the flag, and atomic_set(stopping, 0) indicates no need to =
wait=C2=A0</span></p><p class=3D"p2" style=3D"margin:0px;font-stretch:norma=
l;font-size:17px;line-height:normal;font-family:&quot;.SF UI Text&quot;;col=
or:rgb(69,69,69);min-height:20.3px"><span class=3D"s1" style=3D"font-family=
:&quot;.SFUIText&quot;;font-size:17pt"></span><br></p><p class=3D"p1" style=
=3D"margin:0px;font-stretch:normal;font-size:17px;line-height:normal;font-f=
amily:&quot;.SF UI Text&quot;;color:rgb(69,69,69)"><span class=3D"s1" style=
=3D"font-family:&quot;.SFUIText&quot;;font-size:17pt">According to the comm=
ent before the first atomic_set() call and the smp_wmb() call that follows =
which says:</span></p><p class=3D"p1" style=3D"margin:0px;font-stretch:norm=
al;font-size:17px;line-height:normal;font-family:&quot;.SF UI Text&quot;;co=
lor:rgb(69,69,69)"><span class=3D"s1" style=3D"font-family:&quot;.SFUIText&=
quot;;font-size:17pt">/* Atomic set() doesn=E2=80=99t include memory barrie=
r on ARM platform for SMP scenario. We=E2=80=99ll call it here to avoid rac=
e conditions */, the smp_wmb() call is I think, to avoid reordering of the =
atomic_set() operation</span></p><p class=3D"p2" style=3D"margin:0px;font-s=
tretch:normal;font-size:17px;line-height:normal;font-family:&quot;.SF UI Te=
xt&quot;;color:rgb(69,69,69);min-height:20.3px"><span class=3D"s1" style=3D=
"font-family:&quot;.SFUIText&quot;;font-size:17pt"></span><br></p><p class=
=3D"p1" style=3D"margin:0px;font-stretch:normal;font-size:17px;line-height:=
normal;font-family:&quot;.SF UI Text&quot;;color:rgb(69,69,69)"><span class=
=3D"s1" style=3D"font-family:&quot;.SFUIText&quot;;font-size:17pt">So can I=
 use one of the following, as the comment=C2=A0</span></p><p class=3D"p2" s=
tyle=3D"margin:0px;font-stretch:normal;font-size:17px;line-height:normal;fo=
nt-family:&quot;.SF UI Text&quot;;color:rgb(69,69,69);min-height:20.3px"><s=
pan class=3D"s1" style=3D"font-family:&quot;.SFUIText&quot;;font-size:17pt"=
></span><br></p><p class=3D"p1" style=3D"margin:0px;font-stretch:normal;fon=
t-size:17px;line-height:normal;font-family:&quot;.SF UI Text&quot;;color:rg=
b(69,69,69)"><span class=3D"s1" style=3D"font-family:&quot;.SFUIText&quot;;=
font-size:17pt">A) prevent reordering of atomic_set()</span></p><p class=3D=
"p2" style=3D"margin:0px;font-stretch:normal;font-size:17px;line-height:nor=
mal;font-family:&quot;.SF UI Text&quot;;color:rgb(69,69,69);min-height:20.3=
px"><span class=3D"s1" style=3D"font-family:&quot;.SFUIText&quot;;font-size=
:17pt"></span><br></p><p class=3D"p1" style=3D"margin:0px;font-stretch:norm=
al;font-size:17px;line-height:normal;font-family:&quot;.SF UI Text&quot;;co=
lor:rgb(69,69,69)"><span class=3D"s1" style=3D"font-family:&quot;.SFUIText&=
quot;;font-size:17pt">B) sync module with it=E2=80=99s idle state(from the =
comment that introduced the function)</span></p><p class=3D"p2" style=3D"ma=
rgin:0px;font-stretch:normal;font-size:17px;line-height:normal;font-family:=
&quot;.SF UI Text&quot;;color:rgb(69,69,69);min-height:20.3px"><span class=
=3D"s1" style=3D"font-family:&quot;.SFUIText&quot;;font-size:17pt"></span><=
br></p><p class=3D"p1" style=3D"margin:0px;font-stretch:normal;font-size:17=
px;line-height:normal;font-family:&quot;.SF UI Text&quot;;color:rgb(69,69,6=
9)"><span class=3D"s1" style=3D"font-family:&quot;.SFUIText&quot;;font-size=
:17pt">C) ensures *stopping is persistent=C2=A0</span></p><p class=3D"p2" s=
tyle=3D"margin:0px;font-stretch:normal;font-size:17px;line-height:normal;fo=
nt-family:&quot;.SF UI Text&quot;;color:rgb(69,69,69);min-height:20.3px"><s=
pan class=3D"s1" style=3D"font-family:&quot;.SFUIText&quot;;font-size:17pt"=
></span><br></p><p class=3D"p1" style=3D"margin:0px;font-stretch:normal;fon=
t-size:17px;line-height:normal;font-family:&quot;.SF UI Text&quot;;color:rg=
b(69,69,69)"><span class=3D"s1" style=3D"font-family:&quot;.SFUIText&quot;;=
font-size:17pt">D) none of the above :)</span></p><p class=3D"p2" style=3D"=
margin:0px;font-stretch:normal;font-size:17px;line-height:normal;font-famil=
y:&quot;.SF UI Text&quot;;color:rgb(69,69,69);min-height:20.3px"><span clas=
s=3D"s1" style=3D"font-family:&quot;.SFUIText&quot;;font-size:17pt"></span>=
<br></p><p class=3D"p1" style=3D"margin:0px;font-stretch:normal;font-size:1=
7px;line-height:normal;font-family:&quot;.SF UI Text&quot;;color:rgb(69,69,=
69)"><span class=3D"s1" style=3D"font-family:&quot;.SFUIText&quot;;font-siz=
e:17pt">Kind regards=C2=A0</span></p><p class=3D"p1" style=3D"margin:0px;fo=
nt-stretch:normal;font-size:17px;line-height:normal;font-family:&quot;.SF U=
I Text&quot;;color:rgb(69,69,69)"><span class=3D"s1" style=3D"font-family:&=
quot;.SFUIText&quot;;font-size:17pt">Evan=C2=A0</span></p><p class=3D"p1" s=
tyle=3D"margin:0px;font-stretch:normal;font-size:17px;line-height:normal;fo=
nt-family:&quot;.SF UI Text&quot;;color:rgb(69,69,69)"><span class=3D"s1" s=
tyle=3D"font-family:&quot;.SFUIText&quot;;font-size:17pt"><br></span></p><p=
 class=3D"p2" style=3D"margin:0px;font-stretch:normal;font-size:17px;line-h=
eight:normal;font-family:&quot;.SF UI Text&quot;;color:rgb(69,69,69);min-he=
ight:20.3px"><span class=3D"s1" style=3D"font-family:&quot;.SFUIText&quot;;=
font-size:17pt"></span></p><p class=3D"p2" style=3D"margin:0px;font-stretch=
:normal;font-size:17px;line-height:normal;font-family:&quot;.SF UI Text&quo=
t;;color:rgb(69,69,69);min-height:20.3px"><span class=3D"s1" style=3D"font-=
family:&quot;.SFUIText&quot;;font-size:17pt"></span></p></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div><div class=3D"gmail_quote"><div dir=3D"auto"><p styl=
e=3D"margin:0px;font-stretch:normal;font-size:17px;line-height:normal;font-=
family:&quot;.SF UI Text&quot;;color:rgb(69,69,69)"><span style=3D"font-fam=
ily:&quot;.SFUIText&quot;;font-size:17pt"></span></p><p style=3D"margin:0px=
;font-stretch:normal;font-size:17px;line-height:normal;font-family:&quot;.S=
F UI Text&quot;;color:rgb(69,69,69);min-height:20.3px"><br></p></div></div>=
</div><div><div class=3D"gmail_quote"><div dir=3D"auto"><br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><div><div class=3D"gmail_quote"><div dir=3D"auto"><br=
></div><div dir=3D"auto"><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
<br>
&gt;<br>
&gt;=C2=A0 drivers/staging/media/omap4iss/iss.c | 6 +++---<br>
&gt;=C2=A0 1 file changed, 3 insertions(+), 3 deletions(-)<br>
&gt;<br>
&gt; --<br>
&gt; 2.17.1<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/cover.1572797322.git.chime.evan.dri.devel%=
40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com=
/d/msgid/outreachy-kernel/cover.1572797322.git.chime.evan.dri.devel%40gmail=
.com</a>.<br>
&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1911031716390.2557%40hadrien" r=
el=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outre=
achy-kernel/alpine.DEB.2.21.1911031716390.2557%40hadrien</a>.<br>
</blockquote></div></div>
</blockquote></div></div>
</blockquote></div></div>

--000000000000433905059689da22--

