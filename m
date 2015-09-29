X-GM-THRID: 6199956515015622656
X-Received: by 10.180.106.197 with SMTP id gw5mr4017289wib.7.1443541310135;
        Tue, 29 Sep 2015 08:41:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.195 with SMTP id u3ls296566lau.37.gmail; Tue, 29 Sep
 2015 08:41:49 -0700 (PDT)
X-Received: by 10.152.120.232 with SMTP id lf8mr1308723lab.1.1443541309565;
        Tue, 29 Sep 2015 08:41:49 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id bn1si744218wib.0.2015.09.29.08.41.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 08:41:49 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue004) with ESMTPSA (Nemesis) id 0MURRH-1a76tC0pdb-00RGWj; Tue, 29 Sep
 2015 17:41:49 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH] Staging: fbtbt: Replace timespec with timespec64
Date: Tue, 29 Sep 2015 17:41:48 +0200
Message-ID: <12448143.zpgRbU0bdf@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1443539855-3255-1-git-send-email-ksenija.stanojevic@gmail.com>
References: <1443539855-3255-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:dLXqmqnix8xCAev83ZsWHsFixOME/zzGTU8Z4wO06egQDK6UFId
 3DIe4SWOEmxltnotvjsxKqga4tcoYuDkaZgRoyCzwOQU7Eb0uY2DG9BKt7T/ZDgAWE82Waz
 RKhsJRWe6AWuyQ69tESA/tbcax8XcFXo7pni0WFczYaavAnXzGOAqAd1RfSBVxfzfXZkMfE
 itWtYWyd7d0fYBZBtuW0Q==
X-UI-Out-Filterresults: notjunk:1;V01:K0:2Y1ckG2wG+M=:a+CAtYL10wEYOf9Ma5UN/m
 kThc0JpfRL59vTIUXf4dBZikO/LByIwLqZ2dcliYw++xJdhrQb5VVc06tHnXf3+qdxodilv6t
 tzQ5JCIMIPxBbxQrL/ORMbESuh7GuYS5+gv/ldKNEeAwUyO7ZoZATZczxwsIGsmEc+CRGwmNd
 djeiY2Hk+0GyIM1jGSuQfvU53gaYYjxDSWGvcykuDirvlxcjTp6jEC2wGuyFuke1FdrP4LDKI
 To0G0pbFu6qIkGHjmjr87wcUoxEXnOhFECItzTllMgP9JWgzc+CWg8B8eljkvesgqvXy3zl04
 bDvciG+ciSSb6sm+v7k3eVdwnC7GcNecM65wWMVoWYFF6Bd+ZQ5kG/WLh6Any6X/D6SkKD2cL
 QYCTdpRj4mpc44O1vv6waB8v92/78WbleQHwn5L778n34hhb8uuDk4wSCGyNs8o/4rK9UYM8T
 DwWrYyJMuT8REOz7EGpJwwQW4g1eHr3ifUbjPrj1O4T7SIA7JaGg1+DghVP1iMtTD+e4KdwlW
 cWuCnDuHwUbPzsjWkHeao9Jyzi35WGgtNdy5LVtEMzxbMhyEl0Hn7uDuN1rsJq53/04qm5iDs
 ZNE6P/1yjqNTNrtCzMGX6ZahoV8zBJIuPjBdIbNAqEBakMYMsZrnlcCt18629z2SZY4AAbeKm
 H76DZJzmIYZ4wAs3lNeBOE1X9v9Ku3AUkeNzUKRXgtvJkrRp0lBTygU1/Mb4g9Xb9Zuzj6NTd
 DnNdfwgtyPU+jSV/

On Tuesday 29 September 2015 17:17:35 Ksenija Stanojevic wrote:
> struct timespec will overflow in year 2038, so replace it with
> timespec64. And replace functions that use struct timespec,
> timespec_sub with timespec64_sub and getnstimeofday with
> getnstimeofday64. Also use parameters to convert the timespec64 values
> instead of hard code.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>

The patch looks correct, and the changelog comment seems ok too.

However, I think it makes sense to do two other changes at the
same time here:

- use ktime_t with ktime_us_delta()/ktime_to_ns to simplify the
  code

- use monotonic time (ktime_get) instead of wall time
  (getnstimeofday64/ktime_get_real) to be more robust against
  leap seconds and settimeofday() calls

	Arnd

