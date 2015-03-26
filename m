X-GM-THRID: 9875324141568
X-Received: by 10.182.129.166 with SMTP id nx6mr14678186obb.35.1427371949695;
        Thu, 26 Mar 2015 05:12:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.225.199 with SMTP id rm7ls472440obc.49.gmail; Thu, 26 Mar
 2015 05:12:29 -0700 (PDT)
X-Received: by 10.182.65.37 with SMTP id u5mr16422755obs.27.1427371949402;
        Thu, 26 Mar 2015 05:12:29 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-ig0-x232.google.com (mail-ig0-x232.google.com. [2607:f8b0:4001:c05::232])
        by gmr-mx.google.com with ESMTPS id nt6si1415133igb.2.2015.03.26.05.12.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 05:12:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:4001:c05::232 as permitted sender) client-ip=2607:f8b0:4001:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:4001:c05::232 as permitted sender) smtp.mail=helen.fornazier@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x232.google.com with SMTP id au2so127278609igc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 05:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=vyYaJoGWMpluUMFtFqO3z2eZOj+DgphaSIQROpoPy4Q=;
        b=WvOdsRiXFaIVounAQID2256EGGmkbfwsM4wkdob3KAgGhIYoOQfPf3qjMuVjNbmpp8
         c10QICW+YyOSYvwjp1pO3bR8gev78lJBM5XTIsmddnPWzdJDyoAJnfl1PDKFbKmz9ggF
         iz38MkjTS8sTKMY8liYNmea+VvoBQz/8Ck0SR8Hy/a5BwylwEYKwtxN3OkeTM9QBSOEQ
         GDPz2QB2itLgmnZjooa4TlgRcFJyUIxaP3yFgDve0dLCRsOz6wEGIOmntYGqNxU01fus
         f7/Dp/77MzsURhfiVNVJ7q9UrYLn7272cMKA/eoylnkUgUEp+/ad+mBMG700S6LQh3KT
         GKjw==
X-Received: by 10.50.124.73 with SMTP id mg9mr35995690igb.38.1427371949225;
 Thu, 26 Mar 2015 05:12:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.82.85 with HTTP; Thu, 26 Mar 2015 05:12:09 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1503260734350.2066@localhost6.localdomain6>
References: <1427327890-5494-1-git-send-email-helen.fornazier@gmail.com> <alpine.DEB.2.02.1503260734350.2066@localhost6.localdomain6>
From: Helen Fornazier <helen.fornazier@gmail.com>
Date: Thu, 26 Mar 2015 09:12:09 -0300
Message-ID: <CAPW4XYZvku8SaG2-cnjo0mjmtNMda=aZ8FVAR5qM83o6dauXsw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: i2o: Add "const" in variable declaration
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e010d9532ff003105122fed1c

--089e010d9532ff003105122fed1c
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 26, 2015 at 3:34 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

> On Wed, 25 Mar 2015, Helen Fornazier wrote:
>
> > This patch fixes the checkpatch.pl warning:
> >
> > WARNING: char * array declaration might be better as static const
> > +       static char *FAIL_STATUS[] = {
>
> Your commit message should explain why this is a correct change.
>
> julia
>

Should I send this patch again? As you said, i2o is going to be removed
from the kernel.


>
> > Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
> > ---
> >  drivers/staging/i2o/debug.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/i2o/debug.c b/drivers/staging/i2o/debug.c
> > index 12b783b2..f703e00 100644
> > --- a/drivers/staging/i2o/debug.c
> > +++ b/drivers/staging/i2o/debug.c
> > @@ -69,7 +69,7 @@ void i2o_dump_message(struct i2o_message *m)
> >   */
> >  static void i2o_report_fail_status(u8 req_status, u32 *msg)
> >  {
> > -     static char *FAIL_STATUS[] = {
> > +     static const char *FAIL_STATUS[] = {
> >               "0x80",         /* not used */
> >               "SERVICE_SUSPENDED",    /* 0x81 */
> >               "SERVICE_TERMINATED",   /* 0x82 */
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/1427327890-5494-1-git-send-email-helen.fornazier%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>



-- 
Helen Fornazier

--089e010d9532ff003105122fed1c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Mar 26, 2015 at 3:34 AM, Julia Lawall <span dir=3D"ltr">&lt;<a =
href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">O=
n Wed, 25 Mar 2015, Helen Fornazier wrote:<br>
<br>
&gt; This patch fixes the <a href=3D"http://checkpatch.pl" target=3D"_blank=
">checkpatch.pl</a> warning:<br>
&gt;<br>
&gt; WARNING: char * array declaration might be better as static const<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0static char *FAIL_STATUS[] =3D {<br>
<br>
</span>Your commit message should explain why this is a correct change.<br>
<br>
julia<br></blockquote><div><br></div><div>Should I send this patch again? A=
s you said, i2o is going to be removed from the kernel.</div><div>=C2=A0</d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; Signed-off-by: Helen Fornazier &lt;<a href=3D"mailto:helen.fornazier@g=
mail.com">helen.fornazier@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/i2o/debug.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/i2o/debug.c b/drivers/staging/i2o/debug.c=
<br>
&gt; index 12b783b2..f703e00 100644<br>
&gt; --- a/drivers/staging/i2o/debug.c<br>
&gt; +++ b/drivers/staging/i2o/debug.c<br>
&gt; @@ -69,7 +69,7 @@ void i2o_dump_message(struct i2o_message *m)<br>
&gt;=C2=A0 =C2=A0*/<br>
&gt;=C2=A0 static void i2o_report_fail_status(u8 req_status, u32 *msg)<br>
&gt;=C2=A0 {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0static char *FAIL_STATUS[] =3D {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0static const char *FAIL_STATUS[] =3D {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;0x80&quot;=
,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* not used */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;SERVICE_SU=
SPENDED&quot;,=C2=A0 =C2=A0 /* 0x81 */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;SERVICE_TE=
RMINATED&quot;,=C2=A0 =C2=A0/* 0x82 */<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/1427327890-5494-1-git-send-email-helen.for=
nazier%40gmail.com" target=3D"_blank">https://groups.google.com/d/msgid/out=
reachy-kernel/1427327890-5494-1-git-send-email-helen.fornazier%40gmail.com<=
/a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 target=3D"_blank">https://groups.google.com/d/optout</a>.<br>
&gt;<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature">Helen Fornazier<br></div>
</div></div>

--089e010d9532ff003105122fed1c--

