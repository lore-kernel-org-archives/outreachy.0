X-GM-THRID: 6946206210186018816
X-Received: by 2002:a05:6512:2214:: with SMTP id h20mr2771142lfu.130.1617805156475;
        Wed, 07 Apr 2021 07:19:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:e86:: with SMTP id 128ls2234171lfo.0.gmail; Wed, 07 Apr
 2021 07:19:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwCVNoJ0KE5uCgQRM4ZxG0ieilBflmPH680kGVzNjn1HbMVRC2iCODK58u433JDH6rP43OV
X-Received: by 2002:ac2:490b:: with SMTP id n11mr2480845lfi.491.1617805153091;
        Wed, 07 Apr 2021 07:19:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617805153; cv=none;
        d=google.com; s=arc-20160816;
        b=TMkfVgNofxvLTZ5531M9F1/TVOk9KOp4HoFbSGy9ap4CxDsoJYcll1v12XMz0T4h7X
         zThDfxojokEOYWbm1Caah/OalX9DJYiILHBeA3kf2en2aUsNxQUZbebMHHgPPom71i1J
         0b92OFW26SrkJT+Yz4PSeXHeWIMkKsgVfWEA7jDYSghAMO+8ncMtIyYmleg8lJfFbLB7
         FIqJJoShU2/0QsHL/LDhiqelMg7O5Xfj2p9KV7G7YW65zeYpo+aJ1KigOaMO88pQjnnl
         GJ2m1WJ5Rn97Uaifhu0cyfAFAbav19DHKXZntfHoMszXi5YHEP38/y0BOdzLBrsZbLZz
         9OzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature;
        bh=hk6O1+YsLCe8qBF6gMN+3M1D1gXE0oXAs3ZDrHvZOkc=;
        b=qfPwmG7W4BFRciXz+Eb6oDoWu3tENV1XqP28TrqgM4nLaaP97sH1mj/zi2v/xPX3aS
         plfhCg/rIQNVJulNacSDYKoOFQJfxBk1fft5c5rv71V1SN9NM+5jFomg2CoVoBw5Bu70
         L3sUUAWWwUmSfoSa1alP2DZwW60bH3OIwQalxr+SmD9gOOPtlV23pB7e5T0S8lQj6nX+
         JlXYkUnJ5wUfZVG0hJF1n2wMcyxMz5zICwaHrfbdj17fUCwijV2MT/5MDTMoEb+HwmDk
         Q9XgIIHoZ68ryp/Cnao+1/89/cbmotdKFF5ARXrZSvY5eJbbxW7HjDERghoNY+oQiSdQ
         7mQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qbwAVGrC;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com. [2a00:1450:4864:20::429])
        by gmr-mx.google.com with ESMTPS id b12si1553135lfv.7.2021.04.07.07.19.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 07:19:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) client-ip=2a00:1450:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qbwAVGrC;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x429.google.com with SMTP id 12so3674524wrz.7
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Apr 2021 07:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=hk6O1+YsLCe8qBF6gMN+3M1D1gXE0oXAs3ZDrHvZOkc=;
        b=qbwAVGrCFye6M/nU4HSaDpQmhzHWShlbTv2YMAlwPD73fUgpT8QLzXMRb1A97RvM9x
         WnfAc9NtdVTS5rvXaxatLWLe4o6xVlG8C69A0LWuLO0jU/sHVA+kaucL7n7VajWnOGF7
         4D8pK3J38YC23K2O6umsL3CYV0fnqbTYdayfjgYc5ShPqereBe8sliGCg1cNsWauhR9x
         TebZrnwOPnDU0sCESFvlee45TRgSt4as7rpEjPKo+LJKIdIwePcnCxsjYEyxje1Yn9P5
         smBX17QZFgvqsGuQ8DsqYZT12B/AbficNYOlM+xcyyXaKyctpuzwTcEy5wmRaCApLENj
         D1ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=hk6O1+YsLCe8qBF6gMN+3M1D1gXE0oXAs3ZDrHvZOkc=;
        b=WYX/ryFk+2Z3zM6Z+qbohrLDk6UasIC6XevbudFD8yGAr1343ktFVoRRMl0o52oFkD
         PtJM+aurpkjQekWOVcW1Nte8dzAilGqWHX48KAuq5isUchUc8kHwKtQ1vXuZ0Ti6D5NS
         oAIF2U8DrHvEFkZWU6YVnqRUwMUxoMwjQ3nIHhciOJXezVTrrWRwtg+I/93fFk3QBWto
         In+0MxPfiQKPOLP5oEltqnqU1jF8HBVYmjYTmyxnEmXshdx4w1UOFj5AnGrUvebll7Hw
         27Ee8oLsZZGZLvluoap0ZjwA8SLysJe1tSUF9LqOYgyCSMBU1diasWgH2NIzoxdBySuN
         fc3Q==
