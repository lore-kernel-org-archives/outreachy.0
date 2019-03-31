X-GM-THRID: 6673442126229929984
X-Received: by 2002:a05:6512:204:: with SMTP id a4mr1307612lfo.10.1554008487081;
        Sat, 30 Mar 2019 22:01:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:59dc:: with SMTP id x28ls524215lfn.9.gmail; Sat, 30 Mar
 2019 22:01:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy3it3Zv0y9/DrmTe3xg48z6yVBqiFrN70gWdpScwUprk740rGZF/mTRvQ4bZKNYToJKC6Y
X-Received: by 2002:ac2:4856:: with SMTP id 22mr1483332lfy.12.1554008486072;
        Sat, 30 Mar 2019 22:01:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554008486; cv=none;
        d=google.com; s=arc-20160816;
        b=uKwbt8QLxdIOBvbLuXr+/T13y1gsfXWRC5OFTryrJOiW+BL6gnuAHBsCek/KSdPMFF
         dDLrz8vEeNCyYZzyzJUc9PKVpMDXH7lzEUzrB5kb8JfgPp0BLdb+VDYGoSIYkaYyS8H3
         CRopKneKkfBKq9Vkj+j0O8ZwkX7VlZruxfu2CDweZRfHRppyvemWmIAn0MHRelMcausm
         Pj88Tj538cI6uPlCw2HJBLVQ3TOacp2igo6zpZ8WgkmmAhDgJ2KPQvbC9sVu8QjcZhfv
         A3Cu0FD4GOAnh5jEXG/0rp+IWZTdnNc3hLYoJm0J3rrnUBmAaLJawCqSUyQqLxwyB861
         X4QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=T1CjXeuuL/b87xuU+qzvccx8/5DTOCOW1UuG6qZD8LA=;
        b=HRaGkcsgeEUpz+R7AwvFKBPdSL+D87MmKpUg4PEBazDo9Yr1vsogseBkyIY3pySbil
         VSNOMNiqjK5iVvNd3q0e2C4T0bUp/aeWl4/pTQ3G5AeNSSpXuVEGlT8b+7PbnIowk680
         hY1HXujTeN7P7Ky4HaC6FDGlKmjpp8QkIvWJS+Yo/0/x1HUNnr3xWQBVwuhLjlCP3/7S
         ZWaST7XhwTSGnJsmx8kMAu2S2PWESM/GV5ERWU+Dxy+0hBvK0IRRnei7ACnqUSXaSUEh
         XvwYTJ0syAD8mHUtrZAQ2XMlYlnepcJrnQjWYYJ1hY2P/mlLMLwlYXsrFXZ2AWIY3V3i
         LNrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rB2jE0b8;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id h7si336903ljj.5.2019.03.30.22.01.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 22:01:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rB2jE0b8;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x242.google.com with SMTP id f23so5241696ljc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 22:01:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=T1CjXeuuL/b87xuU+qzvccx8/5DTOCOW1UuG6qZD8LA=;
        b=rB2jE0b8+26PZ6bDP219ROFf3mH0EbtUu24eNrpbEqKsKKIB6+pkQX3gYG0TTljEtQ
         dj9YvbJc453PKtuOZxzroqQ1EF7JH3h/csMIpPJZjyZX9MnhKmw+5NHxW5cdH4Y33n6H
         aQ8i8iz9AKr6lyqNzwkK2M1orefQOncDPf2Fuwim8lr0MlDxiBZlNl5FZjLK9wegd1cz
         ptWOUNxe9E9TYl2uZB/JI4qL+GMcezHmiF7r2ddGZaKMzsRwedFn/5nVSivvOuiTASxM
         /Is9x/WETCbZMwLX4WZ/+cm4lL0HoRFfw38SgNiECn8/cXH842cNqa/y0r4rjKaVL1U/
         lAnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=T1CjXeuuL/b87xuU+qzvccx8/5DTOCOW1UuG6qZD8LA=;
        b=SUMs6r+BAEUq/q0RSNqotGe45aCPfoCK3KXVCsgUfBxMbQ6P66DA77fOgDY8v++wWN
         BLYcmyh8PZmgh8ERp9E7AUCREFUTyq4Tp3IxUgPZRqahuEW4/D4jQ45P6/CUIHxZSUiF
         423wdrpAN/a0zo0atgEcSBLoNIkp3hqT/cXXyIxW05ZgFzLAuZmnaFxv7rUR+PrTVtYr
         H9m7CFAEjZZDkBOXxhjudZ2WyFHlco0Fd+itUd/4Jl8qWznsQfUGP6mvbLn/Q4zb8x1t
         N9RzjiMygu9tR0vp3lYHMIPaMFR7d2NNNDApYnAh37T7pJd3IPKkYKeY0MS/61mgRHQG
         yg2g==
X-Gm-Message-State: APjAAAXrTkFQF8ZFHZus3N/nm/hXfe9KNdAGnF0eFbZz3XLh5lyDGS3f
	a+DksKj+hChdUe5ePv4nUgoijUluhawBn6c+Pgkx4A==
X-Received: by 2002:a2e:899a:: with SMTP id c26mr31164211lji.192.1554008485936;
 Sat, 30 Mar 2019 22:01:25 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com> <20190330193921.GA19505@kroah.com>
In-Reply-To: <20190330193921.GA19505@kroah.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sun, 31 Mar 2019 10:31:13 +0530
Message-ID: <CANTOzWHO03KBK6AjHgW+J7Vit6bFHePjFYhCD=xTV1CO4XAcYw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 0/9] staging: rtl8723bs: Remove
 unnecessary parentheses
To: Greg KH <greg@kroah.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000c842a305855ccb63"

--000000000000c842a305855ccb63
Content-Type: text/plain; charset="UTF-8"

On Sun, Mar 31, 2019, 1:09 AM Greg KH <greg@kroah.com> wrote:

> On Sat, Mar 30, 2019 at 10:41:47PM +0530, Payal Kshirsagar wrote:
> > Challenge suggested by coccinelle
> > This patchset does following tasks:
> >       -Remove unnecessary parentheses while returning a value by
> evaluating an expression.
> >       -Fix indentation issues by removing spaces and adding tabs.
>
> None of the patches in this patchset applied at all to my
> staging-testing branch.
>
> Please rebase your development branch on my latest branch and then
> resend the updated patches.
>

Okay I will
Thanks,
Payal

thanks,
>
> greg k-h
>

--000000000000c842a305855ccb63
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Sun, Mar 31, 2019, 1:09 AM Greg KH &lt;<a href=3D"mailto:greg@kroah.com"=
>greg@kroah.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On S=
at, Mar 30, 2019 at 10:41:47PM +0530, Payal Kshirsagar wrote:<br>
&gt; Challenge suggested by coccinelle<br>
&gt; This patchset does following tasks:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-Remove unnecessary parentheses while return=
ing a value by evaluating an expression.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-Fix indentation issues by removing spaces a=
nd adding tabs.<br>
<br>
None of the patches in this patchset applied at all to my<br>
staging-testing branch.<br>
<br>
Please rebase your development branch on my latest branch and then<br>
resend the updated patches.<br></blockquote></div></div><div dir=3D"auto"><=
br></div><div dir=3D"auto">Okay I will</div><div dir=3D"auto">Thanks,</div>=
<div dir=3D"auto">Payal</div><div dir=3D"auto"><br></div><div dir=3D"auto">=
<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div></div>

--000000000000c842a305855ccb63--

