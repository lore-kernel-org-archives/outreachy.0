X-GM-THRID: 6396079372840730624
X-Received: by 10.46.21.28 with SMTP id s28mr1833243ljd.14.1489223954297;
        Sat, 11 Mar 2017 01:19:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.22 with SMTP id 22ls1187686lja.32.gmail; Sat, 11 Mar 2017
 01:19:13 -0800 (PST)
X-Received: by 10.46.76.17 with SMTP id z17mr3915455lja.13.1489223953767;
        Sat, 11 Mar 2017 01:19:13 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id y19si202179wmd.0.2017.03.11.01.19.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 01:19:13 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id v2so8387749lfi.2
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 01:19:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=pF0KwGqnHdDCVSvaGkCRHyAsfTrXiFbVR06iLwCn10o=;
        b=iEv64bsQc8TC7y2otcbFCtCt+ViZOPABmf9ibqFR8a0/HmvtZbjxUB2XidS0t/ZZhJ
         sCzexg0gfH++Gko8a/XNrmc5r87KuwmE59S6HJJ/vs6/RN84vjUwjI+SdE1KqlkM1V4o
         /9EDnsxnkM+wmGUrhpO8wvMIjb5/bk/xMV8v9LXe9NdMHWCrpo+owezBo5R2XHThZQ5w
         Ro9y9C3pJ5dj9gpq6Roc/AnglxLJApHBmspxCdWh9P7k6ZrEHNx/OcLfwyuRmp/9tISd
         OxDh9ftBv14IiJ91Kbna8tGZOq/QpOaEskshNKPcUjfB6KBpdGgat6YIHMbB8UKAcMon
         ViCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=pF0KwGqnHdDCVSvaGkCRHyAsfTrXiFbVR06iLwCn10o=;
        b=BNm1KHtLDBnc0Th7TzCb4PKJWqq1QtJI4cC4EwqjJ8rdhv9mV5tZhYXC96TlTCRTp3
         i8SdNy6Nl9LbvNmZN0Lf8Isine5Ctou33QUXzZ7m4gs2LDmdtsZmIHR+p8h7kA+0FyKA
         l9k+EcIjuF+a+c4Ar2XsFR9ii5uUxbIlWVIXJAboXSAUEorJyPrIFviNgRNI2D8qGZzY
         bN1/O8VFSpL0XBT3DF5qV6t9XB2WGXdfVd/G4eISeqYRyq1/FkiwsASk2VvzGDpJTvRq
         vrMshzMjX35mQrPaeUIpoRUYOS4VcAx40LOXZMn4x/R4t8MLCFj3pBcLcF5tf5/mMq/b
         RMCg==
X-Gm-Message-State: AMke39nari+aHrqEtNJTmDndgV5Ai3m7zYTfknx5qKWOHTRYgoPytLUox5qu2Kr3TpbN5IqzRwCpbmHiRDdtVg==
X-Received: by 10.25.233.201 with SMTP id j70mr5944019lfk.20.1489223953507;
 Sat, 11 Mar 2017 01:19:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Sat, 11 Mar 2017 01:19:13 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1703110741530.2202@hadrien>
References: <1489203401-17518-1-git-send-email-singhalsimran0@gmail.com> <alpine.DEB.2.20.1703110741530.2202@hadrien>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Sat, 11 Mar 2017 14:49:13 +0530
Message-ID: <CALrZqyODTiF+gdwwYnmL1W1oi-R0u2rM4c40jb5iWXFxJpfdJw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 00/10] staging: iio: Remove exceptional
 & on functions name
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael.Hennerich@analog.com, 
	Jonathan Cameron <jic23@kernel.org>, knaack.h@gmx.de, Greg KH <gregkh@linuxfoundation.org>, 
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 11, 2017 at 12:12 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 11 Mar 2017, simran singhal wrote:
>
>> This patch-series removes exceptional & on functions name.
>
> The semantic patch shown does nothing to check that the use of & is
> exception in the given file.  It just removes all the & on function names.
>
yes, I used this semantic patch only for only finding the functions with &
and then I find out this drivers and use semantic patch for removing &.

> julia
>
>>
>> simran singhal (10):
>>   staging: iio: ad7192: Remove exceptional & on function name
>>   staging: iio: ad7780: Remove exceptional & on function name
>>   staging: iio: cdc: ad7746: Remove exceptional & on function name
>>   staging: iio: cdc: ad7152: Remove exceptional & on function name
>>   staging: iio: adis16240: Remove exceptional & on function name
>>   staging: iio: adis16201: Remove exceptional & on function name
>>   staging: iio: adis16209: Remove exceptional & on function name
>>   staging: iio: adis16203: Remove exceptional & on function name
>>   staging: iio: resolver: Remove exceptional & on function name
>>   staging: iio: gyro: Remove exceptional & on function name
>>
>>  drivers/staging/iio/accel/adis16201.c     |  4 ++--
>>  drivers/staging/iio/accel/adis16203.c     |  4 ++--
>>  drivers/staging/iio/accel/adis16209.c     |  4 ++--
>>  drivers/staging/iio/accel/adis16240.c     |  4 ++--
>>  drivers/staging/iio/adc/ad7192.c          | 12 ++++++------
>>  drivers/staging/iio/adc/ad7780.c          |  2 +-
>>  drivers/staging/iio/cdc/ad7152.c          |  6 +++---
>>  drivers/staging/iio/cdc/ad7746.c          |  4 ++--
>>  drivers/staging/iio/gyro/adis16060_core.c |  2 +-
>>  drivers/staging/iio/resolver/ad2s1200.c   |  2 +-
>>  drivers/staging/iio/resolver/ad2s90.c     |  2 +-
>>  11 files changed, 23 insertions(+), 23 deletions(-)
>>
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1489203401-17518-1-git-send-email-singhalsimran0%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

