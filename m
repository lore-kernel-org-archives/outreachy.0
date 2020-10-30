X-GM-THRID: 6889248551394607104
X-Received: by 2002:a17:906:5793:: with SMTP id k19mr1357948ejq.410.1604045838955;
        Fri, 30 Oct 2020 01:17:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:d981:: with SMTP id w1ls619576edj.2.gmail; Fri, 30 Oct
 2020 01:17:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyBr2xoyioxAW/Z3YY1Kc670qn5fw++y77ZTcFHlEyxdrbZGI/UuZPb5SI/x3bTNqwdGXLH
X-Received: by 2002:aa7:ccc8:: with SMTP id y8mr1054992edt.325.1604045836719;
        Fri, 30 Oct 2020 01:17:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604045836; cv=none;
        d=google.com; s=arc-20160816;
        b=jzJXhF8TjEt7aNh0M7+GiKWwP15UVgstAbqIE7M40JsXXbckVqsWCeSI2VvZmFldGt
         ycDBdgkUdIJhxG6CLootuu5fl3xEOjG5ta/+/KMKzelj4n2DjWNMQbnKFYqpvxfjiman
         RHklG7KDTGM/kL2r9+Yoyt34Bp47VaVuZOXYyAxZmJXeR63DTgUwIQD6MeLru0/o8SBU
         qaySrpOn+7IU1phEfU9xrrm1ffnTfKGmTWfLMnDYVZdptsh8MPoVtlkm+kwEeMmJyhLu
         1K2YI1/xuvXRgMJujOeE2bw9bDemi8yIqwpxZK+cKu8WiS6m1a1gNRHRgPNs2dfnT60U
         P+IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=isq0Cow78/AjEmsqnAVKldd57j9TXBBIw7xg5eblrKY=;
        b=GQDnKwZLqRhxHGn/SEKG9oY4FwjYhH3ZUxiKqC2tjJsQHFRr9edwAmCP+kUiQGtjPD
         GNQfOiMxnqoOVjdQ3mpW7kAFqAy8PYc4RbSk5rlZvnyZxVwEwglwkcOu5aC9l6Sz8wUB
         uZ6kcbFZD4uuNHlqlRUzjhBj0jTIQUwPrbOPgchc4g7RmGFvaYCfWTqkEmrC8USdkA6B
         QaNtxpmKllLYikgCUjEqTOCKx+E0wgIzLZGrhWYd1yGpLlvuMVk2q6QhxD2k0tl5oliR
         GbTwYuUY+Vb5AMzyFxx7r/25RBuOOT7cZJUEK80iSR71/orPN4UibFAixNR8aMLbsSLB
         FQXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="c/hb/uHP";
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sylphrenadin@gmail.com>
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com. [2a00:1450:4864:20::644])
        by gmr-mx.google.com with ESMTPS id h22si237910ejf.0.2020.10.30.01.17.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2020 01:17:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sylphrenadin@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) client-ip=2a00:1450:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="c/hb/uHP";
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x644.google.com with SMTP id k3so7343906ejj.10
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2020 01:17:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=isq0Cow78/AjEmsqnAVKldd57j9TXBBIw7xg5eblrKY=;
        b=c/hb/uHPpL/euinPLxiwhuDRVEc6fOxUTHIPK5BOvMO2df7tzuq5E2aP2XpAnYUu5p
         XefG4t+UJcniO/D9PTpXc/RE1jiaBRoBf4dTME7MFcujBrIIpnqSjJfa2yU4VW7bw9Sh
         rHY7IlUcQKN8vlTXbiWI/ZKGj/Cq7FgsDmIA0OtFZ87yiA68jqNJ7NO/f4eWZoV6VZAa
         KtZcO8GUXDRI7fWkDOBT/7f7lmiEW18gsJmx0t/kyW8A6KiKgAL2hMmeEjL86Nq4qXMH
         Ns9yR5bhFtU+vk2jhPKDP+IYDCWe7RlDKqBr/LbghQPqtccX8XSSeIcoTgIZS2gcOlaZ
         GvBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=isq0Cow78/AjEmsqnAVKldd57j9TXBBIw7xg5eblrKY=;
        b=UvHrRFw0OrxRj9/DB5DXonyYmiqcE2kb9RIJiaiI1mArWUE2OY2NwwjVvMQbjhxOxF
         xHdqMA0ZWRVBZmr3ioyuO9yTGTeQTvl2LdJvPrwLhRgdJREddkX3h6fIkwfGGLriy0/8
         Mlznx+tgPTLnwPf3crPD5vocazsBgoSOKVPmpJHz/1KiQr0sKXoMF/7kT7afwfDgFB7W
         Qe/gzzJBAs1gjaHi+4napl0bbkX+NbbmPw1Jp3Jm/lWzfKFOviHnnKrsOPup/ukNGp2R
         BAn0Ros+xEh2n8/4FIfm+s6O7x8NI441PkCNErNdSuF03J0qreeotjutGWbNR6djy0zI
         9BZA==
