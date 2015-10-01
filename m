X-GM-THRID: 6200499301082202112
X-Received: by 10.67.23.163 with SMTP id ib3mr7021747pad.45.1443687405478;
        Thu, 01 Oct 2015 01:16:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.23.70 with SMTP id k6ls145178igf.22.canary; Thu, 01 Oct
 2015 01:16:45 -0700 (PDT)
X-Received: by 10.50.79.201 with SMTP id l9mr1570012igx.13.1443687405187;
        Thu, 01 Oct 2015 01:16:45 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id uv4si857873pac.0.2015.10.01.01.16.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 01:16:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id ex6so67687409pac.0
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 01:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=Nm/e8qAjnDiJDmWtCpfuFhX47aqQxP2CU7BwfbPYfHE=;
        b=NWXQFY48w7Ckxr3qxSuJQA91Gaur/APqvmF1UtJER2z3kxyZ+XuyBIr20rD98RuDOi
         Ug3Cg0Cd8AtXdQCtAaxZbZKUpnyueuBqbY10nLR5HtoSRrFIvoujPBGNGgyOCWYKdPLH
         ODM9BC3NDss8BofXfvOGlEM+ysWVH71LIh7WI/AdMa0OCEhdg6z5LaYBIOu5HRABpUI3
         1KeixYF2MJAYccQTyvRkAFA1sbjwnklHDSoIwrmrWuI9614XP7ouHjllwocRjXTgsZVQ
         I0liQ/hEuIKCzanrewJZIwbBVqphoBjwM0VkkVSkD/nBDLkDYzrOlRGon5bmxvQ1koZJ
         GcSA==
X-Received: by 10.68.219.194 with SMTP id pq2mr10400278pbc.20.1443687405053;
        Thu, 01 Oct 2015 01:16:45 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.30.0.216] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id tj2sm5059818pab.4.2015.10.01.01.16.39
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 01:16:44 -0700 (PDT)
Date: Thu, 1 Oct 2015 13:46:37 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Julia Lawall <julia.lawall@lip6.fr>
cc: Shraddha Barke <shraddha.6596@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: iio: cdc: Use BIT and
 GENMASK macro
In-Reply-To: <alpine.DEB.2.10.1510010957040.2765@hadrien>
Message-ID: <alpine.DEB.2.11.1510011342130.9108@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1443666230-8999-1-git-send-email-shraddha.6596@gmail.com> <alpine.DEB.2.10.1510010957040.2765@hadrien>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150205.560CEBEB.01B9,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  



On Thu, 1 Oct 2015, Julia Lawall wrote:

>
>
> On Thu, 1 Oct 2015, Shraddha Barke wrote:
>
>> Use BIT()/GENMASK() macros for all register definitions instead of
>> hand-writing bit masks.
>
> It would be nice to fix the alignment at various palaces as well.

Hello Julia,
  Yes I know it looks messy. But I'm not able to figure out how I should 
fix this alignment issue. I have faced this problem while sending patches
before as well. I use git-send-email for sending patches.

Shraddha.

