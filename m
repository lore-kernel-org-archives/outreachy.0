X-GM-THRID: 6392086747768946688
X-Received: by 10.129.125.134 with SMTP id y128mr738883ywc.98.1488290462919;
        Tue, 28 Feb 2017 06:01:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.5.194 with SMTP id 185ls402462iof.19.gmail; Tue, 28 Feb
 2017 06:01:02 -0800 (PST)
X-Received: by 10.107.172.198 with SMTP id v189mr836900ioe.31.1488290462006;
        Tue, 28 Feb 2017 06:01:02 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x241.google.com (mail-it0-x241.google.com. [2607:f8b0:4001:c0b::241])
        by gmr-mx.google.com with ESMTPS id i189si1977384iti.0.2017.02.28.06.01.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 06:01:01 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::241 as permitted sender) client-ip=2607:f8b0:4001:c0b::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x241.google.com with SMTP id 203so1547096ith.2
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 06:01:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=mZqo1ze5L00Gwun/ma5RC03tJ8j9zEuRolClFJCkYGk=;
        b=J6RvmwxJxmkCNYl5PYbs8PwmO06Mv0y94/ztY8y+FeRb1ZsM+9Pz2u0roSF9p3g3XF
         szdo8agf16K5iW7EWmberRTnVKtleoBiUtvZTQiJoRHpMKrhNmGaI57ZUR3pgZfzRc1K
         nH3D6KIKn49KHITe2PbjAHpzSgdCc5toTirNKYRKI6PR3zKlX1GG1lA50eXr1DMTY0u8
         G2/ysWIj0/PbGbSCI/awzXesN6cHfGLz8Otr/ZRfWH74lcihjuT9xs3aoJe9ISVUvAOU
         gsQFbwyY0R6/RUIJn66nb9PmMKlEOLztAimigsx65XRp1U/PfCl5pDhZ+JX3Iq30MMyV
         8UKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=mZqo1ze5L00Gwun/ma5RC03tJ8j9zEuRolClFJCkYGk=;
        b=TwVTi/RTUpdK9RSkb3YrfsTSVMSCb1JvFbBC7u0//BToRUjNMX6FnkYh7IgS8bWwci
         OpzJyNDzRXJUAP/mxrx46pV3mUk7eXqmVitH5YwDbXaXxZtEXIVTwJ1jF9p53nV1ptCc
         Ek5OlcpEXZEclJ4vKemHcYtvaK63wLac87wrLWd453b8mBWBbtk0Bh2/w7IxIf/AIYe+
         KDZ9pqhT/Pe0F8TkgbxIWCl9eMP1+a7dekkR25nBPsYIKSjqp7G36K5RrBByxtdAJKGT
         4yee6zpNhBKYf3rmQDUy8d1n98cvPDD4xyltSvmfP63cQZIvMMiKCyxRbdzuFb5PMfFa
         laiA==
X-Gm-Message-State: AMke39lx3qApDe0zbEcgiqhYwW2QJ7w1m8OxKBuyamB4vpCzb8Ub+jDYwT/RcMs3PDu56mhUOgGXJlR+x2FWtQ==
X-Received: by 10.36.66.145 with SMTP id i139mr20086217itb.6.1488290461137;
 Tue, 28 Feb 2017 06:01:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Tue, 28 Feb 2017 06:00:30 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1702281420200.3056@hadrien>
References: <1488273521-29919-1-git-send-email-gs051095@gmail.com>
 <alpine.DEB.2.20.1702281125590.3056@hadrien> <CAOCi2DHOhQWs9oj=kicB48zkSjo0+whGbWyLtpyoAN5NdVa_Cw@mail.gmail.com>
 <alpine.DEB.2.20.1702281420200.3056@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Tue, 28 Feb 2017 19:30:30 +0530
Message-ID: <CAOCi2DH-5c=qbi+rFxF5ovPW=i8re366ag7Evuw4G8SSLEM6jg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: lnet: Use list_for_each_entry()
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, oleg.drokin@intel.com, 
	andreas.dilger@intel.com, jsimmons@infradead.org, 
	Greg KH <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary=001a1144b948426904054997a01d

