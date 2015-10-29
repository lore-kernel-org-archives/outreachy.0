X-GM-THRID: 6210938115276668928
X-Received: by 10.112.164.1 with SMTP id ym1mr6280961lbb.6.1446098390369;
        Wed, 28 Oct 2015 22:59:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.87.137 with SMTP id l131ls44091lfb.80.gmail; Wed, 28 Oct
 2015 22:59:49 -0700 (PDT)
X-Received: by 10.112.150.201 with SMTP id uk9mr1019564lbb.8.1446098389573;
        Wed, 28 Oct 2015 22:59:49 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wm0-x233.google.com (mail-wm0-x233.google.com. [2a00:1450:400c:c09::233])
        by gmr-mx.google.com with ESMTPS id t2si53240wme.1.2015.10.28.22.59.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 22:59:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) client-ip=2a00:1450:400c:c09::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x233.google.com with SMTP id f134so17859994wmf.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 22:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=2Ho+2+fC2ZqMzYnp7QX4qaLifGwuY92XdsceYF0uNQc=;
        b=S6019QHr6hdP4b2kwOvukSCmd/BORUUTUzb58+Emb6Vow6ja22IMdchp+qSVIDlXSx
         gth/LNDNyUqpCjpGlz3uRpzYq+GwOqIzKx9PGLh0/QBJiLpHrS85ui9TkfEkSyTr4tQh
         MjQdXbMbdauDiFg404BeFVm1an2czRfzdczjby423Vp7VjQWt/sQRuhSC3ShH0nFOrHl
         Icb9Khc+cpp7oCCyNgfwX2EERp6CnH2YbHe/Jj7q56A86K5Hf5PXeICKDzKywkjOvCWl
         jDbT55uZIb0nkXUozg/nzM1gtQzYCA6vemKoXlG0fYPDRTP5iYRt37QzySlL7UfC1wtA
         7MQA==
MIME-Version: 1.0
X-Received: by 10.28.46.143 with SMTP id u137mr1555653wmu.52.1446098389451;
 Wed, 28 Oct 2015 22:59:49 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Wed, 28 Oct 2015 22:59:49 -0700 (PDT)
In-Reply-To: <20151029055750.GC16140@sudip-pc>
References: <cover.1446096468.git.shivanib134@gmail.com>
	<add1870ead28913d364e09a1d06f85c5da8c74ed.1446096468.git.shivanib134@gmail.com>
	<20151029054828.GB16140@sudip-pc>
	<CAKHNQQF68wTk1v65i+aGEJwTmLsce-HCE0h4fiXsF-wze=_ksw@mail.gmail.com>
	<20151029055750.GC16140@sudip-pc>
Date: Thu, 29 Oct 2015 11:29:49 +0530
Message-ID: <CAKHNQQEGXJ5=xdwyUeyvggB6jY=FinnRA8vUyCPWBWg8xGs=fA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: lustre: console: Remove
 irrelevant return statement
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a114342a0d04c8305233804ef

--001a114342a0d04c8305233804ef
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 29, 2015 at 11:27 AM, Sudip Mukherjee <
sudipm.mukherjee@gmail.com> wrote:

> On Thu, Oct 29, 2015 at 11:24:59AM +0530, Shivani Bhardwaj wrote:
> > On Thu, Oct 29, 2015 at 11:18 AM, Sudip Mukherjee <
> > sudipm.mukherjee@gmail.com> wrote:
> >
> > > On Thu, Oct 29, 2015 at 11:02:48AM +0530, Shivani Bhardwaj wrote:
> > > > Remove return statement from the function lstcon_group_ndlink_move()
> > > > as its return type is void.
> > > > Fix checkpatch WARNING: void function return statements are not
> > > > generally useful
> > > >
> > > > Signed-off-by : Shivani Bhardwaj <shivanib134@gmail.com>
> > >
> > > checkpatch is complaining about the "Signed-off-by" because of an
> > > extra space.
> > >
> > > regards
> > > sudip
> > >
> >
> > Sending this again. I'm sorry.
>
> BTW, are you adding this manually? Let git add these Signed-off-by and
> you do not need to worry about these anymore.
>
> regards
> sudip
>

I fixed the commit message by git commit --amend. Did I do anything wrong?
Thank you

--001a114342a0d04c8305233804ef
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Oct 29, 2015 at 11:27 AM, Sudip Mukherjee <span dir=3D"ltr">&lt=
;<a href=3D"mailto:sudipm.mukherjee@gmail.com" target=3D"_blank">sudipm.muk=
herjee@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><s=
pan class=3D"">On Thu, Oct 29, 2015 at 11:24:59AM +0530, Shivani Bhardwaj w=
rote:<br>
&gt; On Thu, Oct 29, 2015 at 11:18 AM, Sudip Mukherjee &lt;<br>
&gt; <a href=3D"mailto:sudipm.mukherjee@gmail.com">sudipm.mukherjee@gmail.c=
om</a>&gt; wrote:<br>
&gt;<br>
&gt; &gt; On Thu, Oct 29, 2015 at 11:02:48AM +0530, Shivani Bhardwaj wrote:=
<br>
&gt; &gt; &gt; Remove return statement from the function lstcon_group_ndlin=
k_move()<br>
&gt; &gt; &gt; as its return type is void.<br>
&gt; &gt; &gt; Fix checkpatch WARNING: void function return statements are =
not<br>
&gt; &gt; &gt; generally useful<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Signed-off-by : Shivani Bhardwaj &lt;<a href=3D"mailto:shiva=
nib134@gmail.com">shivanib134@gmail.com</a>&gt;<br>
&gt; &gt;<br>
&gt; &gt; checkpatch is complaining about the &quot;Signed-off-by&quot; bec=
ause of an<br>
&gt; &gt; extra space.<br>
&gt; &gt;<br>
&gt; &gt; regards<br>
&gt; &gt; sudip<br>
&gt; &gt;<br>
&gt;<br>
&gt; Sending this again. I&#39;m sorry.<br>
<br>
</span>BTW, are you adding this manually? Let git add these Signed-off-by a=
nd<br>
you do not need to worry about these anymore.<br>
<br>
regards<br>
<span class=3D"HOEnZb"><font color=3D"#888888">sudip<br>
</font></span></blockquote></div><br></div><div class=3D"gmail_extra">I fix=
ed the commit message by git commit --amend. Did I do anything wrong?<br></=
div><div class=3D"gmail_extra">Thank you<br></div></div>

--001a114342a0d04c8305233804ef--

