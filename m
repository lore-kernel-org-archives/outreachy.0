X-GM-THRID: 6330587655423655936
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.66.194.129 with SMTP id hw1mr1254555pac.92.1474109753057;
        Sat, 17 Sep 2016 03:55:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.71 with SMTP id d65ls7392835otb.16.gmail; Sat, 17 Sep
 2016 03:55:52 -0700 (PDT)
X-Received: by 10.31.165.71 with SMTP id o68mr1318690vke.23.1474109752616;
        Sat, 17 Sep 2016 03:55:52 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id c75si889403ywh.0.2016.09.17.03.55.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 03:55:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id b204so6999803qkc.1
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 03:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=AtGjHZgqBPSXjocFoqfntUDw8rjYp/6Gm1YB8RWFqbI=;
        b=TRGIOULSKV7ZkjARCmyg+pGVcSg9jJVRif+T3Rp+ZP9xLuw5BPt+PJioZ2ighOBnuL
         U/eZW8lfVt+eaQbZUjFLYki2a34NyKs46IJHK84fz8dKYmI6iWhNVvN5gw7EKJaMyBdi
         8DJGuU1v7DpjPxgtVfqq3mBIaMUobopqa3Bl9UfSyyiECzgT4OZvGcozfuhHxA7Fh4qf
         yoLTUnavc0UDs+3wiynaODdBGj+WJNVkgnH/OFLlSfI5w6WS7NB2IU8CCZ10sF64+fC6
         z3s9b846JLUgCX4O5kk6Tv0updCc6BadMgm5zCKONavlRvFXGVFNrjPLiMm1h54bGOZd
         OAFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=AtGjHZgqBPSXjocFoqfntUDw8rjYp/6Gm1YB8RWFqbI=;
        b=Up5oqpqulnw6i2GyNQpJjCgl/e750lNc+3onJ5HrXpB9AR82svw/5AbRmDtL45kkqA
         YOuV0vqNflTUtOs+WpWl5n6lODjGi5zWhX+ozVijaKmFYVWYAgxeMAI2hIruOuudiiwP
         65Voeu2u3f9+2GomXVxj629wj09T8wIo5cZgbOEKJGW+PfN1ca6vnMjcyfMZaBMllXia
         /Ijiu2H7xIdj5E02PZPX0dVwRPkc4ycYU3y+FYk6TrbfYfYk+v3yO2omBT0crDtz5sA8
         Eubs44528cOBeJjcgqisyrXDOFjce3i4XmzDHmFeSAdspZ8kZsvRMAwtbeXLLhbL7jy6
         Nl2A==
X-Gm-Message-State: AE9vXwMHFRhUDXKnYrylJzDMXd6KcIAle4X+iR5JpvQvb4Y82KNNoNGsAP6U7oXD8tGF+rg1zHP6ui7b4mxEMQ==
X-Received: by 10.233.220.7 with SMTP id q7mr20857341qkf.160.1474109752395;
 Sat, 17 Sep 2016 03:55:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.131.134 with HTTP; Sat, 17 Sep 2016 03:55:51 -0700 (PDT)
In-Reply-To: <20160916045044.GA2835@d830.WORKGROUP>
References: <eb4ec0a3-54df-4a86-a7d5-85c77aea38c2@googlegroups.com>
 <20160915163855.GD30633@kroah.com> <CAAbeOSubG2DO2mzsudDyr2PcArn=W22JAF+20xFevff9L2SdRQ@mail.gmail.com>
 <CAEnQRZAusM33K_=yzQS_=hxi+vJFEz2NOdmhbtyz2CSyknGwUw@mail.gmail.com>
 <CAAbeOSsVJn8Ed9B+acg1BRXRnmixDouk9z1ijGy5LnU2isSz1w@mail.gmail.com> <20160916045044.GA2835@d830.WORKGROUP>
