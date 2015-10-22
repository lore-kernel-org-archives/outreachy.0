X-GM-THRID: 6208217817238470656
X-Received: by 10.180.210.71 with SMTP id ms7mr3759950wic.4.1445519861221;
        Thu, 22 Oct 2015 06:17:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.74 with SMTP id p10ls644437wia.13.gmail; Thu, 22 Oct
 2015 06:17:40 -0700 (PDT)
X-Received: by 10.180.210.71 with SMTP id ms7mr3759940wic.4.1445519860688;
        Thu, 22 Oct 2015 06:17:40 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id d7si504482wiy.2.2015.10.22.06.17.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 06:17:40 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue003) with ESMTPSA (Nemesis) id 0M9LBa-1ZfssO3VFe-00ClXS; Thu, 22 Oct
 2015 15:17:22 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
Cc: outreachy-kernel@googlegroups.com, Amitoj Kaur Chawla <amitoj1606@gmail.com>, linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org, y2038@lists.linaro.org
Subject: Re: [PATCH v2] firewire: Replace timeval with timespec64
Date: Thu, 22 Oct 2015 15:17:20 +0200
Message-ID: <8039151.bl38b7tgr4@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151022150750.37602576@kant>
References: <20151021223500.GA26701@amitoj-Inspiron-3542> <7551827.VsyUKdOpMQ@wuerfel> <20151022150750.37602576@kant>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:X2TIa0B52CjQZMLlNss3hdD0tmFwScE5xl9l39MD16VbaZuahRE
 EJC6uxSfxDCqiuu7YrXPRea0Y5GNOEQbQfw3oZKBhyNtNTgMTFIghC81b6SmfJ5PYirT2qq
 zFhrZ+OMJ+SxpxDd1lVFUgKpIAI2Z8i6TG0Q4HMxKW7MXh2rRG/z9gI4fFVPaplViQVC98R
 gUMWbRzVnT1AVi0obQiQQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:MNV1U/tGKj0=:hZlnJ64WStVzH0RFnTFA3Y
 pIRW/12Q53ZEMxLSX6vBJNIWulA+7odrSV/alZ8X4WBthZJtXRqz1igYL9/RQce5pQBelxEYk
 ZV5/XFf8m66itxkFViYl1Ss/87n+NA00dAAa3GT+6yUboK1Y9x9Y2fq4paoOn3SatWPtqIAm+
 0z53DD/eSWWdE+xMW5NFTddP1VS5c4blTiZPD6GqG9UAq33i2yEH0VSQAfszZCGKjCKYrIvPF
 PnYuaN5AW2A7VXF0HPymU3sBu23JU4zv0Pgif1hTQICkJW0dyta+6Z0t8X4Tl4d2KYjNVVFFL
 RFnB+lEpgze4Iq8dfEYhBPjkgszGNEE7oYTIgUqGKK+ShTS6OCey9EsiO5NAAl4akyaTjaKhb
 i9cz98dcbfpyARpuV61PS6bpbj1ytM95NX06YO/ru7icQomi8h0Jc6ylNZtoNQpLVYdGfxnzU
 OfIwCkbJMYCi8NpHVbd/NmiNNSq4/a2dmFcMIHTofFE/P0k8VeCExSldFuGUlpVB2TfeiHhit
 YGPnPmp0WF1WmYZrOTFwD1hcZEVZRgQ0XxzTMl1G95GahUVaB/XjEAMmWudqGLECXAA5pBKur
 ttsJUZhhs69K42xSpSEnAkj9St2s5kkcKzsy05wHaG80FGirisnRk1HZKdJpGWzW5J/cXl529
 6ScAIISfY8QR8vm8ySqrsVB2IUWrZJ9Uku1io90xk8TP7gZTmeOPMV9sfUoncmPQT2D8u9I1h
 2etbc2k7CehJKgh4

On Thursday 22 October 2015 15:07:50 Stefan Richter wrote:
> Looks fine to me, but I have a question.  It was possibly already
> discussed at patch v1, though that was apparently not posted to an open
> list.
> 
> include/linux/timekeeping.h says:
> #define ktime_get_real_ts64(ts) getnstimeofday64(ts)
> 
> kernel/time/timekeeping.c says:
> /**
>   * do_gettimeofday - Returns the time of day in a timeval
>   * @tv:         pointer to the timeval to be set
>   *
>   * NOTE: Users should be converted to using getnstimeofday()
>   */
> 
> So what is the reason for calling ktime_get_real_ts64() instead of
> getnstimeofday[64]()?

They are identical in behavior, I don't know exactly why we have two
but I'm advocating the move to ktime_* functions for consistency
with ktime_get_seconds(), ktime_get_ns() and ktime_get() that don't
have another alias. Once all users of the old getnstimeofday()
and do_gettimeofday() have been converted, I might change over all
users of getnstimeofday64() to ktime_get_real_ts64() and remove
all of the get*timeofday*() family.
 
> PS, note to self:
> Independently of this patch, I need to check whether CLOCK_REALTIME was
> really the right clock here, in contrast to CLOCK_MONOTONIC.

Yes, good idea. I usually recommend changing to montonic time
(ktime_get_ts64()) in the same patch, but in this particular case that
would have been a user-visible change that we should not mix in
to a single commit.

	Arnd