--001a1144b948426904054997a01d
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 28, 2017 at 6:54 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Tue, 28 Feb 2017, Gargi Sharma wrote:
>
> > On Tue, Feb 28, 2017 at 3:57 PM, Julia Lawall <julia.lawall@lip6.fr>
wrote:
> > >
> > >
> > >
> > > On Tue, 28 Feb 2017, Gargi Sharma wrote:
> > >
> > > > Use list_for_each_entry() rather than a combination of
list_for_each()
> > > > and list_entry() since the former does not expose the list spine.
> > > >
> > > > Done using Coccinelle:
> > > > @a@
> > > > expression pos, n, mem;
> > > > type t;
> > > > identifier var;
> > > > iterator name list_for_each_entry, list_for_each;
> > > > @@
> > > >
> > > > - list_for_each(pos, n)
> > > > + list_for_each_entry(var, n, mem)
> > > >   {
> > > >   ... when != var
> > > > - var = list_entry(pos, t, mem);
> > > >   ... when != pos
> > > >   }
> > > >
> > > > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > > > ---
> > > >  drivers/staging/lustre/lnet/selftest/conrpc.c | 6 ++----
> > > >  1 file changed, 2 insertions(+), 4 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/lustre/lnet/selftest/conrpc.c
> > b/drivers/staging/lustre/lnet/selftest/conrpc.c
> > > > index c6a683b..72b6ff2 100644
> > > > --- a/drivers/staging/lustre/lnet/selftest/conrpc.c
> > > > +++ b/drivers/staging/lustre/lnet/selftest/conrpc.c
> > > > @@ -1339,10 +1339,8 @@ lstcon_rpc_cleanup_wait(void)
> > > >       LASSERT(console_session.ses_shutdown);
> > > >
> > > >       while (!list_empty(&console_session.ses_trans_list)) {
> > > > -             list_for_each(pacer, &console_session.ses_trans_list)
{
> > > > -                     trans = list_entry(pacer, struct
lstcon_rpc_trans,
> > > > -                                        tas_link);
> > > > -
> > > > +             list_for_each_entry(trans,
> > &console_session.ses_trans_list,
> > > > +                                 tas_link) {
> > >
> > > I'm not sure to understand this code, in particular the outer while
loop.
> > > Who is removing elements from the list?
> > Actually, there is no code to remove elements from the list. I think I
might
> > have done something wrong here. From what I gather list_for_each
increments
> > the pointer to the list so that wen one iterates over the whole list,
> > list_empty now
> > returns true. So, before exiting from this while loop (which is only
> > executed once),
> > you execute a set of instructions(which are a timeout and setting a
state in
> > this case).
> > In the case of list_for_each_entry this will never happen and it'll be
stuck
> > in an infinite
> > loop.
>
> Something is going on with the calls to wake_up and schedule_timeout.
> Some other process is removing things from the list.
I looked at the function body of wake_up and schedule_timeout and none
of them have provisions to remove elements from the list. wake_up tries
running
tasks for list head pointer passed to it and schedule_timeout simply causes
the
thread to sleep until timeout.

>Actually,
> looking further up in the code there is a comment that says "Called with
> hold of global mutex".  So perhaps this implies that the woken up
> processes cannot run until schedule_timeout is called, and thus can't
> interrupt the list_for_each.

From what I can understand, the intent is to not interrupt list_for_each,
but
I still don't understand the significance/necessity of the outer while loop.

gargi

>
> julia
>
> >
> > gargi
> >
> > >If that can happen with in the
> > > list_for_each/list_for_each_entry, then a safer version of the
iterator is
> > > needed.
> > >
> > > julia
> > >
> > > >                       CDEBUG(D_NET, "Session closed, wakeup
transaction
> > %s\n",
> > > >                              lstcon_rpc_trans_name(trans->tas_opc));
> > > >
> > > > --
> > > > 2.7.4
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google
> > Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it,
send
> > an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to
outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the web visithttps://
groups.google.com/d/msgid/outreachy-kernel/1488273521-29919-1-git-s
> > end-email-gs051095%40gmail.com.
> > > > For more options, visit https://groups.google.com/d/optout.
> > > >
> >
> >

--001a1144b948426904054997a01d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Tue, Feb 28, 2017 at 6:54 PM, Julia Lawall &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br>&gt=
;<br>&gt;<br>&gt;<br>&gt; On Tue, 28 Feb 2017, Gargi Sharma wrote:<br>&gt;<=
br>&gt; &gt; On Tue, Feb 28, 2017 at 3:57 PM, Julia Lawall &lt;<a href=3D"m=
ailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br>&gt; &gt=
; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; On Tue, 28 Feb=
 2017, Gargi Sharma wrote:<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; Use lis=
t_for_each_entry() rather than a combination of list_for_each()<br>&gt; &gt=
; &gt; &gt; and list_entry() since the former does not expose the list spin=
e.<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; Done using Coccinelle:<br>=
&gt; &gt; &gt; &gt; @a@<br>&gt; &gt; &gt; &gt; expression pos, n, mem;<br>&=
gt; &gt; &gt; &gt; type t;<br>&gt; &gt; &gt; &gt; identifier var;<br>&gt; &=
gt; &gt; &gt; iterator name list_for_each_entry, list_for_each;<br>&gt; &gt=
; &gt; &gt; @@<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; - list_for_eac=
h(pos, n)<br>&gt; &gt; &gt; &gt; + list_for_each_entry(var, n, mem)<br>&gt;=
 &gt; &gt; &gt; =C2=A0 {<br>&gt; &gt; &gt; &gt; =C2=A0 ... when !=3D var<br=
>&gt; &gt; &gt; &gt; - var =3D list_entry(pos, t, mem);<br>&gt; &gt; &gt; &=
gt; =C2=A0 ... when !=3D pos<br>&gt; &gt; &gt; &gt; =C2=A0 }<br>&gt; &gt; &=
gt; &gt;<br>&gt; &gt; &gt; &gt; Signed-off-by: Gargi Sharma &lt;<a href=3D"=
mailto:gs051095@gmail.com">gs051095@gmail.com</a>&gt;<br>&gt; &gt; &gt; &gt=
; ---<br>&gt; &gt; &gt; &gt; =C2=A0drivers/staging/lustre/lnet/selftest/con=
rpc.c | 6 ++----<br>&gt; &gt; &gt; &gt; =C2=A01 file changed, 2 insertions(=
+), 4 deletions(-)<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; diff --git=
 a/drivers/staging/lustre/lnet/selftest/conrpc.c<br>&gt; &gt; b/drivers/sta=
ging/lustre/lnet/selftest/conrpc.c<br>&gt; &gt; &gt; &gt; index c6a683b..72=
b6ff2 100644<br>&gt; &gt; &gt; &gt; --- a/drivers/staging/lustre/lnet/selft=
est/conrpc.c<br>&gt; &gt; &gt; &gt; +++ b/drivers/staging/lustre/lnet/selft=
est/conrpc.c<br>&gt; &gt; &gt; &gt; @@ -1339,10 +1339,8 @@ lstcon_rpc_clean=
up_wait(void)<br>&gt; &gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 LASSERT(console_s=
ession.ses_shutdown);<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; =C2=A0 =
=C2=A0 =C2=A0 while (!list_empty(&amp;console_session.ses_trans_list)) {<br=
>&gt; &gt; &gt; &gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 list_for_e=
ach(pacer, &amp;console_session.ses_trans_list) {<br>&gt; &gt; &gt; &gt; - =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 trans=
 =3D list_entry(pacer, struct lstcon_rpc_trans,<br>&gt; &gt; &gt; &gt; - =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tas_link)=
;<br>&gt; &gt; &gt; &gt; -<br>&gt; &gt; &gt; &gt; + =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 list_for_each_entry(trans,<br>&gt; &gt; &amp;console_s=
ession.ses_trans_list,<br>&gt; &gt; &gt; &gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 tas_link) {<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; I&#39;m not sure=
 to understand this code, in particular the outer while loop.<br>&gt; &gt; =
&gt; Who is removing elements from the list? =C2=A0<br>&gt; &gt; Actually, =
there is no code to remove elements from the list. I think I might<br>&gt; =
&gt; have done something wrong here. From what I gather list_for_each incre=
ments<br>&gt; &gt; the pointer to the list so that wen one iterates over th=
e whole list,<br>&gt; &gt; list_empty now<br>&gt; &gt; returns true. So, be=
fore exiting from this while loop (which is only<br>&gt; &gt; executed once=
),<br>&gt; &gt; you execute a set of instructions(which are a timeout and s=
etting a state in<br>&gt; &gt; this case).<br>&gt; &gt; In the case of list=
_for_each_entry this will never happen and it&#39;ll be stuck<br>&gt; &gt; =
in an infinite<br>&gt; &gt; loop.<br>&gt;<br>&gt; Something is going on wit=
h the calls to wake_up and schedule_timeout.<br>&gt; Some other process is =
removing things from the list. =C2=A0<div>I looked at the function body of =
wake_up and schedule_timeout and none</div><div>of them have provisions to =
remove elements from the list. wake_up tries running</div><div>tasks for li=
st head pointer passed to it and schedule_timeout simply causes the=C2=A0</=
div><div>thread to sleep until timeout.</div><div><br></div><div>&gt;Actual=
ly,<br>&gt; looking further up in the code there is a comment that says &qu=
ot;Called with<br>&gt; hold of global mutex&quot;.=C2=A0 So perhaps this im=
plies that the woken up<br>&gt; processes cannot run until schedule_timeout=
 is called, and thus can&#39;t<br>&gt; interrupt the list_for_each.</div><d=
iv><br></div><div>From what I can understand, the intent is to not interrup=
t list_for_each, but</div><div>I still don&#39;t understand the significanc=
e/necessity of the outer while loop.</div><div><br></div><div>gargi=C2=A0</=
div><div><br>&gt;<br>&gt; julia<br>&gt;<br>&gt; &gt;<br>&gt; &gt; gargi<br>=
&gt; &gt;<br>&gt; &gt; &gt;If that can happen with in the<br>&gt; &gt; &gt;=
 list_for_each/list_for_each_entry, then a safer version of the iterator is=
<br>&gt; &gt; &gt; needed.<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; julia<br>&gt=
; &gt; &gt;<br>&gt; &gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 CDEBUG(D_NET, &quot;Session closed, =
wakeup transaction<br>&gt; &gt; %s\n&quot;,<br>&gt; &gt; &gt; &gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0lstcon_rpc_trans_name(trans-&gt;tas_opc));<br>&gt; =
&gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; --<br>&gt; &gt; &gt; &gt; 2.7.4<br>&g=
t; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; --<br>&gt; &gt; &gt; &gt; You rece=
ived this message because you are subscribed to the Google<br>&gt; &gt; Gro=
ups &quot;outreachy-kernel&quot; group.<br>&gt; &gt; &gt; &gt; To unsubscri=
be from this group and stop receiving emails from it, send<br>&gt; &gt; an =
email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com"=
>outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>&gt; &gt; &gt; &gt; =
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com">outreachy-kernel@googlegroups.com</a>.<br>&gt; &gt; &gt; &gt=
; To view this discussion on the web visithttps://<a href=3D"http://groups.=
google.com/d/msgid/outreachy-kernel/1488273521-29919-1-git-s">groups.google=
.com/d/msgid/outreachy-kernel/1488273521-29919-1-git-s</a><br>&gt; &gt; end=
-email-gs051095%<a href=3D"http://40gmail.com">40gmail.com</a>.<br>&gt; &gt=
; &gt; &gt; For more options, visit <a href=3D"https://groups.google.com/d/=
optout">https://groups.google.com/d/optout</a>.<br>&gt; &gt; &gt; &gt;<br>&=
gt; &gt;<br>&gt; &gt;</div></div>

--001a1144b948426904054997a01d--

