X-GM-THRID: 6331367945282781184
X-Received: by 10.66.85.104 with SMTP id g8mr13943045paz.33.1474235893892;
        Sun, 18 Sep 2016 14:58:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.115.7 with SMTP id y7ls2464639itb.16.gmail; Sun, 18 Sep
 2016 14:58:13 -0700 (PDT)
X-Received: by 10.66.167.234 with SMTP id zr10mr3613608pab.96.1474235893057;
        Sun, 18 Sep 2016 14:58:13 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-qt0-x243.google.com (mail-qt0-x243.google.com. [2607:f8b0:400d:c0d::243])
        by gmr-mx.google.com with ESMTPS id u139si404565ywe.5.2016.09.18.14.58.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 14:58:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) client-ip=2607:f8b0:400d:c0d::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x243.google.com with SMTP id e5so4268897qtb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 14:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=qBOfqVcOQyJpaFrF/VWCZz+FRxt20TV+4L9wjChYbwk=;
        b=QAVuIoDiB2QER0XTqicFl1kfY2Dkv32WOBnQaVW7xJvQJwMD4CgIeUbaLJLsj6iFwt
         HW5ZUVjEyoH3qVS5OOR/c502uDaJeLrXEcp0NpPkJyxvpLCIiWt3jLm4SWkFXE+oU41f
         6wSHfXCrw8YlOA41g57I96oVhzcUM+oC4C6oK8C27dNA5APY1wpxcu2JANYJB4rXlkI0
         Itg4HYp2eNhZPH9spOEvoc7WhavJehjeV6WZAwmNYBXD8qGGUb8/mwmMgMrqIwHlzc6+
         1PaRDIvnZP5EoXJsA49xXPDXkPSoGG8dZJhEZXDjR8BpGcjFPOc5RjEDZXpwyzoQHh5V
         XRog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=qBOfqVcOQyJpaFrF/VWCZz+FRxt20TV+4L9wjChYbwk=;
        b=gM//26hVp2YEzFZLFAxvUr6ZDyBWXuMjFpzBu2cadRMx90LkJNjLQovf76644gXPLS
         k3soLJsuo9Qk46WRl/ga9jBzsZxxBznrbF+VP9GuLlCkk9NdsxpCAIzitn44Vq8GG/ge
         F7vVCZ2jkhgOtTxef02OmfOoui+1UGRHZZo6ThKqILeoi+G+O0rkOl4OiZMEnnAbgNdZ
         3vMHEbRsFqB02yfS/yDS+Cwoy1XyoaEWhcRdg0IAAVuNAYf+dWjjQbGqELZxxBT2bYaJ
         bno06TDRJOwdW4vw8mp375uFJh4H6NUGk+TZqe3gRdlSDgpg9FWmvdOzgFRJvt5pvcAd
         0iTQ==
X-Gm-Message-State: AE9vXwMWsAOtpfDunlEvI+WSSVJfXxBbHbUjnZdi6WwLfdNWlKf2Pm4mxb/xXFk0S9qOC0fhuRTNyFI4s/w/kA==
X-Received: by 10.200.42.130 with SMTP id b2mr26652317qta.106.1474235892762;
 Sun, 18 Sep 2016 14:58:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.56.184 with HTTP; Sun, 18 Sep 2016 14:57:42 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609172041250.3124@hadrien>
References: <CAOCi2DFRtAPuzNce3oEQGcu6yO388OE=fC3SBOS7ywVuebUV5w@mail.gmail.com>
 <alpine.DEB.2.10.1609172041250.3124@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Mon, 19 Sep 2016 03:27:42 +0530
Message-ID: <CAOCi2DEHiLTBC8Rgs3wQHO=7RVbznTVZjtvKbdoPXUbn4w083w@mail.gmail.com>
Subject: Re: [Outreachy kernel] Using Coccinelle to detect bugs
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a114078dcb41011053ccf4a4e

--001a114078dcb41011053ccf4a4e
Content-Type: text/plain; charset=UTF-8

