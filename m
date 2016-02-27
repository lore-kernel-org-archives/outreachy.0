X-GM-THRID: 6255961671110492160
X-Received: by 10.107.136.23 with SMTP id k23mr11365679iod.23.1456586070490;
        Sat, 27 Feb 2016 07:14:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.80.139 with SMTP id c11ls1517459qgd.84.gmail; Sat, 27 Feb
 2016 07:14:28 -0800 (PST)
X-Received: by 10.140.19.4 with SMTP id 4mr22413566qgg.29.1456586068774;
        Sat, 27 Feb 2016 07:14:28 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-ig0-x22d.google.com (mail-ig0-x22d.google.com. [2607:f8b0:4001:c05::22d])
        by gmr-mx.google.com with ESMTPS id nt4si522535igb.2.2016.02.27.07.14.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 07:14:28 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:4001:c05::22d as permitted sender) client-ip=2607:f8b0:4001:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:4001:c05::22d as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x22d.google.com with SMTP id y8so53323961igp.1
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 07:14:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=atSYPsx8rldgANpDzlVDWqwdJ+v6u3basSkXoU0h/nI=;
        b=0abfym0aHZeur3lBX5wjnhZX4kv0Jve9UX5mVsxxmrzfVGC0vnHNjtEZxibUZs50Ed
         9je0TNgEHz1V5b1QuvbqGLSXoSm1xiLnfM1Q89QPZIq+fgLpjghNXcvu/IhO8QW7Mx6p
         NSwrWhjl45CjpU1naOD7yLYaCx+GCiq3n8AWx0sNAiviQp1u5YsWELGL7y0KMH3h2FPg
         f26TUOO2GinqYsE16kgxDFMD5XYNY5A146uM3RJ9/w1YVIl702jZmpvLYcnrR2/XkKVo
         yuFt0O7fecdSCJvFn7vMtLDmHqGtsrtISQ+nWZrsVSCp437MJ8Q+Cz1GXMT/NQF7U3I7
         sYxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=atSYPsx8rldgANpDzlVDWqwdJ+v6u3basSkXoU0h/nI=;
        b=TchFHYBqGHxWFegN26T6Zj60ZYxmn+hIoHYfcj7IGLmFMLc+2X3Bh3A/cfVgh961lD
         sX4ttTW26iko+ba9fTichwHypn3JbUd1rq1n+pYklAhzjjrr78UEOvfBSNgGXZm43Cvk
         s4bVaNM7GfY/t8/+Z4Y5xIR8KO0Pk+XGl8hLddGtDkkDo+Z64gPCZMWPHB7bK4ZGBIWO
         ldr0z+B1MlDp6RlxDTBcO98TcTLW0zrBMvs/6ySX3V3bU4cMQkLavV6E/Ane81+kZiNI
         sNy/p3GjuNbWYsTTueAswmoirfrv/o1ijG7sAuQQSkgYUPQcxH5RHF2FPo3NwZVqoZyv
         nZxQ==
X-Gm-Message-State: AD7BkJKItLyea4sk8yQVWkuOioTY5aapguJ6/2b+LsSRtO+9rqfuWkrvhf3Ewx8xdUqnNPRYAmlV3ZsUj4RPSg==
X-Received: by 10.50.97.71 with SMTP id dy7mr2956080igb.78.1456586068607; Sat,
 27 Feb 2016 07:14:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.134.204 with HTTP; Sat, 27 Feb 2016 07:13:49 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602271527580.2204@localhost6.localdomain6>
References: <1456579543-27301-1-git-send-email-rakhish1994@gmail.com>
 <alpine.DEB.2.02.1602271439140.2204@localhost6.localdomain6>
 <CAMnyiXv-ENj_YiCC4rTwN8veDnaeB_dBKsQqZxgr39G_7U24jQ@mail.gmail.com> <alpine.DEB.2.02.1602271527580.2204@localhost6.localdomain6>
From: RAKHI SHARMA <rakhish1994@gmail.com>
Date: Sat, 27 Feb 2016 20:43:49 +0530
Message-ID: <CAMnyiXvJ++6Aj9sJ_Qo7c3+GjbhzEzQy_+iLn8_Y8_s5AZG2sQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: Fix warning
 usleep_range() shouldn't use min ==max args.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=047d7b10cfc134520a052cc1dff7

