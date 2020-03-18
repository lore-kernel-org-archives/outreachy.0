X-GM-THRID: 6805399652543758336
X-Received: by 2002:a1c:ba04:: with SMTP id k4mr5804156wmf.165.1584544356444;
        Wed, 18 Mar 2020 08:12:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:2116:: with SMTP id u22ls946998wml.1.gmail; Wed, 18
 Mar 2020 08:12:35 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv36LyeuSpX2AnG5IKTLzpbLwmKQZl/lnRB1C+gWNvMgSy/IDwbVlimSr5lCPTSMTKqP8al
X-Received: by 2002:a1c:418b:: with SMTP id o133mr5855993wma.165.1584544355010;
        Wed, 18 Mar 2020 08:12:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584544355; cv=none;
        d=google.com; s=arc-20160816;
        b=UIN4OCiM+Buycx6a+zwGx8ycEnA8IcOxWnzxh01tjPUs2EEnH9TE44Wosy3/13yeiw
         XNXkxadqIjN4BqxlH3Ccp3KUIh5FROt1qshhU9IHe/RMq8Z58WNGD6bl4HXiGVDhwnGH
         tfDgbI9PxLZb8ske0SpbaM3aPApacKaaO7U08lrQapg+UW32kvfnMmdcHh6/o9U+CvE4
         2w70U55FuNCFCGxBFRNiibZjm7LUyVq5AT81eI7ijs5NTpok4bwwmYTtfr+ajo2bNahi
         cM6Vp7NyDJDTAe+O2qWGuepwY/lPZsUkCQjhl9wFWr63eTBKwRjmKOkCzoFGF5TN1fNs
         kX/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=jXFg+Lk+O8IuGT9rfESA6msiedOcS1jJ2FlUgALBYw4=;
        b=arIKIHaw5XQkPEJssDnK3oRZ3oWoCTmh6z1+i2//hPUZU/UQw5zmvIRaD9fI2WY/uF
         lLD/FXyMoDwD99mxwkSIewtas1h2vnqNsfcSI1BFG50QgCXsCqOgCdD9XlKOmHWZObCQ
         BqS8k2r1TJvDZctheuZtbR9F83dR1BwgZ1+AkkDPcJ3y9IFpXS9B0l8JZsQ80dvC4P/4
         /0eXvt9N3HpebTsebhJPhr+HaU9KRl3XS+dEBTtCE/h3+SJ6RT3Yc/QfjCLGWLLTb2EU
         EGTWdFzAyesmAKsguJFN5RIBC7TEjV296UVe2q2YavoaTEjdGhHZz+lwjso2Srj7cA0+
         2sSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@metafoo.de header.s=default2002 header.b=g89qvkF3;
       spf=pass (google.com: domain of lars@metafoo.de designates 78.46.137.84 as permitted sender) smtp.mailfrom=lars@metafoo.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=metafoo.de
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id l10si100482wmg.2.2020.03.18.08.12.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 18 Mar 2020 08:12:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of lars@metafoo.de designates 78.46.137.84 as permitted sender) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@metafoo.de header.s=default2002 header.b=g89qvkF3;
       spf=pass (google.com: domain of lars@metafoo.de designates 78.46.137.84 as permitted sender) smtp.mailfrom=lars@metafoo.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=metafoo.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=metafoo.de;
	 s=default2002; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
	MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=jXFg+Lk+O8IuGT9rfESA6msiedOcS1jJ2FlUgALBYw4=; b=g89qvkF3dRfH3RvOnYstrWAAuX
	HRtboA4fvqnG3tafG9R6C8UJZMxnJTm/y/hi+yNUiLmajT0KBofTL8PENZVsIuoHCxjajGPuicf3H
	JpWZ0vstX0wTeZjDqf51lykgmKYxqJHYZQnI4z/fqPauMpSGmAAaaPn0jmsD8RkfufhO5TdeXhv13
	W/X/9WTiBlcUSMZh8+h/iBUhKKEoiCF2SpbrZvZOP0zNr6YcImNokt/W14hltX9ZrQmXx+6Lkh6eH
	ok67Q46HDdNb4jQ3TpxvK3LFQC+L1R6Eof1NfYlmoNq4s5qcKHO793K1e/S+zpccPbldIpdGAF+cR
	277l3ltQ==;
Received: from sslproxy03.your-server.de ([88.198.220.132])
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.89_1)
	(envelope-from <lars@metafoo.de>)
	id 1jEaMw-00035z-4Q; Wed, 18 Mar 2020 16:12:30 +0100
Received: from [93.104.115.49] (helo=[192.168.178.20])
	by sslproxy03.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <lars@metafoo.de>)
	id 1jEaMv-00049T-Pn; Wed, 18 Mar 2020 16:12:29 +0100
Subject: Re: [PATCH 2/2] staging: iio: adc: ad7280a: Add spaces around
 operators
To: Greg KH <gregkh@linuxfoundation.org>,
 Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, daniel.baluta@gmail.com,
 kieran.bingham@ideasonboard.com, Michael.Hennerich@analog.com,
 stefan.popa@analog.com, jic23@kernel.org, knaack.h@gmx.de,
 pmeerw@pmeerw.net, linux-iio@vger.kernel.org
References: <cover.1584505215.git.mh12gx2825@gmail.com>
 <6703668c512dd665a2299a1f5bf14d99262314f8.1584505215.git.mh12gx2825@gmail.com>
 <20200318060038.GB1594471@kroah.com>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <35afdc4b-bd59-7851-aa4f-3d8807668931@metafoo.de>
Date: Wed, 18 Mar 2020 16:12:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200318060038.GB1594471@kroah.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.102.2/25755/Wed Mar 18 14:14:00 2020)

On 3/18/20 7:00 AM, Greg KH wrote:
> On Wed, Mar 18, 2020 at 09:58:13AM +0530, Deepak R Varma wrote:
>> Add spaces around operator symbols to improve readability. Warning
>> flagged by checkpatch script.
>>
>> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
>> ---
>>   drivers/staging/iio/adc/ad7280a.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
>> index 19a5f244dcae..34ca0d09db85 100644
>> --- a/drivers/staging/iio/adc/ad7280a.c
>> +++ b/drivers/staging/iio/adc/ad7280a.c
>> @@ -825,14 +825,14 @@ static irqreturn_t ad7280_event_handler(int irq, void *private)
>>   }
>>   
>>   static IIO_DEVICE_ATTR_NAMED(in_thresh_low_value,
>> -			     in_voltage-voltage_thresh_low_value,
>> +			     in_voltage - voltage_thresh_low_value,
>>   			     0644,
>>   			     ad7280_read_channel_config,
>>   			     ad7280_write_channel_config,
>>   			     AD7280A_CELL_UNDERVOLTAGE);
>>   
>>   static IIO_DEVICE_ATTR_NAMED(in_thresh_high_value,
>> -			     in_voltage-voltage_thresh_high_value,
>> +			     in_voltage - voltage_thresh_high_value,
>>   			     0644,
>>   			     ad7280_read_channel_config,
>>   			     ad7280_write_channel_config,
> 
> Did you try building this code?
> 
> It catches everyone...

The problem is it builds. The token is stringyfied and
"in_voltage - voltage_thresh_high_value" is a valid string.

- Lars

