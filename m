X-GM-THRID: 6807025252399316992
X-Received: by 2002:a5d:470b:: with SMTP id y11mr16002787wrq.282.1584895758400;
        Sun, 22 Mar 2020 09:49:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:d4c4:: with SMTP id w4ls1134372wrk.8.gmail; Sun, 22 Mar
 2020 09:49:16 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvyGCXW3VwaGFzxq7bZDIFm5gHTGvIiX7NZHz2q03Y3LdjmHegnmnsX3kvCQG9iJ0DFRdJ2
X-Received: by 2002:a5d:6386:: with SMTP id p6mr23926549wru.194.1584895756214;
        Sun, 22 Mar 2020 09:49:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584895756; cv=none;
        d=google.com; s=arc-20160816;
        b=aBDVjicFYEW8IJ99X4RI46a3FXT/5oxvOBEb0U9X3fODGdVfBsPTIHUeo69qIatca7
         4egvFSWmgJdy+PKB4Y66q1U1iis1Xw2sZXGDgbMY1wjhNvjDkC/zLAyx9ScTGdkwIudd
         M0/EapiZtsN7Dx1c3leA0FLNsJEFNV/0KFErJkj5ktsDa+GpopkWTEGPtUwFynnb7CFF
         P3JUxuWPT/U9H6JKNtkuiRHeFa2Th5JHb8m20ToV4walY1wvCC8ihZJi/KOo330Uu3Az
         +x9y4E9ukU+PF47SLY8pV2/iFxKjBkV0TSzv5hVz1uEkFUVX7DQTu2PVEw2a8boobqP0
         kHhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BwbGiL3RagHI94a1iDlbHO9wYVfxt41Oe53hPi6+SFE=;
        b=0X/6sM41HafBIR7O+E7czpu4alwDGJyPFNNzkUMHbA0mJComMfuW5WBSL32nLIMkoD
         BQ0GukqhAiMTlY2JF/Gmel20Zse0ap9HkXvVjQZO0cSfDfx2sztvyN2p9JgkgyRn3k6k
         HjfnZt5yPyuNsd7iNRXY/phCu8LYZIP1EaolVVq4Ek+xMyhSJqPXRi+0SzijsraSZKS8
         NIFlv29Suo9Ea8cku+fBoyirfMPY8duqKbYoaCSP65o2P+LFxKuJqz8EDxSUrUcfE8yW
         p13ZyvSD0OWGB1ytX6pvSMn9p76yivrzmyZ99Z8iA6DOa1ArZsWcrA9wk77nmlFDp+XL
         byXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Acfi4wk2;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id q205si572132wme.4.2020.03.22.09.49.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 09:49:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Acfi4wk2;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x243.google.com with SMTP id 19so11839522ljj.7
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 09:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BwbGiL3RagHI94a1iDlbHO9wYVfxt41Oe53hPi6+SFE=;
        b=Acfi4wk28Q5jlefQQegQQ2fCk8Z4OtL/1jpIeNwfvkiW7Se1qFAbWJxDmWOVjNLewq
         hiuobxhA1XMjvicQ4/NFTwQxtCC7sfwUPfI+TG3ssdGB+CbGIdPM5Fn2/Ce1CTqe9G2c
         2srPX0b0ncLjSuf0EDjoLWB2z+WhqNvyhHeZj8uVh0kfKVbt29r07L3hT5FP4WobHWNj
         Qo62soswJSi84dbJaqygVxADdfF5kzPCKrxY9bpfxwbjQBRicN0YlbliWoMYPAx5NEB4
         Er8DpiDXet57rgc3ZW+xL7hifxKmm1IdTQYdzTvt3Kf9eQGDbgBWn1KfRnFroDxcUYNr
         n4nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BwbGiL3RagHI94a1iDlbHO9wYVfxt41Oe53hPi6+SFE=;
        b=dwpFZG3EN7Muty59Ws3QeQt+MXGm0H1FmA53YCDKRZqNqO95boK26WhuCNW1WUm5tA
         x4L79O43kumnAfHF1iGFM8Rd2zHK2rg8jQ/0ia25yT56XpSdlymMSAgidzz57kZGb2aZ
         d7AjB7JlYYBglvh01hFzCcgn6cXE7bs3k5wdHbc+dYfhdL++GseUqhaUlj7MgFCiBnRZ
         Heu+kYO11e7FLByzDa7Q40GmXLurAe8kaBqIkVyAkLVVsG+2qawY5ZhIC0TxYJ2Myydp
         gTKWSkcpfCXxG4+hULCJhjTuZr87dVIszUlQhFl1ZDQ9hOWsBRZJo0VhmnAeBqxgwM0h
         Ya1Q==
X-Gm-Message-State: ANhLgQ2msdOyepbE+1s68qocLmxEQbPmsTx3Uag/2mXM5tFl+hV40ZSk
	B/KVdOUeXbYrJlU/rBDj5aojYtKvQejgbjEU3xA=
