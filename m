X-GM-THRID: 6802879895263248384
X-Received: by 2002:a1c:e918:: with SMTP id q24mr4106196wmc.25.1583937892179;
        Wed, 11 Mar 2020 07:44:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:4b06:: with SMTP id y6ls433139wma.3.canary-gmail; Wed,
 11 Mar 2020 07:44:50 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv9rz4i8DAFZw9lYjvZCErHeXO1AYDusJtWbrS1vm/dP+/5NcJsVh/lYe9gg6Ys28aGhSH5
X-Received: by 2002:a05:600c:20c9:: with SMTP id y9mr4370040wmm.83.1583937890795;
        Wed, 11 Mar 2020 07:44:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583937890; cv=none;
        d=google.com; s=arc-20160816;
        b=kVB21myPfzWmrWpSLGwn5V7ktGqvO52e1Z3Feyk8qx9UK/gs/M8opf+YJhWV8/DK2g
         DCvaG8mI5UIFxQw58UZLFx9u2d8pCecqtGYwPmY24K9CeNlxU84NXmiT9+55R25eL4La
         c1HQij9GTff2mPNQjvNOM7SmN6hfrbaPCgbJyGyzKh9V16B/9H9tzXpvygE9g0yKUAAN
         XT3o6+0GTXuzB6XTM8uz0JKpudtrr4yV5XhOhMMlttKq92/bqI0DarqBih0EkD4gmeIF
         4JNAJ/hMkvMxmKmta+VsgRecbH6ljBHqCaiKcrausZW5JHJ7+CcxBowxHKlw9SWNU9I4
         cveQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yU3RO6fnpwoWEyi5olFt7sQoYDhxn4fg6mI5zMlnKSQ=;
        b=Ulmfemwn+VAb64/198tZUEdLUqFQ+OiE0DMwt8nb1+Idcjfi8b4PiRUwhfDmU9muH0
         gGWghea8xtfPKNG6ZZIrLXn22V3fKjCMgtxY2CziDVlriTmwi20QraXBg43GIo2v3o+7
         3hlXVkKTRTKruRMfDbZ6GcvFGpxWHkdRTgSahp/20bQH7QqELJ/Mf0FPqlMPNc4MLZX4
         sqW75dEtwLStnELJT1PAhO63hsod/KcBmSS9aXVhjBJIRe35H4AHWeEd7VPUbtxv6lLg
         KZChPDngltb8OL/DWHqUdKG5ex83ufVQG557ixUpjRNDr9IhfI3zbGGV0SXIYVhUKgkM
         xieg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MOy0QMMl;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id m2si281602wmi.3.2020.03.11.07.44.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 07:44:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MOy0QMMl;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id m9so2934785wro.12
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 07:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yU3RO6fnpwoWEyi5olFt7sQoYDhxn4fg6mI5zMlnKSQ=;
        b=MOy0QMMljseJ0qnoVcODjKBfAxvavYG7L7I+153qz7b072oirWHP1FJlcliWfXyeDO
         EPcnBHGGaWnMhpSZ8JiJMcmUA1tCenWdseWgYAuMr/nW+3cZuaBlUfTLf/n5XiiqpqsK
         yj7P3EF6uVoB20ifMWal8wQu+B0JcD0c2E23i7qM+nIeDwEsr0IvDNZmmfimiqcLnyNV
         D0o1ZvpNqwnRwluEweUstvPZd7gwUYkh5bRAW4eAr6XpypIpvTLnKUGnskoWdqNr4rwE
         5knTVYrorE8F1AHvg7vR6hAVXm7epg9ysEvPjfuqBhQxJoBT+1JRNQgYrJXjIM1s99Q1
         7/hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yU3RO6fnpwoWEyi5olFt7sQoYDhxn4fg6mI5zMlnKSQ=;
        b=n57XLTKFnXCLvrta4iFa7xF+uUcWnJ0jeXTFYx/jOP2iC7LKRbf5h3EvuPxlAbnvz+
         Fe0jo6dWk2CEFERjNmUN7JOtMlD5UeTZVLUtPtND6dITTkDBEhLRebtBad8XR275BpLI
         8TVSqtSeqL0vmOyOSDePt+oCuhX7e+VPZOAdenvbixTKeQpGSrxqbaIMcRrE/pUFieQf
         K96hDQCyP/VGCyzjtVvC6TTw4wk3wtXjN/+C1zFVZ+JWmMGeIMDwOUKW8sxduGurqgJV
         SJCjXv9QLRpKU7+iF+iV3FkjUvGl8O6WFeJwAIEQpMApsd8hhw/YXfxq8sGmFcyQMWVl
         1Nig==
X-Gm-Message-State: ANhLgQ2TD/yaDwwTaSno2yWdXNJp50Ka/8vMDSFD3hYtsIOs9PAzwvE8
	H7VpaeSXeG4i35Zim2r0o4Whn0pcENiVexTytao=
