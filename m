X-GM-THRID: 6200307025703862272
X-Received: by 10.129.85.149 with SMTP id j143mr3543503ywb.31.1443624806329;
        Wed, 30 Sep 2015 07:53:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.28.138 with SMTP id 10ls365348qgz.51.gmail; Wed, 30 Sep
 2015 07:53:25 -0700 (PDT)
X-Received: by 10.129.33.86 with SMTP id h83mr3427525ywh.29.1443624805762;
        Wed, 30 Sep 2015 07:53:25 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id wl2si149161pab.1.2015.09.30.07.53.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 07:53:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id ex6so42819930pac.0
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 07:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=c1Xat9hQ2Y1BrFpTt+7LFRji1DCI84qMqIvcF7JyXzg=;
        b=p0jvzqgS2D0DcTKOliNdxoI2rFXzbSneREa7Q27QAUA31TIWHE/icWWfm4ibDh6KEW
         8i/4fAxdOB4ptwX7EYRnrrejDBC1Md41OiZiQr78YbGM23DmcFGT9jdu8p5HZUcbFHZ6
         toejy70JeX0y0geLNuhX3/o+3zuoO6X8Iie2yp51UWoBCC74Gqazp81oQdsSMIr1YlRK
         e9qWTyTD7IGWCOViWeylZTZJizWZMRZcwoyGt0tv9kxDh2NRWCfRuZL34XgxbPS1n+00
         uXS4VyHIWiafe5i0ZJO/eeIRo10lWc+01FNj50mipuiS1gMy3NWs92R4sRM2LU/ooKFh
         hReA==
X-Received: by 10.66.55.66 with SMTP id q2mr5435618pap.89.1443624805288;
        Wed, 30 Sep 2015 07:53:25 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.30.0.216] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id j16sm1212360pbq.23.2015.09.30.07.53.21
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 30 Sep 2015 07:53:24 -0700 (PDT)
Date: Wed, 30 Sep 2015 20:23:18 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Daniel Baluta <daniel.baluta@gmail.com>
cc: Shraddha Barke <shraddha.6596@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: cdc: Prefer using the
 BIT macro
In-Reply-To: <CAEnQRZCiMU-Wq0NfBv=-7mhk-xYOzEpNmOfRTO+vOswROW7koA@mail.gmail.com>
Message-ID: <alpine.DEB.2.11.1509302020260.9256@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1443621463-8343-1-git-send-email-shraddha.6596@gmail.com> <CAEnQRZAUL-V5o0rRocz7vNRyrkumahJRGwb-48phBAH53sWW3A@mail.gmail.com> <alpine.DEB.2.11.1509301941230.9256@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
 <CAEnQRZCiMU-Wq0NfBv=-7mhk-xYOzEpNmOfRTO+vOswROW7koA@mail.gmail.com>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150208.560BF763.0166,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  



On Wed, 30 Sep 2015, Daniel Baluta wrote:

> On Wed, Sep 30, 2015 at 5:15 PM, Shraddha Barke <shraddha.6596@gmail.com> wrote:
>>
>>
>> On Wed, 30 Sep 2015, Daniel Baluta wrote:
>>
>>> On Wed, Sep 30, 2015 at 4:57 PM, Shraddha Barke <shraddha.6596@gmail.com>
>>> wrote:
>>>>
>>>> Replace bit shifting on 1 with the BIT(x) macro
>>>>
>>>> This was done with coccinelle:
>>>> @@ int g; @@
>>>>
>>>> -(1 << g)
>>>> +BIT(g)
>>>>
>>>> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
>>>> ---
>>>>  drivers/staging/iio/cdc/ad7746.c | 8 ++++----
>>>>  1 file changed, 4 insertions(+), 4 deletions(-)
>>>>
>>>> diff --git a/drivers/staging/iio/cdc/ad7746.c
>>>> b/drivers/staging/iio/cdc/ad7746.c
>>>> index 10fa372..aa97437 100644
>>>> --- a/drivers/staging/iio/cdc/ad7746.c
>>>> +++ b/drivers/staging/iio/cdc/ad7746.c
>>>> @@ -52,10 +52,10 @@
>>>>  #define AD7746_STATUS_RDYCAP           BIT(0)
>>>>
>>>>  /* Capacitive Channel Setup Register Bit Designations
>>>> (AD7746_REG_CAP_SETUP) */
>>>> -#define AD7746_CAPSETUP_CAPEN          (1 << 7)
>>>> -#define AD7746_CAPSETUP_CIN2           (1 << 6) /* AD7746 only */
>>>> -#define AD7746_CAPSETUP_CAPDIFF                (1 << 5)
>>>> -#define AD7746_CAPSETUP_CACHOP         (1 << 0)
>>>> +#define AD7746_CAPSETUP_CAPEN          BIT(7)
>>>> +#define AD7746_CAPSETUP_CIN2           BIT(6) /* AD7746 only */
>>>> +#define AD7746_CAPSETUP_CAPDIFF                BIT(5)
>>>> +#define AD7746_CAPSETUP_CACHOP         BIT(0)
>>>>
>>>>  /* Voltage/Temperature Setup Register Bit Designations
>>>> (AD7746_REG_VT_SETUP) */
>>>>  #define AD7746_VTSETUP_VTEN            (1 << 7)
>>>
>>>
>>> What about this? It's preferred to fix all issues of the same type in
>>> a single patch.
>>
>>
>> These are instances of mixed cases of BIT macro. Wouldn't it be better to
>> leave them as is ?
>> Should I change them ?
>
> Hmm, isn't
>
> #define AD7746_VTSETUP_VTEN            (1 << 7)
>
> the same as the macros you've fixed?
>
Yes it is. What I meant was it is a part of this bunch-

/* Voltage/Temperature Setup Register Bit Designations 
(AD7746_REG_VT_SETUP) */
#define AD7746_VTSETUP_VTEN		(1 << 7)
#define AD7746_VTSETUP_VTMD_INT_TEMP	(0 << 5)
#define AD7746_VTSETUP_VTMD_EXT_TEMP	(1 << 5)
#define AD7746_VTSETUP_VTMD_VDD_MON	(2 << 5)
#define AD7746_VTSETUP_VTMD_EXT_VIN	(3 << 5)
#define AD7746_VTSETUP_EXTREF		(1 << 4)
#define AD7746_VTSETUP_VTSHORT		(1 << 1)
#define AD7746_VTSETUP_VTCHOP		(1 << 0)

so I won't be able to replace all of them by BIT(x).

Shraddha

