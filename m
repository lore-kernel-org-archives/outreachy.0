X-GM-THRID: 6330646891713265664
X-Received: by 10.66.249.36 with SMTP id yr4mr10305894pac.16.1474014911079;
        Fri, 16 Sep 2016 01:35:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.71 with SMTP id d65ls5235767otb.16.gmail; Fri, 16 Sep
 2016 01:35:10 -0700 (PDT)
X-Received: by 10.129.55.13 with SMTP id e13mr10377344ywa.9.1474014910673;
        Fri, 16 Sep 2016 01:35:10 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-qk0-x230.google.com (mail-qk0-x230.google.com. [2607:f8b0:400d:c09::230])
        by gmr-mx.google.com with ESMTPS id l185si531181ywb.5.2016.09.16.01.35.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 01:35:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400d:c09::230 as permitted sender) client-ip=2607:f8b0:400d:c09::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400d:c09::230 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x230.google.com with SMTP id h8so76394839qka.1
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 01:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=ix+CPerMrNyI9vaHbBvB5SJQET7FblIQqTplrSA+K+g=;
        b=A/D9P39HUZMKPDj7eyv9XZcLs8blokswMLmCFrmAYNxYFIALVm7A/+46xzzLrkYo0K
         0IM56KbRMoIYFbgI0KzNTd0xXhrnBdLP7tRBItItE+AMgxRYrHwx4RXr+KOsuBVbijyq
         sNHP16V3KFtz1NqJcCjASrh1MQ6TPlpyCinWFKhs+pgyD61jG8gmRzBpkWNapTg7otjb
         Lnv4gKdGtzsX2UWVBc1eZN8bOjQ5/f3dcxqemfuSpVfH1chP9lEDtjwsu3pUjBv0MWij
         TG0Cr5T3pJZ7ZPd/wjsc03MPDq6P+zlyWAb0J737MCbqHuXI8R3ChQW/X590aowaDS6X
         pL/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :from:date:message-id:subject:to:cc;
        bh=ix+CPerMrNyI9vaHbBvB5SJQET7FblIQqTplrSA+K+g=;
        b=CIjmPVhbKAUeY3lzPiGZd3r14pEmrTTjIHSuXeiLrSK9o8syopOWrb5tQS5FTSnB82
         G5B2cQV1JivH0aRvuybVjZV2wno5nqAcf7keYcXuBbLKmUsGrIpAu2HgeaPPNT9KD1A9
         w7x5GFF7obRcnOCAWEf8XczS/JxsZ3c/NMsna/kohhyHonJ/73mcUjS9wfyjhMxXUVBQ
         ANDMm16pYd4IzM/fKDAKkN+1t2DxILlEPSDKpEefHYo4g50Y+8ENMKJVT13gfIpDM1Xq
         DfE79NT9JOVv1jAnquaM5ZfhiS6hr77FD2IU4k6PI4NmK4FlHnURbTBPKUKINQDs8rp7
         xCYg==
X-Gm-Message-State: AE9vXwNa6TkHefo8JBFLzUts4vXoYtu+ww7BcYK/kRVU3+r1kemHzlvZeyOu7fIJPFvfIuTnJdH0Hp79w8xwoQ==
X-Received: by 10.55.75.145 with SMTP id y139mr13995339qka.26.1474014910450;
 Fri, 16 Sep 2016 01:35:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.35.204 with HTTP; Fri, 16 Sep 2016 01:35:09 -0700 (PDT)
Reply-To: bankarsandhya512@gmail.com
In-Reply-To: <alpine.DEB.2.10.1609160743350.3122@hadrien>
References: <20160915194341.GA30843@sandhya> <alpine.DEB.2.10.1609152203580.3364@hadrien>
 <CAA3ASzn3u-kcLjy69W27oeT2eabtay7UHySdrVz0cV6dXUgWBA@mail.gmail.com>
 <706CE650-AC74-4C04-97F7-54A6A03E6C27@intel.com> <alpine.DEB.2.10.1609160743350.3122@hadrien>