--047d7b10cfc134520a052cc1dff7
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 27, 2016 at 7:58 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sat, 27 Feb 2016, RAKHI SHARMA wrote:
>
> > On Sat, Feb 27, 2016 at 7:09 PM, Julia Lawall <julia.lawall@lip6.fr>
> wrote:
> >
> >
> >       On Sat, 27 Feb 2016, Rakhi Sharma wrote:
> >
> >       > As usleep_range should not use min == max args.This patch
> >       fixes checkpatch
> >       > warning: usleep_range should not use min == max args; see
> >       > Documentation/timers/timers-howto.txt.
> >
> >       How did you choose the new values?
> >
> > Hi,
> > As usleep_range is generally used when sleeping range is between 10us -
> > 20ms.For
> > avoiding this checkpatch warning min==max args! if we change the max
> > value little(between 1-100) I don't think it will affect the code.I gone
> > through the
> > simillar patches submitted by other developer, they did same, so I
> choose to
> > increase
> > max by100. Otherwise there is no reason for new values.
>
> OK, it would be good to update the patch with such an explanation, ie to
> say that you chose to increment the minimum value by 100, as done in
> commits X, Y, and Z.
>
> sure, sending v2 with updation :)

> julia
>
>
> >
> > Rakhi
> >
> >       julia
> >
> >       >
> >       > Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
> >       > ---
> >       >  drivers/staging/wilc1000/wilc_wlan.c | 4 ++--
> >       >  1 file changed, 2 insertions(+), 2 deletions(-)
> >       >
> >       > diff --git a/drivers/staging/wilc1000/wilc_wlan.c
> >       b/drivers/staging/wilc1000/wilc_wlan.c
> >       > index 83af51b..8d6a457 100644
> >       > --- a/drivers/staging/wilc1000/wilc_wlan.c
> >       > +++ b/drivers/staging/wilc1000/wilc_wlan.c
> >       > @@ -766,7 +766,7 @@ int wilc_wlan_handle_txq(struct net_device
> >       *dev, u32 *txq_count)
> >       >                               }
> >       >                               PRINT_WRN(GENERIC_DBG, "[wilc
> >       txq]: warn, vmm table not clear yet, wait...\n");
> >       >                               release_bus(wilc,
> >       RELEASE_ALLOW_SLEEP);
> >       > -                             usleep_range(3000, 3000);
> >       > +                             usleep_range(3000, 3100);
> >       >                               acquire_bus(wilc,
> >       ACQUIRE_AND_WAKEUP);
> >       >                       }
> >       >               } while (!wilc->quit);
> >       > @@ -800,7 +800,7 @@ int wilc_wlan_handle_txq(struct net_device
> >       *dev, u32 *txq_count)
> >       >                                       break;
> >       >                               } else {
> >       >                                       release_bus(wilc,
> >       RELEASE_ALLOW_SLEEP);
> >       > -                                     usleep_range(3000,
> >       3000);
> >       > +                                     usleep_range(3000,
> >       3100);
> >       >                                       acquire_bus(wilc,
> >       ACQUIRE_AND_WAKEUP);
> >       >                                       PRINT_WRN(GENERIC_DBG,
> >       "Can't get VMM entery - reg = %2x\n", reg);
> >       >                               }
> >       > --
> >       > 1.9.1
> >       >
> > > --
> > > You received this message because you are subscribed to the Google
> > Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it,
> > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to
> > outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/1456579543-27301-1-git-s
> > end-email-rakhish1994%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> >
> >
> >
> >
>