X-Gm-Message-State: AOAM532ottyShLpIKZvtADUqN97sj9l0rX0KnkREhoPWAlLzOaw2KCw+
	95W3H8zjHmhbBOcuh6Ei9lbpADvV9t0mUmMc8JQ=
X-Received: by 2002:a17:906:4dd4:: with SMTP id f20mr896882ejw.94.1604045836537;
 Fri, 30 Oct 2020 01:17:16 -0700 (PDT)
MIME-Version: 1.0
References: <20201030032245.GA274478@my--box> <20201030071120.GA1493629@kroah.com>
 <20201030075716.GA6976@my--box> <20201030080316.GA1612206@kroah.com>
In-Reply-To: <20201030080316.GA1612206@kroah.com>
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
Date: Fri, 30 Oct 2020 13:47:05 +0530
Message-ID: <CACAkLupMiH9z4g7WLJ7t-N089_M6QGX6HkPQUATu4VCxDeFAKw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] drm/amdgpu: use DEFINE_DEBUGFS_ATTRIBUTE
 with debugfs_create_file_unsafe()
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Deepak R Varma <mh12gx2825@gmail.com>, Outreachy <outreachy-kernel@googlegroups.com>, 
	Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, amd-gfx@lists.freedesktop.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	melissa.srw@gmail.com, daniel.vetter@ffwll.ch
Content-Type: multipart/alternative; boundary="0000000000004a55c505b2df061e"

--0000000000004a55c505b2df061e
Content-Type: text/plain; charset="UTF-8"

On Fri, 30 Oct, 2020, 1:32 PM Greg KH, <gregkh@linuxfoundation.org> wrote:

> On Fri, Oct 30, 2020 at 01:27:16PM +0530, Deepak R Varma wrote:
> > On Fri, Oct 30, 2020 at 08:11:20AM +0100, Greg KH wrote:
> > > On Fri, Oct 30, 2020 at 08:52:45AM +0530, Deepak R Varma wrote:
> > > > Using DEFINE_DEBUGFS_ATTRIBUTE macro with
> debugfs_create_file_unsafe()
> > > > function in place of the debugfs_create_file() function will make the
> > > > file operation struct "reset" aware of the file's lifetime.
> Additional
> > > > details here:
> https://lists.archive.carbon60.com/linux/kernel/2369498
> > > >
> > > > Issue reported by Coccinelle script:
> > > > scripts/coccinelle/api/debugfs/debugfs_simple_attr.cocci
> > > >
> > > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > > > ---
> > > > Please Note: This is a Outreachy project task patch.
> > > >
> > > >  drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c | 20
> ++++++++++----------
> > > >  1 file changed, 10 insertions(+), 10 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
> b/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
> > > > index 2d125b8b15ee..f076b1ba7319 100644
> > > > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
> > > > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
> > > > @@ -1551,29 +1551,29 @@ static int amdgpu_debugfs_sclk_set(void
> *data, u64 val)
> > > >   return 0;
> > > >  }
> > > >
> > > > -DEFINE_SIMPLE_ATTRIBUTE(fops_ib_preempt, NULL,
> > > > -                 amdgpu_debugfs_ib_preempt, "%llu\n");
> > > > +DEFINE_DEBUGFS_ATTRIBUTE(fops_ib_preempt, NULL,
> > > > +                  amdgpu_debugfs_ib_preempt, "%llu\n");
> > >
> > > Are you sure this is ok?  Do these devices need this additional
> > > "protection"?  Do they have the problem that these macros were written
> > > for?
> > >
> > > Same for the other patches you just submitted here, I think you need to
> > > somehow "prove" that these changes are necessary, checkpatch isn't able
> > > to determine this all the time.
> >
> > Hi Greg,
> > Based on my understanding, the current function debugfs_create_file()
> > adds an overhead of lifetime managing proxy for such fop structs. This
> > should be applicable to these set of drivers as well. Hence I think this
> > change will be useful.
>
> Why do these drivers need these changes?  Are these files dynamically
> removed from the system at random times?
>
> There is a reason we didn't just do a global search/replace for this in
> the kernel when the new functions were added, so I don't know why
> checkpatch is now saying it must be done.
>

Hi,

Sorry to jump in on the thread this way, but what exactly does a 'lifetime
managing proxy' for file operations mean? I am trying to understand how
DEFINE_DEBUGFS_ATTRIBUTE changes things wrt debug_ fs file operations but
can't find many resources. :(

Please let me know if I should be asking this in a different mailing
list/irc instead.

The change seems to be suggested by a coccinelle script.

Regards,
Sumera


thanks,
>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20201030080316.GA1612206%40kroah.com
> .
>