From: sandhya bankar <bankarsandhya512@gmail.com>
Date: Fri, 16 Sep 2016 14:05:09 +0530
Message-ID: <CAA3ASz=t4wZOkk=Bj8iYLMFHwzCj+E+0BbC9UsV+L17oToh3ZA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Convert array index
 from the loop bound to the loop index.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: "Dilger, Andreas" <andreas.dilger@intel.com>, 
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>, "Drokin, Oleg" <oleg.drokin@intel.com>, 
	James Simmons <jsimmons@infradead.org>, Greg KH <gregkh@linuxfoundation.org>, 
	"Xiong, Jinshan" <jinshan.xiong@intel.com>, "Siyao, Lai" <lai.siyao@intel.com>, 
	"Xu, Bobijam" <bobijam.xu@intel.com>, "mike.rapoport@gmail.com" <mike.rapoport@gmail.com>
Content-Type: multipart/alternative; boundary=001a114a8f36219440053c9bd705

--001a114a8f36219440053c9bd705
Content-Type: text/plain; charset=UTF-8

Thanks Julia and Andreas.
Should I need to send patch v2 as per your suggestions ?

On Fri, Sep 16, 2016 at 11:17 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Thu, 15 Sep 2016, Dilger, Andreas wrote:
>
> >
> > > On Sep 15, 2016, at 14:53, sandhya bankar <bankarsandhya512@gmail.com>
> wrote:
> > >
> > > The structure cl_env_percpu[NR_CPUS] have been initializing for each
> > > possible cpu (i.e 0 to i) but during initialization if any error will
> > > occurred this come to the error handling code in which the
> > > cl_env_percpu should be uninitialized upto i but currently
>
> Sandhya,
>
> "should be uninitialized" is a bit unclear, because it could describe the
> state that should hold, or the state that you should achieve.  It could be
> better to say "the error handling code which should
> uninitialize/free/release (whatever seems best) the cl_env_percpu ...".
>
> Andreas's suggestion is also good.  It says that same thing in another
> way, and thus makes everything more clear.
>
> Congratulations on finding a real bug :)
>
> julia
>
> > > uninitialization happening for the cl_env_percpu[i] which does not
> > > seems to be correct. That is why proposing this fix. Please Correct me
> > > ,If I am wrong. Should I send patch v2 with this issue description ?
> >
> > This is definitely a bug, though thankfully only in an error handling
> path.
> >
> > Your description is much more clear.  You might want to write
> >
> > "... but currently cleanup is happening repeatedly for the same
> >  cl_env_percpu[i] element."
> >
> > Cheers, Andreas
> >
> > > On Fri, Sep 16, 2016 at 1:35 AM, Julia Lawall <julia.lawall@lip6.fr>
> wrote:
> > >>
> > >>
> > >> On Fri, 16 Sep 2016, Sandhya Bankar wrote:
> > >>
> > >> > Convert array index from the loop bound to the loop index.
> > >> > Used below semantic patch to identify this issue:
> > >>
> > >> This is a really nice idea!  However, it would be good for the commit
> > >> message to explain why the change is correct.  Certainly the code is
> > >> suspicious, but why is it actually wrong?  The idea would be to
> consider
> > >> what is done with cle on each iteration.
> > >>
> > >> julia
> > >>
> > >> > @@
> > >> > expression e1,e2,ar;
> > >> > @@
> > >> >
> > >> > for(e1 = 0; e1 < e2; e1++) { <...
> > >> >   ar[
> > >> > - e2
> > >> > + e1
> > >> >   ]
> > >> >   ...> }
> > >> >
> > >> >
> > >> > Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> > >> > ---
> > >> >  drivers/staging/lustre/lustre/obdclass/cl_object.c |    2 +-
> > >> >  1 files changed, 1 insertions(+), 1 deletions(-)
> > >> >
> > >> > diff --git a/drivers/staging/lustre/lustre/obdclass/cl_object.c
> b/drivers/staging/lustre/lustre/obdclass/cl_object.c
> > >> > index 91a5806..eeccd30 100755
> > >> > --- a/drivers/staging/lustre/lustre/obdclass/cl_object.c
> > >> > +++ b/drivers/staging/lustre/lustre/obdclass/cl_object.c
> > >> > @@ -1000,7 +1000,7 @@ static int cl_env_percpu_init(void)
> > >> >                * thus we must uninitialize up to i, the rest are
> undefined.
> > >> >                */
> > >> >               for (j = 0; j < i; j++) {
> > >> > -                     cle = &cl_env_percpu[i];
> > >> > +                     cle = &cl_env_percpu[j];
> > >> >                       lu_context_exit(&cle->ce_ses);
> > >> >                       lu_context_fini(&cle->ce_ses);
> > >> >                       lu_env_fini(&cle->ce_lu);
> > >> > --
> > >> > 1.7.1
> > >> >
> > >> > --
> > >> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > >> > To unsubscribe from this group and stop receiving emails from it,
> send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > >> > To post to this group, send email to outreachy-kernel@googlegroups.
> com.
> > >> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20160915194341.GA30843%
> 40sandhya.
> > >> > For more options, visit https://groups.google.com/d/optout.
> > >> >
> > >>
> >
> >
>

--001a114a8f36219440053c9bd705
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Julia and Andreas.<br>Should I need to send patch v=
2 as per your suggestions ? <br></div><div class=3D"gmail_extra"><br><div c=
lass=3D"gmail_quote">On Fri, Sep 16, 2016 at 11:17 AM, Julia Lawall <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">ju=
lia.lawall@lip6.fr</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<span class=3D""><br>
<br>
On Thu, 15 Sep 2016, Dilger, Andreas wrote:<br>
<br>
&gt;<br>
&gt; &gt; On Sep 15, 2016, at 14:53, sandhya bankar &lt;<a href=3D"mailto:b=
ankarsandhya512@gmail.com">bankarsandhya512@gmail.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; The structure cl_env_percpu[NR_CPUS] have been initializing for e=
ach<br>
&gt; &gt; possible cpu (i.e 0 to i) but during initialization if any error =
will<br>
&gt; &gt; occurred this come to the error handling code in which the<br>
&gt; &gt; cl_env_percpu should be uninitialized upto i but currently<br>
<br>
</span>Sandhya,<br>
<br>
&quot;should be uninitialized&quot; is a bit unclear, because it could desc=
ribe the<br>
state that should hold, or the state that you should achieve.=C2=A0 It coul=
d be<br>
better to say &quot;the error handling code which should<br>
uninitialize/free/release (whatever seems best) the cl_env_percpu ...&quot;=
.<br>
<br>
Andreas&#39;s suggestion is also good.=C2=A0 It says that same thing in ano=
ther<br>
way, and thus makes everything more clear.<br>
<br>
Congratulations on finding a real bug :)<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
julia<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; &gt; uninitialization happening for the cl_env_percpu[i] which does no=
t<br>
&gt; &gt; seems to be correct. That is why proposing this fix. Please Corre=
ct me<br>
&gt; &gt; ,If I am wrong. Should I send patch v2 with this issue descriptio=
n ?<br>
&gt;<br>
&gt; This is definitely a bug, though thankfully only in an error handling =
path.<br>
&gt;<br>
&gt; Your description is much more clear.=C2=A0 You might want to write<br>
&gt;<br>
&gt; &quot;... but currently cleanup is happening repeatedly for the same<b=
r>
&gt;=C2=A0 cl_env_percpu[i] element.&quot;<br>
&gt;<br>
&gt; Cheers, Andreas<br>
&gt;<br>
&gt; &gt; On Fri, Sep 16, 2016 at 1:35 AM, Julia Lawall &lt;<a href=3D"mail=
to:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; On Fri, 16 Sep 2016, Sandhya Bankar wrote:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; &gt; Convert array index from the loop bound to the loop inde=
x.<br>
&gt; &gt;&gt; &gt; Used below semantic patch to identify this issue:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; This is a really nice idea!=C2=A0 However, it would be good f=
or the commit<br>
&gt; &gt;&gt; message to explain why the change is correct.=C2=A0 Certainly=
 the code is<br>
