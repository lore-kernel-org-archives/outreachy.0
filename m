X-GM-THRID: 6755114272133480448
X-Received: by 2002:a81:3d85:: with SMTP id k127mr13398208ywa.346.1572873995708;
        Mon, 04 Nov 2019 05:26:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:c7c9:: with SMTP id w192ls2367462ybe.8.gmail; Mon, 04
 Nov 2019 05:26:34 -0800 (PST)
X-Google-Smtp-Source: APXvYqzxjnwajZcE/gCuy9J84CroBUx9hgjhW1eCIKlnPKFgVg/r4n6gjLao+ae3IrXF5uJOjZZq
X-Received: by 2002:a25:6789:: with SMTP id b131mr6434986ybc.429.1572873994300;
        Mon, 04 Nov 2019 05:26:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572873994; cv=none;
        d=google.com; s=arc-20160816;
        b=eDBxWkeTQTRVWLml9I4Y38SXK6/QwpPGVFd+c+Shn/EzuTzEzRtORaPEUT4iMRQER6
         rKDOx3ru4sIlt6IYFKS8u954jHr6cpBNpTtcOv4wgE8ipmuex4RvXnnqU03j+L2z6glK
         +LYFkPm9QOMreHjkLGMFZ5R5IUnqqf5DsUftxMtEPDybQV82Oc5BAOnhRUhTokvAwHbI
         DRs955zrOJk+dnHjekNn2Jik4YsPAvlCRsrVXT3Yt/I0PIcCAmTLVlhSaJdHJWLWDzrJ
         FE+41lrGAv+4wfP+t8tnsa9id7F59Tx6pG4oHeRNmI8b9ss30a1WPVOW/MlI0gEKzSOJ
         i1XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Vtl3FORPtY3N8TMJ2F0+1sInx6HH/Xp1cI3Nxpl9Qi8=;
        b=WX2mygzOx3zwzRmFU1744npIqnha3O15IX2iSiMb9/npCYVVXHMcH31UbSSo31RiVA
         cZEAjZKmh9cn6kqgSUrjz4UHAKSQqJja6oEVSGevLnvTbl8iiDtuGtJqki2Pcolj1Q/O
         UVU1rHQ1U+ZNWIHfTz1KyIYQYiHC9oAJXHPatx/mhDPl4MMjkKxyL2uM/UIrQU33E0Eh
         5kP6pvFIpgtS4N5w/jhO8gb7OVWBzF3d7ZUyAONKbhUaiLZaH9nEzqL2Zl5Hp1vBdnvn
         RqOtIFwu9c1WFPc5hvXsgioRfIF0o0k9Cef+5oyq5whIJryELgTTxIExhsZnQCzW+ubN
         eKYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OE5lBLlF;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com. [2607:f8b0:4864:20::a44])
        by gmr-mx.google.com with ESMTPS id 63si46019ybe.4.2019.11.04.05.26.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 05:26:34 -0800 (PST)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::a44 as permitted sender) client-ip=2607:f8b0:4864:20::a44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OE5lBLlF;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vk1-xa44.google.com with SMTP id r85so3772995vke.3
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 05:26:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Vtl3FORPtY3N8TMJ2F0+1sInx6HH/Xp1cI3Nxpl9Qi8=;
        b=OE5lBLlFcSccy6FJ+Sd5xwKXzNv5qBix7r8VLELZCF/5qx5iRmQPJf9Xf+mospcVad
         ObDnhJwXlP/Xfu1lffvqUUBEnElEAcVrSpq6ARTFjEktppZWg0fWp0J9c74s4152NOXl
         LtnVSQ+z8qofvBYFUTmOEaVxvOE6vVs7+Q2TVMxXNMaebQZQ1E08DeIZna9i5WLzS/IA
         XPrDwz7INDpYvukyaHDLbvWFck15CnLgreboQ8BOeMU4//sVJaVjZ/7EvrXZ/TFblfwe
         qeQvKC6gyQjPR+ipSGPKiFFwDsWFVtn8d+58I4KR3U5CU8AZxARbux6TiJ/2LOvbNa60
         UURQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Vtl3FORPtY3N8TMJ2F0+1sInx6HH/Xp1cI3Nxpl9Qi8=;
        b=jG0zx7F2Ec/1yIIx+2imSgWSf/QTJyqxBn33e+mOMMoYyYCgxaJn/mCsC6P0JLebaY
         W/qR7+UtrNksC4yqagRsCKhOufSCZMA3jD5Cbmd1iNdUS+pOX+vueECpNeI2ZHJ65n0d
         xLCFenn0EBwDSTgHgKl8x8ssq78uKC12m0qtXYOqrZWW3HXtQ+4AN5gS8ghQDSgEzLQw
         haO2zJgRpMUgUdnhYKfGOQLPVwugxvFNOw5W2MNysCnPrR7lN+sD2a50EaKbJwS8m9v+
         sPyQsqvGO0skdey00ZkjjSyNCZm+zQ5EyAwENgFkqhxsSfDZiny9dehG2d04H1D8wqTW
         yGOg==