>
> julia
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
>>  #define AD7746_STATUS_RDYCAP		BIT(0)
>>
>>  /* Capacitive Channel Setup Register Bit Designations (AD7746_REG_CAP_SETUP) */
>> -#define AD7746_CAPSETUP_CAPEN		(1 << 7)
>> -#define AD7746_CAPSETUP_CIN2		(1 << 6) /* AD7746 only */
>> -#define AD7746_CAPSETUP_CAPDIFF		(1 << 5)
>> -#define AD7746_CAPSETUP_CACHOP		(1 << 0)
>> +#define AD7746_CAPSETUP_CAPEN		BIT(7)
>> +#define AD7746_CAPSETUP_CIN2		BIT(6) /* AD7746 only */
>> +#define AD7746_CAPSETUP_CAPDIFF		BIT(5)
>> +#define AD7746_CAPSETUP_CACHOP		BIT(0)
>>
>>  /* Voltage/Temperature Setup Register Bit Designations (AD7746_REG_VT_SETUP) */
>> -#define AD7746_VTSETUP_VTEN		(1 << 7)
>> -#define AD7746_VTSETUP_VTMD_INT_TEMP	(0 << 5)
>> -#define AD7746_VTSETUP_VTMD_EXT_TEMP	(1 << 5)
>> -#define AD7746_VTSETUP_VTMD_VDD_MON	(2 << 5)
>> -#define AD7746_VTSETUP_VTMD_EXT_VIN	(3 << 5)
>> -#define AD7746_VTSETUP_EXTREF		(1 << 4)
>> -#define AD7746_VTSETUP_VTSHORT		(1 << 1)
>> -#define AD7746_VTSETUP_VTCHOP		(1 << 0)
>> +#define AD7746_VTSETUP_VTEN		BIT(7)
>> +#define AD7746_VTSETUP_VTMD_INT_TEMP	0
>> +#define AD7746_VTSETUP_VTMD_EXT_TEMP	BIT(5)
>> +#define AD7746_VTSETUP_VTMD_VDD_MON	GENMASK(6, 0)
>> +#define AD7746_VTSETUP_VTMD_EXT_VIN	GENMASK(6, 5)
>> +#define AD7746_VTSETUP_EXTREF		BIT(4)
>> +#define AD7746_VTSETUP_VTSHORT		BIT(1)
>> +#define AD7746_VTSETUP_VTCHOP		BIT(0)
>>
>>  /* Excitation Setup Register Bit Designations (AD7746_REG_EXC_SETUP) */
>> -#define AD7746_EXCSETUP_CLKCTRL		(1 << 7)
>> -#define AD7746_EXCSETUP_EXCON		(1 << 6)
>> -#define AD7746_EXCSETUP_EXCB		(1 << 5)
>> -#define AD7746_EXCSETUP_NEXCB		(1 << 4)
>> -#define AD7746_EXCSETUP_EXCA		(1 << 3)
>> -#define AD7746_EXCSETUP_NEXCA		(1 << 2)
>> -#define AD7746_EXCSETUP_EXCLVL(x)	(((x) & 0x3) << 0)
>> +#define AD7746_EXCSETUP_CLKCTRL		BIT(7)
>> +#define AD7746_EXCSETUP_EXCON		BIT(6)
>> +#define AD7746_EXCSETUP_EXCB		BIT(5)
>> +#define AD7746_EXCSETUP_NEXCB		BIT(4)
>> +#define AD7746_EXCSETUP_EXCA		BIT(3)
>> +#define AD7746_EXCSETUP_NEXCA		BIT(2)
>> +#define AD7746_EXCSETUP_EXCLVL(x)	GENMASK(((x) & 0x3), 0)
>>
>>  /* Config Register Bit Designations (AD7746_REG_CFG) */
>>  #define AD7746_CONF_VTFS(x)		((x) << 6)
>>  #define AD7746_CONF_CAPFS(x)		((x) << 3)
>> -#define AD7746_CONF_MODE_IDLE		(0 << 0)
>> -#define AD7746_CONF_MODE_CONT_CONV	(1 << 0)
>> -#define AD7746_CONF_MODE_SINGLE_CONV	(2 << 0)
>> -#define AD7746_CONF_MODE_PWRDN		(3 << 0)
>> -#define AD7746_CONF_MODE_OFFS_CAL	(5 << 0)
>> -#define AD7746_CONF_MODE_GAIN_CAL	(6 << 0)
>> +#define AD7746_CONF_MODE_IDLE		0
>> +#define AD7746_CONF_MODE_CONT_CONV	GENMASK(1, 0)
>> +#define AD7746_CONF_MODE_SINGLE_CONV	GENMASK(2, 0)
>> +#define AD7746_CONF_MODE_PWRDN		GENMASK(3, 0)
>> +#define AD7746_CONF_MODE_OFFS_CAL	GENMASK(5, 0)
>> +#define AD7746_CONF_MODE_GAIN_CAL	GENMASK(6, 0)
>>
>>  /* CAPDAC Register Bit Designations (AD7746_REG_CAPDACx) */
>> -#define AD7746_CAPDAC_DACEN		(1 << 7)
>> +#define AD7746_CAPDAC_DACEN		BIT(7)
>>  #define AD7746_CAPDAC_DACP(x)		((x) & 0x7F)
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
>>
>

