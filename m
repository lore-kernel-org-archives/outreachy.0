X-GM-THRID: 6329847978033938432
X-Received: by 10.107.200.79 with SMTP id y76mr2258060iof.1.1473799835165;
        Tue, 13 Sep 2016 13:50:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.17.93 with SMTP id z90ls428850ioi.6.gmail; Tue, 13 Sep
 2016 13:50:33 -0700 (PDT)
X-Received: by 10.36.213.138 with SMTP id a132mr2424784itg.10.1473799833086;
        Tue, 13 Sep 2016 13:50:33 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-qt0-x241.google.com (mail-qt0-x241.google.com. [2607:f8b0:400d:c0d::241])
        by gmr-mx.google.com with ESMTPS id d206si80619ywh.3.2016.09.13.13.50.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 13:50:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) client-ip=2607:f8b0:400d:c0d::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x241.google.com with SMTP id 11so57693qtc.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 13:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=tMMTR7cjogsxpyOq5vMnOo8KpAAFt0oDgQaUqRyyUow=;
        b=QKjkPATynBtzLpPzmEOGQtzal83US4Q6n5xA9uKZh3RnoK6LZr9rtE9hJQ2RfyFCx3
         y2xBSMiImrBoFs3hzL4P+DduXYHK600x3awGkmgw+88QpeuDdnUWhL6VPzkuqTFvmo18
         77DtCxvTwv9RVoFR3xHdhgAWw/9VOTt6HVPkivWpaqFed447hXgs6ICOT2JmE5NQu/ZE
         smIVlBIOGMNn/3nVLxo5rwHgUAJxFGn9HDkfu2kSqjTr4l4MKWgbcH90z1orqL5LraEw
         sYk7O44denA/xlSnI+zgRAMQshozVcuECgtrpn+VodHlnj0Ps8XwyPm8kfvGueHddffM
         +PSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=tMMTR7cjogsxpyOq5vMnOo8KpAAFt0oDgQaUqRyyUow=;
        b=UddL5aKPAYkNRAughKZdYaCn2l+lJLl57JfJM0kpruZH7zHcOY/MklbjhhvsI4sGLt
         Eh05LYUsnWZ7114CCvBEsWpL2xyw7S7p/JINLwjFe0GEG36+a2KiHvtPIDaIVagmFmmS
         yQF+cNCsc7B754N8exgqiP0sOmDTej/4UhJy9skQNTN2Gv/WY+wAK7xIp6tHZHVrmb2a
         EMpNRM+3ydcqGibrzCjCUIjlhLvhRPYaHPZ5shFdLZnWCGH2plXYYhL8GnaeJQPRX/RK
         kfDBraATLrVarm2zXZLX/7U700nC+xKziPBSfp5oESmnKoLc4WjpsnuLCu9rdRH5iRfd
         dUJg==
X-Gm-Message-State: AE9vXwOL3t0N93AKhQFlxG//GMIUrAPQCsp4gXRO/9kGGUytx0MdmEIr7q2Skaq13I/oqT6pBgd5HBytzDbTnw==
X-Received: by 10.200.54.249 with SMTP id b54mr3676524qtc.21.1473799832761;
 Tue, 13 Sep 2016 13:50:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.56.184 with HTTP; Tue, 13 Sep 2016 13:50:01 -0700 (PDT)
In-Reply-To: <20160913184643.GA3351@d830.WORKGROUP>
References: <20160913160213.12708-1-gs051095@gmail.com> <20160913184643.GA3351@d830.WORKGROUP>
From: Gargi Sharma <gs051095@gmail.com>
Date: Wed, 14 Sep 2016 02:20:01 +0530
Message-ID: <CAOCi2DGhDCt_JZ9=TBX-hRvpz2-EXaVffW-qE+6MT8Un4QmwLw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: octeon: Removing multiple
 blank lines
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Content-Type: multipart/alternative; boundary=001a113e14d4807c5b053c69c399

--001a113e14d4807c5b053c69c399
Content-Type: text/plain; charset=UTF-8

Hi Alison!
On Wed, Sep 14, 2016 at 12:16 AM, Alison Schofield <amsfield22@gmail.com>
wrote:
>
> On Tue, Sep 13, 2016 at 09:32:13PM +0530, Gargi Sharma wrote:
> > Fixes the checkpatch issue Please don't use multiple blank lines.
>
> Hi Gargi,
> Just a couple of minor format comments, but you may as well v2 this
> to get it looking it's best in the git history.