From: Anchal Jain <anchalj109@gmail.com>
Date: Sat, 17 Sep 2016 16:25:51 +0530
Message-ID: <CAAbeOSsytC-Offq4QFU0wxrUfUC0dopsC6ZpHPwLs1AeJ3xO4w@mail.gmail.com>
Subject: Re: [Outreachy kernel] Doubts Regaarding the checkpatch.pl
To: Alison Schofield <amsfield22@gmail.com>
Cc: Daniel Baluta <daniel.baluta@gmail.com>, Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=94eb2c04484026d075053cb1ecdb

--94eb2c04484026d075053cb1ecdb
Content-Type: text/plain; charset=UTF-8

>Here's my take, let me know if I got the question right?
>
>Sometime the cocci script identifies and maybe also corrects (if you are
using
>the patch option) issues that were also found by checkpatch.  So, the
>question perhaps is which tool you would mention in your log message?
>
>I'd say both. You would say the issue was found and fixed with
>coccinelle and also corrects checkpatch issue: ....
>
>Or, maybe I don't have the question right ;)



Yes, you are correct I am trying to ask that thing.

Thank you :-)

On Fri, Sep 16, 2016 at 10:20 AM, Alison Schofield <amsfield22@gmail.com>
wrote:

> On Thu, Sep 15, 2016 at 11:02:50PM +0530, Anchal Jain wrote:
> > > Can you give a real example for the CHECK? :)
> >
> > like this
> >
> >  CHECK: Unnecessary parentheses around padapter->mlmeextpriv
> >  CHECK: Please don't use multiple blank lines
> >  CHECK: Unnecessary parentheses around pstapriv->sta_hash_lock
> >  CHECK: Unnecessary parentheses around pstapriv->sta_hash_lock
> >  CHECK: Unnecessary parentheses around pmlmeext->mlmext_info
> >  CHECK: Concatenated strings should use spaces between elements
> >
> >
> > Thanks,
> >
> > On Thu, Sep 15, 2016 at 10:44 PM, Daniel Baluta <daniel.baluta@gmail.com
> >
> > wrote:
> >
> > > On Thu, Sep 15, 2016 at 7:53 PM, Anchal Jain <anchalj109@gmail.com>
> wrote:
> > > >
> > > >>I'm sorry, but I can not parse this, can you rephrase it?
> > > >
> > > > When we run checkpatch.pl on our staging directory then it shows
> > > > - Errors
> > > > - Warnings
> > > > - Checks
> > > >
> > > > So I want to know if we solve the check using checkpatch.pl tool
> then
> > > it is
> > > > consider in our patches
> > > > or Only those checks is consider which is solved using  cocci script
> > > because
> > > > this script also fixes those
> > > > checks
>
> Here's my take, let me know if I got the question right?
>
> Sometime the cocci script identifies and maybe also corrects (if you are
> using
> the patch option) issues that were also found by checkpatch.  So, the
> question perhaps is which tool you would mention in your log message?
>
> I'd say both. You would say the issue was found and fixed with
> coccinelle and also corrects checkpatch issue: ....
>
> Or, maybe I don't have the question right ;)
>
> alisons
>
>
>
>
>
>
>
>
> > >
> > > Can you give a real example for the CHECK? :)
> > >
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/CAAbeOSsVJn8Ed9B%2Bacg1BRXRnmixDouk9z1ijGy5LnU2
> isSz1w%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
>

--94eb2c04484026d075053cb1ecdb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>&gt;Here&#39;s my take, let me know if I got the ques=
tion right?<br>&gt;<br>&gt;Sometime the cocci script identifies and maybe a=
lso corrects (if you are using<br>&gt;the patch option) issues that were al=
so found by checkpatch.=C2=A0 So, the<br>&gt;question perhaps is which tool=
 you would mention in your log message?<br>&gt;<br>&gt;I&#39;d say both. Yo=
