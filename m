X-GM-THRID: 6808287066247397376
X-Received: by 2002:a62:1b05:: with SMTP id b5mr10642507pfb.281.1585250891941;
        Thu, 26 Mar 2020 12:28:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ff18:: with SMTP id f24ls4602252plj.0.gmail; Thu, 26
 Mar 2020 12:28:10 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtD4la4E1JAQQeIG7n7qmYhnPz79NEZBhfLWjNIG8jQWA+B/NNr8pwBNNA2ckpfVrGhCmjE
X-Received: by 2002:a17:90a:8806:: with SMTP id s6mr1681771pjn.141.1585250890272;
        Thu, 26 Mar 2020 12:28:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585250890; cv=none;
        d=google.com; s=arc-20160816;
        b=x04esXoX3dGwINsHFDHilE8dEJpdwDMxp5Tiob1/cJtj3eV99hmxtiv74MoPW7wQkV
         FK7w9CTJTP+PBOOUFjjMMpuW/HQG6Ug+DBfpoPe0uHruKdXS7XjiJZRr+j+fq0WDmRuH
         mb//5Q7sRSc0d5fAMp8mL3l0d0SWKZQ1oH+Qs38Gg21wPLJb6G14vctlFBXSxUrHrGWf
         1foviDGcGRUrkoFTTp3REwL/Wq7t6Qj2VVLFPoUKjTHrZP1OLb9lTioe7yKlOyTGLX3X
         DnnJXXU+xQQuZ64qmhFz8tgHGSfFshn+jMZhFvhKILiCGki/FJCMbYIA2dMVysfoJ4IE
         0bdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2Bn1o6cEGb4ftm/y8eY16FT9RjCs+HWtKGWPHKEalRE=;
        b=i1uXu8Se5L8zi0gKkjPm3tX8Tcf+2Uy570GnQjDG0IJREl0EwOQkBQrtVAUNDJZ340
         qJwiEcXMi6nJl5A6c9nObTqKSvRmTGXjsrAGXHq62W/27nMw10mp/RjB8qeLsmV0nWhS
         1S29n/1tQd6q7wt71r/J2lgzwUtMAA+XZTX7Jtdi9rIZPgqMIVSaesAVXSMSg2WE4TSW
         aIxYk4bES990s+FUOZa/Nfj6xNVtRQgA8iwRKV1MwWdl0tu57Tz/SZVTfIK2MujwNri4
         KfmL1BVJRpbVH2+8ECEB0YNZoCi1i2RiozhS+oO132rGKbdHFjBJ24N4R+3Wv4j70MEp
         Bs/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sucanPSh;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com. [2607:f8b0:4864:20::a44])
        by gmr-mx.google.com with ESMTPS id m21si222265pls.5.2020.03.26.12.28.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 12:28:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2607:f8b0:4864:20::a44 as permitted sender) client-ip=2607:f8b0:4864:20::a44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sucanPSh;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vk1-xa44.google.com with SMTP id n128so2034521vke.5
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2020 12:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2Bn1o6cEGb4ftm/y8eY16FT9RjCs+HWtKGWPHKEalRE=;
        b=sucanPShS3lFEgR9te9nWTXJpZlvXKpQJ6JK1aixB5Fq2Ngd21rc/uXOn1VKdXQbed
         owLaPz3ituvfW/Lhx5/APkJ7dNpvpbL+OiKd7J09g59OKVBB/U+vOpAeutyMhqwLKZuL
         j+kxcHAfdVYYC9DtPK75yfgLKy/IRPJlm3p9NPFJOXioQXJJtdzvGrETvAyp24bOaAEu
         6Iq2YljRccrg44cJ4jIyqq9z6nWO+jZFiwHNjtDN8x/6Q0ywIWRwqzCi4SB/GPyAJ7ax
         8ZP9zpQbuPc4cPPLtt2SebJzU28nS8BtAa9j9pCdSNTPYwSaCX2gmMXj/ATPPmxgYmrc
         QVcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2Bn1o6cEGb4ftm/y8eY16FT9RjCs+HWtKGWPHKEalRE=;
        b=XqBoJIVTxwBSfu3MsK17VLK5v6XErgJCDle3wVTMh0liN0gmz/wHnaBo8grqZb/b8U
         +I45Ay7eS7Se/xWjmREqSSOZDIIliHrKj4w/gQ50LOJ6+O9SvVQyVOxdact7oXFNHVwQ
         qTBiyU9Kfj6YaPL/HUFn2BMzhH9zwd7J62kb/y8T8wFSUdwTQWCRIPd4altCO6MIk2ck
         0tbhsDxfi5PxOU1AeuKSxi5SF+tssquJ5x9Wcna4w+v0CHxichme1VsI7AjiGiyRINH4
         UsnLKY02uLT5TF+Iwht2Xo1+VyoJ4qI4afRFSx7CkPfYUR6tehxlQKK/NsEAoN9yGH+6
         S+EA==
