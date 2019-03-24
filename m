X-GM-THRID: 6671816179609239552
X-Received: by 2002:a5d:4d42:: with SMTP id a2mr12928986wru.130.1553419807962;
        Sun, 24 Mar 2019 02:30:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:6c01:: with SMTP id h1ls1699557wmc.13.gmail; Sun, 24 Mar
 2019 02:30:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz0rZAR9a7dNAVQsVnZQM8r6feNak+NXtL9unSick67/Z6CuNMylo/CLw8/gmaP9Q8Omhrk
X-Received: by 2002:a1c:9d4c:: with SMTP id g73mr2268148wme.48.1553419806965;
        Sun, 24 Mar 2019 02:30:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553419806; cv=none;
        d=google.com; s=arc-20160816;
        b=tvpOGf8K/Dq8NoSHvxgoU4zosi8AG0yXdoTulAWCyh5XYcbiSO3JL9fslD/yzO5Xw5
         MDWtEqFWX3F53AYN68ONyqhBpxb4F7QINs4QfyJwnP0uQ2azxVkPO3un8sem0mFBr6Jq
         AGqU3lzp4L+joRKVrgnmkI5QbLngC/jHktrYlxFCT557LG9voMDvl/H0lYNzCWjoSY0B
         wUYHRORvIO4h3Kx1vsAcK3sedWX6KTkYUv10NmruoxeZlLgC/vq7z1Rw0Ydjz+Bn3X2n
         I3AmlWZHD5nd0Ligc3dstppYesvpMT2zzPR0XKGQtIXwfRz/Q3QvwEEK800NWHrf9me3
         T95Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=k2VggqBwjcqg8M7Dkq2nzBScmAnm6wDqI4TibNXQj5Y=;
        b=mK4fm5k95UwOlNWw+QwJHLgAmaAWa/qjGntb+O6f1MJn9daDLQ/Eltk07xhYVbg0/r
         QwdKWVrXUnLfruzA7y7oLfnLR6O0BjYTkshreY1XONMfm4IV7gbz9HEUZqvUthB9pL95
         P7RxR2dJC7EgraVaDFx8EDuI2rWtgPMiyj3Ei0tB/1i8FScd5EJUQFQzNbxGSRsTyS7J
         FlQlj7CTF867RgKyW+rmZz49eR+iQuqizx0XPVvy7bxVFjMQDPah7APw3KJOtDJP6VDt
         zpmXYQ1Ci4gQ1KBRueUAYQBSzVUZtWn4TomJ1NdMUusnBG4aye8p2Hekl9E92rlV8oxA
         0ayA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DMUEKAAY;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id n5si768503wrj.0.2019.03.24.02.30.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 02:30:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DMUEKAAY;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x241.google.com with SMTP id q66so5311676ljq.7
        for <outreachy-kernel@googlegroups.com>; Sun, 24 Mar 2019 02:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=k2VggqBwjcqg8M7Dkq2nzBScmAnm6wDqI4TibNXQj5Y=;
        b=DMUEKAAYKdkMb9//59XAcYOCH0QkKi+CcMhDhM2J0UkJ0LhEHRXEk+tA3GKUdgKDjw
         lsslWVCAE+u0CCJBWWBx0Qqd7ZE2TvY0PE8n16Il5s9ZGHhM0QH6yvtv6WBv6+o0x+py
         zFv7ZYir8sLTf3bw1AMtTFGXubKMdNyVNSArjlkuC7sgp4SYTJqKndE74NVehRY06svr
         2+/biH/D42U+UhfUm9iODvr4BVXHcIhQ+P35uI1OkznZSn9HKUcfTyFN/DpSmYMN++R/
         ibmx4MhmWC/tQoOW0TZnecGPMjQP81tEMfr+R+hGgejwILSWq6P/Mfmyy693taS8htPe
         nV/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k2VggqBwjcqg8M7Dkq2nzBScmAnm6wDqI4TibNXQj5Y=;
        b=UL8kPRXTyEFSsvk0PWZtUEGPrBI5C3S3DEjDeN7PYNy+yUJXaXSXYBjpeeoQm9T0Lc
         JQUfm707gNxRmoXFp4nDrvko1QwF3hWUVIZJWA/blmhk62191XogSztc42a02WePmA0r
         2GGYhsSineiCJBGU7vUv3lBEqw5G3/ydPO8pWy5aAv+F/NAqG5AqcWgPs+ylEU+5tP03
         7qmKgE6oTWilIF17p3s5WYwW1rNDM4Rlbr2ZYVb12Kv6OmO1ZEa5a9wM+r4xhCJX/MM7
         UDiGIG+RelvhXQQJtdmv/m1pTUAurM6bNYQUrdfFdKm9SsqE1pQZqTZ0aYAdm71anMz7
         xqTw==
