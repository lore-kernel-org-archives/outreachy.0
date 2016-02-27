X-GM-THRID: 6255961671110492160
X-Received: by 10.98.8.15 with SMTP id c15mr5413720pfd.0.1456582571698;
        Sat, 27 Feb 2016 06:16:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.38.202 with SMTP id t68ls1899086qgt.7.gmail; Sat, 27 Feb
 2016 06:16:10 -0800 (PST)
X-Received: by 10.140.221.146 with SMTP id r140mr5409057qhb.20.1456582570816;
        Sat, 27 Feb 2016 06:16:10 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-ig0-x234.google.com (mail-ig0-x234.google.com. [2607:f8b0:4001:c05::234])
        by gmr-mx.google.com with ESMTPS id c15si522784igm.1.2016.02.27.06.16.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 06:16:10 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:4001:c05::234 as permitted sender) client-ip=2607:f8b0:4001:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:4001:c05::234 as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x234.google.com with SMTP id y8so52818779igp.1
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 06:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=A1rMeRWKnoBIEdBNsfvn9FMrFCP9hWPq/qyoY4Y4aR4=;
        b=M9d4HWN0AXE6uH+KI7/OQscoAVynlUbR/FYu9siAjIFNJwXMhg2I2lQUD9W+vJCixS
         LFfLZ+q0heyV0lO3C78U6D5PzCEN9e1bDvOzaaxoCgxs4JRiDeU7W6ZHjx2k/YHjkQH9
         A82eRLoeGGCSB4Dyny+OvQx6WszQFyCRUNTvkssrrpnjTtd+I2P5CDAMuhe+00FqDN7n
         MlonOCvpHFPTADjpxK8YzKCO8Sf2SekS+SA64AJmiIok0kzz5jQ5buCAkLYU6uQepioA
         xzjapzrGcNdZxhZVDfAkTqZPec4/87M58rkuQxpFr7rkSvHNr5qgkY9vYHkbDLepWYjy
         lVbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=A1rMeRWKnoBIEdBNsfvn9FMrFCP9hWPq/qyoY4Y4aR4=;
        b=ZA0F6LMGkV2LeKt3O/THIWn1dPLNBUi5nuM6sjq4E36ljfKo44N4kBmtKsLKdxnMvB
         /jWKl3gSrIEsAbVERm73nbYrbpIUUHwlqVQVKN/qEDEddq8dtktlDgDuveLjwsHXYI9R
         RHwYpOvLRzNIuNBEaS6KjEdMcObMS05UURQNosJnGPHxCBthdNAmoxYK2tp91l/8ce+A
         0fUZck5f/sssXxLH+yYI09J8K2ZCoBDxGiNlCETrgcxo4jnZ7upLdlh3AlIMeUziqEwN
         TMjQ8Hm54gLju7sGslVEJEs7lsULM94ST2iuaHkAtMmR8ACHMntuyUArOOG3e/uFuhzV
         EMrg==
X-Gm-Message-State: AD7BkJLIcfLQfDkZHURM1zNCLUAv99Zg+Jh1y7IY+cYYPzZFyuYUjlm4tLH7hW0SGrJj/EDXvzZQOKwrKYIiLw==
X-Received: by 10.50.43.168 with SMTP id x8mr2688134igl.92.1456582570641; Sat,
 27 Feb 2016 06:16:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.134.204 with HTTP; Sat, 27 Feb 2016 06:15:31 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602271439140.2204@localhost6.localdomain6>
References: <1456579543-27301-1-git-send-email-rakhish1994@gmail.com> <alpine.DEB.2.02.1602271439140.2204@localhost6.localdomain6>
From: RAKHI SHARMA <rakhish1994@gmail.com>
Date: Sat, 27 Feb 2016 19:45:31 +0530
Message-ID: <CAMnyiXv-ENj_YiCC4rTwN8veDnaeB_dBKsQqZxgr39G_7U24jQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: Fix warning
 usleep_range() shouldn't use min ==max args.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=089e01184ac2b58e2b052cc10ec3

--089e01184ac2b58e2b052cc10ec3
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 27, 2016 at 7:09 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sat, 27 Feb 2016, Rakhi Sharma wrote:
>
> > As usleep_range should not use min == max args.This patch fixes
> checkpatch
> > warning: usleep_range should not use min == max args; see
> > Documentation/timers/timers-howto.txt.
>
> How did you choose the new values?
>
> Hi,
As usleep_range is generally used when sleeping range is between 10us -
20ms.For
avoiding this checkpatch warning min==max args! if we change the max
value little(between 1-100) I don't think it will affect the code.I gone
through the
simillar patches submitted by other developer, they did same, so I choose
to increase
max by100. Otherwise there is no reason for new values.

