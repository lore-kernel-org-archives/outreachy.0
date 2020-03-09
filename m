X-GM-THRID: 6802195878840893440
X-Received: by 2002:a2e:9897:: with SMTP id b23mr108075ljj.97.1583764898660;
        Mon, 09 Mar 2020 07:41:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:8583:: with SMTP id h125ls1298799lfd.9.gmail; Mon, 09
 Mar 2020 07:41:37 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vumYSAOedF7G+32mnnPSLof91QC6CZ0ZRlZUwtcw5aqhBsIj+Z966I5NBdTA2dBt9EXYf6b
X-Received: by 2002:a19:5210:: with SMTP id m16mr9780104lfb.118.1583764897259;
        Mon, 09 Mar 2020 07:41:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583764897; cv=none;
        d=google.com; s=arc-20160816;
        b=t/8kU7rH7+B7kG+N53V/HIde9V0AlccAhmhtSeTkaX7wGKlus90Hye4W4GMY0v+d5U
         b6U4geau4AWFmgg0h/pGJlrkSbk+qdzVWj5DAxChs0uNmantyDXWY9GwnbUkRore1EQo
         yEY25dmGjjo5d5btHleU1ms13sbDMBLvbSlqQ8w07aSpxEXXzVI4unTCA1GjX0uwtHXu
         CTFGWLyxxQsmIWqYDnBkbPKMqfJRHEn5meKBYEPgCBl4cMz9u4IDNssn2TbRFhw1LAw2
         4uJBnrjVgzkwJBFSOzNVk1H/uz7myenwyrSFHEN7F3RmEs+V0quqW+eG0aheKoS9MlVt
         y6rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZtFkfzz9SoGRUa3c+8nNSnEMNAKfmB90mb7eU0hpohc=;
        b=g53gOAKWoNzlegXqmzCTYNTaZPAjCEQq9Dc1HD2Z2yEyRCzrQmHkUQEAFLVT9KJQzV
         VInF4yoO+hl8aCqXcF0tmOeHfww6H3E6xflYbMEQF7Z1QPLPYPGG+1OzdRfsteRRs1Zb
         0aI6N10nCfkfIYqHPwYydmpkjo1UtTvQEfnQZ3kVZgOL4ZEeWaMRcb4AI13PVnGNeJ83
         yyyRL18fR74WK11SNrUt0AiB86c4rHaf3wOuUU4w8IqCDC+ndvJtL4m+bmPS0Dzgep/i
         oaS9wLHIEjvwzkVnjk/JSokivzPoEtR4rF+oSFcUZuJFf9xoUer0frnJpQ/aCHb2239P
         lSKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=buWMjJIb;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id w6si623075lfq.1.2020.03.09.07.41.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 07:41:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=buWMjJIb;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id a25so7713151wrd.0
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 07:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZtFkfzz9SoGRUa3c+8nNSnEMNAKfmB90mb7eU0hpohc=;
        b=buWMjJIbjmPBOD5HgvGzaYP6eqpsCUaMzRaMAeggvSSev66bmlmGhmKiq87lh2t6FF
         OX8ubsikbjXTnBhHEZN5mXJHpHaqvE2BzB/4V8dAcSJf98x/RsFpFcjnMk4MmThVPO6t
         y4s4wVa5AbqyOmcKNWzZ13IS97JEiTf0DU4RF9VcQT01+jfi5JljyZxAoBd/ofe3i6CP
         ctuE2Kw6CDaF3CDy+U10CObXU6u0ZxpD2j45z7SGkeIR5PgUpcg78Hfyy9ixIGASbW+4
         z7Hl/OYvG5XDwx84J3mLWLJwupWmH1YvbfgfsgSxFlrQEIJbR9/SQ1BVYwi6EYcOdj93
         sqTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZtFkfzz9SoGRUa3c+8nNSnEMNAKfmB90mb7eU0hpohc=;
        b=svY7JEkG0+GD7asoiYnOEXcWsN2EAGO94FZar3ZqYw7EJ7aD8MVHoMz9uTp19xX3uV
         EfkFhmS+7HpZcsB8uVsTasSgkw5l98eFfTT4zLnKFJFlfK5A4CsMzHnD+uWcLPvUCZUq
         ALghKbkCuUtnfunNrg4PHvTvALyOvXaTe0DQsLKGRTa0yDTcaRolUoeKBs/MZeIn7aUY
         WKKaeu7s18wJEhh2Amz60F0J/LgOhej6cEayCjEehADXwP0iabg2O5ZY/066Bai8tbC6
         RvsSyKWLXiA8ZvmLgbzVqlJpRTJ5IEHqoeJRtlBi4XbQ60Bd7DPPHdYhG0wAQgaExXas
         nNrg==