&gt; &gt;&gt; suspicious, but why is it actually wrong?=C2=A0 The idea woul=
d be to consider<br>
&gt; &gt;&gt; what is done with cle on each iteration.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; julia<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; &gt; @@<br>
&gt; &gt;&gt; &gt; expression e1,e2,ar;<br>
&gt; &gt;&gt; &gt; @@<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; for(e1 =3D 0; e1 &lt; e2; e1++) { &lt;...<br>
&gt; &gt;&gt; &gt;=C2=A0 =C2=A0ar[<br>
&gt; &gt;&gt; &gt; - e2<br>
&gt; &gt;&gt; &gt; + e1<br>
&gt; &gt;&gt; &gt;=C2=A0 =C2=A0]<br>
&gt; &gt;&gt; &gt;=C2=A0 =C2=A0...&gt; }<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; Signed-off-by: Sandhya Bankar &lt;<a href=3D"mailto:bank=
arsandhya512@gmail.com">bankarsandhya512@gmail.com</a>&gt;<br>
&gt; &gt;&gt; &gt; ---<br>
&gt; &gt;&gt; &gt;=C2=A0 drivers/staging/lustre/lustre/<wbr>obdclass/cl_obj=
ect.c |=C2=A0 =C2=A0 2 +-<br>
&gt; &gt;&gt; &gt;=C2=A0 1 files changed, 1 insertions(+), 1 deletions(-)<b=
r>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; diff --git a/drivers/staging/lustre/<wbr>lustre/obdclass=
/cl_object.c b/drivers/staging/lustre/<wbr>lustre/obdclass/cl_object.c<br>
&gt; &gt;&gt; &gt; index 91a5806..eeccd30 100755<br>
&gt; &gt;&gt; &gt; --- a/drivers/staging/lustre/<wbr>lustre/obdclass/cl_obj=
ect.c<br>
&gt; &gt;&gt; &gt; +++ b/drivers/staging/lustre/<wbr>lustre/obdclass/cl_obj=
ect.c<br>
&gt; &gt;&gt; &gt; @@ -1000,7 +1000,7 @@ static int cl_env_percpu_init(void=
)<br>
&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *=
 thus we must uninitialize up to i, the rest are undefined.<br>