X-Gm-Message-State: APjAAAVtpfVsz/z+Z5VteWC0w5Jps0dONtC/L67AwQiJxURq/Hf6PIm+
	eWXKGSbUgDruOIhUiWxPg67EHbDkKq3KcNzH7hE=
X-Received: by 2002:a1f:11d7:: with SMTP id 206mr282610vkr.19.1572873993908;
 Mon, 04 Nov 2019 05:26:33 -0800 (PST)
MIME-Version: 1.0
References: <cover.1572797322.git.chime.evan.dri.devel@gmail.com>
 <alpine.DEB.2.21.1911031716390.2557@hadrien> <CANR89jb9zSo_pq4rqQvH5s50R6W6t6SSZXXByb5bhjYO8SoO_A@mail.gmail.com>
In-Reply-To: <CANR89jb9zSo_pq4rqQvH5s50R6W6t6SSZXXByb5bhjYO8SoO_A@mail.gmail.com>
From: evan chime <chime.evan.dri.devel@gmail.com>
Date: Mon, 4 Nov 2019 13:26:23 +0000
Message-ID: <CANR89jaS4PROzaUW9Z01n8=CpFP1xJE=Gh-WyChhrCBExae55g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 0/3] Add comment to memory barrier
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, laurent.pinchart@ideasonboard.com, 
	mchehab@kernel.org, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000aef61a059685439d"

--000000000000aef61a059685439d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 3 Nov 2019 at 16:27, evan chime <chime.evan.dri.devel@gmail.com>
wrote:

>
> On Sun, 3 Nov 2019 at 16:18, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>>
>>
>> On Sun, 3 Nov 2019, Evan Chime wrote:
>>
>> > Include outreachy mailing list in "cc" list. No change
>> >
>> > Evan Chime (3):
>> >   Staging: media: omap4iss: Add comment to memory barrier
>> >   Staging: media: omap4iss: Add comment to memory barrier
>> >   Staging: media: omap4iss: Add comment to memory barrier
>>
>> Each patch should have a different subject.  If you end up with patches
>> with the same subject, you should make the subjects more specific or mer=
ge
>> them.
>>
>> In this case, though, I think that this is an issue that only someone wi=
th
>> a deep knowledge of the code could really address.  The question is not
>> what a memory barrier does, but why one is needed at a particular place =
in
>> the code.
>>
>> julia
>
>
> Thanks for the feedback Julia
>
> Kind Regards
> Evan
>

Please I have studied the function. From what I understand, the function
checks if ISS submodule needs to wait for next interrupt. If yes, makes the
caller to sleep while waiting for such event.


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




