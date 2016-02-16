X-GM-THRID: 6251802816159940608
X-Received: by 10.194.62.69 with SMTP id w5mr2272982wjr.5.1455658453962;
        Tue, 16 Feb 2016 13:34:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.160.21 with SMTP id j21ls499056lfe.41.gmail; Tue, 16 Feb
 2016 13:34:13 -0800 (PST)
X-Received: by 10.25.163.210 with SMTP id m201mr2890347lfe.8.1455658453127;
        Tue, 16 Feb 2016 13:34:13 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id s141si1137111wmd.1.2016.02.16.13.34.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 13:34:13 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.42.132.4]) by mrelayeu.kundenserver.de
 (mreue103) with ESMTPSA (Nemesis) id 0Li23m-1a97tR3zec-00n7Px; Tue, 16 Feb
 2016 22:34:12 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Alison Schofield <amsfield22@gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH 2/3] staging: wilc1000: host_interface: replace semaphores with mutexes
Date: Tue, 16 Feb 2016 22:34:11 +0100
Message-ID: <4301281.rimkg3iJVl@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20160216181605.GA2534@d830.WORKGROUP>
References: <cover.1455609607.git.amsfield22@gmail.com> <4f9af8d5cac2ccb9e81ef5908ef0b3b0cdec6145.1455609607.git.amsfield22@gmail.com> <20160216181605.GA2534@d830.WORKGROUP>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:fSukR2tREpMsSyoC5liISJv3nFxlb/VucBAYy+FD4I85rfiyhbT
 puCIvsKRKEry0+gfYKWVyfs/UCoYj88AJ5jOO+mfCX+l+Ue2tULTRsibtc15oqzWmorgvi7
 bXLKWDIUQzDVnukyBOn3wMSLS9lm6+8ZK0GdA6f9AuzwmX7/Qd9OwTFnUb+bwRFij13AwYq
 YUznSpRsA11dkxqWYUBYA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:YfwnMzWUGZ0=:jEPU9/lJHWzlYlYH29BfbY
 5AUCdajBRr6dWUfZKea86GYbu4lC2cL9mspV7ymQm5qSwtBrEOri8yqC2Fs532gkEk1UGWzF3
 BkpTFnkdoa4Djr8HVsxJqjCnyFYDOpqqQn+YGF4y9N15H03U1QFulnKr3TKCWIN87m6UeP8CR
 N3k7THzN5ocbBOHnCTpOrP4S4KmFaIhTxlb+ibtlVk09bQVR/+BUfm3gVx2MkXH4ZwSqve648
 rfTJOyzjiA+67jtldL+JicwfgAZ94v5YQSWx9f9K8OlK6qshZgwfnj9SpLTEm0TAv6D8PEBET
 xjGRbIgw+XfsKTj6h2Mg37no2OPethqsbf/ZqVZhZ9xiBd/GkGozQ03P1xBFgJh0hOEKpmIir
 /X5fMfrmnvHRx+Cj2wEXyP8KoXnDbrrfLfDKMnxycjiJ5a7llNdobRYQbqqiy8Fm+DLMX3u94
 XxIBKyx11SyS7PY1hk+z1ypcA+WVIxkASChr3kvIMPwR/1IH57N5zjwj6XAxQjSZ0kEyLPfaS
 cpadaZvMISLIWW6O3xdP4fj3rAL6MEzcPnOL095OpkYeWBCKB20cFgv/oKUu9r3wbmwMrSgTw
 nIwFn8CbWdbdQxbTKB2Qh0mHRRdfxKsiWc7s4ZYT+814VRY+xIUeiHmQ6etUmj8zX0ON7/Yeo
 G9+Q/MKK3oqGl8DTrSw5p8RxrSw5PEWpFdUPR8mlDsjCurGkyXwkGqvwU8nyP7GzALAs1Rn4K
 Q92pRQXcik0x5YLf

On Tuesday 16 February 2016 10:16:07 Alison Schofield wrote:
> On Tue, Feb 16, 2016 at 12:31:42AM -0800, Alison Schofield wrote:
> > Replace semaphores with mutexes in the host_interface driver.
> > 
> > This is a safe performance improvement because the usage model
> > meets the principle of ownership for mutexes: the thread that
> > locks is the same thread that unlocks.
> > 
> > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> > ---
> 
> Arnd,
> Thanks for the review and redirection. I will use it to learn more
> about the usage of semas, mutexes, and the wait_for_completion too.

You're welcome. Feel free to ask me on IRC if you need more help
on this. I saw your question the other day, but you were gone when
I tried to reply about the down_timeout().

> Greg,
> I hear you and will abandon this patch.  It was no easy task figuring
> out the purpose of these locks (just to comment them), so that should
> have been a red flag that perhaps this wasn't the wisest choice for
> my first attempt at lock changes.  Learned some stuff and moving on...

For this specific driver, I've done a number a number of patches myself
and found that the maintainers at Atmel were rather responsive and
able to test my patches on their systems.

It might still be worthwhile to follow up doing one semaphore at a time,
I'll gladly do an detailed review of those patches.

There are also some easy unused semaphores in drivers/staging/rtl8712/
and drivers/staging/rtl8723au that you can take care of.

	Arnd

