X-GM-THRID: 6202672545102036992
X-Received: by 10.31.140.88 with SMTP id o85mr4437736vkd.8.1444283845465;
        Wed, 07 Oct 2015 22:57:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.196.102 with SMTP id il6ls314683obc.17.gmail; Wed, 07 Oct
 2015 22:57:25 -0700 (PDT)
X-Received: by 10.182.107.162 with SMTP id hd2mr4547034obb.29.1444283845120;
        Wed, 07 Oct 2015 22:57:25 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x232.google.com (mail-yk0-x232.google.com. [2607:f8b0:4002:c07::232])
        by gmr-mx.google.com with ESMTPS id y6si1172997ywc.3.2015.10.07.22.57.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 22:57:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::232 as permitted sender) client-ip=2607:f8b0:4002:c07::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::232 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x232.google.com with SMTP id a192so35721800ykb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 22:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=cL+zneBthPCXHCUHL2bezpxof8PGdFVLE1o6pQ+7p5U=;
        b=ZMMZZ/7VtCRCd+RpjjpLq6gE6J/6oGRBspQfTQvnxHGFekc3hHk8X2xCaHWC3z+h3u
         GbovKgLAXl6eCUpe4nzU/q1FVxMo04DsIQ9Bka+tONgGw+QAM1dWByzHhOlDSQfy4IJw
         xII95gKdhxYUoQNOs3vZ2q2mTru87pc8Dx48uUDl7yeVY/EUPQQ/JHQInNE4He3UdQt5
         oB/z0sbNoiy0BU8h6oBbiQ4e24qgshBzs2pW7/cgQbD5uyco+L/YHR+oW9ze5YLcAIwt
         BWAQADCrmekrjb7iiUXInXMNyYOBz84EYowStpD+Ze1WqPIe+JfndAWBj768K+jNX8My
         65mg==
MIME-Version: 1.0
X-Received: by 10.129.154.206 with SMTP id r197mr3859158ywg.195.1444283844892;
 Wed, 07 Oct 2015 22:57:24 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Wed, 7 Oct 2015 22:57:24 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510080639430.2626@hadrien>
References: <cover.1444241200.git.ciorneiioana@gmail.com>
	<5db27019c28d1f4d1313654d81e6dc21d562284b.1444241200.git.ciorneiioana@gmail.com>
	<20151008045556.GA3294@sudip-pc>
	<alpine.DEB.2.10.1510080639430.2626@hadrien>
Date: Thu, 8 Oct 2015 08:57:24 +0300
Message-ID: <CAHWJYFkdtznoTwn_UNd-U09BmfYAkiaHZcmqyk0J9KRcJp3xWw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/9] staging: iio: adc: properly
 indent to match open paranthesis
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 8, 2015 at 8:40 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Thu, 8 Oct 2015, Sudip Mukherjee wrote:
>
>> On Wed, Oct 07, 2015 at 09:13:40PM +0300, Ioana Ciornei wrote:
>> > Indent parameters ansd arguments passed to function calls to match
>> > open paranthesis
>> >
>> > Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>> > ---
>> This patch will introduce new warning of "line over 80 characters" while
>> fixing the warning about "Alignment should match open parenthesis".
>> I am not sure if it is ok to introduce new warnings to fix some other
>> warnings.
>
> It would be best not to, espcially if it is all white space related.
>

I mentioned in the cover letter that this patch introduces checkpatch
warnings in order to get your feedback on this.
From my point of view, the readability has improved significantly with
this patch but if you consider that it is not necessary
I will discard those changes that create other warnings.

Thanks,

Ioana




>
>> In one of your change in this patch you can do something like:
>>
>> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
>> index fe56fb6..c30e1b3 100644
>> --- a/drivers/staging/iio/adc/ad7192.c
>> +++ b/drivers/staging/iio/adc/ad7192.c
>> @@ -359,8 +359,9 @@ static IIO_DEV_ATTR_SAMP_FREQ(S_IWUSR | S_IRUGO,
>>               ad7192_read_frequency,
>>               ad7192_write_frequency);
>>
>> -static ssize_t ad7192_show_scale_available(struct device *dev,
>> -                     struct device_attribute *attr, char *buf)
>> +static ssize_t
>> +ad7192_show_scale_available(struct device *dev,
>> +                         struct device_attribute *attr, char *buf)
>>  {
>>       struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>>       struct ad7192_state *st = iio_priv(indio_dev);
>>
>>
>> ---
>> regards
>> sudip
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151008045556.GA3294%40sudip-pc.
>> For more options, visit https://groups.google.com/d/optout.
>>

