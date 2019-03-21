X-GM-THRID: 6670698779080916992
X-Received: by 2002:a1c:9e0c:: with SMTP id h12mr139573wme.3.1553153611382;
        Thu, 21 Mar 2019 00:33:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c34a:: with SMTP id l10ls70435wmj.14.gmail; Thu, 21 Mar
 2019 00:33:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwh1zAqSKmL6rJmK0OdWLm1aXEKovVnXoJCfTUhR+Y/ovvMpQJRpHkA+5DltP7pVj6F45MQ
X-Received: by 2002:a1c:c00d:: with SMTP id q13mr142794wmf.5.1553153610509;
        Thu, 21 Mar 2019 00:33:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553153610; cv=none;
        d=google.com; s=arc-20160816;
        b=sJMvch2uBs1JWrTX/CllULHF1rAe+dpd1HDLGTSaCzrQszef9XPMfA1h0E51JyD/yU
         m94/RsPXmpeLpquIQLlo1/OmngmU4mAAHFX+WYuesJZtHHbnEZkKTYaBJnn4Gu2ybNNR
         on1Kjum89GRmRFZl+zUZjZl3XaYNxaODa7+8cW+jDdo0qlR2vblZeM/XyX6Ebmg6MM5q
         UBHRfREiaQdiENy9oozWp9QWnuXAMzEO4nvAzNtIu+eSEZWBRpIDFthZjf2fj0OfQNGH
         2+8XpLvV1XuJkgtWhG2TeSVl5ZO337JB+zW8xREypL44CrQeaz+oW7O6G145NPEEHZKh
         /NUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7UtBR8hJG9x81hCLr0+EphJs90PXJVmR3l5etNTpmLY=;
        b=JN9qLuWVye0usy7JOHMTfDuHmPVJV/8QeFKyT9ILZ0SF702bQJWQXioAj3ABuQ/cGR
         lN+N32Ru2IQqYk5RCvr49VadHsPrkhLmewnAYljvHwUqsvOblQXzmFIEb2OpMVhfEEVb
         ZU/+VuxgnZgKVT15zYySR8lNJDPqhHI5DLf7Ap5vP5qS4PPHkUwar/uh3U1jXeEZdBDt
         cvaLuHIeA93Wsu1Tjnxt78ZXfkvS2WFRkYGTnvhewA5XUsmKoDUVBY8puWFKktaPydu6
         40OO3H4EEkl0lNm6lOBdm9BSS+xoQnEc2omIUYsqBTizol+u183OeH2XOjTvSjm2IQbh
         HXRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JNHEO4P4;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com. [2a00:1450:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id f14si138090wme.2.2019.03.21.00.33.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 00:33:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::22b as permitted sender) client-ip=2a00:1450:4864:20::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JNHEO4P4;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x22b.google.com with SMTP id n18so4407525ljg.11
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 00:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7UtBR8hJG9x81hCLr0+EphJs90PXJVmR3l5etNTpmLY=;
        b=JNHEO4P4MiAz99WzKdrH/O/6LRO6GsNbH2jDmELXv3vBOEHRBMEoyia70LUCsRBmPf
         IhYyHIekeS0lvJVoKD7h/6npUDW8depSWHA/WxXmnPg3UIgJ4m0KWpa+x/CoPK5h2Mxl
         aRtv8+WZC2GDSrEHCh6Koo2wI4MRicBRqHe8mVwhbEU6ucM0w8oZwFuqj3Qp91e3mAl0
         Sz6ReH1bGjneqX1kDL3rUBbG3AQCpUxgPoQ/oJifzd+NhvcsZMK+0TCkmFMvVoTk0XNI
         YMKTyov3gvvRZdEucbY9GCAyQ3B3C+Ag4iFVaAqG5+sZAqDzB9iO7WVNWuPXAPG/vmOj
         s3Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7UtBR8hJG9x81hCLr0+EphJs90PXJVmR3l5etNTpmLY=;
        b=BRnyzKqKntMxb0YUAAbdjVjaRm7TBOIyXpPvDMuZUz6VQWulUoBAVC75yXFyjR/OBC
         dNKQyz2AeeSOfUCUV1N6Lb96gqQ4J+47v8cgRXNup8wOwP6bSKP3tq+mhK6x1XOGucBK
         Vy3tqIgZpFy69C33xpI3r9IMcbSi3k+pmC6zua0giZMPhdqxKTjHoEZpnyzcMDpuWeSJ
         U5s+qAeVuzNHXwx/veMNMziJTKG0/AGxOq6Y48acWfSwWgK51SgikhaoUpbxb48AjYdZ
         ZuMbGRH2Twjxg3ypzp9+Ld/bazrmHAgwAvt3whhBi9q0ABjsfijaOH1h8tcgpun236dD
         KoKg==
X-Gm-Message-State: APjAAAW+vE8urvfR6hUmf6q0jbmoea5UzGJSGRyr1EBDJ9jVnWYzzZSq
	z1A0IbftEmhhH8h9XoXXhKgU06NPyGiLuAg0CRo=
X-Received: by 2002:a2e:2f04:: with SMTP id v4mr1169870ljv.129.1553153610336;
 Thu, 21 Mar 2019 00:33:30 -0700 (PDT)
MIME-Version: 1.0
References: <1553143070-4067-1-git-send-email-payal.s.kshirsagar.98@gmail.com> <20190321071924.GD28171@kroah.com>
In-Reply-To: <20190321071924.GD28171@kroah.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Thu, 21 Mar 2019 13:03:18 +0530
Message-ID: <CANTOzWGqXaW6jrDOyTyWw0r-w36bBUYi-zO7DyquF3VQ__RowQ@mail.gmail.com>
Subject: Re: [PATCH] [Outreachy kernel] staging: emxx_udc: lines should not
 end with parenthesis
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000039cd41058495c147"

--00000000000039cd41058495c147
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 21 Mar 2019 at 12:49, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Thu, Mar 21, 2019 at 10:07:50AM +0530, Payal Kshirsagar wrote:
> > Adjust code to meet the style of =E2=80=9Clines should not end with
> > parenthesis=E2=80=9D.
> > In file named as drivers/staging/emxx_udc/emxx_udc.c
>
> I do not understand this sentance.
>
> We know what file is being changed, you said so in the subject line.  So
> I do not think this is needed.
>
> Please fix up and resend.
>
> okay, i will send v2 for this patch.
payal

> thanks,
>
> greg k-h
>

--00000000000039cd41058495c147
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, 21 Mar 2019 at 12:49, Greg KH=
 &lt;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.o=
rg</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">On Thu, Mar 21, 2019 at 10:07:50AM +0530, Payal Kshirsagar wrote:<br>
&gt; Adjust code to meet the style of =E2=80=9Clines should not end with<br=
>
&gt; parenthesis=E2=80=9D.<br>
&gt; In file named as drivers/staging/emxx_udc/emxx_udc.c<br>
<br>
I do not understand this sentance.<br>
<br>
We know what file is being changed, you said so in the subject line.=C2=A0 =
So<br>
I do not think this is needed.<br>
<br>
Please fix up and resend.<br>
<br></blockquote><div>okay, i will send v2 for this patch.<br></div><div>pa=
yal<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div>

--00000000000039cd41058495c147--

