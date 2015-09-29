X-GM-THRID: 6199956931462823936
X-Received: by 10.180.72.68 with SMTP id b4mr4021728wiv.2.1443542093094;
        Tue, 29 Sep 2015 08:54:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.79.106 with SMTP id i10ls791207wix.18.gmail; Tue, 29 Sep
 2015 08:54:52 -0700 (PDT)
X-Received: by 10.180.208.7 with SMTP id ma7mr2022813wic.5.1443542092758;
        Tue, 29 Sep 2015 08:54:52 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id hs5si725457wib.1.2015.09.29.08.54.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 08:54:52 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue003) with ESMTPSA (Nemesis) id 0M3fG9-1aXxV540en-00rDH8; Tue, 29 Sep
 2015 17:54:51 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH] Staging: olpc_dcon: Replace timespec with timespec64
Date: Tue, 29 Sep 2015 17:54:50 +0200
Message-ID: <2691982.OZO5Vk9gRK@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1443539954-3341-1-git-send-email-ksenija.stanojevic@gmail.com>
References: <1443539954-3341-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:4kiM6FmvGpyCuSc94mhe0HiftL8Eno8LXNILSVvX4eZOD7K9/fB
 vl+Pfe/dJVCzF3JSCdXG/taah9pPdDaWP+XOWHk3erSDWTJrYEDjk45NLhbOK2P9FK8+pp0
 s7lsy9nWr6/O7n/BHtRKCWFF/Zib3J7QAzVaJ1jJ1xpdjMbEw2XES8cRQYgsIwGkGvSo9xN
 V8uYWStA/O152UgRwziUg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:4PKJPGPebQ4=:HGy9nlsjlKjUFAwgE1auIg
 yLRdcp2zsOebeFZV62no1NQTtA4mXJQ0AKB/Cub+9WWYRy6tvKKasUF5hS3yiAAY4lWJojT1Y
 ISfRkkqsu977eMEAFFW9bv9uOLWoZKvC7qTFR8B11UdnDgISXvVLejUkbOY/CxDDq30xh2T/f
 OSI6IpnUX0FzrQ/V6UIHALTt2IQW7O/l+sMjW15LtBRKKbkILjA4Q4Nr9FSgOXYcEo7dn3G83
 ldjMHBmJQShVHOuT7LmROaJzuVNCDV9iMqo5R2QVytqRCLA5rHKgVh02Fm67Dbju9Ax+70t/N
 sJj+63Uq+NjGeIQMuxwNdl+S3smZwi3ZQv8k4gyeUDbVOg/lullJVdRz1Whs87afWgKAnt9y/
 yZ/XZrC+34j3sApkTQoSY2WBtTjYYZnEz5Q2Slfvywefddw5X5TuFF+eLgT9GbbAmrVj7gLT3
 /RI56rZnLf9DAyoBekJHkp0kAIlZn3ZUDXGELflOQcE1HGW7jgLETfFjvrRXaql9ipdEi6ALp
 5DhXBBZ6LZwbPTMi56tC2QnODJ5BiXEv4D34NsbiloWiz2aWk47hKrgQ00Ik+9WEwQVTWy09n
 o1DiXST1x/peM42VemJ8xUe/cr/72ULybxPsrsq73H2qK/PajXlZJeBmOdkCI+Ti8yWZZGOAF
 RBX/8AYnk8RPzKWwtYVb9RnBHXEFD2tAU0mNIelTHVyjxHzCKPzyY2Ug8AYzOqJhsUM+3po4/
 +7C886c1omjwPEi6

On Tuesday 29 September 2015 17:19:14 Ksenija Stanojevic wrote:
> Struct timespec will overflow in year 2038, therefore relace it with
> struct timespec64. Also replace functions getnstimeofday and timespec_sub,
> which uses struct timespec, with getnstimeofday64 and timespec64_sub.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>

Same comments as for the fbtbt patch: I'd prefer the use of ktime_get()
with ktime_t and monotonic time, over using getnstimeofday64, but the
patch looks absolutely correct otherwise.

In the changelog, you could mention that this driver does not actually
have an overflow problem, because it only looks at the result of
timespec_sub() and that works find across the overflow.

	Arnd

