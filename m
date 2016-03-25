X-GM-THRID: 6264811554202451968
X-Received: by 10.157.11.69 with SMTP id p5mr7938240otd.28.1458892141217;
        Fri, 25 Mar 2016 00:49:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.79.71 with SMTP id h7ls387609obx.2.gmail; Fri, 25 Mar 2016
 00:49:00 -0700 (PDT)
X-Received: by 10.182.110.197 with SMTP id ic5mr7826735obb.5.1458892140727;
        Fri, 25 Mar 2016 00:49:00 -0700 (PDT)
Return-Path: <deutschluz@gmail.com>
Received: from mail-ig0-x230.google.com (mail-ig0-x230.google.com. [2607:f8b0:4001:c05::230])
        by gmr-mx.google.com with ESMTPS id ei9si258636igc.2.2016.03.25.00.49.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Mar 2016 00:49:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of deutschluz@gmail.com designates 2607:f8b0:4001:c05::230 as permitted sender) client-ip=2607:f8b0:4001:c05::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of deutschluz@gmail.com designates 2607:f8b0:4001:c05::230 as permitted sender) smtp.mailfrom=deutschluz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x230.google.com with SMTP id ig19so9201983igb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 25 Mar 2016 00:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=BStVgy6FQosNEkvt0RrWCs2UPqbhy9xKd7sf4uUdZYY=;
        b=RjqI2WHBqTg/mKYNQVQwvALToi65+aVXCMkJiB39KX6bsofL8f7MValf4slE543083
         Ml4du2qbXtiIR2MSFp8tkwmaK/qTAdikdZdJVVyxNhKjRBX+nBJPJy2YZN/DJ2a2x2y+
         xYIcUPEXO4YPr/kG3MszIDWe+gtMgQP6VCYiMEs20Z329dYfmLsJoei+z2AYImWGg9Ix
         HPN1BnZy0a6STNauTVwGz6YTC1P/LIe/Rx//1ylaHiMVX4QnozRDpwQQsn6M/p6y6s0f
         yyAQNL9IeXt1FYh0wng5MxNsCfauns38yVJ3eiRHSaNf0CdJ0QVX3gSG9BcKAXUT1j0B
         NoBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=BStVgy6FQosNEkvt0RrWCs2UPqbhy9xKd7sf4uUdZYY=;
        b=kAL/SIvDc7vgGp79UigXdZ7aYsvKSWxohJ+HDryCUf8eMgVJBWmh52DVr140Cm1vBm
         wRNOjlUfKl8nb9bVF5ar5REBUaRRyDrfl8bbWE8l3oos3gUcRaAIhqzfPAOHmNrtpzGh
         8CmaCxPdaRgJ+BqTE09eEUBQvM7DZthRjj8ehMsl565x54TIhTN4oo2e0m4Yy1sj0nx1
         3w7XT7BIRmCSUdSrhD5qo/RzQbP1BlO48Vat3rmcwQvKlA37yrG49DoSw0HYrDKFNI0T
         h0AC4AfmSNqsqAgYn+pmiI+EkcIZLJLzzP8LACEmjfAi0BFkhVoIx3eY+GdFyxho5512
         AB6g==
X-Gm-Message-State: AD7BkJI9TjVDctB4Hf7/rxFqsekKdscHGIokAUyOh/KcaNeQbbwS/yYRXrreCotu7dpcFYIGjBhsy4HdXOfO5g==
MIME-Version: 1.0
X-Received: by 10.50.112.169 with SMTP id ir9mr34284233igb.92.1458892140520;
 Fri, 25 Mar 2016 00:49:00 -0700 (PDT)
Received: by 10.79.92.199 with HTTP; Fri, 25 Mar 2016 00:49:00 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1603250843310.2064@localhost6.localdomain6>
References: <CAGLzxAr5=CPi-K9rsLHwqgKhmj=1jVHygQ3NHi=EZMcpGWQTUg@mail.gmail.com>
	<20160322211338.GA9367@kroah.com>
	<CAGLzxArcwTX1VnkSQs=wr_hpB=uoKPcPQ-WVMZXCDc1M8ZAmOg@mail.gmail.com>
	<20160324025609.GB19662@kroah.com>
	<CAGLzxAo=DPVr5+DEFxqxdMWRqGEVWkt_9dTHCLEMfrCiSnE9oA@mail.gmail.com>
	<20160324135610.GB21239@kroah.com>
	<CAGLzxAoSgrpMx8Xt7y7uQSJB=ZWCj059tHYBqqZug=mq-rMPHw@mail.gmail.com>
	<alpine.DEB.2.02.1603250843310.2064@localhost6.localdomain6>
Date: Fri, 25 Mar 2016 00:49:00 -0700
Message-ID: <CAGLzxApAAYh_Y9p-D9spH0uMoSjrZk=oF51rNoUZrfgVctHZkw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: add more
 information to Kconfig
From: Angel Orejel <deutschluz@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, sveta.orlik.code@gmail.com, 
	Alison Schofield <amsfield22@gmail.com>, outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=089e011843e0cd4d88052edacbde

--089e011843e0cd4d88052edacbde
Content-Type: text/plain; charset=UTF-8

Ok I just ran the get_maintainer script and Greg's name was in the output
of that. So my second mutt message is incoming to Greg.
Once again, you are so fast Julia. Thank you for your vigilance and
diligence. :)

