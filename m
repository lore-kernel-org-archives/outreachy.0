X-GM-THRID: 6200307025703862272
X-Received: by 10.66.124.131 with SMTP id mi3mr3463709pab.32.1443622524190;
        Wed, 30 Sep 2015 07:15:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.71.77 with SMTP id s13ls206511obu.26.gmail; Wed, 30 Sep
 2015 07:15:23 -0700 (PDT)
X-Received: by 10.182.106.228 with SMTP id gx4mr3333647obb.34.1443622523740;
        Wed, 30 Sep 2015 07:15:23 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id pe1si99127pac.2.2015.09.30.07.15.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 07:15:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id lk4so41583062pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 07:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=vl3Ydt7C8e3f8KR5F17P/WIsnBfbKmGstk8CETkkTyY=;
        b=BE27KT+uJiH+66r/qUHoFQYMTsJ8hLYO0pGQ3KZnnAcKzPCGbjsRIlpz/Suirtny7s
         69489uZ5x42LPWAI3vjRHA470d8dqZfrNuZ896FEnN4H9XFEloCpihIpUuZXW6BxreHL
         RNPekbnZgAVs2tZmx4AxeiCGE/54Efxed+1MMmwUz340kpHpVKKGF2uvz6WgfwrlKl1C
         a5vleyI9yfFarFMT31O5UfWcGZW6VDBTU3lraeZFrrU2CdkB4RVgqq+0NYuy9ZFh1+NZ
         Llsq5jncHo1/2RJ2Sk20AxMA6rz7GCOSr061ChvjOK4KB2dHWpntfLr/aXiogYgRGQLl
         Ccig==
X-Received: by 10.66.141.165 with SMTP id rp5mr5176841pab.127.1443622523593;
        Wed, 30 Sep 2015 07:15:23 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.30.0.216] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id rs8sm1052688pbb.14.2015.09.30.07.15.19
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 30 Sep 2015 07:15:22 -0700 (PDT)
Date: Wed, 30 Sep 2015 19:45:11 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Daniel Baluta <daniel.baluta@gmail.com>
cc: Shraddha Barke <shraddha.6596@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: cdc: Prefer using the
 BIT macro
In-Reply-To: <CAEnQRZAUL-V5o0rRocz7vNRyrkumahJRGwb-48phBAH53sWW3A@mail.gmail.com>
Message-ID: <alpine.DEB.2.11.1509301941230.9256@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1443621463-8343-1-git-send-email-shraddha.6596@gmail.com> <CAEnQRZAUL-V5o0rRocz7vNRyrkumahJRGwb-48phBAH53sWW3A@mail.gmail.com>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.560BEE7A.006A,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  



On Wed, 30 Sep 2015, Daniel Baluta wrote:

> On Wed, Sep 30, 2015 at 4:57 PM, Shraddha Barke <shraddha.6596@gmail.com> wrote:
>> Replace bit shifting on 1 with the BIT(x) macro
>>
>> This was done with coccinelle:
>> @@ int g; @@
>>
>> -(1 << g)
>> +BIT(g)
>>
>> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
>> ---
>>  drivers/staging/iio/cdc/ad7746.c | 8 ++++----
>>  1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
>> index 10fa372..aa97437 100644
>> --- a/drivers/staging/iio/cdc/ad7746.c
>> +++ b/drivers/staging/iio/cdc/ad7746.c
>> @@ -52,10 +52,10 @@
>>  #define AD7746_STATUS_RDYCAP           BIT(0)
>>
>>  /* Capacitive Channel Setup Register Bit Designations (AD7746_REG_CAP_SETUP) */
>> -#define AD7746_CAPSETUP_CAPEN          (1 << 7)
>> -#define AD7746_CAPSETUP_CIN2           (1 << 6) /* AD7746 only */
>> -#define AD7746_CAPSETUP_CAPDIFF                (1 << 5)
>> -#define AD7746_CAPSETUP_CACHOP         (1 << 0)
>> +#define AD7746_CAPSETUP_CAPEN          BIT(7)
>> +#define AD7746_CAPSETUP_CIN2           BIT(6) /* AD7746 only */
>> +#define AD7746_CAPSETUP_CAPDIFF                BIT(5)
>> +#define AD7746_CAPSETUP_CACHOP         BIT(0)
>>
>>  /* Voltage/Temperature Setup Register Bit Designations (AD7746_REG_VT_SETUP) */
>>  #define AD7746_VTSETUP_VTEN            (1 << 7)
>
> What about this? It's preferred to fix all issues of the same type in
> a single patch.

These are instances of mixed cases of BIT macro. Wouldn't it be better to
leave them as is ?
Should I change them ?

Shraddha
>
> thanks,
> Daniel.
>