X-Gm-Message-State: ANhLgQ0NIGDXVbfsPYThJK1nOTWvCnwKjduTy5OzAajRIreKz1ToG0v1
	ULrHUZO8uXeWqh6S1/Xyf6YA+81DSDG0tRpFdA8N2A==
X-Received: by 2002:ac5:ccb9:: with SMTP id p25mr8023832vkm.69.1585250889317;
 Thu, 26 Mar 2020 12:28:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200325231055.GA29122@siyah2> <alpine.DEB.2.21.2003260818140.3019@hadrien>
In-Reply-To: <alpine.DEB.2.21.2003260818140.3019@hadrien>
From: Gokce Kuler <gokcekuler@gmail.com>
Date: Thu, 26 Mar 2020 22:27:43 +0300
Message-ID: <CAL9LiBJDg2-ibT9eJda_F95Ogexm0efGXaudhFcehOv+M-iRLQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: qlge: Block comments use a
 trailing */ on a separate line
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Content-Type: multipart/alternative; boundary="000000000000233f6f05a1c6fcb3"

--000000000000233f6f05a1c6fcb3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the feedback!

Julia Lawall <julia.lawall@inria.fr>, 26 Mar 2020 Per, 10:21 tarihinde =C5=
=9Funu
yazd=C4=B1:

>
>
> On Thu, 26 Mar 2020, Gokce Kuler wrote:
>
> > Deleted more * for block comments rules.
>
> The subject line and the log message should be in the imperative.
> Actually, your subject line is quite confusing, because it describes the
> situation one wants to end up with, rather than what should be done.
> Something like "Adjust end of block comment" would be fine for the subjec=
t
> line.  The log message could be "Drop an unnecessary * on the last line o=
f
> a block comment to follow the Linux kernel coding conventions.  Problem
> found by checkpatch.".
>
> julia
>
> >
> > Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> > ---
> >  drivers/staging/qlge/qlge_mpi.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/qlge/qlge_mpi.c
> b/drivers/staging/qlge/qlge_mpi.c
> > index 60c08d9..31322ec 100644
> > --- a/drivers/staging/qlge/qlge_mpi.c
> > +++ b/drivers/staging/qlge/qlge_mpi.c
> > @@ -1178,7 +1178,7 @@ void ql_mpi_idc_work(struct work_struct *work)
> >               /* Signal the resulting link up AEN
> >                * that the frame routing and mac addr
> >                * needs to be set.
> > -              * */
> > +              */
> >               set_bit(QL_CAM_RT_SET, &qdev->flags);
> >               /* Do ACK if required */
> >               if (timeout) {
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20200325231055.GA29122=
%40siyah2
> .
> >
>

--000000000000233f6f05a1c6fcb3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the feedback!=C2=A0<br></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Julia Lawall &lt;<a href=
=3D"mailto:julia.lawall@inria.fr">julia.lawall@inria.fr</a>&gt;, 26 Mar 202=
0 Per, 10:21 tarihinde =C5=9Funu yazd=C4=B1:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><br>
<br>
On Thu, 26 Mar 2020, Gokce Kuler wrote:<br>
<br>
&gt; Deleted more * for block comments rules.<br>
<br>
The subject line and the log message should be in the imperative.<br>
Actually, your subject line is quite confusing, because it describes the<br=
>
situation one wants to end up with, rather than what should be done.<br>
Something like &quot;Adjust end of block comment&quot; would be fine for th=
e subject<br>
line.=C2=A0 The log message could be &quot;Drop an unnecessary * on the las=
t line of<br>
a block comment to follow the Linux kernel coding conventions.=C2=A0 Proble=
m<br>
found by checkpatch.&quot;.<br>
<br>
julia<br>
<br>
&gt;<br>
&gt; Signed-off-by: Gokce Kuler &lt;<a href=3D"mailto:gokcekuler@gmail.com"=
 target=3D"_blank">gokcekuler@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/qlge/qlge_mpi.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/ql=
ge_mpi.c<br>
&gt; index 60c08d9..31322ec 100644<br>
&gt; --- a/drivers/staging/qlge/qlge_mpi.c<br>
&gt; +++ b/drivers/staging/qlge/qlge_mpi.c<br>
&gt; @@ -1178,7 +1178,7 @@ void ql_mpi_idc_work(struct work_struct *work)<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Signal the re=
sulting link up AEN<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * that the fram=
e routing and mac addr<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * needs to be s=
et.<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0set_bit(QL_CAM_R=
T_SET, &amp;qdev-&gt;flags);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Do ACK if req=
uired */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (timeout) {<b=
r>
&gt; --<br>
&gt; 2.7.4<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20200325231055.GA29122%40siyah2" rel=3D"no=
referrer" target=3D"_blank">https://groups.google.com/d/msgid/outreachy-ker=
nel/20200325231055.GA29122%40siyah2</a>.<br>
&gt;<br>
</blockquote></div>

--000000000000233f6f05a1c6fcb3--

