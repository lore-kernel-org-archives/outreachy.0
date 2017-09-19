X-GM-THRID: 6467212349549838336
X-Received: by 10.176.19.40 with SMTP id g37mr193900uae.44.1505802559818;
        Mon, 18 Sep 2017 23:29:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.190.79 with SMTP id i76ls6772593itf.17.gmail; Mon, 18 Sep
 2017 23:29:19 -0700 (PDT)
X-Received: by 10.159.207.139 with SMTP id z11mr146502plo.31.1505802559010;
        Mon, 18 Sep 2017 23:29:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505802558; cv=none;
        d=google.com; s=arc-20160816;
        b=QmKVrQTgyVryQb3VuyyYcNhHNK4n8Za1Zcpm25xNNZ+kWPFrjym4jpxwKhvm4MNdBR
         5FLUubgpbOiTKSaUfyGvxPAsnkmDZlo4tpZREkbVariOO/tyCS+D11avmGBrOUUvYBBa
         V6IZqoA3/v31EXoJ8TeC48fYvUnolUYeHQ0Lt+U3zMavKIp4xZ8lx9UMjjQLwo7u6icf
         Cdn3PSChT9+0Ctw/hjK6r1/Cufl9Hqi87NVC7uvHNKIf18uuIplhe2OYRiX5E26Ite4n
         KjbhJQa+iFxiRRkqo2+7Tm5ePp+iK1+rgTyJZ7A3rCTQErzf4uTp7wZJaiAg4/UEd38y
         UdRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=t2ZIlO8rMzKy3nhISsKkjsjvMC+laaDOtIzMIgaZUB8=;
        b=NctEn0uD21HyqGKrPbI31ibab+jUBK02SurPiwWeUBrxGBGu40p+VesgCsw9iIHzqo
         NVz6y53aglPu6eu6Vk3ZPQgA+1sknjnBIsdD+95I+y7a7kkBFf3IzYSa82o14yJsY2Y/
         1vi0ycc3J7DP1tLHICPy0bvHvey+E0ipMgeEqTp8c7/Hu1Rs1gdg6yLo2wmHxMJnn8Qk
         Q30fVXFjo2041JoJTkydEqg5thfBa7yFPS2MHbBMYC8SNNV+OpugusKKKqulzMyOL8eC
         G/WvJCESAlMtrAxCvEcL9bDRkj9kUjXeRYYiFrCidv2pWcQTienNOtI51zeSBXgxM0Mz
         8P6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MRlJ+lBB;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::234 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-qt0-x234.google.com (mail-qt0-x234.google.com. [2607:f8b0:400d:c0d::234])
        by gmr-mx.google.com with ESMTPS id g186si399673ywc.29.2017.09.18.23.29.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 23:29:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::234 as permitted sender) client-ip=2607:f8b0:400d:c0d::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MRlJ+lBB;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::234 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x234.google.com with SMTP id s18so2768840qta.3
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Sep 2017 23:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=t2ZIlO8rMzKy3nhISsKkjsjvMC+laaDOtIzMIgaZUB8=;
        b=MRlJ+lBBNOQmZlxfqAEyCYdKV7LM0ZUj9nKOPgB7prHTK+UHaZdh24nWDZ/KJEOoJ9
         mvm+bEU8jUzAcQuKVBe12Lvq1Yc8ATJUFU8NhHKAhKrGYESnEvJvCnkEEGtM7CpEX5/k
         oJWpjs0kSo2MeBwdM0KQ41xuEixNKfKPFQo+qdoS/WuBovKCwDmF0lmwWityJQQFwOoQ
         pV53BFWw6fLRLLNKj+uelFFoiACU+ch991uiwsGHjCx6jiXo1ZHrj/CFLtfDIyjI44aN
         9mNXeycrds79+oSYk0gAAeWPVBWwvD6aOwatbWDm9qwPuUTBljbpbXuMtnCdSs6VYNiB
         YF2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=t2ZIlO8rMzKy3nhISsKkjsjvMC+laaDOtIzMIgaZUB8=;
        b=kX9wAEzHGg141Twd4XrAG02WiLM/DcKEvNgMYCbIVVTXrvf670TcQL/F63Mypt4wsC
         03WLHrssPlQP5VcqIYskWi8/96onEhxSJtDZeRiwjpQQxfhXJfJPJm3aTm8u5y6Qx0bD
         mFE/jGm7HhGPgJD7HNh6yvcxFc/or90SXqTofadw28jexFZ8BVmLGXJII94AUdk0Rucw
         8kvr47vEH6wUQrwdweqtDCJedtX+SYhr7sb1KGY5Dswu8UEHd5qmlZ+QGlZDZ6yQJnX6
         4+vM10LPCdDL6VR9y9gRUSk5g3zGXKyx0rkKbCocAkdRccdts9YkJEnmmJuufwwCERp6
         1bcw==