Rakhi

julia
>
> >
> > Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
> > ---
> >  drivers/staging/wilc1000/wilc_wlan.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/wilc1000/wilc_wlan.c
> b/drivers/staging/wilc1000/wilc_wlan.c
> > index 83af51b..8d6a457 100644
> > --- a/drivers/staging/wilc1000/wilc_wlan.c
> > +++ b/drivers/staging/wilc1000/wilc_wlan.c
> > @@ -766,7 +766,7 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32
> *txq_count)
> >                               }
> >                               PRINT_WRN(GENERIC_DBG, "[wilc txq]: warn,
> vmm table not clear yet, wait...\n");
> >                               release_bus(wilc, RELEASE_ALLOW_SLEEP);
> > -                             usleep_range(3000, 3000);
> > +                             usleep_range(3000, 3100);
> >                               acquire_bus(wilc, ACQUIRE_AND_WAKEUP);
> >                       }
> >               } while (!wilc->quit);
> > @@ -800,7 +800,7 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32
> *txq_count)
> >                                       break;
> >                               } else {
> >                                       release_bus(wilc,
> RELEASE_ALLOW_SLEEP);
> > -                                     usleep_range(3000, 3000);
> > +                                     usleep_range(3000, 3100);
> >                                       acquire_bus(wilc,
> ACQUIRE_AND_WAKEUP);
> >                                       PRINT_WRN(GENERIC_DBG, "Can't get
> VMM entery - reg = %2x\n", reg);
> >                               }
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
> https://groups.google.com/d/msgid/outreachy-kernel/1456579543-27301-1-git-send-email-rakhish1994%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--089e01184ac2b58e2b052cc10ec3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On S=
at, Feb 27, 2016 at 7:09 PM, Julia Lawall <span dir=3D"ltr">&lt;<a href=3D"=
mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span><=
br>
<br>
On Sat, 27 Feb 2016, Rakhi Sharma wrote:<br>
<br>
&gt; As usleep_range should not use min =3D=3D max args.This patch fixes ch=
eckpatch<br>
&gt; warning: usleep_range should not use min =3D=3D max args; see<br>
&gt; Documentation/timers/timers-howto.txt.<br>
<br>
</span>How did you choose the new values?<br>
<br></blockquote><div>Hi,<br></div><div>As usleep_range is generally used w=
hen sleeping range is between 10us - 20ms.For <br>avoiding this checkpatch =
warning min=3D=3Dmax args! if we change the max <br>value little(between 1-=
100) I don&#39;t think it will affect the code.I gone through the<br>simill=
ar patches submitted by other developer, they did same, so I choose to incr=
ease<br>max by100. Otherwise there is no reason for new values.<br><br></di=
v><div>Rakhi<br></div><div><br> </div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">
julia<br>
<div><div><br>
&gt;<br>
&gt; Signed-off-by: Rakhi Sharma &lt;<a href=3D"mailto:rakhish1994@gmail.co=
m" target=3D"_blank">rakhish1994@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/wilc1000/wilc_wlan.c | 4 ++--<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wi=
lc1000/wilc_wlan.c<br>
&gt; index 83af51b..8d6a457 100644<br>
&gt; --- a/drivers/staging/wilc1000/wilc_wlan.c<br>
&gt; +++ b/drivers/staging/wilc1000/wilc_wlan.c<br>
&gt; @@ -766,7 +766,7 @@ int wilc_wlan_handle_txq(struct net_device *dev, u=
32 *txq_count)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0PRINT_WRN(GENERIC_DBG, &quot;[wilc=
 txq]: warn, vmm table not clear yet, wait...\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0release_bus(wilc, RELEASE_ALLOW_SL=
EEP);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0usleep_range(3000, 3000);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0usleep_range(3000, 3100);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0acquire_bus(wilc, ACQUIRE_AND_WAKE=
UP);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0} while (!wilc-&=
gt;quit);<br>
&gt; @@ -800,7 +800,7 @@ int wilc_wlan_handle_txq(struct net_device *dev, u=
32 *txq_count)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0releas=
e_bus(wilc, RELEASE_ALLOW_SLEEP);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0usleep_range=
(3000, 3000);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0usleep_range=
(3000, 3100);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0acquir=
e_bus(wilc, ACQUIRE_AND_WAKEUP);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0PRINT_=
WRN(GENERIC_DBG, &quot;Can&#39;t get VMM entery - reg =3D %2x\n&quot;, reg)=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
</div></div><span><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>=
.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/1456579543-27301-1-git-send-email-rakhish1=
994%40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://groups.google=
.com/d/msgid/outreachy-kernel/1456579543-27301-1-git-send-email-rakhish1994=
%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div></div>

--089e01184ac2b58e2b052cc10ec3--