--047d7b10cfc134520a052cc1dff7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On S=
at, Feb 27, 2016 at 7:58 PM, Julia Lawall <span dir=3D"ltr">&lt;<a href=3D"=
mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D""><br>
<br>
On Sat, 27 Feb 2016, RAKHI SHARMA wrote:<br>
<br>
&gt; On Sat, Feb 27, 2016 at 7:09 PM, Julia Lawall &lt;<a href=3D"mailto:ju=
lia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Sat, 27 Feb 2016, Rakhi Sharma wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; As usleep_range should not use min =3D=
=3D max args.This patch<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0fixes checkpatch<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; warning: usleep_range should not use mi=
n =3D=3D max args; see<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Documentation/timers/timers-howto.txt.<=
br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0How did you choose the new values?<br>
&gt;<br>
&gt; Hi,<br>
&gt; As usleep_range is generally used when sleeping range is between 10us =
-<br>
&gt; 20ms.For<br>
&gt; avoiding this checkpatch warning min=3D=3Dmax args! if we change the m=
ax<br>
&gt; value little(between 1-100) I don&#39;t think it will affect the code.=
I gone<br>
&gt; through the<br>
&gt; simillar patches submitted by other developer, they did same, so I cho=
ose to<br>
&gt; increase<br>
&gt; max by100. Otherwise there is no reason for new values.<br>
<br>
</span>OK, it would be good to update the patch with such an explanation, i=
e to<br>
say that you chose to increment the minimum value by 100, as done in<br>
commits X, Y, and Z.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br></font></span></blockquo=
te><div>sure, sending v2 with updation :)=C2=A0 <br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><span class=3D"HOEnZb"><font color=3D"#888888">
julia<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt;<br>
&gt; Rakhi<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0julia<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Signed-off-by: Rakhi Sharma &lt;<a href=
=3D"mailto:rakhish1994@gmail.com">rakhish1994@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 drivers/staging/wilc1000/wilc_wla=
n.c | 4 ++--<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 1 file changed, 2 insertions(+), =
2 deletions(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; diff --git a/drivers/staging/wilc1000/w=
ilc_wlan.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0b/drivers/staging/wilc1000/wilc_wlan.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; index 83af51b..8d6a457 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --- a/drivers/staging/wilc1000/wilc_wla=
n.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +++ b/drivers/staging/wilc1000/wilc_wla=
n.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -766,7 +766,7 @@ int wilc_wlan_handl=
e_txq(struct net_device<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0*dev, u32 *txq_count)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0PR=
INT_WRN(GENERIC_DBG, &quot;[wilc<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0txq]: warn, vmm table not clear yet, wait...=
\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0re=
lease_bus(wilc,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0RELEASE_ALLOW_SLEEP);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0usleep_ra=
nge(3000, 3000);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0usleep_ra=
nge(3000, 3100);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ac=
quire_bus(wilc,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ACQUIRE_AND_WAKEUP);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0} while (!wilc-&gt;quit);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -800,7 +800,7 @@ int wilc_wlan_handl=
e_txq(struct net_device<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0*dev, u32 *txq_count)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0} =
else {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0release_bus(wilc,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0RELEASE_ALLOW_SLEEP);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0usleep_range(3000,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A03000);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0usleep_range(3000,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A03100);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0acquire_bus(wilc,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ACQUIRE_AND_WAKEUP);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0PRINT_WRN(GENERIC_DBG,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;Can&#39;t get VMM entery - reg =3D %2x=
\n&quot;, reg);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; 1.9.1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; &gt; --<br>
&gt; &gt; You received this message because you are subscribed to the Googl=
e<br>
&gt; Groups &quot;outreachy-kernel&quot; group.<br>
&gt; &gt; To unsubscribe from this group and stop receiving emails from it,=
<br>
&gt; send an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@goog=
legroups.com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; &gt; To post to this group, send email to<br>
&gt; <a href=3D"mailto:outreachy-kernel@googlegroups.com">outreachy-kernel@=
googlegroups.com</a>.<br>
&gt; &gt; To view this discussion on the web visithttps://<a href=3D"http:/=
/groups.google.com/d/msgid/outreachy-kernel/1456579543-27301-1-git-s" rel=
=3D"noreferrer" target=3D"_blank">groups.google.com/d/msgid/outreachy-kerne=
l/1456579543-27301-1-git-s</a><br>
&gt; end-email-rakhish1994%<a href=3D"http://40gmail.com" rel=3D"noreferrer=
" target=3D"_blank">40gmail.com</a>.<br>
&gt; &gt; For more options, visit <a href=3D"https://groups.google.com/d/op=
tout" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/opto=
ut</a>.<br>
&gt; &gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; </div></div></blockquote></div><br></div></div>

--047d7b10cfc134520a052cc1dff7--

