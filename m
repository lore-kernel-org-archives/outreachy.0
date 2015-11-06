X-GM-THRID: 6211311290389889024
X-Received: by 10.194.248.131 with SMTP id ym3mr2548462wjc.7.1446809911158;
        Fri, 06 Nov 2015 03:38:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.16.153 with SMTP id 25ls196567lfq.12.gmail; Fri, 06 Nov
 2015 03:38:30 -0800 (PST)
X-Received: by 10.112.134.129 with SMTP id pk1mr2534784lbb.24.1446809910510;
        Fri, 06 Nov 2015 03:38:30 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id t72si123778wme.0.2015.11.06.03.38.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Nov 2015 03:38:30 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue004) with ESMTPSA (Nemesis) id 0MhPzK-1a8T8Z0oMs-00Ma16; Fri, 06 Nov
 2015 12:38:29 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Alison Schofield <amsfield22@gmail.com>, y2038@lists.linaro.org
Subject: Re: [Outreachy kernel] [PATCH v2] scsi: pmcraid: replace struct timeval with ktime_get_real_seconds()
Date: Fri, 06 Nov 2015 12:38:28 +0100
Message-ID: <10620135.DZseZc1nu2@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1446754873-2737-1-git-send-email-amsfield22@gmail.com>
References: <20151030053949.GA9694@d830.WORKGROUP> <1446754873-2737-1-git-send-email-amsfield22@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:I6ZLyJuSPbGRIswgO+IzW2yMn3kCtNufYC264H/OnpA+hYlg0PF
 eCqIDrkvKv3Zp764YedxD5qD0JnKaucYbDdmwLHoPsKzm+rPLTgoIPuiiE00V1e0is3e/wr
 rN47W++pxbCIFdsfCc9jkEf6DV48Boj7i56Wn7rHQ8ZOWWUF55AQzZb8yJM5BlduNeOnhpa
 d9n70Yg1dVXXIQ9FjcBoQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:QL4fPckkGo0=:ZIfGFof16dJfn32KOXtKw8
 ePmyE/wBN6g0DtawS2QUgQx1GHutsTYOzSiQt1+BaIl+dzTmlrWzSp4w/QxoowaGtWfmOua5k
 txaRbqVDo7A9aC/5pf/CY6nxbGrPby59Xvqpw2wY95i+Y8XGjuqTUz5Euo/Pvw2i2rapzHitV
 15GIRIxi8CCdVAC+CRWKNfBE8+XqoZWqcwFNsdmyS4cM3Znj033gGjITsD4cgTLDSr9Aghugr
 YTfbdaw1oNYM9TTO3d1uh2geWJJ1ugTlT6wlJd47DOq77EepQSC0hJZ0XvRzM6Px/HSPLZZg5
 vbJcP9RpyKNIv2a4aUN84Z6/PaxiIzk3jT1cljO7gwjjntANOpNeqPtDiK0HPA2S3GKuOOlPO
 RyLFf0RHWFst5Cfymqp73ELzMgQkz3ZVfMamQbBp5O/rF3zFBpHjzZjsRACyy82Y8Yp2AfJ1m
 whJLwdTELTIoVTYacsa3Tm5a85hmLTDY1UegCO/pwHJULTs847sptA7WjoaOk4I3JZ2cbbe2v
 tDNvr7WZ3Gm/GpYKJb+/Kk1DZ4/yEqW+i1fGLrSm3+qPcsNgIksBbb89+Y/pue0LMThN+mifP
 k2Pah1V1D+tXTdpseeWiP9xbNxxnm02RunqrDj8yAW95Fl0p1JzBlpk1TmHD5i7Aqv2WWzbSC
 CMz8AD3MF0eXjOD6BB9upVGR/+aMWieQg+sPgar5KV3mqZWeC+96/+hDy0jaXBUIuWNTngMm1
 TqeCfUIbMrfaIATM

On Thursday 05 November 2015 12:21:13 Alison Schofield wrote:
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
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>

Very good. Please go on and post this to the maintainers now.

> ---
> 
> Changes in v2:
> * add pmcraid to subject line
> * update commit msg w additional detail
> * add alternative change proposal per reviewer feedback
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


I guess this text could be part of the patch description above the
'---' line, to keep it in the git history if anyone cares about this
later.

	Arnd