X-Received: by 2002:adf:b317:: with SMTP id j23mr4872502wrd.413.1583937890443;
 Wed, 11 Mar 2020 07:44:50 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1583918265.git.payalskshirsagar1234@gmail.com>
 <cf99101e09f79788fd87ad9ed455c5ef363b261f.1583918265.git.payalskshirsagar1234@gmail.com>
 <20200311130807.02e32fc8@elisabeth> <CAJyzNhmYR0e2Z6YMsfcMdt81zDEn+ReapnPs=PpMaxOMVgANxA@mail.gmail.com>
 <20200311134418.468f571a@elisabeth> <CAJyzNhmd8cT9QEiK_YkdYEBn+Ad8zgJCavWW9PBo6KtgRd+h1w@mail.gmail.com>
 <20200311153151.7e94f566@elisabeth>
In-Reply-To: <20200311153151.7e94f566@elisabeth>
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Date: Wed, 11 Mar 2020 20:14:36 +0530
Message-ID: <CAJyzNhkd+eBh+DPbQWRCLushYFRTRWKNF=krY5AJG25U56=hDQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] [Outreachy kernel] staging: qlge: qlge_ethtool.c:
 remove an unneeded variable
To: Stefano Brivio <sbrivio@redhat.com>
Cc: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com, 
	Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000004e66ff05a09547fc"

--0000000000004e66ff05a09547fc
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 11, 2020, 8:02 PM Stefano Brivio <sbrivio@redhat.com> wrote:

> Payal,
>
> On Wed, 11 Mar 2020 19:16:21 +0530
> Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:
>
> > On Wed, Mar 11, 2020 at 6:14 PM Stefano Brivio <sbrivio@redhat.com>
> wrote:
> >
> > > There are other graphical or text-based clients (Evolution, pine,
> > > sylpheed, KMail, many others) that can also be used for this purpose. I
> > > would suggest that you look at screenshots, maybe play with some of
> > > them, find one you're comfortable with, and set it up.
> > > I followed every step of setting up the gmail as mentioned in
> tutorial, I
> > > don't know why this is happening;(
>
> I guess you set up git to play along with GMail, and that's fine to
> send patches -- I see it's working properly.
>
> But, for this discussion, are you sure you are using an actual email
> client (and not a browser connected to gmail.com)? That is, are you
> using one of those programs I mentioned below?
>
> Yes I am using the Gmail not in a browser.
>
>           Sir I am having trouble with adding [Outreachy Kernel] [PATCH]
> prefix to the subject, I am not able to add these two at the same time.
>                           Please suggest me something.

-- 
> Stefano
>
>

--0000000000004e66ff05a09547fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Wed, Mar 11, 2020, 8:02 PM Stefano Brivio &lt;<a href=3D"mailto:sbrivio@=
redhat.com">sbrivio@redhat.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">Payal,<br>
<br>
On Wed, 11 Mar 2020 19:16:21 +0530<br>
Payal Kshirsagar &lt;<a href=3D"mailto:payalskshirsagar1234@gmail.com" targ=
et=3D"_blank" rel=3D"noreferrer">payalskshirsagar1234@gmail.com</a>&gt; wro=
te:<br>
<br>
&gt; On Wed, Mar 11, 2020 at 6:14 PM Stefano Brivio &lt;<a href=3D"mailto:s=
brivio@redhat.com" target=3D"_blank" rel=3D"noreferrer">sbrivio@redhat.com<=
/a>&gt; wrote:<br>
&gt; <br>
&gt; &gt; There are other graphical or text-based clients (Evolution, pine,=
<br>
&gt; &gt; sylpheed, KMail, many others) that can also be used for this purp=
ose. I<br>
&gt; &gt; would suggest that you look at screenshots, maybe play with some =
of<br>
&gt; &gt; them, find one you&#39;re comfortable with, and set it up.<br>
&gt; &gt; I followed every step of setting up the gmail as mentioned in tut=
orial, I<br>
&gt; &gt; don&#39;t know why this is happening;(<br>
<br>
I guess you set up git to play along with GMail, and that&#39;s fine to<br>
send patches -- I see it&#39;s working properly.<br>
<br>
But, for this discussion, are you sure you are using an actual email<br>
client (and not a browser connected to <a href=3D"http://gmail.com" rel=3D"=
noreferrer noreferrer" target=3D"_blank">gmail.com</a>)? That is, are you<b=
r>
using one of those programs I mentioned below? =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<br>
Yes I am using the Gmail not in a browser. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 Sir I am having trouble with adding [Outreachy Kernel] [PATCH=
] prefix to the subject, I am not able to add these two at the same time. =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Please suggest me something. =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</blockquote></div></div><div dir=
=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
-- <br>
Stefano<br>
<br>
</blockquote></div></div></div>

--0000000000004e66ff05a09547fc--

