X-GM-THRID: 6200341306580926464
X-Received: by 10.180.9.104 with SMTP id y8mr2142749wia.7.1444033215067;
        Mon, 05 Oct 2015 01:20:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.151.79 with SMTP id z76ls416643lfd.104.gmail; Mon, 05 Oct
 2015 01:20:14 -0700 (PDT)
X-Received: by 10.25.149.203 with SMTP id x194mr121870lfd.6.1444033214378;
        Mon, 05 Oct 2015 01:20:14 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id w4si284866wiz.0.2015.10.05.01.20.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 01:20:14 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue005) with ESMTPSA (Nemesis) id 0M0dvG-1acmJe3K2Q-00unzf; Mon, 05 Oct
 2015 10:20:12 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: Ksenija =?utf-8?B?U3Rhbm9qZXZpxIc=?= <ksenija.stanojevic@gmail.com>, y2038@lists.linaro.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [Y2038] [PATCH v2] Staging: fbtbt: Replace timespec with ktime_t
Date: Mon, 05 Oct 2015 10:20:12 +0200
Message-ID: <9607634.7a18Wz6LMX@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151005051705.GA20276@sudip-pc>
References: <1443629449-12352-1-git-send-email-ksenija.stanojevic@gmail.com> <5548451.nrtKaPCYPk@wuerfel> <20151005051705.GA20276@sudip-pc>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Provags-ID: V03:K0:hkvI28tKSMN9+2zyiH4qv5ggSgiG/Jkuxv1rjIlHMnnhwociI+2
 0+IRonBiTZBQY6DDEJKaUC2zS9Uixs9+08HBOO30HPgYiCyxdceZTwDkoD0x/ylOgNgZ8M5
 FzXFWKfMEfOr4299++jRRbmn3Hebh8SJSr1kV7kxeR1OEaAI4cBDe6iMgAG464S+8Dg0non
 uEJ8YQDn9GpCSaUT7hm7Q==
X-UI-Out-Filterresults: notjunk:1;V01:K0:qvNlQschyqI=:Lm6nlOHfc++cH04SFOhZz/
 PzeClVJ2DqY4JC7tJC5ecozBmn/Kz77NDv9mojdevBbReBF/yZKEWPatF/yrdrPB0oMgQuWQR
 GuoPnZ+bMnWrIP6rDLg6PrjKBoUi6KsCOuBbmw40CIaPVNCvlcVfyRfe9o2MZ/E6YbuW/wP61
 na46nQcWHpwGMmybi9NZ5dsH/AdFMnBMYX7xAuEjHqb/6t7DbPOOGgI4RIO/dIOss8lSdi75e
 d8cDmbrrhRUTgEwHBkIzFzujhO9VbcZbXpe4cuGVfgRQVsuYHh61Atd7xs4/xyFBP8wEEjoWN
 PQB3nltIBdHP/Ugr6V64dGRnAG+Sz56uo9FRIvhKnwdh78NznNF2r0Sdkf5l3VzoGAwiNqLRA
 GPUd2+W3Cee2c1UTufoJyewnVbcYh0W6ksMDVPo6WBxxjdOoJHHbI82ZppDQBOJ+7YLGFELlt
 twCWJp3GI9ZGWYFzzNbU4xSjBytNKnLm7ePVQYTOogD884bEIqprDue9BcYBLD6Z1F1jnSTfy
 zaq2H8y+tj2f8KBuqGq24J7lbZsGw7HjPBQX9lJV6WehpftXVqGPGFrSeDbweCcErnEgW5C8X
 SYxUOJEGkNLBvMWGik8C6Gi628Jsx9LPd+bQrUPrlRoNoTNcAl4KHQLVk55nx5DbPN2Y2QGCC
 ze9/jYOwhmGtssg9ySin63lYhCWgns2Iy1rzjHVS/gTcUg6fkK19Zpc/uNvurR8dDHWQsyznV
 BpWFmGL9dmHA95ga

On Monday 05 October 2015 10:47:05 Sudip Mukherjee wrote:
> On Sun, Oct 04, 2015 at 09:34:40PM +0200, Arnd Bergmann wrote:
> > On Saturday 03 October 2015 21:15:46 Ksenija Stanojevi=C4=87 wrote:=

> > Two possible explanations why you don't get it:
> >=20
> > - your .config file got changed back to CONFIG_64BIT being enabled
> > - you don't have CONFIG_FB_TFT enabled in this build.
>=20
> After modifying manually .config file use make oldconfig and then mak=
e
> prepare.
> I think i missed the beginning of the thread. Are you saying that fbt=
ft
> build fails on 32 bit arch?

Ksenija's patch from last week causes this build regression, but it is =
not
merged yet. This is my original comment:

| > -             ts_duration =3D timespec_sub(ts_end, ts_start);
| > -             duration_ms =3D (ts_duration.tv_sec * 1000) + ((ts_du=
ration.tv_nsec / 1000000) % 1000);
| > -             duration_us =3D (ts_duration.tv_nsec / 1000) % 1000;
| > -             throughput =3D duration_ms * 1000 + duration_us;
| > +             throughput =3D ktime_us_delta(ts_end, ts_start);
| >               throughput =3D throughput ? (len * 1000) / throughput=
 : 0;
| >               throughput =3D throughput * 1000 / 1024;
|=20
| As mentioned above, throughput is a 64-bit 'long long', so the last l=
ine
| of the context will result in a 64-bit division, which is not allowed=
 in
| 32-bit kernels.

=09Arnd