On Sun, Sep 18, 2016 at 12:20 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Sat, 17 Sep 2016, Gargi Sharma wrote:
>
> > Hi all!
> > I have been trying to use Coccinelle scripts but I am getting the error
:
> > Fatal error: exception Failure("False should not be in the final
result.
> > Perhaps your rule doesn't contain any +/-/* code, or you have a failed
> > dependency.  If the problem is not clear, try the option
> > --debug-parse-cocci.").
> >
> > Steps I followed:
> > 1. sudo apt-get install coccinelle
> > 2.  make coccicheck MODE=report
> > 3. run  spatch --sp-file scripts/coccinelle/misc/array_siz.cocci --dir
> > drivers/staging/*
>
> Either you run make coccicheck or you run spatch with some arguments.
> There is no file with the name scripts/coccinelle/misc/array_siz.cocci.
> It would be scripts/coccinelle/misc/array_size.cocci.  I don't know if the
> typo is in your command line, or if it just came when you sent the email.

Yes, that was a typo. I meant to write array_size.cocci.

>
> The short answer for the error message you got it that you need to run
> that semantic patch using make coccicheck.  You can read about how to use
> make coccicheck in the Linux kernel documentation, in
> dev-tools/coccinelle.rst.

make coccicheck MODE=patch returns a coccicheck failed after listing a
few semantic patches. Is something wrong with my kernel build?
Should I purge coccinelle installation and reinstall it?
Also, the documentation folder in my staging-testing tree does not contain
a dev-tools folder. It does have a coccinelle.txt though. Is that the same
as dev-tools/coccinelle.rst?

Thanks for the detailed explanation. It helped clear a lot of things.

gargi

>
> The long answer is that if you look at array_size.cocci, you will see at
> the top:
>
> virtual patch
> virtual context
> virtual org
> virtual report
>
> These are virtual rules, that are sort of like #ifdefs.  Basically, they
> give you some choices about what kind of behavior you want.  If you want a
> patch, ie the issue to be fixed, then when you run spatch, you can give
> the command line argument -D patch.  Or if you just want a report, ie some
> lines printing the file name and line number where the issue occurs, you
> can give the command line -D report.  The various rules in the semantic
> patch then depend on these virtual rules.  All of the rules in the
> semantic patch that actually do something (make a change or print some
> output) depend on these virtual rules in one way or the other.  So if you
> don't give one of -D patch, etc, then it will have nothing to do, and you
> will get the eror message you saw.
>
> >
> > After which I get the error:
> > Fatal error: exception Failure("False should not be in the final
result.
> > Perhaps your rule doesn't contain any +/-/* code, or you have a failed
> > dependency.  If the problem is not clear, try the option
> > --debug-parse-cocci.").
> >
> > I would also like to ask that a lot of script mentioned in coccinellery
are
> > not present in scripts/coccinelle. So if I want to run a scipt from
> > coccinellery, do I clone the coccinellery repo as well?
>
> Yes.  The scripts in the kernel are things that are considered to be
> useful, and to behave well.  The scripts in coccinellery are just random
> things that have been collected over time.  You are most welcome to try
> them, though.  For those, you run spatch directly, not make coccicheck,
> since they don't normally provide any of the virtual rules.
>
> julia
>
> >
> > Thanks!
> > Gargi
> >
> > --
> > You received this message because you are subscribed to the Google
Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://
groups.google.com/d/msgid/outreachy-kernel/CAOCi2DFRtAPuzNce3oEQGcu
> > 6yO388OE%3DfC3SBOS7ywVuebUV5w%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >

--001a114078dcb41011053ccf4a4e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Sun, Sep 18, 2016 at 12:20 AM, Julia Lawall &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br>&gt=
;<br>&gt;<br>&gt;<br>&gt; On Sat, 17 Sep 2016, Gargi Sharma wrote:<br>&gt;<=
br>&gt; &gt; Hi all!<br>&gt; &gt; I have been trying to use Coccinelle scri=
pts but I am getting the error :<br>&gt; &gt; Fatal error: exception Failur=
e(&quot;False should not be in the final result. <br>&gt; &gt; Perhaps your=
 rule doesn&#39;t contain any +/-/* code, or you have a failed<br>&gt; &gt;=
 dependency.=C2=A0 If the problem is not clear, try the option<br>&gt; &gt;=
 --debug-parse-cocci.&quot;).<br>&gt; &gt;<br>&gt; &gt; Steps I followed:<b=
r>&gt; &gt; 1. sudo apt-get install coccinelle<br>&gt; &gt; 2. =C2=A0make c=
occicheck MODE=3Dreport<br>&gt; &gt; 3. run =C2=A0spatch --sp-file scripts/=
coccinelle/misc/array_siz.cocci --dir<br>&gt; &gt; drivers/staging/*<br>&gt=
;<br>&gt; Either you run make coccicheck or you run spatch with some argume=
nts.<br>&gt; There is no file with the name scripts/coccinelle/misc/array_s=
iz.cocci.<br>&gt; It would be scripts/coccinelle/misc/array_size.cocci.=C2=
=A0 I don&#39;t know if the<br>&gt; typo is in your command line, or if it =
just came when you sent the email.<div><br></div><div>Yes, that was a typo.=
 I meant to write array_size.cocci.=C2=A0</div><div><br>&gt;<br>&gt; The sh=
ort answer for the error message you got it that you need to run<br>&gt; th=
at semantic patch using make coccicheck.=C2=A0 You can read about how to us=
e<br>&gt; make coccicheck in the Linux kernel documentation, in<br>&gt; dev=
-tools/coccinelle.rst.</div><div><br></div><div>make coccicheck MODE=3Dpatc=
h returns a coccicheck failed after listing a</div><div>few semantic patche=
s. Is something wrong with my kernel build?=C2=A0</div><div>Should I purge =
coccinelle installation and reinstall it?</div><div>Also, the documentation=
 folder in my staging-testing tree does not contain</div><div>a dev-tools f=
older. It does have a coccinelle.txt though. Is that the same</div><div>as =
dev-tools/coccinelle.rst?</div><div><br></div><div>Thanks for the detailed =
explanation. It helped clear a lot of things.</div><div><br></div><div>garg=
i</div><div><br>&gt;<br>&gt; The long answer is that if you look at array_s=
ize.cocci, you will see at<br>&gt; the top:<br>&gt;<br>&gt; virtual patch<b=
r>&gt; virtual context<br>&gt; virtual org<br>&gt; virtual report<br>&gt;<b=
r>&gt; These are virtual rules, that are sort of like #ifdefs.=C2=A0 Basica=
lly, they<br>&gt; give you some choices about what kind of behavior you wan=
t.=C2=A0 If you want a<br>&gt; patch, ie the issue to be fixed, then when y=
ou run spatch, you can give<br>&gt; the command line argument -D patch.=C2=
=A0 Or if you just want a report, ie some<br>&gt; lines printing the file n=
ame and line number where the issue occurs, you<br>&gt; can give the comman=
d line -D report.=C2=A0 The various rules in the semantic<br>&gt; patch the=
n depend on these virtual rules.=C2=A0 All of the rules in the<br>&gt; sema=
ntic patch that actually do something (make a change or print some<br>&gt; =
output) depend on these virtual rules in one way or the other.=C2=A0 So if =
you<br>&gt; don&#39;t give one of -D patch, etc, then it will have nothing =
to do, and you<br>&gt; will get the eror message you saw.<br>&gt;<br>&gt; &=
gt;<br>&gt; &gt; After which I get the error: <br>&gt; &gt; Fatal error: ex=
ception Failure(&quot;False should not be in the final result. <br>&gt; &gt=
; Perhaps your rule doesn&#39;t contain any +/-/* code, or you have a faile=
d<br>&gt; &gt; dependency.=C2=A0 If the problem is not clear, try the optio=
n<br>&gt; &gt; --debug-parse-cocci.&quot;).<br>&gt; &gt;<br>&gt; &gt; I wou=
ld also like to ask that a lot of script mentioned in coccinellery are<br>&=
gt; &gt; not present in scripts/coccinelle. So if I want to run a scipt fro=
m<br>&gt; &gt; coccinellery, do I clone the coccinellery repo as well?<br>&=
gt;<br>&gt; Yes.=C2=A0 The scripts in the kernel are things that are consid=
ered to be<br>&gt; useful, and to behave well.=C2=A0 The scripts in coccine=
llery are just random<br>&gt; things that have been collected over time.=C2=
=A0 You are most welcome to try<br>&gt; them, though.=C2=A0 For those, you =
run spatch directly, not make coccicheck,<br>&gt; since they don&#39;t norm=
ally provide any of the virtual rules.<br>&gt;<br>&gt; julia<br>&gt;<br>&gt=
; &gt;<br>&gt; &gt; Thanks!<br>&gt; &gt; Gargi<br>&gt; &gt;<br>&gt; &gt; --=
<br>&gt; &gt; You received this message because you are subscribed to the G=
oogle Groups<br>&gt; &gt; &quot;outreachy-kernel&quot; group.<br>&gt; &gt; =
To unsubscribe from this group and stop receiving emails from it, send an<b=
r>&gt; &gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googl=
egroups.com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>&gt; &gt=
; To post to this group, send email to <a href=3D"mailto:outreachy-kernel@g=
ooglegroups.com">outreachy-kernel@googlegroups.com</a>.<br>&gt; &gt; To vie=
w this discussion on the web visithttps://<a href=3D"http://groups.google.c=
om/d/msgid/outreachy-kernel/CAOCi2DFRtAPuzNce3oEQGcu">groups.google.com/d/m=
sgid/outreachy-kernel/CAOCi2DFRtAPuzNce3oEQGcu</a><br>&gt; &gt; 6yO388OE%3D=
fC3SBOS7ywVuebUV5w%<a href=3D"http://40mail.gmail.com">40mail.gmail.com</a>=
.<br>&gt; &gt; For more options, visit <a href=3D"https://groups.google.com=
/d/optout">https://groups.google.com/d/optout</a>.<br>&gt; &gt;<br>&gt; &gt=
;</div></div>

--001a114078dcb41011053ccf4a4e--

