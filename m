X-GM-THRID: 6202672545102036992
X-Received: by 10.112.173.136 with SMTP id bk8mr1181542lbc.20.1444850163621;
        Wed, 14 Oct 2015 12:16:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.88.103 with SMTP id s94ls443073qgd.75.gmail; Wed, 14 Oct
 2015 12:16:02 -0700 (PDT)
X-Received: by 10.31.15.16 with SMTP id 16mr4074696vkp.0.1444850162767;
        Wed, 14 Oct 2015 12:16:02 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x22c.google.com (mail-yk0-x22c.google.com. [2607:f8b0:4002:c07::22c])
        by gmr-mx.google.com with ESMTPS id d207si660497ywb.4.2015.10.14.12.16.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 12:16:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::22c as permitted sender) client-ip=2607:f8b0:4002:c07::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::22c as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x22c.google.com with SMTP id o7so56998183yko.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 12:16:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=POQ+0081Ag4EdBtlOQXTYut6iUpqlvb1D169NBArrGQ=;
        b=rcU/3HgfGrpNYbWO6Lk9eE424uOQS/7ntlx1ucaxyW3bM+SpHgZCLGo/L/w1SxzQwF
         x68Nupy/XszGAWGsrBmmA/EMLiB8JYZfU3wxCPv1+1nuWGmI6BmeeRLDgJXOPJtRGVG3
         ykgtcaYAcRcvV6abQoEBtA4UTgiqo0V0qkcpMgnaxQ3NrprkuiIcCyH6BXvfHuLPnT1e
         jjrYopzfCrHnyyhKfXTXSKaoVo2sqv6X2u6wY95nDsqsP+nszVjnMU7ArRTkvO2GH7hj
         WXhDrXWkJFZ30eZMZ7FJc0QOMlzW0wrXRSM3AnHxZMUo1XMLLdVaghs9tqq18/UTJdBj
         SAPg==
MIME-Version: 1.0
X-Received: by 10.129.154.141 with SMTP id r135mr3466744ywg.195.1444850162628;
 Wed, 14 Oct 2015 12:16:02 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Wed, 14 Oct 2015 12:16:02 -0700 (PDT)
In-Reply-To: <CAEnQRZDE-qxLfhzjSymEmCW09Qprqca5ZeW6HvB_7==ioOpViQ@mail.gmail.com>
References: <cover.1444845354.git.ciorneiioana@gmail.com>
	<b0696c7845ebe157a07b0303e46832752b309574.1444845354.git.ciorneiioana@gmail.com>
	<CAEnQRZDE-qxLfhzjSymEmCW09Qprqca5ZeW6HvB_7==ioOpViQ@mail.gmail.com>
Date: Wed, 14 Oct 2015 22:16:02 +0300
Message-ID: <CAHWJYFkoa7ZSjoKdsCCQZN6iXC=2_Z7wjhaTKxNA+1qn3n2f2g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4 9/9] staging: iio: adc: properly
 indent block comments
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 10:13 PM, Daniel Baluta <daniel.baluta@gmail.com> wrote:
> On Wed, Oct 14, 2015 at 9:14 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
>> Rework block comments in order to follow
>> kernel coding style
>>
>> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>> ---
>> Changes in v2:
>>     - nothing
>> Changes in v3:
>>     - nothing
>> Changes in v4:
>>     - move comment block above the macro def and not inline with it
>>
>>  drivers/staging/iio/adc/ad7192.c | 35 +++++++++++++++++++++++++----------
>>  1 file changed, 25 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
>> index bb76096..bb58fda 100644
>> --- a/drivers/staging/iio/adc/ad7192.c
>> +++ b/drivers/staging/iio/adc/ad7192.c
>> @@ -35,10 +35,16 @@
>>  #define AD7192_REG_DATA                3 /* Data Register           (RO, 24/32-bit) */
>>  #define AD7192_REG_ID          4 /* ID Register             (RO, 8-bit) */
>>  #define AD7192_REG_GPOCON      5 /* GPOCON Register         (RO, 8-bit) */
>> -#define AD7192_REG_OFFSET      6 /* Offset Register         (RW, 16-bit
>> -                                  * (AD7792)/24-bit (AD7192)) */
>> -#define AD7192_REG_FULLSALE    7 /* Full-Scale Register
>> -                                  * (RW, 16-bit (AD7792)/24-bit (AD7192)) */
>> +/*
>> + * Offset Register          (RW, 16-bit
>> + * (AD7792)/24-bit (AD7192))
>> + */
>> +#define AD7192_REG_OFFSET      6
>> +/*
>> + * Full-Scale Register
>> + * (RW, 16-bit (AD7792)/24-bit (AD7192))
>> + */
>> +#define AD7192_REG_FULLSALE    7
>>
>>  /* Communications Register Bit Designations (AD7192_REG_COMM) */
>>  #define AD7192_COMM_WEN                BIT(7) /* Write Enable */
>> @@ -80,13 +86,22 @@
>>  #define AD7192_MODE_CAL_SYS_FULL       7 /* System Full-Scale Calibration */
>>
>>  /* Mode Register: AD7192_MODE_CLKSRC options */
>> -#define AD7192_CLK_EXT_MCLK1_2         0 /* External 4.92 MHz Clock connected
>> -                                          * from MCLK1 to MCLK2 */
>> +/*
>> + * External 4.92 MHz Clock connected
>> + * from MCLK1 to MCLK2
>> + */
>> +#define AD7192_CLK_EXT_MCLK1_2         0
>>  #define AD7192_CLK_EXT_MCLK2           1 /* External Clock applied to MCLK2 */
>> -#define AD7192_CLK_INT                 2 /* Internal 4.92 MHz Clock not
>> -                                          * available at the MCLK2 pin */
>> -#define AD7192_CLK_INT_CO              3 /* Internal 4.92 MHz Clock available
>> -                                          * at the MCLK2 pin */
>> +/*
>> + * Internal 4.92 MHz Clock not
>> + * available at the MCLK2 pin
>> + */
>> +#define AD7192_CLK_INT                 2
>> +/*
>> + * Internal 4.92 MHz Clock available
>> + * at the MCLK2 pin
>> + */
>> +#define AD7192_CLK_INT_CO              3
>>
>>  /* Configuration Register Bit Designations (AD7192_REG_CONF) */
>>
>
> Comments here can be placed on a single line. Since this is the last patch
> in the series, it's safe to resend it alone after Greg applies all other patches
> from this patchseries.

Ok, will do.

Thanks,

Ioana

