X-GM-THRID: 6200499301082202112
X-Received: by 10.50.82.98 with SMTP id h2mr936021igy.1.1443673820284;
        Wed, 30 Sep 2015 21:30:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.230.197 with SMTP id ta5ls336762obc.95.gmail; Wed, 30 Sep
 2015 21:30:20 -0700 (PDT)
X-Received: by 10.182.106.11 with SMTP id gq11mr6400997obb.25.1443673819982;
        Wed, 30 Sep 2015 21:30:19 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id uv4si751206pac.0.2015.09.30.21.30.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 21:30:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id ex6so61571581pac.0
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 21:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=WEApYnQJkL9PIxg1vNj+/6J0no9h6Wxr7sivT1xCGzU=;
        b=G7eAyVW0jy65fM+b44RgNhm2zEYVAPsD3GgC6Av8mxfFsd/ZLzhZIor2i5x8U4j2oQ
         RZGXvg8+RUqLZJmki6Mb6BsnUgnV3wnEnGwTjDeFijSssMewTBnBB0iSvtW3TpVym9U1
         96eUVIZikw2EmrC1USKoqlfLObdMLielUrb0akoe9hV2jeX5e3t1n+HIp750RABVOutJ
         gTIL6J8TWn2f3bCPhTcNfmKdLkHVqKP2Expl/SosYCr4imfDph93PH+VSBwiPQAnq+Fk
         DlYbF8u/h3mvbTE4wSR8+VRsmm2p4aHWF/B/9n68Hcr5H11rd6bP36MUsuiMz7oZ++3G
         MAGw==
X-Received: by 10.68.114.196 with SMTP id ji4mr9514246pbb.46.1443673819793;
        Wed, 30 Sep 2015 21:30:19 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.30.0.216] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id uq5sm3175174pac.19.2015.09.30.21.30.16
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 30 Sep 2015 21:30:19 -0700 (PDT)
Date: Thu, 1 Oct 2015 10:00:06 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Vaishali Thakkar <vthakkar1994@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: iio: cdc: Use BIT and
 GENMASK macro
In-Reply-To: <CAK-LDbKWAOyYt_da2R7r-hyeR-Bmq=NiQXps8f9D6xUjdw2VYA@mail.gmail.com>
Message-ID: <alpine.DEB.2.11.1510010957360.9108@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1443666230-8999-1-git-send-email-shraddha.6596@gmail.com> <CAK-LDbKWAOyYt_da2R7r-hyeR-Bmq=NiQXps8f9D6xUjdw2VYA@mail.gmail.com>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.560CB6DA.0112,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  



On Thu, 1 Oct 2015, Vaishali Thakkar wrote:

> On Thu, Oct 1, 2015 at 7:53 AM, Shraddha Barke <shraddha.6596@gmail.com> wrote:
>> Use BIT()/GENMASK() macros for all register definitions instead of
>> hand-writing bit masks.
>
> Hi Shraddha,
>
> I think this should come as a patch series as you are replacing things with
> two different macros. You can go for one patch to replace all cases with
> BIT macro and another one to handle cases where you can use

Thanks Vaishali .Can I handle cases of BIT macro in multiple files in a
single patch?

Shraddha

