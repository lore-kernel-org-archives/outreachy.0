X-GM-THRID: 6210130290572001280
X-Received: by 10.112.149.7 with SMTP id tw7mr842607lbb.10.1446674544514;
        Wed, 04 Nov 2015 14:02:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.9.149 with SMTP id 143ls1224720wmj.7.canary; Wed, 04 Nov
 2015 14:02:23 -0800 (PST)
X-Received: by 10.28.145.198 with SMTP id t189mr5154924wmd.5.1446674543809;
        Wed, 04 Nov 2015 14:02:23 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id g18si967444wmd.1.2015.11.04.14.02.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 14:02:23 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue003) with ESMTPSA (Nemesis) id 0LupZV-1acKx53gor-0102j3; Wed, 04 Nov
 2015 23:02:22 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Deepa Dinamani <deepa.kernel@gmail.com>, y2038@lists.linaro.org
Subject: Re: [Outreachy kernel] [PATCH v2] usb: misc: usbtest: Remove timeval usage
Date: Wed, 04 Nov 2015 23:02:22 +0100
Message-ID: <3914202.EJCPxKyaSg@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1445908614-20560-1-git-send-email-deepa.kernel@gmail.com>
References: <1445908614-20560-1-git-send-email-deepa.kernel@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:bNK3OE/G2qIjBGPHFq8cJYWWPZ8Js1X60CQoNmlKoBT4QYjsA8k
 4k/X6KVj5ksvOPVLxnPNeZjRRgpgsclZzJb+zVqTiAHLt9tPIY/k49zAdsTghnEg4CO6S4x
 aB0LX9ye7siZxvcIUO3v3k7jbC3krZ6RnBEh9ZJCsKYY3ch2NIMnx6nNYsG8Psm8HdhO91h
 oTUR6ox12oM45PleKKkBA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:MNHlwl22rvg=:0fXJ/9Fb5VB4e446YDevcg
 cFk85zBhM9UM0z0GQEoS+sZwywjJVHpqq5KO32eeG8JAA2ne5m4QlXWmeHxx4NjkBPv+D6cAo
 n0Z8RIAPIKQDGXDz0FvXY3SZ0lpQDPVlhRjTRnAT49TAz5jbYVC8IHRd4kObKUX7o8YXPAImk
 fOuHFgpDS/iDvIFcw/P5XFEmBP6W2FW1vKBG4aSSNEd0dtHUuECEpkWXh581ywQ2rtwpArbNK
 Hj5kOt818zJTnLoVRppfDTuxDwFBI/WH+L7tUaHAaqRrmzZaZQbsR3UB+8dqTV4aUF39ZDie0
 BifDMruIAVZXENXCMMUY2qOPcS4XKpfiuQxQ91rinOsFTNgIaNRl5ZHQCgdq1vmL9LfdVO44Q
 Xq9cjLINzXXNuDPEI6fmcjl3mX+7tfw2LxFc9MUQ5sDeq7EoVlG0DMJ2LM3pT8UcchbeZMksV
 hqdOzAxf4vrqxYYko69TTFTAeEOLYfPM5+tdmEVEMQWKAsTKwrWJVIdVPPPNIikbfhV14nZoe
 mIw0gSKk1eQHe7dd2kBlw2NE9wniXDxtn+qR51nF1n7q3CVofvJcH1PpwL+iK4Y2YsGy2riXD
 zs2sdQIftR2OPikIgDQ1JzGiePtI/h9WD9GkISbfmOfLpyxTj7OAI2xxhUlkDStWsSBJPVHVn
 Xk97QiYhh0ecA3omIcHIpnfvFNxc2r6xnGxIMRV/xBAkA43izKnSr7jiB0dWdUL4emNcXS0oI
 WC4rMVMR+XFJEw1S

On Monday 26 October 2015 18:16:54 Deepa Dinamani wrote:
> timeval is deprecated and not y2038 safe.  Its size also changes according
> to 32 bit/ 64 bit compilation.  Replace it with 32 and 64 bit versions of
> its individual fields, giving two ioctls with different code values.
> The two ioctls are necessary to maintain the 32 bit and 64 bit userspace
> compatibility with a 64/32 bit kernel.
> 
> Change unsigned to __u32 types for a definitive userspace interface.
> This is in accordance with the psABI that the unsigned type is always
> 32 bits.
> 
> Also use motonic timer instead of real time to ensure positive delta
> values.
> 
> Refactor usbtest_ioctl for readability to isolate the handling of the
> testing timing measurement.
> 
> The official testusb userspace tool can be changed in a separate patch
> to reflect the __u32 changes as well. It can use the usbtest_param_32
> struct, since 32 bit seconds is long enough for test durations.
> 
> Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>

Sorry for taking so long to reply. This looks really good, great work!

I have just one small comment, please address this and then send the
patch to the respective maintainers. Unfortunately, we are in a merge
window now, so it might not get picked up right away.

> +	getrawmonotonic64(&start);
> +
> +	retval = usbtest_do_ioctl(intf, param_32);
> +	if (retval)
> +		goto free_mutex;
> +
> +	getrawmonotonic64(&end);
> +
> +	duration = timespec64_sub(end, start);
> +
> +	temp.duration_sec = duration.tv_sec;
> +	temp.duration_usec = duration.tv_nsec/1000;

I would use ktime_get_ts64() instead of getrawmonotonic64(): We normally
don't want the 'raw' time in drivers but the normal monotonic time
that ktime_get_* uses.

One more small style comment: I would use NSECS_PER_USEC instead of
the open-coded '1000'.

	Arnd

