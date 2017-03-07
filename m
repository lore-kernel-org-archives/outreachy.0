X-GM-THRID: 6394738986789634048
X-Received: by 10.46.69.7 with SMTP id s7mr450927lja.18.1488919656829;
        Tue, 07 Mar 2017 12:47:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.19.10 with SMTP id 10ls161581ljt.24.gmail; Tue, 07 Mar 2017
 12:47:35 -0800 (PST)
X-Received: by 10.25.151.69 with SMTP id z66mr370962lfd.12.1488919655735;
        Tue, 07 Mar 2017 12:47:35 -0800 (PST)
Return-Path: <marvin24@gmx.de>
Received: from mout.gmx.net (mout.gmx.net. [212.227.15.15])
        by gmr-mx.google.com with ESMTPS id p144si161143wme.2.2017.03.07.12.47.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 12:47:35 -0800 (PST)
Received-SPF: pass (google.com: domain of marvin24@gmx.de designates 212.227.15.15 as permitted sender) client-ip=212.227.15.15;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of marvin24@gmx.de designates 212.227.15.15 as permitted sender) smtp.mailfrom=marvin24@gmx.de
Received: from fb07-iapwap2.physik.uni-giessen.de ([134.176.19.122]) by
 mail.gmx.com (mrgmx002 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0MAPoQ-1cZpgi0aJ0-00Bbcv; Tue, 07 Mar 2017 21:47:34 +0100
From: Marc Dietrich <marvin24@gmx.de>
To: Sreya Mittal <sreyamittal5@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, gregkh@linuxfoundation.org, Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [Outreachy kernel] [PATCH] staging: nvec: Replace udelay byusleep_range
Date: Tue, 07 Mar 2017 21:47:33 +0100
Message-ID: <2611658.WmW6x0yd6b@fb07-iapwap2>
In-Reply-To: <fb43e9c5-9aa2-4a6b-8201-7879d791c71f@googlegroups.com>
References: <20170307125256.3998-1-sreyamittal5@gmail.com> <alpine.DEB.2.20.1703071651160.3150@hadrien> <fb43e9c5-9aa2-4a6b-8201-7879d791c71f@googlegroups.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3591851.8g5vT58uF4"; micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Provags-ID: V03:K0:oQVb0Z2/harJ2tJHMBoCgVTAsv7e0FZ2xr1/Esw5+1JY2N3QVvt
 Sklk7gPHxnSPCJLeMjc7FLIDbn/DYrmy0CwFD+/Y/xsnvtYXuv2lajQsLgoFj5Vk7uMAinB
 jtuKvgK8kC1Cq84IVuQmSvUcLEGEerDkEU7Cz2iutxIlhAW3sOwzNeIg1dJRabWO9ah3ZAA
 Ci/KVUu+wWbgP0HAp3Vhw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:IxiC6StQvMI=:f6dxik7GjqAdXsBZPvry+h
 +V3HyO1Xk5Clzq4aF9AlStOOKmGgfNO8lSOwvEDH9nWr0P/iLmJNvRmbP50hhq02u2KzCDq9Z
 v3ReKxRn4xx0S7ecpWuAWgr/zJ1m8rQQEjDWYTxwa6STWHfeKVXUBLNvHduJDSK9+huJPzTQz
 SqS4bVsNCuZh5bpKiNjmKr+UMUrdAzXHOZM9FNXXpoegBvz1lXQ2HSDEZFIJKi+m3oqzUMR4v
 pDPt/shtOVkYdTNnSjgW0HFS5bLUVKSmqJ15TFsi61bZ9hP+FB3QjY4hn4v2M5kUvQu35bvTE
 r5LKfWzXnQv38fO7rYiNFA5MRdRBebTGHjhhtrSOBhFrG/dVO+p9sSgBsajqtbED04SkyzJMR
 dOOcEOAJbHxPZPPy+MRm4bhqWByvkaJ0VHtcOZkKNLQK0UDbzsjivv4ZVc07ctxvd2LtTZgnb
 hRcAqLKMdtqIlC+70XLdAMyklLxdMXfaE+8IBwnn54C/7O6d9AqCjdqCxeD06yYYfUl+gUfJp
 j7Zr99mDK08TgmKRuigmJnKT2HCNb9SO+aFxeg68voq3C/psEl7sGtQKa5gYmKD51LjTo5Ppl
 yW0P0Ho+LJPsZ4kMYaouqg+bb/itGsPJJ1+afVHf6atdrYAwbeaMV8nt9V/geS6V1DCxTwIQ7
 oi14FjWOEXzVU3Lu7blHo/QdKKVYIiAv7vehKs7EmMjrH115zjW0/v3OiwauEKdhd3EhkLs37
 CpsS/vXE+yvTefC4sQrukqJDpSQr9WZQM2/HOlegEIhnvlWNH4YlBgiM/58=

--nextPart3591851.8g5vT58uF4
Content-Type: multipart/alternative; boundary="nextPart3821835.f3VyTaNHsE"
Content-Transfer-Encoding: 7Bit

This is a multi-part message in MIME format.

--nextPart3821835.f3VyTaNHsE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="ISO-8859-1"

Am Dienstag, 7. M=E4rz 2017, 20:14:06 CET schrieb Sreya Mittal:
> On Tuesday, March 7, 2017 at 9:22:16 PM UTC+5:30, Julia Lawall wrote:
> > On Tue, 7 Mar 2017, Sreya Mittal wrote:
> > > Replace udelay by usleep_range.
> > > Fixes the checkpatch issue:
> > > usleep_range is preferred over udelay
> > >=20
> > > In Documentation/timers/timers-howto.txt,
> > > it is mentioned that udelay should be used
> > > for a few microseconds(less than 10), and
> > > usleep_range should be preferred for 10
> > > microseconds to 20 milliseconds.
> > >=20
> > > Signed-off-by: Sreya Mittal <sreyam...@gmail.com <javascript:>>
> > > ---
> > >=20
> > >  drivers/staging/nvec/nvec.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >=20
> > > diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
> > > index c1feccf..5fab241 100644
> > > --- a/drivers/staging/nvec/nvec.c
> > > +++ b/drivers/staging/nvec/nvec.c
> > > @@ -631,7 +631,7 @@ static irqreturn_t nvec_interrupt(int irq, void
> >=20
> > *dev)
> >=20
> > >                  break;
> > >         =20
> > >          case 2:                /* first byte after command */
> > >         =20
> > >                  if (status =3D=3D (I2C_SL_IRQ | RNW | RCVD)) {
> > >=20
> > > -                        udelay(33);
> > > +                        usleep_range(33, 43);
> >=20
> > The key point is how do you choose the upper bound.  If you don't have a
> > good rationale for your choice, it would be better not to make the chan=
ge.
>=20
> Could you please give some hint(s) regarding the choice of upper bound and
> what possibly can be a good rationale for it?

I n'acked a similar patch a few days ago. See https://lkml.org/lkml/2017/3/=
2/293.

Maybe it would be good to add a hint to the relevant tutorials to first che=
ck if a similar patch=20
has been submitted before.

Marc

Sreya

>=20
> > julia
> >=20
> > >                          if (nvec->rx->data[0] !=3D 0x01) {
> > >                         =20
> > >                                  dev_err(nvec->dev,
> > >                                 =20
> > >                                          "Read without prior read
> >=20
> > command\n");
> >=20
> > > @@ -718,7 +718,7 @@ static irqreturn_t nvec_interrupt(int irq, void
> >=20
> > *dev)
> >=20
> > >           * We experience less incomplete messages with this delay th=
an
> >=20
> > without
> >=20
> > >           * it, but we don't know why. Help is appreciated.
> > >           */
> > >=20
> > > -        udelay(100);
> > > +        usleep_range(100,200);
> > >=20
> > >          return IRQ_HANDLED;
> > > =20
> > >  }
> >=20
> > Groups "outreachy-kernel" group.
> >=20
> > > To unsubscribe from this group and stop receiving emails from it, send
> >=20
> > an email to outreachy-kern...@googlegroups.com <javascript:>.
> >=20
> > > To post to this group, send email to outreach...@googlegroups.com
> >=20
> > <javascript:>.
> >=20
> > > To view this discussion on the web visit
> >=20
> > https://groups.google.com/d/msgid/outreachy-kernel/20170307125256.3998-=
1-s
> > reyamittal5%40gmail.com.>=20
> > > For more options, visit https://groups.google.com/d/optout.



--nextPart3821835.f3VyTaNHsE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="ISO-8859-1"

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-=
html40/strict.dtd">
<html><head><meta name=3D"qrichtext" content=3D"1" /><style type=3D"text/cs=
s">
p, li { white-space: pre-wrap; }
</style></head><body style=3D" font-family:'Hack'; font-size:9pt; font-weig=
ht:400; font-style:normal;">
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Am Dienstag=
, 7. M=E4rz 2017, 20:14:06 CET schrieb Sreya Mittal:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; On Tue=
sday, March 7, 2017 at 9:22:16 PM UTC+5:30, Julia Lawall wrote:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; O=
n Tue, 7 Mar 2017, Sreya Mittal wrote:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; Replace udelay by usleep_range.</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; Fixes the checkpatch issue:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; usleep_range is preferred over udelay</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; </p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; In Documentation/timers/timers-howto.txt,</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; it is mentioned that udelay should be used</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; for a few microseconds(less than 10), and</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; usleep_range should be preferred for 10</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; microseconds to 20 milliseconds.</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; </p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; Signed-off-by: Sreya Mittal &lt;sreyam...@gmail.com &lt;javascript:&gt;=
&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; ---</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; </p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt;  drivers/staging/nvec/nvec.c | 4 ++--</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt;  1 file changed, 2 insertions(+), 2 deletions(-)</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; </p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c<=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; index c1feccf..5fab241 100644</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; --- a/drivers/staging/nvec/nvec.c</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; +++ b/drivers/staging/nvec/nvec.c</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; @@ -631,7 +631,7 @@ static irqreturn_t nvec_interrupt(int irq, void</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; <=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; *=
dev)</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; <=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt;                  break;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt;          </p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt;          case 2:                /* first byte after command */</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt;          </p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt;                  if (status =3D=3D (I2C_SL_IRQ | RNW | RCVD)) {</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; </p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; -                        udelay(33);</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; +                        usleep_range(33, 43);</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; <=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; T=
he key point is how do you choose the upper bound.  If you don't have a</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; g=
ood rationale for your choice, it would be better not to make the change.</=
p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; </p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; Could =
you please give some hint(s) regarding the choice of upper bound and</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; what p=
ossibly can be a good rationale for it?</p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nb=
sp;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">I n'acked a=
 similar patch a few days ago. See https://lkml.org/lkml/2017/3/2/293.</p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nb=
sp;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Maybe it wo=
uld be good to add a hint to the relevant tutorials to first check if a sim=
ilar patch has been submitted before.</p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nb=
sp;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Marc</p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nb=
sp;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Sreya</p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nb=
sp;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; </p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; j=
ulia</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; <=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt;                          if (nvec-&gt;rx-&gt;data[0] !=3D 0x01) {</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt;                          </p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt;                                  dev_err(nvec-&gt;dev,</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt;                                  </p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt;                                          &quot;Read without prior read<=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; <=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; c=
ommand\n&quot;);</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; <=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; @@ -718,7 +718,7 @@ static irqreturn_t nvec_interrupt(int irq, void</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; <=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; *=
dev)</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; <=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt;           * We experience less incomplete messages with this delay than=
</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; <=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; w=
ithout</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; <=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt;           * it, but we don't know why. Help is appreciated.</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt;           */</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; </p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; -        udelay(100);</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; +        usleep_range(100,200);</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; </p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt;          return IRQ_HANDLED;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt;  </p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt;  }</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; <=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; G=
roups &quot;outreachy-kernel&quot; group.</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; <=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; To unsubscribe from this group and stop receiving emails from it, send<=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; <=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; a=
n email to outreachy-kern...@googlegroups.com &lt;javascript:&gt;.</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; <=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; To post to this group, send email to outreach...@googlegroups.com</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; <=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
lt;javascript:&gt;.</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; <=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; To view this discussion on the web visit</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; <=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; h=
ttps://groups.google.com/d/msgid/outreachy-kernel/20170307125256.3998-1-s</=
p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; r=
eyamittal5%40gmail.com.&gt; </p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; &=
gt; For more options, visit https://groups.google.com/d/optout.</p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nb=
sp;</p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nb=
sp;</p></body></html>
--nextPart3821835.f3VyTaNHsE--

--nextPart3591851.8g5vT58uF4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEySF+t0C8+8jyqfBvrJ5Hf0cUG2gFAli/HGUACgkQrJ5Hf0cU
G2iDeQf6AtOucxQPu/azsftv09gUkf63lsb57ZMUW4YyhtbEK5oPV5fRSRDuNZTq
4CPQ0tQfqbQ712gGfTTcMMgslDRBoNP7IlaI65+GNPr1B8K9tnIU5bgGO/prFuqE
1QvfaWfpacGbrmySmGo8IDii6u+B47g7yz8xKZDrQ7K7bq92Rev1MQWFeC2Lt6O9
Od/j0bcALtxPEBM2DX3KNPi6ikbWwa7Lr5PaayzPQK3+KQDe9evkldhjMIggBQ/i
m7ctSXKfpmaqahjcBI2YlcYsvX1l+abNBrTWbhVJqAGPWNX+yejChq97f4tg8QXU
IospudrGIHpZ5fgak2roSpG+Qi7wdQ==
=4klN
-----END PGP SIGNATURE-----

--nextPart3591851.8g5vT58uF4--