X-Gm-Message-State: ANhLgQ2WID6rW8vIIiIhDkenM4QzXoEDs9UCvCXDVIvzt8br5wuEOL2q
	zl1Tl3PuHwbhaCJ0nxwsxQFy8+4YXzE6A+QTSek=
X-Received: by 2002:adf:ef0b:: with SMTP id e11mr22427209wro.115.1583764896556;
 Mon, 09 Mar 2020 07:41:36 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1583759118.git.payalskshirsagar1234@gmail.com> <alpine.DEB.2.21.2003091417490.4721@hadrien>
In-Reply-To: <alpine.DEB.2.21.2003091417490.4721@hadrien>
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Date: Mon, 9 Mar 2020 20:11:24 +0530
Message-ID: <CAJyzNhno1e9enuSdAstwa_i03Xb5Sz4sQiadUukaADruQ2dGxw@mail.gmail.com>
Subject: Re: [PATCH 0/3] [Outreachy kernel] staging: qlge: qlge.h: cleanup
 suggested by checkpatch
To: Julia Lawall <julia.lawall@inria.fr>
Cc: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com, 
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
	linux-usb@vger.kernel.org
Content-Type: multipart/alternative; boundary="000000000000112b8f05a06d0030"

--000000000000112b8f05a06d0030
Content-Type: text/plain; charset="UTF-8"

On Mon, Mar 9, 2020, 6:48 PM Julia Lawall <julia.lawall@inria.fr> wrote:

>
>
> On Mon, 9 Mar 2020, Payal Kshirsagar wrote:
>
> > Cleanup suggested by checkpatch for the file drivers/staging/qlge/qlge.h.
> >
> > Payal Kshirsagar (3):
> >   [Outreachy kernel] staging: qlge: remove spaces before tabs and align
> >     code
> >   [Outreachy kernel] staging: qlge: qlge.h: add spaces around operators
> >   [Outreachy kernel] staging: qlge: qlge.h: remove excess newlines
>
> It's strange that the information about the location is different in the
> first case than in the other two cases, if they are all touching the same
> file?
>

Yes, all the patches of this series cleaning a same file, the subject line
in first patch of this series was my mistake.
What I supposed to do now ?

Payal

julia
>
> >
> >  drivers/staging/qlge/qlge.h | 69 ++++++++++++++++++-------------------
> >  1 file changed, 33 insertions(+), 36 deletions(-)
> >
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/cover.1583759118.git.payalskshirsagar1234%40gmail.com
> .
> >
>

--000000000000112b8f05a06d0030
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Mon, Mar 9, 2020, 6:48 PM Julia Lawall &lt;<a href=3D"mailto:julia.lawal=
l@inria.fr">julia.lawall@inria.fr</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><br>
<br>
On Mon, 9 Mar 2020, Payal Kshirsagar wrote:<br>
<br>
&gt; Cleanup suggested by checkpatch for the file drivers/staging/qlge/qlge=
.h.<br>
&gt;<br>
&gt; Payal Kshirsagar (3):<br>
&gt;=C2=A0 =C2=A0[Outreachy kernel] staging: qlge: remove spaces before tab=
s and align<br>
&gt;=C2=A0 =C2=A0 =C2=A0code<br>
&gt;=C2=A0 =C2=A0[Outreachy kernel] staging: qlge: qlge.h: add spaces aroun=
d operators<br>
&gt;=C2=A0 =C2=A0[Outreachy kernel] staging: qlge: qlge.h: remove excess ne=
wlines<br>
<br>
It&#39;s strange that the information about the location is different in th=
e<br>
first case than in the other two cases, if they are all touching the same<b=
r>
file?<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">Yes, all the patches of this series cleaning a same file, the subject =
line in first patch of this series was my mistake.</div><div dir=3D"auto">W=
hat I supposed to do now ?</div><div dir=3D"auto"><br></div><div dir=3D"aut=
o">Payal</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"g=
mail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">
julia<br>
<br>
&gt;<br>
&gt;=C2=A0 drivers/staging/qlge/qlge.h | 69 ++++++++++++++++++-------------=
------<br>
&gt;=C2=A0 1 file changed, 33 insertions(+), 36 deletions(-)<br>
&gt;<br>
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
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/cover.1583759118.git.payalskshirsagar1234%=
40gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups=
.google.com/d/msgid/outreachy-kernel/cover.1583759118.git.payalskshirsagar1=
234%40gmail.com</a>.<br>
&gt;<br>
</blockquote></div></div></div>

--000000000000112b8f05a06d0030--