X-Received: by 2002:a05:651c:233:: with SMTP id z19mr10612194ljn.176.1584895755252;
 Sun, 22 Mar 2020 09:49:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200322133423.GA27425@simran-Inspiron-5558> <alpine.DEB.2.21.2003221439440.2325@hadrien>
In-Reply-To: <alpine.DEB.2.21.2003221439440.2325@hadrien>
From: Simran Singhal <singhalsimran0@gmail.com>
Date: Sun, 22 Mar 2020 22:19:03 +0530
Message-ID: <CALrZqyMm4HY2W7D83nRutT0dRrnC1xaY=v0B2XHVUwQWid2F=Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: tools: Fix
 RETURN_VOID warnings
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000007f77d205a1744c2e"

--0000000000007f77d205a1744c2e
Content-Type: text/plain; charset="UTF-8"

On Sun, Mar 22, 2020 at 7:10 PM Julia Lawall <julia.lawall@inria.fr> wrote:

>
>
> On Sun, 22 Mar 2020, Simran Singhal wrote:
>
> > Fix 'void function return statements are not generally useful'
> > checkpatch.pl warnings.
> >
> > Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
> > ---
> >  drivers/staging/greybus/tools/loopback_test.c | 3 ---
> >  1 file changed, 3 deletions(-)
> >
> > diff --git a/drivers/staging/greybus/tools/loopback_test.c
> b/drivers/staging/greybus/tools/loopback_test.c
> > index ba6f905f26fa..78333fb45b70 100644
> > --- a/drivers/staging/greybus/tools/loopback_test.c
> > +++ b/drivers/staging/greybus/tools/loopback_test.c
> > @@ -855,11 +855,8 @@ void loopback_run(struct loopback_test *t)
> >
> >       log_results(t);
> >
> > -     return;
> > -
>
> This is not correct.  Please think about what you are doing.
>

Yes, what I did is wrong. I should not have remove the return statement
before err as it will let the statements below err to execute when they
should not.

I am sorry for this patch and I request maintainers to drop this patch.


>
> julia
>
> >  err:
> >       printf("Error running test\n");
> > -     return;
> >  }
> >
> >  static int sanity_check(struct loopback_test *t)
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20200322133423.GA27425%40simran-Inspiron-5558
> .
> >
>

--0000000000007f77d205a1744c2e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><div dir=3D"ltr"><div dir=3D"lt=
r"><br></div><br><div class=3D"gmail_quote"><div class=3D"gmail_attr" dir=
=3D"ltr">On Sun, Mar 22, 2020 at 7:10 PM Julia Lawall &lt;<a href=3D"mailto=
:julia.lawall@inria.fr">julia.lawall@inria.fr</a>&gt; wrote:<br></div><bloc=
kquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex" class=3D"gmail_quote"><br>
<br>
On Sun, 22 Mar 2020, Simran Singhal wrote:<br>
<br>
&gt; Fix &#39;void function return statements are not generally useful&#39;=
<br>
&gt; <a rel=3D"noreferrer" href=3D"http://checkpatch.pl">checkpatch.pl</a> =
warnings.<br>
&gt;<br>
&gt; Signed-off-by: Simran Singhal &lt;<a href=3D"mailto:singhalsimran0@gma=
il.com">singhalsimran0@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/greybus/tools/loopback_test.c | 3 ---<br>
&gt;=C2=A0 1 file changed, 3 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/s=
taging/greybus/tools/loopback_test.c<br>
&gt; index ba6f905f26fa..78333fb45b70 100644<br>
&gt; --- a/drivers/staging/greybus/tools/loopback_test.c<br>
&gt; +++ b/drivers/staging/greybus/tools/loopback_test.c<br>
&gt; @@ -855,11 +855,8 @@ void loopback_run(struct loopback_test *t)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0log_results(t);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0return;<br>
&gt; -<br>
<br>
This is not correct.=C2=A0 Please think about what you are doing.<br></bloc=
kquote><div><br></div><div>Yes, what I did is wrong. I should not have remo=
ve the return statement before err as it will let the statements below err =
to execute when they should not.<br></div><div><br></div><div>I am sorry fo=
r this patch and I request <span><span>maintainers</span></span> to drop th=
is patch.<br></div><div>=C2=A0</div><blockquote style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex" class=3D"gm=
ail_quote">
<br>
julia<br>
<br>
&gt;=C2=A0 err:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0printf(&quot;Error running test\n&quot;);<br=
>
&gt; -=C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 static int sanity_check(struct loopback_test *t)<br>
&gt; --<br>
&gt; 2.17.1<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a rel=3D"noreferrer" href=3D=
"https://groups.google.com/d/msgid/outreachy-kernel/20200322133423.GA27425%=
40simran-Inspiron-5558">https://groups.google.com/d/msgid/outreachy-kernel/=
20200322133423.GA27425%40simran-Inspiron-5558</a>.<br>
&gt;<br>
</blockquote></div></div>
</div>

--0000000000007f77d205a1744c2e--

