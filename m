X-GM-THRID: 6211311290389889024
X-Received: by 10.28.211.201 with SMTP id k192mr4064449wmg.3.1446596958471;
        Tue, 03 Nov 2015 16:29:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.6.65 with SMTP id 62ls990766wmg.26.canary; Tue, 03 Nov 2015
 16:29:18 -0800 (PST)
X-Received: by 10.28.170.75 with SMTP id t72mr1743wme.5.1446596958078;
        Tue, 03 Nov 2015 16:29:18 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id t72si733192wme.0.2015.11.03.16.29.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2015 16:29:18 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue005) with ESMTPSA (Nemesis) id 0LpRtB-1aPWGG0suj-00fC6q; Wed, 04 Nov
 2015 01:29:17 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Alison Schofield <amsfield22@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH] scsi: replace struct timeval with ktime_get_real_seconds()
Date: Wed, 04 Nov 2015 01:29:16 +0100
Message-ID: <4517379.Q0sjf8SHC3@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151030053949.GA9694@d830.WORKGROUP>
References: <20151030053949.GA9694@d830.WORKGROUP>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:M3RRxJqq01zTLVc2KRmycefmAE5Mpoa2ZuN48T/Qam8y9eTBUt2
 SM6HCfreIRLaEDRwXzXnkkRrh97Jl+c5WCsLjMp/5wITeqqXj6gsd3p1MFmC8KF3vvx8uvV
 s/Q469/FzSstxltKLEduiCul1wRRUCgGbjrqwfsh4vZyOdWKTzxf6Un3o+pHLuSmYWz+1m1
 wRJFpxI/kJh7OgyNB+XhQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:vxH8/8W1POU=:eu2CqtVoomOx1EM/iJU7Nu
 cIWllehkN4SAE2DyttwWB+PUDUEyGwPtPsBYr5IOpptq3gfopcfwPNg1qT5gmfo/1pt6Ph1EN
 y4Y5G3dfTx01yhYjSF0sC6EfpfsphMCQN/UefZVfhc3Z0CGldhmgK8VlKgnMcAMEPa5i/R/g4
 ndQqO6rp/MRpoPifrYUg4QtytYVVDdX1ZZJdK1EIUIPsl4e6mq6CLQFlaIgpW+sA48Vq5v6WG
 d7VPOrDsl1HXUtiSPZkDnEgyMJLEznEpTE4/NSCtdLTy0JlKnNIAfPc5yukoN3R8F4BQlRDxg
 SuKR8BysTowgwbepRGvAR9Cm1Q6ZbdNix+oDIXb2V857BqyW6W0ugPeIzxurLQDEOb1ITsoh+
 414CcUWlZfqXM59VT819dwif4xqygsh3YHbifw+7h3FWA4vA9QrFO/Bdk4JI1IPAml+yAKIzL
 DGyDtwUBeFDH859ThP6P1Rebj4JhRm5g4ObnqpFrhgVkZoGUAJXmOE+nwAyLMmPhgHi+jaUas
 4P6ltkDj7yrNVi4m9bq6Bb6M8bu6g5Yr7abpUP1H5NlVs+wuewYIfNR6DxwGeMao695sgHEax
 fumUTqGSwKrbfarIvLNxFuj91Dn8Zd26intXKsvVZK6triJNTUx9eWmEgXHo7z2nS8PCzufBc
 pU19taxOuBPdNIK8IIOmOCDCtAMZUyeuFqhP+pSgPwqcV1fmyn4xmNWP0UisBGD2c3DC/scan
 aJjX8icbto58shcJ

On Thursday 29 October 2015 22:40:03 Alison Schofield wrote:
> Replace the use of struct timeval and do_gettimeofday() with
> 64 bit ktime_get_real_seconds. Prevents 32-bit type overflow
> in year 2038 on 32-bit systems.
> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>

In the subject line, please be more specific and name the driver, not just
the subsystem.

The patch looks correct, but it would be nice to explain in the
changelog how the time is used here (it gets passed to the firmware
as 64-bit milliseconds).

> @@ -45,6 +45,7 @@
>  #include <asm/processor.h>
>  #include <linux/libata.h>
>  #include <linux/mutex.h>
> +#include <linux/ktime.h>
>  #include <scsi/scsi.h>
>  #include <scsi/scsi_host.h>
>  #include <scsi/scsi_device.h>
> @@ -5563,11 +5564,9 @@ static void pmcraid_set_timestamp(struct pmcraid_cmd *cmd)
>  	__be32 time_stamp_len = cpu_to_be32(PMCRAID_TIMESTAMP_LEN);
>  	struct pmcraid_ioadl_desc *ioadl = ioarcb->add_data.u.ioadl;
>  
> -	struct timeval tv;
>  	__le64 timestamp;
>  
> -	do_gettimeofday(&tv);
> -	timestamp = tv.tv_sec * 1000;
> +	timestamp = ktime_get_real_seconds() * 1000;
>  

This is a nice simplification on top of the fix.

I see that the driver for some reason leaves the sub-second portion of
the 64-bit milliseconds as zero, which is a bit odd. Did you notice that
too?

What I'd do in a case like this is to list in the changelog an alternative
approach, so the maintainer can decide whether to apply the patch as-is or
to ask for the alternative. The other approach would be to fix the
milliseconds as well and do:

	struct timespec64 ts;

	ktime_get_real_ts64(&ts);
	timestamp = ts.tv_sec * MSEC_PER_SEC + ts.tv_nsec / NSEC_PER_MSEC;
	

	Arnd