--0000000000004a55c505b2df061e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Fri, 30 Oct, 2020, 1:32 PM Greg KH, &lt;<a href=3D"=
mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex">On Fri, Oct 30, 2020 at 01:27:16P=
M +0530, Deepak R Varma wrote:<br>
&gt; On Fri, Oct 30, 2020 at 08:11:20AM +0100, Greg KH wrote:<br>
&gt; &gt; On Fri, Oct 30, 2020 at 08:52:45AM +0530, Deepak R Varma wrote:<b=
r>
&gt; &gt; &gt; Using DEFINE_DEBUGFS_ATTRIBUTE macro with debugfs_create_fil=
e_unsafe()<br>
&gt; &gt; &gt; function in place of the debugfs_create_file() function will=
 make the<br>
&gt; &gt; &gt; file operation struct &quot;reset&quot; aware of the file&#3=
9;s lifetime. Additional<br>
&gt; &gt; &gt; details here: <a href=3D"https://lists.archive.carbon60.com/=
linux/kernel/2369498" rel=3D"noreferrer noreferrer" target=3D"_blank">https=
://lists.archive.carbon60.com/linux/kernel/2369498</a><br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; Issue reported by Coccinelle script:<br>
&gt; &gt; &gt; scripts/coccinelle/api/debugfs/debugfs_simple_attr.cocci<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; Signed-off-by: Deepak R Varma &lt;<a href=3D"mailto:mh12gx28=
25@gmail.com" target=3D"_blank" rel=3D"noreferrer">mh12gx2825@gmail.com</a>=
&gt;<br>
&gt; &gt; &gt; ---<br>
&gt; &gt; &gt; Please Note: This is a Outreachy project task patch.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c | 20 +++++=
+++++----------<br>
&gt; &gt; &gt;=C2=A0 1 file changed, 10 insertions(+), 10 deletions(-)<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c b/d=
rivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c<br>
&gt; &gt; &gt; index 2d125b8b15ee..f076b1ba7319 100644<br>
&gt; &gt; &gt; --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c<br>
&gt; &gt; &gt; +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c<br>
&gt; &gt; &gt; @@ -1551,29 +1551,29 @@ static int amdgpu_debugfs_sclk_set(v=
oid *data, u64 val)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0return 0;<br>
&gt; &gt; &gt;=C2=A0 }<br>
&gt; &gt; &gt;=C2=A0 <br>
&gt; &gt; &gt; -DEFINE_SIMPLE_ATTRIBUTE(fops_ib_preempt, NULL,<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0amdgpu_debugfs_ib_preempt, &quot;%llu\n&quot;);<br>
&gt; &gt; &gt; +DEFINE_DEBUGFS_ATTRIBUTE(fops_ib_preempt, NULL,<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 amdgpu_debugfs_ib_preempt, &quot;%llu\n&quot;);<br>
&gt; &gt; <br>
&gt; &gt; Are you sure this is ok?=C2=A0 Do these devices need this additio=
nal<br>
&gt; &gt; &quot;protection&quot;?=C2=A0 Do they have the problem that these=
 macros were written<br>
&gt; &gt; for?<br>
&gt; &gt; <br>
&gt; &gt; Same for the other patches you just submitted here, I think you n=
eed to<br>
&gt; &gt; somehow &quot;prove&quot; that these changes are necessary, check=
patch isn&#39;t able<br>
&gt; &gt; to determine this all the time.<br>
&gt; <br>
&gt; Hi Greg,<br>
&gt; Based on my understanding, the current function debugfs_create_file()<=
br>
&gt; adds an overhead of lifetime managing proxy for such fop structs. This=
<br>
&gt; should be applicable to these set of drivers as well. Hence I think th=
is<br>
&gt; change will be useful.<br>
<br>
Why do these drivers need these changes?=C2=A0 Are these files dynamically<=
br>
removed from the system at random times?<br>
<br>
There is a reason we didn&#39;t just do a global search/replace for this in=
<br>
the kernel when the new functions were added, so I don&#39;t know why<br>
checkpatch is now saying it must be done.<br></blockquote></div></div><div =
dir=3D"auto"><br></div><div dir=3D"auto">Hi,=C2=A0</div><div dir=3D"auto"><=
br></div><div dir=3D"auto">Sorry to jump in on the thread this way, but wha=
t exactly does a &#39;lifetime managing proxy&#39; for file operations mean=
? I am trying to understand how DEFINE_DEBUGFS_ATTRIBUTE changes things wrt=
 debug_ fs file operations but can&#39;t find many resources. :(</div><div =
dir=3D"auto"><br></div><div dir=3D"auto">Please let me know if I should be =
asking this in a different mailing list/irc instead.=C2=A0</div><div dir=3D=
"auto"><br></div><div dir=3D"auto">The change seems to be suggested by a co=
ccinelle script.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">R=
egards,=C2=A0</div><div dir=3D"auto">Sumera</div><div dir=3D"auto"><br></di=
v><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote">=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
thanks,<br>
<br>
greg k-h<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@googlegro=
ups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/20201030080316.GA1612206%40kroah.com" rel=3D"no=
referrer noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/ou=
treachy-kernel/20201030080316.GA1612206%40kroah.com</a>.<br>
</blockquote></div></div></div>

--0000000000004a55c505b2df061e--

