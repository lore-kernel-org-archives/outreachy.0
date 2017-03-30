X-GM-THRID: 6402914629157126144
X-Received: by 10.25.204.21 with SMTP id c21mr861163lfg.19.1490882890919;
        Thu, 30 Mar 2017 07:08:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.14.25 with SMTP id 25ls333648ljo.50.gmail; Thu, 30 Mar 2017
 07:08:09 -0700 (PDT)
X-Received: by 10.25.56.22 with SMTP id f22mr863273lfa.13.1490882889725;
        Thu, 30 Mar 2017 07:08:09 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x242.google.com (mail-lf0-x242.google.com. [2a00:1450:4010:c07::242])
        by gmr-mx.google.com with ESMTPS id t131si186945wmf.1.2017.03.30.07.08.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Mar 2017 07:08:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) client-ip=2a00:1450:4010:c07::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x242.google.com with SMTP id n78so4722457lfi.3
        for <outreachy-kernel@googlegroups.com>; Thu, 30 Mar 2017 07:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=f8uGEauhM1S+23oMSAZpWlPBFLq/ZFe6LyDPGqXK0R8=;
        b=qL4fjCPn6AsD44AzOEiG0n2kYwUZVRU5vU24GNiz9pyRWhqL4ygQvjk9GhWfs2HDuE
         3k+E7/R+8hhB1fOF3+UHTkU/svFU6KZjVy2/D+jVY+jpMT5H3ztqNynlrOFPqkAKv4az
         hD1g5kuXbY7iYk5nNvfarmKcTkFEjHTTa+emhNeOyZGjuoDT2IE0jPWQzyvsHx7qgMtu
         VAEEToHqmwx9srW3Gsfnxw2/j6RojFrqIUOklH740p/Q6F7g+8rEbmxqf1TqQUHxXFTH
         nCLM9zivecRPwAFwfcLoyr+qCU5vTaLRnyXLCy29kBBy26Z9eMuDvcBLmAkolyJ+h+NF
         +SGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=f8uGEauhM1S+23oMSAZpWlPBFLq/ZFe6LyDPGqXK0R8=;
        b=GTNuzRYm1jWjvT1Jxyr3v8x5fKC0Hz1eTs3CqmjC0Vw6OmqDdqMPPyYmSXtKgrsynu
         4+5gwnnbEly3zd5nErCKkCo5UNcvtWigR5BwTXtJEVVM2l9uC5XbSsXPUX4tj4c44utB
         Z1OePby5gpBSNk9BcCIubeY8FGQT+m1lIltH2Amossr35xwyhXnRaluj1Dc821UxQ/V2
         EK9MIWxnn6DfnxECBY/jbvwvh+MvtFcmPGAwtteb61ME110Kg31DDpBpQnp+MHHm4lFw
         4uzXaQPvmeS3ulA+zBoR5SqfFYSqXOhUzPm2zpE3SYk33WXnGo+6WTtEOZUrVVnxwXiU
         jFVQ==
X-Gm-Message-State: AFeK/H3YXirIF6ho0epS9UoVcbDwH7PsGlxG9GqkJkH6q7mSGAmkGLqkBtMcFtsBiOEFcyahyIMJP2NvVE9i6g==
X-Received: by 10.46.0.148 with SMTP id e20mr2391169lji.41.1490882889138; Thu,
 30 Mar 2017 07:08:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.170.69 with HTTP; Thu, 30 Mar 2017 07:08:08 -0700 (PDT)
In-Reply-To: <20170330125509.GD2980@verge.net.au>
References: <20170329145752.GA2756@arushi-HP-Pavilion-Notebook> <20170330125509.GD2980@verge.net.au>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Thu, 30 Mar 2017 19:38:08 +0530
Message-ID: <CA+XqjF_pbKoYC+UM9ad2wOvBo6gNnEEWnrUjJHfuDcFx3jEEzQ@mail.gmail.com>
Subject: Re: [PATCH v2] net: netfilter: remove unused variable
To: Simon Horman <horms@verge.net.au>
Cc: outreachy-kernel@googlegroups.com, Wensong Zhang <wensong@linux-vs.org>, 
	Julian Anastasov <ja@ssi.bg>, Pablo Neira Ayuso <pablo@netfilter.org>, 
	Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org, 
	lvs-devel@vger.kernel.org, netfilter-devel@vger.kernel.org, 
	coreteam@netfilter.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: multipart/alternative; boundary=001a1142bb40024ac1054bf3393e

--001a1142bb40024ac1054bf3393e
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 30, 2017 at 6:25 PM, Simon Horman <horms@verge.net.au> wrote:

> On Wed, Mar 29, 2017 at 08:27:52PM +0530, Arushi Singhal wrote:
> > This patch uses the following coccinelle script to remove
> > a variable that was simply used to store the return
> > value of a function call before returning it:
> >
> > @@
> > identifier len,f;
> > @@
> >
> > -int len;
> >  ... when != len
> >      when strict
> > -len =
> > +return
> >         f(...);
> > -return len;
> >
> > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
>
> Applied with patch prefix updated to "ipvs:".
>
Hi
Thanks
How can I see my accepted patches of netfilter.
Thanks
Arushi

--001a1142bb40024ac1054bf3393e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Mar 30, 2017 at 6:25 PM, Simon Horman <span dir=3D"ltr">&lt;<a =
href=3D"mailto:horms@verge.net.au" target=3D"_blank">horms@verge.net.au</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On We=
d, Mar 29, 2017 at 08:27:52PM +0530, Arushi Singhal wrote:<br>
&gt; This patch uses the following coccinelle script to remove<br>
&gt; a variable that was simply used to store the return<br>
&gt; value of a function call before returning it:<br>
&gt;<br>
&gt; @@<br>
&gt; identifier len,f;<br>
&gt; @@<br>
&gt;<br>
&gt; -int len;<br>
&gt;=C2=A0 ... when !=3D len<br>
&gt;=C2=A0 =C2=A0 =C2=A0 when strict<br>
&gt; -len =3D<br>
&gt; +return<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0f(...);<br>
&gt; -return len;<br>
&gt;<br>
&gt; Signed-off-by: Arushi Singhal &lt;<a href=3D"mailto:arushisinghal19971=
997@gmail.com">arushisinghal19971997@gmail.<wbr>com</a>&gt;<br>
<br>
</span>Applied with patch prefix updated to &quot;ipvs:&quot;.<br>
</blockquote></div>Hi<br></div><div class=3D"gmail_extra">Thanks<br></div><=
div class=3D"gmail_extra">How can I see my accepted patches of netfilter.<b=
r></div><div class=3D"gmail_extra">Thanks<br></div><div class=3D"gmail_extr=
a">Arushi<br></div></div>

--001a1142bb40024ac1054bf3393e--

