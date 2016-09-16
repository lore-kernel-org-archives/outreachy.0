X-GM-THRID: 6331000982206414848
X-Received: by 10.66.246.197 with SMTP id xy5mr10736296pac.47.1474051670405;
        Fri, 16 Sep 2016 11:47:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.10 with SMTP id 10ls6938323oty.10.gmail; Fri, 16 Sep
 2016 11:47:49 -0700 (PDT)
X-Received: by 10.237.51.196 with SMTP id v62mr488328qtd.40.1474051669883;
        Fri, 16 Sep 2016 11:47:49 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yb0-x241.google.com (mail-yb0-x241.google.com. [2607:f8b0:4002:c09::241])
        by gmr-mx.google.com with ESMTPS id p193si784527ywe.6.2016.09.16.11.47.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 11:47:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::241 as permitted sender) client-ip=2607:f8b0:4002:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yb0-x241.google.com with SMTP id u125so2840741ybg.3
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 11:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=k2AC7/ZrA5Oo2/O4lPymitT/UKLerQ8ZY3YnYdnwIKk=;
        b=QNZATaoh35Ffe5koA5A3lQ+Zdb4L7AIYs+3HzoaT3m1bNPy1qTN1WNU5uNPGFpTxcr
         5+8f3ldXx5KoJ4fdjrAXKtjxTDQB06ogMt41ZPWtHuJqutTn2iFgyH2TL/86SrjciIDG
         iX+Q727/n+Te3Iimxag6NTzqtWyfcsbBT0tK0/lJy7A2rYNGcwkwIuTk5VCPih8jjc5Q
         qjyl5x9J+tevpJEpXXJAcEMB6cENWNlyS0fTKE0oeZGXHf4L+lmf5JTqvcNJUHFybGv3
         Y/m+2v0RBcscWFS5E46QbTzrhCow7wbZ329jt+QsObqP2r6CFGeEsuLzP5w/hjeQboCJ
         cgkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=k2AC7/ZrA5Oo2/O4lPymitT/UKLerQ8ZY3YnYdnwIKk=;
        b=ZipZemhSi0q/N/edIsO+s56FpU8JYrK92OWhdaJfThpqMwjv7ZOHkwxQlW5IHUKUzB
         Kj41BIUJasRaItxpi9+vQ5MfWDQ7hljA716/555+vHjPTkSbTYZLY0SSTQlZX5LtcVV7
         GADWS3T4SfVTGy8iuw7FXT8wCQHYHEt7FhoviePoEa9falCtUZGrTBqhuei2ucI122L8
         FhFTgbh/wxeYHU+zImZjoQJR8VPRVLK9BuDp9LeY27f+DSj6q7cNk9Cp1QyjD6j08J0q
         ex48w33a3iMAa8SG2a3tGgCRyCitVXte5guQCDePyYXuZCPA4aBzDiak9SrqB0C8JS7m
         AWtA==
X-Gm-Message-State: AE9vXwPizdQR8+BSyHwlsgdbwtfDygappqjB6CSjuYqNRnnW91GHawWGWMTN0odcyO+OMZkOPk0GaqQ9j+Xv5g==
X-Received: by 10.37.192.12 with SMTP id c12mr7369437ybf.187.1474051669694;
 Fri, 16 Sep 2016 11:47:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.41.132 with HTTP; Fri, 16 Sep 2016 11:47:09 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609162040120.3397@hadrien>
References: <20160916183658.GA26442@sayli-HP-15-Notebook-PC> <alpine.DEB.2.10.1609162040120.3397@hadrien>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Sat, 17 Sep 2016 00:17:09 +0530
Message-ID: <CAKG5xWjY9VNS_kG4mv92r0hH1RX-aRmddheRXnA07c8nAY6P9w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: media: davinci_vpfe: Use BIT
 macro instead of left shifting 1
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Sat, Sep 17, 2016 at 12:12 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Sat, 17 Sep 2016, sayli karnik wrote:
>
>> This patch replaces left shifts on 1 with the BIT(x) macro, as suggested
>> by checkpatch.pl.
>
> You could do this with Coccinelle also :)
>

I did it using coccinelle, I just forgot to include the coccinelle script
in the message!
I sent a v2 already. :)

thanks