> GENMASK macro.
>
> Thanks
>
>> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
>> ---
>> Changes in v2-
>>  Used GENMASK macro; covered more cases of BIT macro and updated
>>  commit message
>>
>>  drivers/staging/iio/cdc/ad7746.c | 52 ++++++++++++++++++++--------------------
>>  1 file changed, 26 insertions(+), 26 deletions(-)
>>
>> diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
>> index 10fa372..a8049ef 100644
>> --- a/drivers/staging/iio/cdc/ad7746.c
>> +++ b/drivers/staging/iio/cdc/ad7746.c
>> @@ -52,42 +52,42 @@
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
>> -#define AD7746_VTSETUP_VTEN            (1 << 7)
>> -#define AD7746_VTSETUP_VTMD_INT_TEMP   (0 << 5)
>> -#define AD7746_VTSETUP_VTMD_EXT_TEMP   (1 << 5)
>> -#define AD7746_VTSETUP_VTMD_VDD_MON    (2 << 5)
>> -#define AD7746_VTSETUP_VTMD_EXT_VIN    (3 << 5)
>> -#define AD7746_VTSETUP_EXTREF          (1 << 4)
>> -#define AD7746_VTSETUP_VTSHORT         (1 << 1)
>> -#define AD7746_VTSETUP_VTCHOP          (1 << 0)
>> +#define AD7746_VTSETUP_VTEN            BIT(7)
>> +#define AD7746_VTSETUP_VTMD_INT_TEMP   0
>> +#define AD7746_VTSETUP_VTMD_EXT_TEMP   BIT(5)
>> +#define AD7746_VTSETUP_VTMD_VDD_MON    GENMASK(6, 0)
>> +#define AD7746_VTSETUP_VTMD_EXT_VIN    GENMASK(6, 5)
>> +#define AD7746_VTSETUP_EXTREF          BIT(4)
>> +#define AD7746_VTSETUP_VTSHORT         BIT(1)
>> +#define AD7746_VTSETUP_VTCHOP          BIT(0)
>>
>>  /* Excitation Setup Register Bit Designations (AD7746_REG_EXC_SETUP) */
>> -#define AD7746_EXCSETUP_CLKCTRL                (1 << 7)
>> -#define AD7746_EXCSETUP_EXCON          (1 << 6)
>> -#define AD7746_EXCSETUP_EXCB           (1 << 5)
>> -#define AD7746_EXCSETUP_NEXCB          (1 << 4)
>> -#define AD7746_EXCSETUP_EXCA           (1 << 3)
>> -#define AD7746_EXCSETUP_NEXCA          (1 << 2)
>> -#define AD7746_EXCSETUP_EXCLVL(x)      (((x) & 0x3) << 0)
>> +#define AD7746_EXCSETUP_CLKCTRL                BIT(7)
>> +#define AD7746_EXCSETUP_EXCON          BIT(6)
>> +#define AD7746_EXCSETUP_EXCB           BIT(5)
>> +#define AD7746_EXCSETUP_NEXCB          BIT(4)
>> +#define AD7746_EXCSETUP_EXCA           BIT(3)
>> +#define AD7746_EXCSETUP_NEXCA          BIT(2)
>> +#define AD7746_EXCSETUP_EXCLVL(x)      GENMASK(((x) & 0x3), 0)
>>
>>  /* Config Register Bit Designations (AD7746_REG_CFG) */
>>  #define AD7746_CONF_VTFS(x)            ((x) << 6)
>>  #define AD7746_CONF_CAPFS(x)           ((x) << 3)
>> -#define AD7746_CONF_MODE_IDLE          (0 << 0)
>> -#define AD7746_CONF_MODE_CONT_CONV     (1 << 0)
>> -#define AD7746_CONF_MODE_SINGLE_CONV   (2 << 0)
>> -#define AD7746_CONF_MODE_PWRDN         (3 << 0)
>> -#define AD7746_CONF_MODE_OFFS_CAL      (5 << 0)
>> -#define AD7746_CONF_MODE_GAIN_CAL      (6 << 0)
>> +#define AD7746_CONF_MODE_IDLE          0
>> +#define AD7746_CONF_MODE_CONT_CONV     GENMASK(1, 0)
>> +#define AD7746_CONF_MODE_SINGLE_CONV   GENMASK(2, 0)
>> +#define AD7746_CONF_MODE_PWRDN         GENMASK(3, 0)
>> +#define AD7746_CONF_MODE_OFFS_CAL      GENMASK(5, 0)
>> +#define AD7746_CONF_MODE_GAIN_CAL      GENMASK(6, 0)
>>
>>  /* CAPDAC Register Bit Designations (AD7746_REG_CAPDACx) */
>> -#define AD7746_CAPDAC_DACEN            (1 << 7)
>> +#define AD7746_CAPDAC_DACEN            BIT(7)
>>  #define AD7746_CAPDAC_DACP(x)          ((x) & 0x7F)
>>
>>  /*
>> --
>> 2.1.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443666230-8999-1-git-send-email-shraddha.6596%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>
>
>
> -- 
> Vaishali
>

