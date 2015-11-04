X-GM-THRID: 6210894171417346048
X-Received: by 10.28.216.206 with SMTP id p197mr998952wmg.3.1446664889988;
        Wed, 04 Nov 2015 11:21:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.206.138 with SMTP id e132ls177140lfg.109.gmail; Wed, 04 Nov
 2015 11:21:29 -0800 (PST)
X-Received: by 10.112.138.66 with SMTP id qo2mr741359lbb.2.1446664889363;
        Wed, 04 Nov 2015 11:21:29 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id t2si168897wme.1.2015.11.04.11.21.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 11:21:29 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue103) with ESMTPSA (Nemesis) id 0Mhf9f-1a6tXX0GXL-00MutO; Wed, 04 Nov
 2015 20:21:28 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija =?utf-8?B?U3Rhbm9qZXZpxIc=?= <ksenija.stanojevic@gmail.com>, Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: gdm72xx: Fix sparse warning
Date: Wed, 04 Nov 2015 20:21:27 +0100
Message-ID: <15290089.aycdyn2nLf@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAL7P5jLS2rjMvAwN68=+A1MfSLhJuk_0PRavJ7j+B-xGqkiXNQ@mail.gmail.com>
References: <1446086478-14386-1-git-send-email-ksenija.stanojevic@gmail.com> <20151104190637.GA6140@kroah.com> <CAL7P5jLS2rjMvAwN68=+A1MfSLhJuk_0PRavJ7j+B-xGqkiXNQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Provags-ID: V03:K0:JqmSCEhpsQ8P2tEkFmKvosOXpNydcU2O79eP+GkQahaQtuLaZTK
 XmA1L9gYWJR2bcdamsfVhwdiGgS+pXXxVIdRew3Jpw7QA66Ll6d50yDM1M4OegjriX75zpV
 bRrgsIh4Bk7ey85vy5yB3aib8ptwZqaIS2kz0lfumGEFk8lDVoLbrPooBKJvCOZv7JYDt5W
 bf96MjVFwnkdMRS71eRjg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:XqHJkXd60NA=:wHs24TUiWnY1nfi3rFZmLi
 IB4uGIsGVoEhTsSXHOhDPJaGmJ7mXhU/+f5tj7WHalu9OK5sRqxhYrC/0mMnutiaaSpMKSyvZ
 lOgW2VbAtukcG/+GGHW6ScsA0C5gM5e3C6H/ynVRMjd0ds359JEl7awA5Yh0cNUVJw43H1Y8S
 ETueNFL0b5FpH0f2bN+IuK5KfZsSnj7cNIDjRhL2mm8FkexJj//vIdjY6lfHJZ6/VNsi8+q1P
 tysByj04jPindnoPeeHDP/Q+MMhJMgCntu0YnY1q/TEo/Z7Dl37MgejUlxnJoqaXonVf9WUZm
 cxMmhPmEFRFawYsKoxSbSNNUPlw+Sh9vY7FTDlXaNT8PslYlxvPvNINFciNjTyjD20metNYAt
 xuHXMT3LFf0u2INmDekcL0P3rMYRjgqliekF/YNOx/OKmEEwXuL7kDJKt/19Gm9p24iiQ2LHe
 LWO7bRuZnjcS7R3hsNiV5dXX9k0YUzukG/itzZjTkoKoz6xFNz5YTAXTZuCAdWfYg/4oOPt3X
 9AeYECPMqs3mKtdLYblBUghroc486m9bGdCLanaH7sSYkx065DbvqCBZ/NV60WUUbo7Dv0XeN
 xfQ+C87b9Ifm7YTeTgtp4FVEGkhRogN7gw3Co0qHlAU3o2PoB4Ep0VR3cgdTrKJbvgIBdAw4a
 J+hYj3NWgmNhavK1nx3ijlpR85+K4gt1Q24NUJ45WpN85FA7WQOUG0MYTM385WKpuQ8yKYUfo
 CM3K17RTJCgjxfA5

On Wednesday 04 November 2015 11:14:54 Ksenija Stanojevi=C4=87 wrote:
> >>
> >> diff --git a/drivers/staging/gdm72xx/gdm_wimax.c b/drivers/staging=
/gdm72xx/gdm_wimax.c
> >> index d9ddced..a5b4b72 100644
> >> --- a/drivers/staging/gdm72xx/gdm_wimax.c
> >> +++ b/drivers/staging/gdm72xx/gdm_wimax.c
> >> @@ -378,7 +378,7 @@ static int gdm_wimax_ioctl_get_data(struct dat=
a_s *dst, struct data_s *src)
> >>       if (src->size) {
> >>               if (!dst->buf)
> >>                       return -EINVAL;
> >> -             if (copy_to_user(dst->buf, src->buf, size))
> >> +             if (copy_to_user((void __user *)dst->buf, src->buf, =
size))
> >
> > Shouldn't the variable be described as a __user pointer instead?  D=
on't
> > cast away warnings, fix the root problem.
>=20
> I don't think so because dst and src are both pointers to struct data=
_s
> and dst->buf in one function used as user buffer and in the next one =
as
> a kernel buffer. Same goes for src-buf.
>=20
> struct data_s {
>         int     size;
>         void    *buf;
> };
>=20

I think this should be two separate structures, one for the user-space
data and one for the kernel side.

=09Arnd