sayli
> julia
>
>>
>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
>> ---
>>  .../staging/media/davinci_vpfe/davinci_vpfe_user.h | 36 +++++++++++-----------
>>  1 file changed, 18 insertions(+), 18 deletions(-)
>>
>> diff --git a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
>> index f4f35c9..d3f34f9 100644
>> --- a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
>> +++ b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
>> @@ -544,41 +544,41 @@ struct vpfe_isif_raw_config {
>>  /* IPIPE module configurations */
>>
>>  /* IPIPE input configuration */
>> -#define VPFE_IPIPE_INPUT_CONFIG              (1 << 0)
>> +#define VPFE_IPIPE_INPUT_CONFIG              BIT(0)
>>  /* LUT based Defect Pixel Correction */
>> -#define VPFE_IPIPE_LUTDPC            (1 << 1)
>> +#define VPFE_IPIPE_LUTDPC            BIT(1)
>>  /* On the fly (OTF) Defect Pixel Correction */
>> -#define VPFE_IPIPE_OTFDPC            (1 << 2)
>> +#define VPFE_IPIPE_OTFDPC            BIT(2)
>>  /* Noise Filter - 1 */
>> -#define VPFE_IPIPE_NF1                       (1 << 3)
>> +#define VPFE_IPIPE_NF1                       BIT(3)
>>  /* Noise Filter - 2 */
>> -#define VPFE_IPIPE_NF2                       (1 << 4)
>> +#define VPFE_IPIPE_NF2                       BIT(4)
>>  /* White Balance.  Also a control ID */
>> -#define VPFE_IPIPE_WB                        (1 << 5)
>> +#define VPFE_IPIPE_WB                        BIT(5)
>>  /* 1st RGB to RBG Blend module */
>> -#define VPFE_IPIPE_RGB2RGB_1         (1 << 6)
>> +#define VPFE_IPIPE_RGB2RGB_1         BIT(6)
>>  /* 2nd RGB to RBG Blend module */
>> -#define VPFE_IPIPE_RGB2RGB_2         (1 << 7)
>> +#define VPFE_IPIPE_RGB2RGB_2         BIT(7)
>>  /* Gamma Correction */
>> -#define VPFE_IPIPE_GAMMA             (1 << 8)
>> +#define VPFE_IPIPE_GAMMA             BIT(8)
>>  /* 3D LUT color conversion */
>> -#define VPFE_IPIPE_3D_LUT            (1 << 9)
>> +#define VPFE_IPIPE_3D_LUT            BIT(9)
>>  /* RGB to YCbCr module */
>> -#define VPFE_IPIPE_RGB2YUV           (1 << 10)
>> +#define VPFE_IPIPE_RGB2YUV           BIT(10)
>>  /* YUV 422 conversion module */
>> -#define VPFE_IPIPE_YUV422_CONV               (1 << 11)
>> +#define VPFE_IPIPE_YUV422_CONV               BIT(11)
>>  /* Edge Enhancement */
>> -#define VPFE_IPIPE_YEE                       (1 << 12)
>> +#define VPFE_IPIPE_YEE                       BIT(12)
>>  /* Green Imbalance Correction */
>> -#define VPFE_IPIPE_GIC                       (1 << 13)
>> +#define VPFE_IPIPE_GIC                       BIT(13)
>>  /* CFA Interpolation */
>> -#define VPFE_IPIPE_CFA                       (1 << 14)
>> +#define VPFE_IPIPE_CFA                       BIT(14)
>>  /* Chroma Artifact Reduction */
>> -#define VPFE_IPIPE_CAR                       (1 << 15)
>> +#define VPFE_IPIPE_CAR                       BIT(15)
>>  /* Chroma Gain Suppression */
>> -#define VPFE_IPIPE_CGS                       (1 << 16)
>> +#define VPFE_IPIPE_CGS                       BIT(16)
>>  /* Global brightness and contrast control */
>> -#define VPFE_IPIPE_GBCE                      (1 << 17)
>> +#define VPFE_IPIPE_GBCE                      BIT(17)
>>
>>  #define VPFE_IPIPE_MAX_MODULES               18
>>
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160916183658.GA26442%40sayli-HP-15-Notebook-PC.
>> For more options, visit https://groups.google.com/d/optout.
>>

