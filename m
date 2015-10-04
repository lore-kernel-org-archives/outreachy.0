X-GM-THRID: 6200341306580926464
X-Received: by 10.195.18.100 with SMTP id gl4mr4543442wjd.4.1443987283019;
        Sun, 04 Oct 2015 12:34:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.39.162 with SMTP id q2ls698212wik.20.canary; Sun, 04 Oct
 2015 12:34:42 -0700 (PDT)
X-Received: by 10.195.18.100 with SMTP id gl4mr4543437wjd.4.1443987282703;
        Sun, 04 Oct 2015 12:34:42 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id bn1si253252wib.0.2015.10.04.12.34.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 12:34:42 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue002) with ESMTPSA (Nemesis) id 0MIDV8-1ZmeoI2Ypy-003rFc; Sun, 04 Oct
 2015 21:34:40 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Ksenija =?utf-8?B?U3Rhbm9qZXZpxIc=?= <ksenija.stanojevic@gmail.com>
Cc: y2038@lists.linaro.org, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH v2] Staging: fbtbt: Replace timespec with ktime_t
Date: Sun, 04 Oct 2015 21:34:40 +0200
Message-ID: <5548451.nrtKaPCYPk@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAL7P5jL8Y5EORR4pvZHEhc9nKJuh7p+v_k_Kcjy8dXidiBq7Bg@mail.gmail.com>
References: <1443629449-12352-1-git-send-email-ksenija.stanojevic@gmail.com> <4117012.VUd9JF0oa2@wuerfel> <CAL7P5jL8Y5EORR4pvZHEhc9nKJuh7p+v_k_Kcjy8dXidiBq7Bg@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Provags-ID: V03:K0:AXvedC2CZVHaCmlDv4qLHlsL11/56vycIxNh0x+uht4Mueedoi+
 zHh23eVtAz45589653UXXbLw98yd8Z4t9/Q8AS2x/Wt35KGcIyytt5M9XG1h/5VNnMnLrOf
 Pjg8Shb3NBhP2RRb9roJlWaO0Gzp6hT2coPyi4pD79mF4yZvmW1D4ZnhT1gZrbPC4b4/NnH
 MS0mM/ywlzuCb4cxZ788w==
X-UI-Out-Filterresults: notjunk:1;V01:K0:GDdU/HZD0oo=:HUGetcvFGaQmSWQC+5Kj9q
 NORjEW0nrpcwrboBUO0QnLQPx3qR/62s/wv4SbBuIZxgbc6DTHY6/DQoJzSD8AT6VNT0u2+O5
 jyMBQcNflUL7yBP96Skz73yomSeX5eFfKK0YiC4s8JpvvUF6DQLaorwDJsjPZC7X4Yw6xzmi8
 2WFUWiWLjEQWYqtzE63/f0/Yi4687MU/keGPUnZAIqyc+SNf93HkXPtK3fs98M62Gz4Tx0r9E
 B8L/8y1FTJ8ktyicLJVDl2IQRWinr2RBJqUwuaefPTc7+46W+El790muteTp0blDWUCxiJl7W
 gyTh2F5r5N8KZ4gvdeSlRNqYPpNXKXN12iM1+5gkmU2+CvhMJ+A72togZybTJu8OMX4Yl5H2H
 DVCVTYs2Sq76nNlOa+/wrwk1IhVGAc/LoSr5qx3vrpzN61L6agTd6rgHoHJfnHrzjGsQJNbG9
 al/fkfORQHXdYMoyxrXmPlcaW/0DLWcAhSnvx/DpwFcwtnGwxavxcgxIAwBEhTt0+drw7OKmX
 aNXiTvStacTCuPw8Lb79mxK7WNUG0mxi/+7cNPyTPm3iSGDFZEc7nFqXd8Z/y7+F/Or4IbJKg
 IB7T8EsHVQ1auRBLkO00EVVALyUfVfLheJj3AWyZk9X2qFYEi9KnigLCy/YGcVKUHbONfrVtq
 fSuxVsZDTWOsyt8dbaFuot8rPOoFC8ak9oSOQo1UyIwzt4BRai48b7yMzkfwz51DF2S/C83xb
 rjuQAY6oT58s2Afh

On Saturday 03 October 2015 21:15:46 Ksenija Stanojevi=C4=87 wrote:
> On Thu, Oct 1, 2015 at 10:05 PM, Arnd Bergmann <arnd@arndb.de> wrote:=

> > On Thursday 01 October 2015 19:44:46 Ksenija Stanojevi=C4=87 wrote:=

> >>
> >> In my local repository I modified my .config file so that CONFIG_6=
4BIT
> >> is not set,
> >> and after that I recompiled all directory, but I don't get any err=
ors/warning at
> >> compile-time.
> >> Also I separetly compiled this specific file but still no warnings=

> >> My .config  looks something like this:
> >>
> >> . . .
> >>
> >> Should I change my working kernel or .config file is just enough?
> >
> > I think the problem is that you only compiled that directory but di=
d
> > not attempt to do a full rebuild of the kernel and modules, which i=
s
> > required to catch link-time errors.
> >
> > The compiler does not know at this point that the 64-bit division f=
unction
> > is undefined in the kernel, you only get a warning at the 'make vml=
inux'
> > link stage (for built-in drivers) or the 'make modules' modpost sta=
ge
> > afterwards.
>=20
> I rebuilded my repository with:
> make vmlinux
> make modules
> but I still don't get any warnings.
> Do you have any other suggestion on what I'm doing wrong?

I just tried it on my machine and I get (for an ARM build)

$ make -skj30  =20
ERROR: "__aeabi_ldivmod" [drivers/staging/fbtft/fbtft.ko] undefined!

Two possible explanations why you don't get it:

- your .config file got changed back to CONFIG_64BIT being enabled
- you don't have CONFIG_FB_TFT enabled in this build.

=09Arnd

