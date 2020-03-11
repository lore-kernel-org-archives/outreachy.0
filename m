X-GM-THRID: 6802850530437627904
X-Received: by 2002:a05:651c:2007:: with SMTP id s7mr2047391ljo.214.1583929750580;
        Wed, 11 Mar 2020 05:29:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:b24a:: with SMTP id n10ls360199ljm.5.gmail; Wed, 11 Mar
 2020 05:29:08 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuQT23RTz0Rr46Ugz5qmu5gQswWrOm0d4nqe04vSEaUdV/5zpfV88yrX0jmJJ+f3HasUAHk
X-Received: by 2002:a05:651c:1211:: with SMTP id i17mr1981251lja.239.1583929748891;
        Wed, 11 Mar 2020 05:29:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583929748; cv=none;
        d=google.com; s=arc-20160816;
        b=vtAtmcTosmnhbrXBXjMJRI0HhkXf+ZARpTq3tyxKfKLMFnaZkl1mY4iBPvrWjlhL6K
         emTuL1yy3hp9o57dBfh4p31JhXF2Q7tr1reHEM58VseNFtnNXbVL2f4t1tmJtmpyzWKp
         rYdgZJfPaEBg1qf4zFxbxyDmtBGfKo5zETHrI9hHKJaXH2Upy35pDVtKEfdk1uJQWrTA
         ZCXXUYg1aUKvRX0FZRT1wbUIQOrwokUUaS3nW2+A74yVGCsnBzIvYli8LSouHUQSUyEA
         /7mZzQbgDopiPH5QrDf+qRhTdQKXZxaehKGlVc30xmD7ENdfl8aasRVOPVcqf9wIwtzk
         whqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xrd1r2+ErUrvhfa8pV3grBNcYtg+qEYunSbdVR/PeG4=;
        b=n+ppxb/fVoYjIVEpGotUxchIuatxylg9nvUDIcwaW18G8vBK8JyDfmUx31yhMtTYBb
         00Lp1GwV0ESNcvuiC8jCeR8lFbM/+JDolqR/6r6fyIi18Opjv/3TcTY/j8qVh7atjVVx
         g7WMkKLVn3l5RPSjVse6UKgtQpDAHRDWLEJvqkxZ7YbeLE9SB8lUigXY1uMQkJBE6gmu
         +fm9T1onZoHC0LMUI7yf4CGRgO434pV1liX0oDFrPCFKLJcQGt+WepvH6b2I4Ft2trBw
         7f/J1uTJw43E+25yUzq32JQ/RfZksDzMcyY6+vRG1utEtGBgGhKNMqcD2xkmRpWWc6E0
         Oi8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="i6G/peu4";
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id d12si96598lfi.2.2020.03.11.05.29.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 05:29:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="i6G/peu4";
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id a25so2391328wrd.0
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 05:29:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xrd1r2+ErUrvhfa8pV3grBNcYtg+qEYunSbdVR/PeG4=;
        b=i6G/peu4vK92XoScBXMSg+bAm4JLfqr28mWqKuPD0MgqyrS1bql0VhYVgPlyhLh6Yy
         RRCLzdidECe7IMAsi/u5Z6uu96UX91hpig90f0azpRiCFFbJDt3eFXvAnQ5ePmJmyrM2
         zFbCayRfFYg/C6zlEaUSUe9v/3HaXwh4S6U+RK7+xfBGEdlloTBR2mpoLv64YVFO/ItR
         yVuwJv1YscowjkfgfFmwS4tVb9qKTPU1k3u/7r+/ISy0ZEh8OOvNZw8heof/vuOPOGLA
         HY9+gyezhVLXa7MTBX+l1D1vzCNd4df8HUm3Ej00SjLujG+GhPpuvyxblA665YXO6x2p
         oxnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xrd1r2+ErUrvhfa8pV3grBNcYtg+qEYunSbdVR/PeG4=;
        b=m+cgUCsiHJycr/OkPCX2fO+URRzAYASulwSmx9Yao2/F8QubtOFTMS9TzvYlvG3ltm
         rROsiQIbvhHWpTojIK5q+h+HpwtJr08en/9SyvM2QGcCGGp1FXMr2vHFVuzxaMydXEnI
         26QKUJDgCDTDSCXLM0aVukW0d2jsmbxJYjmzquUmwVdW813odC1Mdbf2l+TLnRAQivo9
         mflAXfeTxql+NEYJWJtHZ4UFnDX8HBQRlmtNeqEB8Jls9AFxEc9VtEAEcYD217wdSAla
         znbc1Snw4jgBbq57y1p9b3qlrvwy8hAeQVk+E51FhTTYQsjqaTdGIfwlHShuDLlDhZ6G
         9pmQ==
