X-GM-THRID: 6210359704363728896
X-Received: by 10.194.176.2 with SMTP id ce2mr174825wjc.0.1446648254645;
        Wed, 04 Nov 2015 06:44:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.174.196 with SMTP id x187ls346016wme.3.gmail; Wed, 04 Nov
 2015 06:44:14 -0800 (PST)
X-Received: by 10.28.55.135 with SMTP id e129mr720370wma.7.1446648254015;
        Wed, 04 Nov 2015 06:44:14 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id t2si123807wme.1.2015.11.04.06.44.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 06:44:13 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue004) with ESMTPSA (Nemesis) id 0LkkrY-1aUQVU3zi0-00aW7e; Wed, 04 Nov
 2015 15:44:13 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija =?utf-8?B?U3Rhbm9qZXZpxIc=?= <ksenija.stanojevic@gmail.com>, y2038@lists.linaro.org
Subject: Re: [Outreachy kernel] Re: [Y2038] [PATCH 1/5] fs: nfsd: Replace time_t with u32 in boot_time
Date: Wed, 04 Nov 2015 15:44:12 +0100
Message-ID: <8546847.yByvRe1hVG@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAL7P5jLv9Ba0t+qKRe_0Nx3SrQZQbBgmvxYuK6t2z_7d=4HiAw@mail.gmail.com>
References: <cover.1445960986.git.ksenija.stanojevic@gmail.com> <16034171.mcXgMm0kJL@wuerfel> <CAL7P5jLv9Ba0t+qKRe_0Nx3SrQZQbBgmvxYuK6t2z_7d=4HiAw@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Provags-ID: V03:K0:8skhiS95Wr96gzdJvoHm3HosZohpIGEh2nh+AtNSxJQsLNgnZBi
 yF8XuqeHQvxYqyko6iPNOqKzzp4lGf2Utv86NyCzodCb76eWwkNdvRq3E1dKIde+axXgTHY
 hyEGqmYeLWnarmhbio6SqG3dT2m+gTJ66R6gJwj2o5qBZxdYFbhdmf0FY8i7iA9letcSQw8
 s5APXRbvOgly8tMRfVyYw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:IVv9H+0ihfg=:LkS2tdkXd2qxF0hsi4C42B
 lQI3fT/qlpxHbLYUO0Rw9HOg8wlRVF6uEzhIQUPqvwW8hoGDWN+yTNhjJ6BA1uo8gT5HunqcD
 flRWCNrIfr0abtmanaKGYJma1zmlsvREOfUdkc6Hkrm2eDCzHmWg6rhNPHH/q7d9X14+Jsq91
 6Y8XYnYmUWufWCXt/uwSG5xzO5vNI7JLXAzFkaS7utyoTm/gGNr+YK1BjnNQxd+rUrpW9CP7C
 udguh7rbLIvdOMNTAYGzCZJ9boHKp75QxlFMNAGaDA4D5QfceE2HGZzwMV/FTRLb4rA+mL8JY
 kmKMp1yWSKPs/zdjGx9UU/7HhC1bIYJrBSlv7GsBMaq/UJPgyEKHRm6oZfNl8Sh0guW843y7l
 RTiFjgOWmJv1nINpqW2HN9YrDZr8mqpQUykQn2qXVKl3OUQ1wZXBsTyBGVJNqvBRDRmq/m/mU
 z5FpHMy7xOG04L//aIn83H3bodeHv2M8JrSwriNYa3wVBEIWn+5shnbnJcZNNyRL9dOgt3KPj
 R5JO0K+gSOFNavzi7yxj2dn+KVQ/pnorpwTIiwA3Ny6X9pwzHwPmoZvAvDrK6iEOXJiyQXh3q
 ALaN+ofuJCB8fS7KI1+w0oUO7nmvlfZpSxUDTHiUkgp1yfHTnDv/ERbCI68yODxWn9gv6Nu8e
 7BbXbe2gTymy9E0e0uwyKigZUc9pTVrCM9RCWIw0D3u2ubGPoBssUJjUFBYvAfa3wYlkkq6EH
 QtzbcVLM+qNHGXtA

On Tuesday 03 November 2015 18:17:48 Ksenija Stanojevi=C4=87 wrote:
> On Tue, Nov 3, 2015 at 4:04 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> > On Tuesday 27 October 2015 09:08:35 Ksenija Stanojevic wrote:
> >> Replace time_t type and get_seconds function which are not y2038 s=
afe on
> >> 32-bit systems. Function ktime_get_seconds use monotonic instead o=
f real
> >> time and therefore will not cause overflow.
> >>
> >> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> >
> > I don't think using monotonic time is safe here:
>=20
> I was under the impression that comment:
>=20
> * We're assuming the clid was not given out from a boot
> * precisely 2^32 (about 136 years) before this one.  That seems
> * a safe assumption:
>=20
> is implying that monotonic time is used (should be used).

You almost convinced me, and I just spent an hour trying to
understand what is actually going on. I think I've got it now,
and this is what happens:

The NFS client sends a SETCLIENTID request to the server, which
generates the clientid using boot_time and a unique (for this instance)=

number, together these two make up a 'clientid_t'. This is sent
back to the client in the response, and it gets encoded as part
of nfsd4_encode_setclientid() in the line

        p =3D xdr_encode_opaque_fixed(p, &scd->se_clientid, 8);

The reason this does not show up when you grep for cl_boot is that
xdr_encode_opaque_fixed just takes the number as set of eight bytes
that are not meaningful to the client. The client then sends back
the number to the server on other requests, e.g. in nfsd4_sessionid,
and the server checks cl_boot to ensure that is the same number
as boot_time, and this way it can tell whether the server has been
rebooted while keeping the client session running.

If you use monotonic times for generating boot_time, that means
it could be the same after a reboot because the time to get
from poweron to starting the NFS server is relatively deterministic.
This however defeats the purpose of comparing the boot times.

So you have to use real time here, but it is safe to truncate the
time to the low 32 bits because the number is never used as the
actual time, just as a token that is required to be unique
for each time the server gets booted.

=09Arnd