&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *=
/<br>
&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fo=
r (j =3D 0; j &lt; i; j++) {<br>
&gt; &gt;&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0cle =3D &amp;cl_env_percpu[i];<br>
&gt; &gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0cle =3D &amp;cl_env_percpu[j];<br>
&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0lu_context_exit(&amp;cle-&gt;ce_ses);<br>
&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0lu_context_fini(&amp;cle-&gt;ce_ses);<br>
&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0lu_env_fini(&amp;cle-&gt;ce_lu);<br>
&gt; &gt;&gt; &gt; --<br>
&gt; &gt;&gt; &gt; 1.7.1<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; --<br>
&gt; &gt;&gt; &gt; You received this message because you are subscribed to =
the Google Groups &quot;outreachy-kernel&quot; group.<br>
&gt; &gt;&gt; &gt; To unsubscribe from this group and stop receiving emails=
 from it, send an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe=
@googlegroups.com">outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<=
br>
&gt; &gt;&gt; &gt; To post to this group, send email to <a href=3D"mailto:o=
utreachy-kernel@googlegroups.com">outreachy-kernel@googlegroups.<wbr>com</a=
>.<br>
&gt; &gt;&gt; &gt; To view this discussion on the web visit <a href=3D"http=
s://groups.google.com/d/msgid/outreachy-kernel/20160915194341.GA30843%40san=
dhya" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr=
>msgid/outreachy-kernel/<wbr>20160915194341.GA30843%<wbr>40sandhya</a>.<br>
&gt; &gt;&gt; &gt; For more options, visit <a href=3D"https://groups.google=
.com/d/optout" rel=3D"noreferrer" target=3D"_blank">https://groups.google.c=
om/d/<wbr>optout</a>.<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt;<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>

--001a114a8f36219440053c9bd705--

