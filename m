X-GM-THRID: 2595026370560
X-Received: by 10.152.88.40 with SMTP id bd8mr1181996lab.0.1424686343490;
        Mon, 23 Feb 2015 02:12:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.218.163 with SMTP id ph3ls517937wic.32.canary; Mon, 23 Feb
 2015 02:12:23 -0800 (PST)
X-Received: by 10.194.11.70 with SMTP id o6mr1175831wjb.6.1424686343124;
        Mon, 23 Feb 2015 02:12:23 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id ta1si642323wic.1.2015.02.23.02.12.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 02:12:23 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue003) with ESMTPSA (Nemesis) id 0MF8bn-1YIu7x1xox-00GFak; Mon, 23 Feb
 2015 11:12:22 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Julia Lawall <julia.lawall@lip6.fr>, Navya Sri Nizamkari <navyasri.tech@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/6] staging: rtl8192u: Remove commented header to improve code style.
Date: Mon, 23 Feb 2015 11:12:21 +0100
Message-ID: <8703892.mib7S5i8hi@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <alpine.DEB.2.10.1502231007430.2479@hadrien>
References: <cover.1424640704.git.navyasri.tech@gmail.com> <alpine.DEB.2.10.1502231007430.2479@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:rzUeza5RPYQn1Zy2ZzdU7OjdGrXt8j4+Qd6J0bOxSicQWRVwwPX
 3TBPHhVFlwIiHDrfvsY9bHqP5iQk0RxqcFtudnXFHKIIZxSgEjiEo8ftLkIlAMJK3FMVgAM
 r9PG7gNxE57XXTiQjRUDqJGbkH/EhF89izS66Z97OyR6PS22IMgUo8EaNFTYlYnulXzW8zM
 I0IZIcZZt7VSry7n77NPw==
X-UI-Out-Filterresults: notjunk:1;

On Monday 23 February 2015 10:08:05 Julia Lawall wrote:
> On Mon, 23 Feb 2015, Navya Sri Nizamkari wrote:
> 
> > This patchset improves the code style in files of ieee80211
> > by removing the header <linux/config.h> which is commented
> > out as it is not used in modern linux system.
> > This change was suggested by Arnd Bergmann.
> 
> Nice to get rid of them all at once 
> 

All patches:

Acked-by: Arnd Bergmann <arnd@arndb.de>

Since the changes are all identical and trivial, and all in one driver,
I would suggest you do a single combined patch for them, but if Greg
wants to take this version, I'm fine with it too.

	Arnd

