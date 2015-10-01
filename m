X-GM-THRID: 6200341306580926464
X-Received: by 10.112.151.9 with SMTP id um9mr1788089lbb.19.1443729936989;
        Thu, 01 Oct 2015 13:05:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.21.96 with SMTP id l93ls158642lfi.20.gmail; Thu, 01 Oct
 2015 13:05:31 -0700 (PDT)
X-Received: by 10.112.202.165 with SMTP id kj5mr1786979lbc.5.1443729931125;
        Thu, 01 Oct 2015 13:05:31 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id q6si126841wif.2.2015.10.01.13.05.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 13:05:31 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0Lto9d-1afw4t2w0D-011Ayi; Thu, 01 Oct
 2015 22:05:30 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Ksenija =?utf-8?B?U3Rhbm9qZXZpxIc=?= <ksenija.stanojevic@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH v2] Staging: fbtbt: Replace timespec with ktime_t
Date: Thu, 01 Oct 2015 22:05:30 +0200
Message-ID: <4117012.VUd9JF0oa2@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAL7P5jJvJ0SR5-5uFxx8Hrhy6Q76qqYCAV65RJOB0nm7eVXpZQ@mail.gmail.com>
References: <1443629449-12352-1-git-send-email-ksenija.stanojevic@gmail.com> <1593744.M7Nca36Ssj@wuerfel> <CAL7P5jJvJ0SR5-5uFxx8Hrhy6Q76qqYCAV65RJOB0nm7eVXpZQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Provags-ID: V03:K0:0LkE5zS0gELymiycQes6J1K8+0o7QUowbfCH5EHauDd/Mp2JtdQ
 4dsYMOohNvA3YsC6/YtQRzql3715bu7MKSQ7oEguSDOXX5lKfGeWgR5WNEFpqSd04I2xomS
 oRglMd529H+t+4naYsbTS/3rI9tAX2Yf7RX5ZAoHb/rqHCpNGCwHU1pn2LQj+ZZZIh/p8Hi
 DWthmXNN+MIwR5ndUca4w==
X-UI-Out-Filterresults: notjunk:1;V01:K0:k3sW3uKy7uk=:aRc2fm3FR4ZOedSOWLlOIL
 jfSZQyGg+3XLiq0fkGebZCTPJy9wdkEgt99Hu1v3WVpzX8JKB5JiNQbJo4xz2NO0DVFYft75U
 VA7iEsiAzDinxrmSxjzdIEzwXA8v8EuZdhAdiDvHtGL5aNBT2klVRkbovrnEyrhMg40bglIMK
 utHMbZc8a/ePDZtfLEgRL8gV8YcLaUd7nccHwB83FkZB0l9rI7EV3CrGL/X4bocqOS6pbPP5x
 CLCpwxD5mjUkz2B6gRRkjnr1oX4xhlb0OJseDZWG5xZXIvVFcLjFr9SclYra7yik7CP4Xpxax
 rw7oW1SgNZa27ly95Sk1zmb1Yw9He3VpFTUOTCUM1WasdTw4B6d2WassA1kl+Xe2Rc7f5O+GA
 b7ISDP02BV197txW7ciqz3L1OqIlgftdW4rCdcyIPF1tI7qqp1JS+0urf2Ac3mdRZRiQqNwtn
 BU4El5CTYD7dJEMQ95XEtK1ZOM/xs3wyWjI6oIooVgwLSTLok/7P69TaSzEOeDWs6cj2enIng
 rDu63CfOLwaEa4XTk5Uo3sz09HboKxBYwtfdpSLyzDDjkEx4+5Nhb1z1/rX+reNZ1OPN5KCQI
 T81wzA/XLYwTmbcdxibzu/mZJ0vq6v5cWAfO+ayn/qYPNhJL1sq+mXQmCo9BqgMaMm8LZd38/
 XkGdMZujm3+qV3MQUa2wUvxZ8no9IH1dz351aXQtS2mNRq0tQrKMGD+L+qadnHzpbCWi0c2Wv
 evnCP0NvufhfLFCp

On Thursday 01 October 2015 19:44:46 Ksenija Stanojevi=C4=87 wrote:
>=20
> In my local repository I modified my .config file so that CONFIG_64BI=
T
> is not set,
> and after that I recompiled all directory, but I don't get any errors=
/warning at
> compile-time.
> Also I separetly compiled this specific file but still no warnings
> My .config  looks something like this:
>=20
> . . .
>=20
> Should I change my working kernel or .config file is just enough?

I think the problem is that you only compiled that directory but did
not attempt to do a full rebuild of the kernel and modules, which is
required to catch link-time errors.

The compiler does not know at this point that the 64-bit division funct=
ion
is undefined in the kernel, you only get a warning at the 'make vmlinux=
'
link stage (for built-in drivers) or the 'make modules' modpost stage
afterwards.

=09Arnd

