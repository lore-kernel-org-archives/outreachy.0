X-GM-THRID: 6210359704363728896
X-Received: by 10.194.216.3 with SMTP id om3mr394344wjc.1.1446645424366;
        Wed, 04 Nov 2015 05:57:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.77.74 with SMTP id a71ls143860lfb.70.gmail; Wed, 04 Nov
 2015 05:57:03 -0800 (PST)
X-Received: by 10.112.162.169 with SMTP id yb9mr395187lbb.15.1446645423511;
        Wed, 04 Nov 2015 05:57:03 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id s134si832323wmb.3.2015.11.04.05.57.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 05:57:03 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue103) with ESMTPSA (Nemesis) id 0LkAig-1aQY9X3mBu-00c5tJ; Wed, 04 Nov
 2015 14:57:01 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Ksenija =?utf-8?B?U3Rhbm9qZXZpxIc=?= <ksenija.stanojevic@gmail.com>, outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Y2038] [PATCH 3/5] fs: nfsd: Replace time_t with u32 in nfsd4_grace
Date: Wed, 04 Nov 2015 14:57:01 +0100
Message-ID: <6242321.fS3rCd1QVI@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAL7P5jJUV_0zRNQwBviCZMPDNtZuHONGL3WU+VX6fvk9MsYifA@mail.gmail.com>
References: <cover.1445960986.git.ksenija.stanojevic@gmail.com> <5919340.GhJnFQNPk1@wuerfel> <CAL7P5jJUV_0zRNQwBviCZMPDNtZuHONGL3WU+VX6fvk9MsYifA@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Provags-ID: V03:K0:ElKKXdBy4K3tz76lS/zzBKOCT22GhuAYdFCzrhaLzHq/KcwxcMm
 J7V1Y/9HCD4K0JOz2U52m8KrfTX5khpuf2hwa2Uvnjewz1m8Do1J2jL14Xw9iA3HHkG6QHx
 TVruQv1dRAUoGe5AVh/YjiW8Wc/qX5jn9fhZLlILu48HunVewhZ30Cz2O2tKVJNVDH7gJtv
 rSsEFAVJPHxSAK9t8Ho5w==
X-UI-Out-Filterresults: notjunk:1;V01:K0:vbfizhUDzxc=:mebmZH/W7GFjHzWGOh77EM
 0//DhqanCangkMYoBbxfxgZ+t+1Z+q+qjaRg/pTe9AU9neJRAvQDDW2gpOX1QDxVtDUIpUEzt
 g1oSk1ok1ixSzXq7cUkAj0iYX+Ynghh903JdEXlUqeaJroIlHLqfLGoSwWL6/bU5Vv8MZGuW1
 91SsRPJgNWKYJcv69oOD5oTVqI36yoSBjSTM+OedhjMX/ECVfjfbNBxgI1h4hI+mhtamkliQ5
 mqM1oAaKkfVvI4yO0VtElLZbZEKooTz/LXNuYg6X+5uSJ7Qk2FZBTUjwla7mJcSHz0UF3Me/c
 qMFdXnRVMAKsc8eCx3De6BtO2egn/VkzpFnhwGeOLoLzHD6bUon08vGn6GmSF/dd1UcPfAfxu
 Jfiozw3voV6Xy2tOgd2tD9+7A2EtMgNZs+MxKUqQROfe46zsuCM48sgQfjoZhDfGo9Se7p4U0
 D6HdAbyxDZXE3U69H2fr+HMEkbFAZ5qCGc+/QHTvsUdReRT+6w3rOEFBYPRBW8XCcbch9lqbW
 F7QW8PESk7WWD2Z4SCFaEvudHRP/2hs4MiOlciC+6aBOs1OTlLB/B9mx0Ln7rxRRpWN8b9obZ
 Sul9lF7ydWASegkdYBr6KiNzbtHaIsB0wj+ahdVQdiYTSlTtqHF0EcJv6et/E3yNhGG0XQ7yh
 /TG4sCy/mKS+ropCFkWzhhsC+6Ml4q0wJRcfeYZ0QBK5WsnjR3YetGsk8yaUeqPhwTIHaSMMj
 cVR6uouKHGvLhxAZ

On Tuesday 03 November 2015 18:27:53 Ksenija Stanojevi=C4=87 wrote:
> >
> > You change the format string to print the time as hexadecimal. Is t=
hat
> > intentional? If there is a reason for doing it, explain it in the c=
hangelog,
> > otherwise leave it as "%d".
> >
> > The cast of SIMPLE_TRANSACTION_LIMIT to u32 looks misplaced as well=
.
>=20
> I got following warnings with original code and I was trying to fix t=
hem:
> include/linux/fs.h:2908:61: warning: format =E2=80=98%ld=E2=80=99 exp=
ects argument of
> type =E2=80=98long int=E2=80=99, but argument 4 has type =E2=80=98u32=
=E2=80=99 [-Wformat=3D]
>  #define SIMPLE_TRANSACTION_LIMIT (PAGE_SIZE - sizeof(struct
> simple_transaction_argresp))
>                                                              ^
> fs/nfsd/nfsctl.c:963:24: note: in expansion of macro =E2=80=98SIMPLE_=
TRANSACTION_LIMIT=E2=80=99
>   return scnprintf(buf, SIMPLE_TRANSACTION_LIMIT, "%ld\n", *time);
>=20
> but I see now that changing %ld to %d works as well.
>=20

Ok. I have no idea why gcc decided to mention "in expansion of macro
=E2=80=98SIMPLE_TRANSACTION_LIMIT=E2=80=99" here, which is obviously co=
nfusing as it
has nothing to do with the actual change.

=09Arnd