Should the v2 have a message stating that I fixed the commit message or the
original commit message?

gargi
>
> Typically the commit message is written in the imperative format.
> That would be 'Remove' instead of 'Removing'.  It's really not
> necessary to become a grammar expert ;)  just do a git pretty and
> verify that your commit message is in the same style as the others
> on the file you are changing:
>
> git log --pretty=oneline --abbrev-commit  <filename>
>
> Within the changelog you can just cut/paste the checkpatch message,
> as in: CHECK: Please don't use multiple blank lines.  (Also tells
> CHECK or WARNING)
>
> > Fixes the checkpatch issue:
>   CHECK: Please don't use multiple blank lines
>
> Really minor stuff, but it keeps the uniformity which is nice.
>
> alisons
>
> alisons
>
>
>
>
> >
> > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > ---
> >  drivers/staging/octeon/ethernet.c | 2 --
> >  1 file changed, 2 deletions(-)
> >
> > diff --git a/drivers/staging/octeon/ethernet.c
b/drivers/staging/octeon/ethernet.c
> > index 0bd5c18..ec8e424 100644
> > --- a/drivers/staging/octeon/ethernet.c
> > +++ b/drivers/staging/octeon/ethernet.c
> > @@ -686,7 +686,6 @@ static int cvm_oct_probe(struct platform_device
*pdev)
> >               return -EINVAL;
> >       }
> >
> > -
> >       cvm_oct_configure_common_hw();
> >
> >       cvmx_helper_initialize_packet_io_global();
> > @@ -929,7 +928,6 @@ static int cvm_oct_remove(struct platform_device
*pdev)
> >               }
> >       }
> >
> > -
> >       cvmx_pko_shutdown();
> >
> >       cvmx_ipd_free_ptr();
> > --
> > 2.9.2
> >
> > --
> > You received this message because you are subscribed to the Google
Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
https://groups.google.com/d/msgid/outreachy-kernel/20160913160213.12708-1-gs051095%40gmail.com
.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups
"outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
https://groups.google.com/d/msgid/outreachy-kernel/20160913184643.GA3351%40d830.WORKGROUP
.
> For more options, visit https://groups.google.com/d/optout.

--001a113e14d4807c5b053c69c399
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Alison!</div>On Wed, Sep 14, 2016 at 12:16 AM, Ali=
son Schofield &lt;<a href=3D"mailto:amsfield22@gmail.com">amsfield22@gmail.=
com</a>&gt; wrote:<br>&gt;<br>&gt; On Tue, Sep 13, 2016 at 09:32:13PM +0530=
, Gargi Sharma wrote:<br>&gt; &gt; Fixes the checkpatch issue Please don&#3=
9;t use multiple blank lines.<br>&gt;<br>&gt; Hi Gargi,<br>&gt; Just a coup=
le of minor format comments, but you may as well v2 this<br>&gt; to get it =
looking it&#39;s best in the git history.<div><br></div><div>Should the v2 =
have a message stating that I fixed the commit message or the original comm=
it message?</div><div><br></div><div>gargi<br>&gt;<br>&gt; Typically the co=
mmit message is written in the imperative format.<br>&gt; That would be &#3=
9;Remove&#39; instead of &#39;Removing&#39;.=C2=A0 It&#39;s really not<br>&=
gt; necessary to become a grammar expert ;) =C2=A0just do a git pretty and<=
br>&gt; verify that your commit message is in the same style as the others<=
br>&gt; on the file you are changing:<br>&gt;<br>&gt; git log --pretty=3Don=
eline --abbrev-commit =C2=A0&lt;filename&gt;<br>&gt;<br>&gt; Within the cha=
ngelog you can just cut/paste the checkpatch message,<br>&gt; as in: CHECK:=
 Please don&#39;t use multiple blank lines. =C2=A0(Also tells<br>&gt; CHECK=
 or WARNING)<br>&gt;<br>&gt; &gt; Fixes the checkpatch issue:<br>&gt; =C2=