X-Gm-Message-State: AHPjjUi6zs955QSyBC6lWSS8he03SWUnu0yEBxjVM3oP2YC5r55BcoqQ
	f3MJO/enqIMdkv7IRSr7+jgAxAKQk4U2Rs5NNz5dTw==
X-Google-Smtp-Source: AOwi7QD5wbRytgvHQ/liHu6a93S2vUJoJo2e5kXyg0n34CCk6usW4XvwSYPd9nIhZMYOC7lsBKUfaZtHm7bo8LuR/0U=
X-Received: by 10.200.41.232 with SMTP id 37mr464107qtt.47.1505802558762; Mon,
 18 Sep 2017 23:29:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.18.240 with HTTP; Mon, 18 Sep 2017 23:29:18 -0700 (PDT)
In-Reply-To: <20170919061019.GB1628@kroah.com>
References: <20170918200649.vpfscgyeuibkvifi@fireworks> <20170919061019.GB1628@kroah.com>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Tue, 19 Sep 2017 09:29:18 +0300
Message-ID: <CALta04zm+not=rSAykTa43fvv=hPX8w3nA9SpsGWtkjjyEPWwA@mail.gmail.com>
Subject: Re: [PATCH] Staging: media: atomisp: pci: Fix style issues
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, mchehab@kernel.org
Content-Type: multipart/alternative; boundary="001a1135b5ac9df460055984fa8e"

--001a1135b5ac9df460055984fa8e
Content-Type: text/plain; charset="UTF-8"

Thank you for reviewing it! I am thinking to resend it as a
patch set because all the fixes are related to a single file.
Is it OK?


Regards,
Georgiana

On 19 September 2017 at 09:10, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Mon, Sep 18, 2017 at 11:06:49PM +0300, Georgiana Chelu wrote:
> > Improve the coding style by fixing the following warnings/errors:
> >       * Space prohibited before that ','
> >       * Missing a blank line after declarations
> >       * Prefer 'unsigned int' to bare use of 'unsigned'
> >       * Open brace '{' following function definitions
> >         go on the next line
> >       * Comparisons should place the constant on the
> >         right side of the test
>
> That's a lot of different "things" to be doing all in one patch.  I
> don't normally accept patches like this, please break it up into "only
> do one type of thing" per patch, just like the rest of the patches on
> this mailing list.
>
> thanks,
>
> greg k-h
>

--001a1135b5ac9df460055984fa8e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Thank you for reviewing it! I am thinking to res=
end it as a <br></div><div>patch set because all the fixes are related to a=
 single file.</div><div>Is it OK?<br></div><div><br></div><div><br></div>Re=
gards,<br></div>Georgiana<br></div><div class=3D"gmail_extra"><br><div clas=
s=3D"gmail_quote">On 19 September 2017 at 09:10, Greg KH <span dir=3D"ltr">=
&lt;<a href=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank">gregkh@=
linuxfoundation.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><span class=3D"">On Mon, Sep 18, 2017 at 11:06:49PM +0300, Georgiana Chelu=
 wrote:<br>
&gt; Improve the coding style by fixing the following warnings/errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0* Space prohibited before that &#39;,&#39;<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0* Missing a blank line after declarations<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0* Prefer &#39;unsigned int&#39; to bare use =
of &#39;unsigned&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0* Open brace &#39;{&#39; following function =
definitions<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0go on the next line<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0* Comparisons should place the constant on t=
he<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0right side of the test<br>
<br>
</span>That&#39;s a lot of different &quot;things&quot; to be doing all in =
one patch.=C2=A0 I<br>
don&#39;t normally accept patches like this, please break it up into &quot;=
only<br>
do one type of thing&quot; per patch, just like the rest of the patches on<=
br>
this mailing list.<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div><br></div>

--001a1135b5ac9df460055984fa8e--

