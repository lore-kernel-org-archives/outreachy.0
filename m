X-GM-THRID: 6211311290389889024
X-Received: by 10.194.246.129 with SMTP id xw1mr5533813wjc.6.1447101213773;
        Mon, 09 Nov 2015 12:33:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.16.16 with SMTP id 16ls963536wmq.53.canary; Mon, 09 Nov
 2015 12:33:32 -0800 (PST)
X-Received: by 10.194.216.3 with SMTP id om3mr5530066wjc.1.1447101212651;
        Mon, 09 Nov 2015 12:33:32 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id g9si5076wmd.2.2015.11.09.12.33.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Nov 2015 12:33:32 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue005) with ESMTPSA (Nemesis) id 0MF8TX-1aBcRt2Uqx-00GKLi; Mon, 09 Nov
 2015 21:33:30 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Alison Schofield <amsfield22@gmail.com>, JBottomley@odin.com, outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: Re: [Y2038] [PATCH v3] scsi: pmcraid: replace struct timeval with ktime_get_real_seconds()
Date: Mon, 09 Nov 2015 21:33:29 +0100
Message-ID: <4181408.ziShjq4Q0D@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1447097660-3063-1-git-send-email-amsfield22@gmail.com>
References: <1447097660-3063-1-git-send-email-amsfield22@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:/+/C2qf15yxnZD4gvYcBoVBrxiKyCANE8Bepky8OqpKOckP0nhO
 r84+goukRoQ5Z/f9oCswJXpBkpe0zuz4ZxlfoDDEQHOjUKshS8oqBc8MjN48Vu9nAwDoPBV
 jzBo9yuFEhcOrS6DCUNfrvx36+A3NqmQkICKivwW6cQpxONiK7UoMIC2z6HzU01uaAEDpqu
 lVX1l2YQUgbQ20SD7rvuw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:QPfSJwbRgIQ=:putpz73opTZ6r/KheiDTv/
 3QLjf47o/9p2zsFLYoA+t97shinqiTmqDC4QfAuc1y65jAaMrT0E35rRRydpnm2qjzjoyEqYG
 NawH9ce722sbWQG+Wzwqex/nqEU76iKK5HXnlaX/+Guu0UJVWfAZKAhBhsZXeUiskPZIWzqx8
 8n+byTXr/F9zYu78QM0HPWTnRgyHJVYO+H8V4Q4JzPDbEBemukQalqWlK4IYMjrFLtINF2c7J
 SP2bcxNp0MOpQg0drlvxThMzX5hVAbB5nureYfFEX4YMSVmXYXtN7Evz4KkhxMWYkSPf7bPPR
 ePeIgN10S5zxL+02eP8NwkV6of9TBrIGNlQbusSQuqmAPW95HZiPSes/McRhRVF7byGNcGzNx
 1JDRh2bYcAGlwff8h9RaZcsnYG/5g6FcVpOgHOAIri/qRvTUGhHkpr0wqD5at309PzX6GZdhb
 T2kvnEfyEDu1uPgN+iE2HcpUEnFFQuTGmrvZ9cK8cg1ztVk6DjowrDMDBNdJLtT0+xXVcvppC
 2Yh+UuhO/EYCdFobVNGIjPV3OPLEtrd51539VO+TQrf63rUqZGCYI1DRbFOXwTvUjXwkTG00M
 ZkH3c0aHgmjJVfzhEw6gK47HJ+lAHi/kiezDr1AcI/HI/KRdxOCf+c0/yB+6FvbsgJ/9/3xud
 xk/irwPGVj8dzDKG2f9d1JozqRRyeUAylpzrik6yHM5a+nMqtGMC7iDrtZmkLDQdAGA43TCbN
 XiM1rfzfhHzD+zRi

On Monday 09 November 2015 11:34:20 Alison Schofield wrote:
> Replace the use of struct timeval and do_gettimeofday() with
> 64 bit ktime_get_real_seconds. Prevents 32-bit type overflow
> in year 2038 on 32-bit systems.
> 
> Driver was using the seconds portion of struct timeval (.tv_secs)
> to pass a millseconds timestamp to the firmware. This change maintains
> that same behavior using ktime_get_real_seconds.
> 
> The structure used to pass the timestamp to firmware is 48 bits and
> works fine as long as the top 16 bits are zero and they will be zero
> for a long time..ie. thousands of years.
> 
> Alternative Change:  Add sub second granularity to timestamp
> 
> As noted above, the driver only used the seconds portion of timeval,
> ignores the microseconds portion, and by multiplying by 1000 effectively
> does a <<10 and always writes zero into timestamp[0].
> 
> The alternative change would pass all the bits to the firmware:
> 
>         struct timespec64 ts;
> 
>         ktime_get_real_ts64(&ts);
>         timestamp = ts.tv_sec * MSEC_PER_SEC + ts.tv_nsec / NSEC_PER_MSEC;
> 
> MAINTAINER: Please request alternate change if preferred.
> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> 

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

just the last sentence of the changelog should probably go below the
"---" line as it is irrelevant in the git history if the patch gets
applied. James can probably remove that line manually when he applies
it, just remember this if you have to send a version 4 for another
reason.

	Arnd