=A0 CHECK: Please don&#39;t use multiple blank lines<br>&gt;<br>&gt; Really=
 minor stuff, but it keeps the uniformity which is nice.<br>&gt;<br>&gt; al=
isons<br>&gt;<br>&gt; alisons<br>&gt;<br>&gt;<br>&gt;<br>&gt;<br>&gt; &gt;<=
br>&gt; &gt; Signed-off-by: Gargi Sharma &lt;<a href=3D"mailto:gs051095@gma=
il.com">gs051095@gmail.com</a>&gt;<br>&gt; &gt; ---<br>&gt; &gt; =C2=A0driv=
ers/staging/octeon/ethernet.c | 2 --<br>&gt; &gt; =C2=A01 file changed, 2 d=
eletions(-)<br>&gt; &gt;<br>&gt; &gt; diff --git a/drivers/staging/octeon/e=
thernet.c b/drivers/staging/octeon/ethernet.c<br>&gt; &gt; index 0bd5c18..e=
c8e424 100644<br>&gt; &gt; --- a/drivers/staging/octeon/ethernet.c<br>&gt; =
&gt; +++ b/drivers/staging/octeon/ethernet.c<br>&gt; &gt; @@ -686,7 +686,6 =
@@ static int cvm_oct_probe(struct platform_device *pdev)<br>&gt; &gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EINVAL;<br>&gt; &gt; =
=C2=A0 =C2=A0 =C2=A0 }<br>&gt; &gt;<br>&gt; &gt; -<br>&gt; &gt; =C2=A0 =C2=
=A0 =C2=A0 cvm_oct_configure_common_hw();<br>&gt; &gt;<br>&gt; &gt; =C2=A0 =
=C2=A0 =C2=A0 cvmx_helper_initialize_packet_io_global();<br>&gt; &gt; @@ -9=
29,7 +928,6 @@ static int cvm_oct_remove(struct platform_device *pdev)<br>&=
gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt; &gt; =
=C2=A0 =C2=A0 =C2=A0 }<br>&gt; &gt;<br>&gt; &gt; -<br>&gt; &gt; =C2=A0 =C2=
=A0 =C2=A0 cvmx_pko_shutdown();<br>&gt; &gt;<br>&gt; &gt; =C2=A0 =C2=A0 =C2=
=A0 cvmx_ipd_free_ptr();<br>&gt; &gt; --<br>&gt; &gt; 2.9.2<br>&gt; &gt;<br=
>&gt; &gt; --<br>&gt; &gt; You received this message because you are subscr=
ibed to the Google Groups &quot;outreachy-kernel&quot; group.<br>&gt; &gt; =
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com">=
outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>&gt; &gt; To post to =
this group, send email to <a href=3D"mailto:outreachy-kernel@googlegroups.c=
om">outreachy-kernel@googlegroups.com</a>.<br>&gt; &gt; To view this discus=
sion on the web visit <a href=3D"https://groups.google.com/d/msgid/outreach=
y-kernel/20160913160213.12708-1-gs051095%40gmail.com">https://groups.google=
.com/d/msgid/outreachy-kernel/20160913160213.12708-1-gs051095%40gmail.com</=
a>.<br>&gt; &gt; For more options, visit <a href=3D"https://groups.google.c=
om/d/optout">https://groups.google.com/d/optout</a>.<br>&gt;<br>&gt; --<br>=
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>&gt; To unsubscribe from this gr=
oup and stop receiving emails from it, send an email to <a href=3D"mailto:o=
utreachy-kernel%2Bunsubscribe@googlegroups.com">outreachy-kernel+unsubscrib=
e@googlegroups.com</a>.<br>&gt; To post to this group, send email to <a hre=
f=3D"mailto:outreachy-kernel@googlegroups.com">outreachy-kernel@googlegroup=
s.com</a>.<br>&gt; To view this discussion on the web visit <a href=3D"http=
s://groups.google.com/d/msgid/outreachy-kernel/20160913184643.GA3351%40d830=
.WORKGROUP">https://groups.google.com/d/msgid/outreachy-kernel/201609131846=
43.GA3351%40d830.WORKGROUP</a>.<br>&gt; For more options, visit <a href=3D"=
https://groups.google.com/d/optout">https://groups.google.com/d/optout</a>.=
</div></div>

--001a113e14d4807c5b053c69c399--