X-Gm-Message-State: ANhLgQ1M1jWb3deD4kmgWH3PmEaV3nneijteixEFjWXiHisksGNlMiJs
	laH1an33Laf4vV7UE7h+xa8yvrJ+KGTKGHG2jtM=
X-Received: by 2002:adf:806c:: with SMTP id 99mr4235885wrk.78.1583929748360;
 Wed, 11 Mar 2020 05:29:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200311073418.7476-1-payalskshirsagar1234@gmail.com> <20200311125817.5e6c362e@elisabeth>
In-Reply-To: <20200311125817.5e6c362e@elisabeth>
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Date: Wed, 11 Mar 2020 17:58:56 +0530
Message-ID: <CAJyzNh=iPR7KZ8PP7cg+_7TXHiuuxfTgo_FtWRiuqs54X4Ui9A@mail.gmail.com>
Subject: Re: [PATCH v2] [Outreachy kernel] staging: rtl8188eu: hal: remove an
 unneeded variable
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Larry.Finger@lwfinger.net, Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000000012fa05a09362fd"

--0000000000000012fa05a09362fd
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 11, 2020, 5:28 PM Stefano Brivio <sbrivio@redhat.com> wrote:

> On Wed, 11 Mar 2020 13:04:18 +0530
> Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:
>
> > Remove unneeded temporary local variable, cleanup suggested by
> coccinelle.
> >
> > Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> > ---
> > v2: Change in commit message and changelog.
>
> Note, mostly for the future: especially if changes to a patch are not
> trivial, it's a good practice to attribute suggestions to their
> authors. If the notes come before "---" (as it's the case for
> networking changes) that also ends up in the git history.
>
> For example, this could have been:
>
> v2: Change in commit message and changelog (as suggested by Julia
>     Lawall)
>
> or even:
>
> v2: Change in commit message and changelog (Julia)
>

Okay, I will take care from next time.

Two examples (there might be more complicated ones or different styles,
> I just could remember and quickly find these):
>
> commit 1e47b4837f3b ("ipv6: Dump route exceptions if requested")
> commit 3c4287f62044 ("nf_tables: Add set type for arbitrary concatenation
> of ranges")
>
> Anyway, it looks good to me!
>
> Reviewed-by: Stefano Brivio <sbrivio@redhat.com>
>
> --
> Stefano
>
>

--0000000000000012fa05a09362fd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Wed, Mar 11, 2020, 5:28 PM Stefano Brivio &lt;<a href=3D"mailto:sbrivio@=
redhat.com">sbrivio@redhat.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">On Wed, 11 Mar 2020 13:04:18 +0530<br>
Payal Kshirsagar &lt;<a href=3D"mailto:payalskshirsagar1234@gmail.com" targ=
et=3D"_blank" rel=3D"noreferrer">payalskshirsagar1234@gmail.com</a>&gt; wro=
te:<br>
<br>
&gt; Remove unneeded temporary local variable, cleanup suggested by coccine=
lle.<br>
&gt; <br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payalskshirsagar=
1234@gmail.com" target=3D"_blank" rel=3D"noreferrer">payalskshirsagar1234@g=
mail.com</a>&gt;<br>
&gt; ---<br>
&gt; v2: Change in commit message and changelog.<br>
<br>
Note, mostly for the future: especially if changes to a patch are not<br>
trivial, it&#39;s a good practice to attribute suggestions to their<br>
authors. If the notes come before &quot;---&quot; (as it&#39;s the case for=
<br>
networking changes) that also ends up in the git history.<br>
<br>
For example, this could have been:<br>
<br>
v2: Change in commit message and changelog (as suggested by Julia<br>
=C2=A0 =C2=A0 Lawall)<br>
<br>
or even:<br>
<br>
v2: Change in commit message and changelog (Julia)<br></blockquote></div></=
div><div dir=3D"auto"><br></div><div dir=3D"auto">Okay, I will take care fr=
om next time.</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">
Two examples (there might be more complicated ones or different styles,<br>
I just could remember and quickly find these):<br>
<br>
commit 1e47b4837f3b (&quot;ipv6: Dump route exceptions if requested&quot;)<=
br>
commit 3c4287f62044 (&quot;nf_tables: Add set type for arbitrary concatenat=
ion of ranges&quot;)<br>
<br>
Anyway, it looks good to me!<br>
<br>
Reviewed-by: Stefano Brivio &lt;<a href=3D"mailto:sbrivio@redhat.com" targe=
t=3D"_blank" rel=3D"noreferrer">sbrivio@redhat.com</a>&gt;<br>
<br>
-- <br>
Stefano<br>
<br>
</blockquote></div></div></div>

--0000000000000012fa05a09362fd--