>
>
>>
>> >
>> >  drivers/staging/media/omap4iss/iss.c | 6 +++---
>> >  1 file changed, 3 insertions(+), 3 deletions(-)
>> >
>> > --
>> > 2.17.1
>> >
>> > --
>> > You received this message because you are subscribed to the Google
>> Groups "outreachy-kernel" group.
>> > To unsubscribe from this group and stop receiving emails from it, send
>> an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> > To view this discussion on the web visit
>> https://groups.google.com/d/msgid/outreachy-kernel/cover.1572797322.git.=
chime.evan.dri.devel%40gmail.com
>> .
>> >
>>
>> --
>> You received this message because you are subscribed to the Google Group=
s
>> "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send a=
n
>> email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit
>> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.19110=
31716390.2557%40hadrien
>> .
>>
>

--000000000000aef61a059685439d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sun, 3 Nov 2019 at 16:27, evan chime &lt;<a href=3D"mail=
to:chime.evan.dri.devel@gmail.com">chime.evan.dri.devel@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, 3 Nov 2019 at 16:18, J=
ulia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">j=
ulia.lawall@lip6.fr</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<br>
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
to"><p class=3D"p1" style=3D"margin:0px;font-stretch:normal;font-size:17px;=
line-height:normal;font-family:&quot;.SF UI Text&quot;;color:rgb(69,69,69)"=
><span class=3D"s1" style=3D"font-family:&quot;.SFUIText&quot;;font-size:17=
pt">Please I have studied the function. From what I understand, the functio=
n checks if ISS submodule needs to wait for next interrupt. If yes, makes t=
he caller to sleep while waiting for such event.=C2=A0</span></p><p class=
=3D"p2" style=3D"margin:0px;font-stretch:normal;font-size:17px;line-height:=
normal;font-family:&quot;.SF UI Text&quot;;color:rgb(69,69,69);min-height:2=
0.3px"><span class=3D"s1" style=3D"font-family:&quot;.SFUIText&quot;;font-s=
ize:17pt"></span><br></p><p class=3D"p1" style=3D"margin:0px;font-stretch:n=
ormal;font-size:17px;line-height:normal;font-family:&quot;.SF UI Text&quot;=
;color:rgb(69,69,69)"><span class=3D"s1" style=3D"font-family:&quot;.SFUITe=
xt&quot;;font-size:17pt">The atomic_set(stopping, 1) indicates whether the =
submodule needs to wait, where stopping is the flag, and atomic_set(stoppin=
g, 0) indicates no need to wait=C2=A0</span></p><p class=3D"p2" style=3D"ma=
rgin:0px;font-stretch:normal;font-size:17px;line-height:normal;font-family:=
&quot;.SF UI Text&quot;;color:rgb(69,69,69);min-height:20.3px"><span class=
=3D"s1" style=3D"font-family:&quot;.SFUIText&quot;;font-size:17pt"></span><=
br></p><p class=3D"p1" style=3D"margin:0px;font-stretch:normal;font-size:17=
px;line-height:normal;font-family:&quot;.SF UI Text&quot;;color:rgb(69,69,6=
9)"><span class=3D"s1" style=3D"font-family:&quot;.SFUIText&quot;;font-size=
:17pt">According to the comment before the first atomic_set() call and the =
smp_wmb() call that follows which says:</span></p><p class=3D"p1" style=3D"=
margin:0px;font-stretch:normal;font-size:17px;line-height:normal;font-famil=
y:&quot;.SF UI Text&quot;;color:rgb(69,69,69)"><span class=3D"s1" style=3D"=
font-family:&quot;.SFUIText&quot;;font-size:17pt">/* Atomic set() doesn=E2=
=80=99t include memory barrier on ARM platform for SMP scenario. We=E2=80=
=99ll call it here to avoid race conditions */, the smp_wmb() call is I thi=
nk, to avoid reordering of the atomic_set() operation</span></p><p class=3D=
"p2" style=3D"margin:0px;font-stretch:normal;font-size:17px;line-height:nor=
mal;font-family:&quot;.SF UI Text&quot;;color:rgb(69,69,69);min-height:20.3=
px"><span class=3D"s1" style=3D"font-family:&quot;.SFUIText&quot;;font-size=
:17pt"></span><br></p><p class=3D"p1" style=3D"margin:0px;font-stretch:norm=
al;font-size:17px;line-height:normal;font-family:&quot;.SF UI Text&quot;;co=
lor:rgb(69,69,69)"><span class=3D"s1" style=3D"font-family:&quot;.SFUIText&=
quot;;font-size:17pt">So can I use one of the following, as the comment=C2=
=A0</span></p><p class=3D"p2" style=3D"margin:0px;font-stretch:normal;font-=
size:17px;line-height:normal;font-family:&quot;.SF UI Text&quot;;color:rgb(=
69,69,69);min-height:20.3px"><span class=3D"s1" style=3D"font-family:&quot;=
.SFUIText&quot;;font-size:17pt"></span><br></p><p class=3D"p1" style=3D"mar=
gin:0px;font-stretch:normal;font-size:17px;line-height:normal;font-family:&=
quot;.SF UI Text&quot;;color:rgb(69,69,69)"><span class=3D"s1" style=3D"fon=
t-family:&quot;.SFUIText&quot;;font-size:17pt">A) prevent reordering of ato=
mic_set()</span></p><p class=3D"p2" style=3D"margin:0px;font-stretch:normal=
;font-size:17px;line-height:normal;font-family:&quot;.SF UI Text&quot;;colo=
r:rgb(69,69,69);min-height:20.3px"><span class=3D"s1" style=3D"font-family:=
&quot;.SFUIText&quot;;font-size:17pt"></span><br></p><p class=3D"p1" style=
=3D"margin:0px;font-stretch:normal;font-size:17px;line-height:normal;font-f=
amily:&quot;.SF UI Text&quot;;color:rgb(69,69,69)"><span class=3D"s1" style=
=3D"font-family:&quot;.SFUIText&quot;;font-size:17pt">B) sync module with i=
t=E2=80=99s idle state(from the comment that introduced the function)</span=
></p><p class=3D"p2" style=3D"margin:0px;font-stretch:normal;font-size:17px=
;line-height:normal;font-family:&quot;.SF UI Text&quot;;color:rgb(69,69,69)=
;min-height:20.3px"><span class=3D"s1" style=3D"font-family:&quot;.SFUIText=
&quot;;font-size:17pt"></span><br></p><p class=3D"p1" style=3D"margin:0px;f=
ont-stretch:normal;font-size:17px;line-height:normal;font-family:&quot;.SF =
UI Text&quot;;color:rgb(69,69,69)"><span class=3D"s1" style=3D"font-family:=
&quot;.SFUIText&quot;;font-size:17pt">C) ensures *stopping is persistent=C2=
=A0</span></p><p class=3D"p2" style=3D"margin:0px;font-stretch:normal;font-=
size:17px;line-height:normal;font-family:&quot;.SF UI Text&quot;;color:rgb(=
69,69,69);min-height:20.3px"><span class=3D"s1" style=3D"font-family:&quot;=
.SFUIText&quot;;font-size:17pt"></span><br></p><p class=3D"p1" style=3D"mar=
gin:0px;font-stretch:normal;font-size:17px;line-height:normal;font-family:&=
quot;.SF UI Text&quot;;color:rgb(69,69,69)"><span class=3D"s1" style=3D"fon=
t-family:&quot;.SFUIText&quot;;font-size:17pt">D) none of the above :)</spa=
n></p><p class=3D"p2" style=3D"margin:0px;font-stretch:normal;font-size:17p=
x;line-height:normal;font-family:&quot;.SF UI Text&quot;;color:rgb(69,69,69=
);min-height:20.3px"><br></p></div><div dir=3D"auto"><br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex"><div><div class=3D"gmail_quote"><div dir=3D"auto"><br></=
div><div dir=3D"auto"><br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
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

--000000000000aef61a059685439d--