On Fri, Mar 25, 2016 at 12:45 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Fri, 25 Mar 2016, Angel Orejel wrote:
>
> > I am still very much interested in helping with the linux kernel. I
> didn't
> > know about this outreach thing till last saturday. That was part of the
> > reason I avoided mutt till now. I had to do a lot of googling to get to
> > work. But whatever, it works. GREG: So do I still send this patch to
> you? or
> > is there another maintainer?
>
> You run scripts/get_maintainer.pl on your patch to see to whom it should
> be sent.  I use the following options to get the most relevant people, not
> just every random person who has sent a patch on the file.
>
>  --nokeywords --nogit --nogit-fallback --norolestats
>
> julia
>
>
> >
> > On Thu, Mar 24, 2016 at 6:56 AM, Greg KH <gregkh@linuxfoundation.org>
> wrote:
> >       On Wed, Mar 23, 2016 at 10:09:50PM -0700, Angel Orejel wrote:
> >       > I can fix this but I need some clarification about your
> >       question. Should I
> >       > delete those untracked files? The top two will be gone because
> >       I piped the
> >       > output of checkpatch to them, but the bottom two might have
> >       been put there
> >       > after running the command 'make -j2'. Can I just delete those?
> >       or use 'git
> >       > checkout'. may be I could use 'git stash'?
> >
> >       I don't understand this at all, 'git stash' is not for making a
> >       patch,
> >       when you create it, those # lines will not be in the changelog
> >       comments,
> >       how they showed up in your patch is very odd.
> >
> >       Try working through the tutorial again to figure out the steps
> >       that are
> >       needed for this.
> >
> >       > Also, about the fact that my patch has html in it: I ve been
> >       sending the patch
> >       > to my gmail from evolution and then from my gmail to whoever.
> >       So i think i ll
> >       > just skip that part and send from evolution. I think that
> >       should fix that.
> >
> >       Just use mutt :)
> >
> >       thanks,
> >
> >       greg k-h
> >
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/CAGLzxAoSgrpMx8Xt7y7uQSJ
> > B%3DZWCj059tHYBqqZug%3Dmq-rMPHw%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >
>

--089e011843e0cd4d88052edacbde
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ok I just ran the get_maintainer script and Greg&#39;s nam=
e was in the output of that. So my second mutt message is incoming to Greg.=
<div>Once again, you are so fast Julia. Thank you for your vigilance and di=
ligence. :)</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_q=
uote">On Fri, Mar 25, 2016 at 12:45 AM, Julia Lawall <span dir=3D"ltr">&lt;=
<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6=
.fr</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"=
"><br>
<br>
On Fri, 25 Mar 2016, Angel Orejel wrote:<br>
<br>
&gt; I am still very much interested in helping with the linux kernel. I di=
dn&#39;t<br>
&gt; know about this outreach thing till last saturday. That was part of th=
e<br>
&gt; reason I avoided mutt till now. I had to do a lot of googling to get t=
o<br>
&gt; work. But whatever, it works.=C2=A0GREG: So do I still send this patch=
 to you? or<br>
&gt; is there another maintainer?<br>
<br>
</span>You run scripts/<a href=3D"http://get_maintainer.pl" rel=3D"noreferr=
er" target=3D"_blank">get_maintainer.pl</a> on your patch to see to whom it=
 should<br>
be sent.=C2=A0 I use the following options to get the most relevant people,=
 not<br>
just every random person who has sent a patch on the file.<br>
<br>
=C2=A0--nokeywords --nogit --nogit-fallback --norolestats<br>
<br>
julia<br>
<div><div class=3D"h5"><br>
<br>
&gt;<br>
&gt; On Thu, Mar 24, 2016 at 6:56 AM, Greg KH &lt;<a href=3D"mailto:gregkh@=
linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Wed, Mar 23, 2016 at 10:09:50PM -0700, An=
gel Orejel wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; I can fix this but I need some clarific=
ation about your<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0question. Should I<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; delete those untracked files? The top t=
wo will be gone because<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0I piped the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; output of checkpatch to them, but the b=
ottom two might have<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0been put there<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; after running the command &#39;make -j2=
&#39;. Can I just delete those?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0or use &#39;git<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; checkout&#39;. may be I could use &#39;=
git stash&#39;?=C2=A0<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0I don&#39;t understand this at all, &#39;git=
 stash&#39; is not for making a<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0patch,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0when you create it, those # lines will not b=
e in the changelog<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0comments,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0how they showed up in your patch is very odd=
.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Try working through the tutorial again to fi=
gure out the steps<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0that are<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0needed for this.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Also, about the fact that my patch has =
html in it: I ve been<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0sending the patch<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; to my gmail from evolution and then fro=
m my gmail to whoever.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0So i think i ll<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; just skip that part and send from evolu=
tion. I think that<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0should fix that.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Just use mutt :)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0thanks,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0greg k-h<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups<br>
&gt; &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an<br>
&gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups=
.com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
</span>&gt; To view this discussion on the web visithttps://<a href=3D"http=
://groups.google.com/d/msgid/outreachy-kernel/CAGLzxAoSgrpMx8Xt7y7uQSJ" rel=
=3D"noreferrer" target=3D"_blank">groups.google.com/d/msgid/outreachy-kerne=
l/CAGLzxAoSgrpMx8Xt7y7uQSJ</a><br>
&gt; B%3DZWCj059tHYBqqZug%3Dmq-rMPHw%<a href=3D"http://40mail.gmail.com" re=
l=3D"noreferrer" target=3D"_blank">40mail.gmail.com</a>.<br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt; For more options, visit <a hre=
f=3D"https://groups.google.com/d/optout" rel=3D"noreferrer" target=3D"_blan=
k">https://groups.google.com/d/optout</a>.<br>
&gt;<br>
&gt; </div></div></blockquote></div><br></div>

--089e011843e0cd4d88052edacbde--

