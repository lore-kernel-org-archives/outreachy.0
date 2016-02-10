X-GM-THRID: 6249484870068731904
X-Received: by 10.182.181.100 with SMTP id dv4mr38016667obc.47.1455106687324;
        Wed, 10 Feb 2016 04:18:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.225.71 with SMTP id ri7ls1166629igc.14.canary; Wed, 10 Feb
 2016 04:18:07 -0800 (PST)
X-Received: by 10.51.17.34 with SMTP id gb2mr9080201igd.10.1455106687053;
        Wed, 10 Feb 2016 04:18:07 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ob0-x236.google.com (mail-ob0-x236.google.com. [2607:f8b0:4003:c01::236])
        by gmr-mx.google.com with ESMTPS id k15si1737623igt.3.2016.02.10.04.18.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 04:18:07 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::236 as permitted sender) client-ip=2607:f8b0:4003:c01::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::236 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x236.google.com with SMTP id is5so24074965obc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 04:18:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=vF04nAEnn2FW6vQtDJsP59T1TGt0uNt+oMfV/eSBfIA=;
        b=qoJaHG1mgTciM+uLRWX8KIiqEOqV5XxwJEBaGNP5B5WXhmOsbi+MCBEqd4PmwiZLEd
         QhdiPnV24CFqayIGZFT2IHBxM/8pEFFxpZOj7u5tc+ki2LFCtjJAxjEG+8mhbkJCHtXV
         fjZXER+zKUiNZNvVKIkslOWbKVgmGUip4XziwZf7xSJp3OZYgm8h2A/NQmcpOHbRyZid
         UnlLPw3tympYlqoUeYynDTDsYPSslYHI0sZh5m325jMCilNdaV04fUXiIzMGQQCnGU4d
         XMAFykzLyYFBtZ2t3k5G//tuVAZwOuLJePgn13rbwNnYFNgAOPv1qwkOian/o3MLcGJJ
         SgZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=vF04nAEnn2FW6vQtDJsP59T1TGt0uNt+oMfV/eSBfIA=;
        b=faW/nnvizT7M0GiKrC8qtvMnv5EHDHie/z+pLxpi4nn3Qygp/dcNC0Rk6u9LUGTibl
         3/zSAUAcZELvH6a3Z0aVpWPXwj9+EpYHtytLj705xJQCXRJ6tK3LISuTVaw79SFz9VUj
         9PusdbkISn3ql+00r42PCfb9r/BZ/enNf+hEg2kLisSjQ/rZh7ZMNmllGqwlQudCy3NV
         lsWlhXK14rRZltG90soES+NADJa0lfK3d4yaOT/8Wmg+xpDFwLhAaMpQM2/thQmvK/q2
         ckxQz2eMQVjfnYf9KLcO8TSHsoSBPkh55HmCrtqFQO5E9pLoMMP58gYYYxv61DSYo+dq
         VajA==
X-Gm-Message-State: AG10YOQOhyGLcjrWZ2qjgnXOKhFspoDylShTyyEYVrfJCHZk34V9FAQq5HUVv2COQ6ZmuiIxyXJGWB2qvRhbNg==
MIME-Version: 1.0
X-Received: by 10.60.146.169 with SMTP id td9mr35557106oeb.32.1455106686890;
 Wed, 10 Feb 2016 04:18:06 -0800 (PST)
Received: by 10.202.170.195 with HTTP; Wed, 10 Feb 2016 04:18:06 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602100955360.2486@hadrien>
References: <20160210073225.GA5118@janani-Inspiron-3521>
	<alpine.DEB.2.02.1602100751090.2050@localhost6.localdomain6>
	<CANnt6X=tpDfOvw1934mFiuUKL1apk+dJ7C8Ws7wzW7ko0nzHGw@mail.gmail.com>
	<alpine.DEB.2.10.1602100955360.2486@hadrien>
Date: Wed, 10 Feb 2016 07:18:06 -0500
Message-ID: <CANnt6XmWEm3wf3yM_eQGWrFZKwNPNjNAxGF2jrnA7-QOzj4YOw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: Modify arguments of
 sizeof() to pointer variables
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=047d7b45047a2edb79052b696db1

--047d7b45047a2edb79052b696db1
Content-Type: text/plain; charset=UTF-8

>
>
> >
> > I will send a v2 after making these changes.
>
> In the v2, also make it clear that you have checked that the current type
> is the same as the type of the thing that you are putting it its place.
>
> I'm sorry I sent v2 before I read this. I will send v3 incorporating this.

Janani.

> julia
>
>
>

--047d7b45047a2edb79052b696db1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><span><br>
&gt;<br>
&gt; I will send a v2 after making these changes.<br>
<br>
</span>In the v2, also make it clear that you have checked that the current=
 type<br>
is the same as the type of the thing that you are putting it its place.<br>
<span><font color=3D"#888888"><br></font></span></blockquote><div>I&#39;m s=
orry I sent v2 before I read this. I will send v3 incorporating this.</div>=
<div><br></div><div>Janani.=C2=A0</div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span=
><font color=3D"#888888">
julia<br>
</font></span><div><br><br></div></blockquote></div><br></div></div>

--047d7b45047a2edb79052b696db1--

