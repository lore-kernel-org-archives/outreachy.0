X-GM-THRID: 6208922267806597120
X-Received: by 10.25.24.74 with SMTP id o71mr127028lfi.9.1445628901512;
        Fri, 23 Oct 2015 12:35:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.141.198 with SMTP id p189ls483280lfd.79.gmail; Fri, 23 Oct
 2015 12:35:00 -0700 (PDT)
X-Received: by 10.112.173.170 with SMTP id bl10mr5345481lbc.7.1445628900659;
        Fri, 23 Oct 2015 12:35:00 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id cm6si339004wib.1.2015.10.23.12.34.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 12:35:00 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue102) with ESMTPSA (Nemesis) id 0MC1MO-1Zgwfi1CKW-008q5L; Fri, 23 Oct
 2015 21:34:58 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, y2038@lists.linaro.org
Subject: Re: [Outreachy kernel] Re: [Y2038] [PATCH] char: ipmi: ipmi_ssif: Replace timeval with timespec64
Date: Fri, 23 Oct 2015 21:34:57 +0200
Message-ID: <3885032.B7rTY3eIDR@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CA+5yK5Hm3UTHqTW35NdW-7UMv1YtMtD=mesXFN7=hP=u_h7m9g@mail.gmail.com>
References: <20151023190922.GA32154@amitoj-Inspiron-3542> <7971017.NMVUFoYCm6@wuerfel> <CA+5yK5Hm3UTHqTW35NdW-7UMv1YtMtD=mesXFN7=hP=u_h7m9g@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:+7ZPyUqHO5mw+N5LY/iHyK9H56+bEgK2nyTmRQ3hG/ShSQypsD0
 eIafPskEyk8yF6igwC5Cz/Zm4P0Et76HGIP/sF11iXR4SFZ9izmEnL1E0KIG6D0vRSs9oqm
 jFGAQgK2cLeejqHx/stv7aVy5kShLK0eoD1nJ95c6U4XOknqvtlNbNtASzjpzrQBj7QOc3D
 SB8n3ve99yf8WC9jlJhjA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:Ss47xaF3sWA=:XMs5jmRwm1xte/9cMXafhu
 nwDmcMYa2zx4pLmkkn29qVx0mRtxdTk0hh1v4n2+jF7/vrfK8ZrIa21UM1wrGY1LjF6WWkdat
 ljQZl8eqdnhSvMvW5N49m2M9cd05bwYiBAOZ33ytyeMJMUB+ZmQvOMXZ8/R9FzQwZ/0OnyeCF
 KKSvvITgWNeZbrJb+r+JVtTjngZgbB3rEZWgAE0dBiAbzVR0M1Wc9n4GKRYiViYPXrcNaOeHB
 onBWn9T0yW9jWWzydQLLZJ6OCZB2XKvcBWeHiLmqihF93HaBhcFJKahkSp44cJb7WnDloEoOv
 Jrsk5/gGrx1aGWAzfHkow4dI5eSCth0gLyyxKIffkAq0c7Aw7lyjPSeudqb0ovbPCvlu+acYL
 g7CKWSrpVSN2rV0jBXBSR97awAEhrQNDcgYmkObuzs02EqKAxlJwi7DFPuWylIDovz6qKC5h8
 hnhhfRJ117nMyXpKKbKdHLZxXc+/pgjdJ/jKBIbYeQdnuJqCnUQBvNpVau75x7gGTxEkx7Sak
 HgV6g8H6Nf3Edwv96d8678VnQy7Ir1aQEv1nu60dEHHcQacWS9hX6gMGKpzh0EbaJotckQnNk
 y76PrVvhPr16k3fKqI+Vcus6HbndfA9CTkfc9TvCUr713uV+mXVAUJml8CLNUu3a9ReFte2/S
 uzhmchiwOLAgxH1qpH1tX9l4GdJNmBnZ4CQUP5zSP6kJVlphY53Y5OwfUeTpbOckTm9BUzSzZ
 R0m8IjGQPmFih7Vw

On Saturday 24 October 2015 00:58:12 Amitoj Kaur Chawla wrote:
> On Sat, Oct 24, 2015 at 12:53 AM, Arnd Bergmann <arnd@arndb.de> wrote:
> > On Saturday 24 October 2015 00:39:22 Amitoj Kaur Chawla wrote:
> >> This patch replaces timeval with timespec64 as 32 bit 'struct timeval'
> >> will not give current time beyond 2038.
> >>
> >> The patch changes the code to use ktime_get_real_ts64() which returns
> >> a 'struct timespec64' instead of do_gettimeofday() which returns a
> >> 'struct timeval'
> >>
> >> This patch also alters the format strings in pr_info() for now.tv_sec
> >> and now.tv_nsec to incorporate 'long long' on 32 bit architectures and
> >> leading zeroes respectively.
> >>
> >> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> >> ---
> >
> > The patch looks correct, but I think that this time the format string
> > was actually ok already for the microsecond value. Just leave it at "%6.6ld"
> > and send it again with the maintainers on Cc.
> >
> 
> Oh okay can I ask the reason that the change was required there but not here?
> 
> 

The other one was "%lu", which has no leading zeroes, while this one
was "%6.6ld", which does.

I keep getting confused by printf format strings and sometimes have
to try these out myself, but my understanding is that these all
behave the same way:

 "%06ld"
 "%.6ld"
 "%6.6ld"
 "%6.06ld"

	Arnd