X-Gm-Message-State: APjAAAURM3/v15y7XwN+IjVwvilZgsiVUQ53776Zm92mM+hJRD7XKO1G
	PaEutOkLLf5S4Hb4lOwK6B9K38VjfhQL60byEf6Ysg==
X-Received: by 2002:a2e:9b4e:: with SMTP id o14mr10209122ljj.189.1553419806543;
 Sun, 24 Mar 2019 02:30:06 -0700 (PDT)
MIME-Version: 1.0
References: <1553406061-8336-1-git-send-email-payal.s.kshirsagar.98@gmail.com> <20190324090840.GA4651@kroah.com>
In-Reply-To: <20190324090840.GA4651@kroah.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sun, 24 Mar 2019 14:59:54 +0530
Message-ID: <CANTOzWFPNrkkO5Ah3g4WgTw1RzgBUM42OyccPYK_jsyz=t-k9Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/6 v2] staging: rtl8712: avoid
 camelcase variable name 'backupPMKIDList'
To: Greg KH <greg@kroah.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000c194c40584d3bb24"

--000000000000c194c40584d3bb24
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 24, 2019, 2:38 PM Greg KH <greg@kroah.com> wrote:

> On Sun, Mar 24, 2019 at 11:11:01AM +0530, Payal Kshirsagar wrote:
> > Eliminate camelcase variable names to fix the style issue =E2=80=93 =E2=
=80=98avoid
> > camelcase=E2=80=99.
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> > Changes in v2:
> >       -backup_PMKID_List replaced with backup_PMKID_list
>
> Is this just a single v2?  You sent out a whole new series though?
>
> I am totally confused as to what to review here and what is the latest
> version.  Please resend a new series, as "v3", on each patch, so that I
> know what to review/apply.
>

Okay,I will resend the whole patchset.
Thanks ,
Payal

thanks,
>
> greg k-h
>

--000000000000c194c40584d3bb24
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Sun, Mar 24, 2019, 2:38 PM Greg KH &lt;<a href=3D"mailto:greg@kroah.com"=
>greg@kroah.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On S=
un, Mar 24, 2019 at 11:11:01AM +0530, Payal Kshirsagar wrote:<br>
&gt; Eliminate camelcase variable names to fix the style issue =E2=80=93 =
=E2=80=98avoid<br>
&gt; camelcase=E2=80=99.<br>
&gt; <br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank" rel=3D"noreferrer">payal.s.kshirsagar.98=
@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt; Changes in v2:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-backup_PMKID_List replaced with backup_PMKI=
D_list<br>
<br>
Is this just a single v2?=C2=A0 You sent out a whole new series though?<br>
<br>
I am totally confused as to what to review here and what is the latest<br>
version.=C2=A0 Please resend a new series, as &quot;v3&quot;, on each patch=
, so that I<br>
know what to review/apply.<br></blockquote></div></div><div dir=3D"auto"><b=
r></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"></blockquote></div></div><div dir=3D"auto">Okay,I will resend the =
whole patchset.</div><div dir=3D"auto">Thanks ,</div><div dir=3D"auto">Paya=
l</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_qu=
ote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div></div>

--000000000000c194c40584d3bb24--