X-Gm-Message-State: AOAM530f8yMfmgnTvVqnwq86V1zQz+YTtpDScuGzMN9FjeagjXg4Fvou
	MTumzycWL3VthwRtn5tFSDeAmIti+krUy5Sc
X-Received: by 2002:a5d:424c:: with SMTP id s12mr4803031wrr.174.1617805152679;
        Wed, 07 Apr 2021 07:19:12 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from ?IPv6:2001:818:de85:7e00:ef5c:3f2a:a646:d6ec? ([2001:818:de85:7e00:ef5c:3f2a:a646:d6ec])
        by smtp.gmail.com with ESMTPSA id 61sm29613174wrn.25.2021.04.07.07.19.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 07:19:11 -0700 (PDT)
Subject: Re: [PATCH 1/2] staging: media: omap4iss: Ending line with argument
To: Hans Verkuil <hverkuil@xs4all.nl>, laurent.pinchart@ideasonboard.com,
 mchehab@kernel.org, gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
References: <cover.1617287509.git.martinsdecarvalhobeatriz@gmail.com>
 <441d27060ff6477d0ad418f41e194b96373c1f7f.1617287509.git.martinsdecarvalhobeatriz@gmail.com>
 <e1b25826-1359-24dd-47ad-41fbd3a406b9@xs4all.nl>
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Message-ID: <1df312a9-6216-1926-ff42-012654b81f3b@gmail.com>
Date: Wed, 7 Apr 2021 15:19:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <e1b25826-1359-24dd-47ad-41fbd3a406b9@xs4all.nl>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US



Em 07/04/21 14:46, Hans Verkuil escreveu:
> Hi Beatriz,
Hi,
>
> I'm now reviewing staging/media patches instead of Greg KH. See Vaishali's
> email from today: "Sending patches for the drivers/staging/media".
Yes, I saw the email! Thanks for helping us!
>
> On 01/04/2021 17:07, Beatriz Martins de Carvalho wrote:
>> Remove checkpatch check "CHECK: Lines should not end with a '('" with
>> argument present in next line and reorganize characters so the lines
>> are under 100 columns
>>
>> Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
>> ---
>>   drivers/staging/media/omap4iss/iss.c | 46 +++++++++++++---------------
>>   1 file changed, 22 insertions(+), 24 deletions(-)
>>
>> diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
>> index dae9073e7d3c..e8f724dbf810 100644
>> --- a/drivers/staging/media/omap4iss/iss.c
>> +++ b/drivers/staging/media/omap4iss/iss.c
>> @@ -559,9 +559,10 @@ static int iss_reset(struct iss_device *iss)
>>   	iss_reg_set(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG,
>>   		    ISS_HL_SYSCONFIG_SOFTRESET);
>>   
>> -	timeout = iss_poll_condition_timeout(
>> -		!(iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG) &
>> -		ISS_HL_SYSCONFIG_SOFTRESET), 1000, 10, 100);
>> +	timeout = iss_poll_condition_timeout(!(iss_reg_read(iss,
>> +							    OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG)
>> +							    & ISS_HL_SYSCONFIG_SOFTRESET),
>> +							    1000, 10, 100);
>>   	if (timeout) {
>>   		dev_err(iss->dev, "ISS reset timeout\n");
>>   		return -ETIMEDOUT;
>> @@ -583,9 +584,10 @@ static int iss_isp_reset(struct iss_device *iss)
>>   
>>   	iss_reg_set(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL, ISP5_CTRL_MSTANDBY);
>>   
>> -	timeout = iss_poll_condition_timeout(
>> -		iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL) &
>> -		ISP5_CTRL_MSTANDBY_WAIT, 1000000, 1000, 1500);
>> +	timeout = iss_poll_condition_timeout(iss_reg_read(iss,
>> +							  OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL)
>> +							  & ISP5_CTRL_MSTANDBY_WAIT, 1000000,
>> +							  1000, 1500);
>>   	if (timeout) {
>>   		dev_err(iss->dev, "ISP5 standby timeout\n");
>>   		return -ETIMEDOUT;
>> @@ -595,9 +597,10 @@ static int iss_isp_reset(struct iss_device *iss)
>>   	iss_reg_set(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG,
>>   		    ISP5_SYSCONFIG_SOFTRESET);
>>   
>> -	timeout = iss_poll_condition_timeout(
>> -		!(iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG) &
>> -		ISP5_SYSCONFIG_SOFTRESET), 1000000, 1000, 1500);
>> +	timeout = iss_poll_condition_timeout(!(iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1,
>> +							    ISP5_SYSCONFIG) &
>> +							    ISP5_SYSCONFIG_SOFTRESET), 1000000,
>> +							    1000, 1500);
> As several other people already commented, these changes do not improve readability.
> Just leave this code alone, it's good enough. Even splitting up the condition into
> a separate function would degrade readability since that would make it harder to
> discover the exact condition that will be polled for.
>
> Not everything that checkpatch.pl flags is necessarily bad code :-)

