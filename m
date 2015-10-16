X-GM-THRID: 6205668721559601152
X-Received: by 10.31.149.200 with SMTP id x191mr15035921vkd.14.1445036269285;
        Fri, 16 Oct 2015 15:57:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.170 with SMTP id g39ls2064477qge.9.gmail; Fri, 16 Oct
 2015 15:57:48 -0700 (PDT)
X-Received: by 10.31.7.70 with SMTP id 67mr15086638vkh.2.1445036268741;
        Fri, 16 Oct 2015 15:57:48 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id n7si391629iga.3.2015.10.16.15.57.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 15:57:48 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue003) with ESMTPSA (Nemesis) id 0Mh8o1-1a92Bk2BLV-00MIXw; Sat, 17 Oct
 2015 00:57:45 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Deepa Dinamani <deepa.kernel@gmail.com>, y2038@lists.linaro.org
Subject: Re: [Outreachy kernel] Re: [Y2038] [PATCH] staging: ft1000: replace timeval with ktime_t
Date: Sat, 17 Oct 2015 00:57:45 +0200
Message-ID: <9822706.yKCeF9F5MV@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CABeXuvrTDkfM=2umfNcoyATN866zWQ2ed-VspCyn-xC846e1nw@mail.gmail.com>
References: <1444869780-26658-1-git-send-email-deepa.kernel@gmail.com> <30046181.iodvR1OlJa@wuerfel> <CABeXuvrTDkfM=2umfNcoyATN866zWQ2ed-VspCyn-xC846e1nw@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:rt1O9HPnJ3C43GVmbg8rCBamn0omk45Ja+pfQEcco9iIjQFbF8P
 o89b5rrH56iR2SkQSARjlgBPDWgVI8qINLyDz+nTMBmgT2f78D5DI6weQFsEL7Nn6EKeW5t
 w8wUiHx65oIcqm9xWHB81pVlh0gPneDYddPr6Vn6O5TZSA5v7uVpu9PehJC2erf5UkIcknr
 Yqd9Et++P3kxkluF+zYVw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:XUS6/n4fXeY=:jm6ngROERUZNPA5jCsTe6q
 Pja2MAP0ZsXuUrQ4/P+m9Trs425LCgTlxGENoUFoank3nKHUSmPSyi7XR/Xura3130h/Acuha
 DgzQAvLkwIXxY52XwWAzIg7yvJwMdLyucHw32IHBCVfposdEuWwU2cXUMDgEUs9p1Gml9H1+j
 Wk17+lL0UqO45YQgqe7XDgdjbw3+I7mxpoOM9elaa9uJQksW0i+lF3aBMRBxWsU8uQ0S2GGy1
 sN+HeTeItW0PdCtfn6h8AHoqK5SM14/FerTFYIwOBn/DsLbKzgiOnzZ7nNBsxevxCaXsCAEwq
 KH3ZDtVavaQ9rdKDNtCoQg96/g3Umy3dLrkR7XCJcqxw/VXcoBVVwQVGpx3GJq/T4RKZLxsd4
 Pa6zxeojA+BLVY5+V7Rpr7CTt3efn+BozR+MCbjNrb4XSfMyTfmq4AqLrmjvrZSlWSnDd3tf/
 btqaN/xSsbSeLhC0HiMRlLYS6FkgX7aKedTOclkAVpGKfcVu/7dEv8XD0oLE6wUx7X4+A3Yan
 cNK6gS8DqjHTlUhTfabAhJEOoHtMOzv6lWbWtcI775qjOx8EkCGsK/LMh5lRHclUOUBK/jUfe
 fW7uEW5MfNQR8aNcSRPBT/qyL9Gcc4e0GkNp3B2aBBHxg8xjj1jwzU5rzCWZAjj4cZ4XM6XIt
 zSLPtkjjEj7wYFxkr7DorWGUfPcz3thxUSjOnER1QU6WS89KGSS6cmBcKkB/TgcbhxOnqkV7q
 b4RRAXZ1wySoaW7C

On Friday 16 October 2015 15:53:04 Deepa Dinamani wrote:
> Forgot to do reply-all earlier.
> 
> Resending.
> 
> I considered using the ktime_get_seconds() earlier.
> However, I'm not convinced that the driver actually needs time in seconds.
> It would be hard to guess given that I'm not actually running this on a
> platform.
> So I used ktime_get() instead so that when the driver gets cleaned up
> later, it can be updated to use correct time granularity.
> 
> Given that sometimes they could end up calculating time from epoch seems to
> hint that there is more cleanup required on the driver.
> 
> Do you think this is reasonable?
> 

The driver only uses the time in one place, which is the ioctl function
returning the connection time in seconds, and this is a debugging
interface.

From this, we know that there is little value in using a more accurate
time representation. Your approach gives us better rounding, but it
won't really matter as the connection time for a wireless connection
is not interesting in the low seconds anyway.

Regarding future cleanups, you should not introduce features just
because you think they might be used later: Code is easy to change,
so if someone needs the higher resolution, they can change it then.
In this case, it's particularly unlikely to change, as the only
user is in an ioctl. Making a change to that interface would break
existing binaries, so we don't want that.

A more likely cleanup would be the removal of the debug interface,
replacing it with something completely different.

	Arnd