u would say the issue was found and fixed with<br>&gt;coccinelle and also c=
orrects checkpatch issue: ....<br>
&gt;<br>&gt;Or, maybe I don&#39;t have the question right ;)<br><br><br><br=
>Yes, you are correct I am trying to ask that thing. <br><br></div>Thank yo=
u :-)<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On=
 Fri, Sep 16, 2016 at 10:20 AM, Alison Schofield <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:amsfield22@gmail.com" target=3D"_blank">amsfield22@gmail.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZ=
b"><div class=3D"h5">On Thu, Sep 15, 2016 at 11:02:50PM +0530, Anchal Jain =
wrote:<br>
&gt; &gt; Can you give a real example for the CHECK? :)<br>
&gt;<br>
&gt; like this<br>
&gt;<br>
&gt;=C2=A0 CHECK: Unnecessary parentheses around padapter-&gt;mlmeextpriv<b=
r>
&gt;=C2=A0 CHECK: Please don&#39;t use multiple blank lines<br>
&gt;=C2=A0 CHECK: Unnecessary parentheses around pstapriv-&gt;sta_hash_lock=
<br>
&gt;=C2=A0 CHECK: Unnecessary parentheses around pstapriv-&gt;sta_hash_lock=
<br>
&gt;=C2=A0 CHECK: Unnecessary parentheses around pmlmeext-&gt;mlmext_info<b=
r>
&gt;=C2=A0 CHECK: Concatenated strings should use spaces between elements<b=
r>
&gt;<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; On Thu, Sep 15, 2016 at 10:44 PM, Daniel Baluta &lt;<a href=3D"mailto:=
daniel.baluta@gmail.com">daniel.baluta@gmail.com</a>&gt;<br>
&gt; wrote:<br>
&gt;<br>
&gt; &gt; On Thu, Sep 15, 2016 at 7:53 PM, Anchal Jain &lt;<a href=3D"mailt=
o:anchalj109@gmail.com">anchalj109@gmail.com</a>&gt; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;&gt;I&#39;m sorry, but I can not parse this, can you rephrase=
 it?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; When we run <a href=3D"http://checkpatch.pl" rel=3D"noreferr=
er" target=3D"_blank">checkpatch.pl</a> on our staging directory then it sh=
ows<br>
&gt; &gt; &gt; - Errors<br>
&gt; &gt; &gt; - Warnings<br>
&gt; &gt; &gt; - Checks<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; So I want to know if we solve the check using <a href=3D"htt=
p://checkpatch.pl" rel=3D"noreferrer" target=3D"_blank">checkpatch.pl</a> t=
ool then<br>
&gt; &gt; it is<br>
&gt; &gt; &gt; consider in our patches<br>
&gt; &gt; &gt; or Only those checks is consider which is solved using=C2=A0=
 cocci script<br>
&gt; &gt; because<br>
&gt; &gt; &gt; this script also fixes those<br>
&gt; &gt; &gt; checks<br>
<br>
</div></div>Here&#39;s my take, let me know if I got the question right?<br=
>
<br>
Sometime the cocci script identifies and maybe also corrects (if you are us=
ing<br>
the patch option) issues that were also found by checkpatch.=C2=A0 So, the<=
br>
question perhaps is which tool you would mention in your log message?<br>
<br>
I&#39;d say both. You would say the issue was found and fixed with<br>
coccinelle and also corrects checkpatch issue: ....<br>
<br>
Or, maybe I don&#39;t have the question right ;)<br>
<br>
alisons<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
&gt; &gt;<br>
&gt; &gt; Can you give a real example for the CHECK? :)<br>
&gt; &gt;<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.<wbr>com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/CAAbeOSsVJn8Ed9B%2Bacg1BRXRnmixDouk9z1ijGy=
5LnU2isSz1w%40mail.gmail.com" rel=3D"noreferrer" target=3D"_blank">https://=
groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>CAAbeOSsVJn8Ed9B%<wbr>=
2Bacg1BRXRnmixDouk9z1ijGy5LnU2<wbr>isSz1w%40mail.gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>opto=
ut</a>.<br>
</font></span></blockquote></div><br></div>

--94eb2c04484026d075053cb1ecdb--