Yes, I learning about this. And I will using this for the next patches.
>
>>   	if (timeout) {
>>   		dev_err(iss->dev, "ISP5 reset timeout\n");
>>   		return -ETIMEDOUT;
>> @@ -1104,33 +1107,28 @@ static int iss_create_links(struct iss_device *iss)
>>   	}
>>   
>>   	/* Connect the submodules. */
>> -	ret = media_create_pad_link(
>> -			&iss->csi2a.subdev.entity, CSI2_PAD_SOURCE,
>> -			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
>> +	ret = media_create_pad_link(&iss->csi2a.subdev.entity, CSI2_PAD_SOURCE,
>> +				    &iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
>>   	if (ret < 0)
>>   		return ret;
>>   
>> -	ret = media_create_pad_link(
>> -			&iss->csi2b.subdev.entity, CSI2_PAD_SOURCE,
>> -			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
>> +	ret = media_create_pad_link(&iss->csi2b.subdev.entity, CSI2_PAD_SOURCE,
>> +				    &iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
>>   	if (ret < 0)
>>   		return ret;
>>   
>> -	ret = media_create_pad_link(
>> -			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SOURCE_VP,
>> -			&iss->resizer.subdev.entity, RESIZER_PAD_SINK, 0);
>> +	ret = media_create_pad_link(&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SOURCE_VP,
>> +				    &iss->resizer.subdev.entity, RESIZER_PAD_SINK, 0);
>>   	if (ret < 0)
>>   		return ret;
>>   
>> -	ret = media_create_pad_link(
>> -			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SOURCE_VP,
>> -			&iss->ipipe.subdev.entity, IPIPE_PAD_SINK, 0);
>> +	ret = media_create_pad_link(&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SOURCE_VP,
>> +				    &iss->ipipe.subdev.entity, IPIPE_PAD_SINK, 0);
>>   	if (ret < 0)
>>   		return ret;
>>   
>> -	ret = media_create_pad_link(
>> -			&iss->ipipe.subdev.entity, IPIPE_PAD_SOURCE_VP,
>> -			&iss->resizer.subdev.entity, RESIZER_PAD_SINK, 0);
>> +	ret = media_create_pad_link(&iss->ipipe.subdev.entity, IPIPE_PAD_SOURCE_VP,
>> +				    &iss->resizer.subdev.entity, RESIZER_PAD_SINK, 0);
>>   	if (ret < 0)
>>   		return ret;
>>   
>>
> These, however, are readability improvements, so I'm happy with that.
Thank!
>
> Regards,
>
> 	Hans
Best wishes,
Beatriz Carvalho


