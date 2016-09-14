X-GM-THRID: 6330117409963245568
X-Received: by 10.13.247.69 with SMTP id h66mr1180121ywf.46.1473845905555;
        Wed, 14 Sep 2016 02:38:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.44.182 with SMTP id p51ls679164otb.29.gmail; Wed, 14 Sep
 2016 02:38:25 -0700 (PDT)
X-Received: by 10.129.165.14 with SMTP id c14mr1157578ywh.48.1473845905244;
        Wed, 14 Sep 2016 02:38:25 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-yb0-x241.google.com (mail-yb0-x241.google.com. [2607:f8b0:4002:c09::241])
        by gmr-mx.google.com with ESMTPS id p193si348829ywe.6.2016.09.14.02.38.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 02:38:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4002:c09::241 as permitted sender) client-ip=2607:f8b0:4002:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4002:c09::241 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yb0-x241.google.com with SMTP id x93so319337ybh.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 02:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=PmMul62izXyE0bwxllCOSxADYxU3gjaOLUcUJCN0IMM=;
        b=v1xsWdqATG35w8E4W+2FtZ+ADYI8FRkw1BIgForykmQ4XIyEoo2LfFJ5a4S+aEO9Wm
         ibWzhJjazl7nnICpP1xw53r7r24Amt4EdRMpC1CetcX8Sang0BQeN4gz52S8Dcldn1r+
         HB4mUm5la+ejklZDkaFPr8ac+ws85aQIHRlBvtrLbjj3fXKZfYzFZb5IduDZIvSWk5py
         9Voi8I9GKst1TZ9sojomcbGH48GucnC4b1PcgrC7dw1cyPFBrFlkhxMOdqk3akkzzejA
         PextsWl3Hks8ZE1aUxvWYyo8OO0xtd0nCogXdyjbkrBSCceR6Uzp0HG8/jPVmfz36E4s
         Hadg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=PmMul62izXyE0bwxllCOSxADYxU3gjaOLUcUJCN0IMM=;
        b=FnLY1DTigAsIQCyrY3S1LlUZzGwJzb4D/mz+MpV/flGhrHk9aCeuBDKZOHXWethfVt
         pwHRo+2wgHW3cPgzws6iOYeef1rtVt5kQNACC4U5zqDYwpkJdv1McAL3LfdYfO12ijTc
         Z6ZESXOGphXLQKCC1Fk5pKz93O+rYPt6VHavwwqmt2mJ3XK3kDGERPYKzlLbHtFAhjbH
         8nnCp6hpf8jN2vmlOdPCJarNL5YZz1JREcTAbzGKnkqH4AFFFLdrJLyJXDUDyyatsCrK
         MqYmZzk4svfi6nLAolRdYacyiVCx7J5hXsGv3dQA+9Y/qEAeNMGzyDfR+o0IIoGhUH9N
         nIQg==
X-Gm-Message-State: AE9vXwOPijs7Up6IAC5Tbq9zNnEliCGTi0wY54pNIKnonRv6kC0jYk70e7CkUoDzGMetMlh1JXhkN3RuYZsiOA==
X-Received: by 10.37.117.70 with SMTP id q67mr1591836ybc.152.1473845905057;
 Wed, 14 Sep 2016 02:38:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.81.3 with HTTP; Wed, 14 Sep 2016 02:38:24 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609141131530.3161@hadrien>
References: <20160914092903.GA2663@sandhya> <alpine.DEB.2.10.1609141131530.3161@hadrien>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Wed, 14 Sep 2016 15:08:24 +0530
Message-ID: <CAK-LDb+zvKyYxo794eKKhTEbN3vTgZKvsQCvVJitjJ_Qx_7ckA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: i18n: Use x instead
 of x != NULL.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Sandhya Bankar <bankarsandhya512@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 14, 2016 at 3:03 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Wed, 14 Sep 2016, Sandhya Bankar wrote:
>
>> Use x instead of x != NULL.
>> The patch removes the explicit NULL comparisons.This patch is detected by checkpatch.pl.

Again line with more than 80 characters. Also, this should come as v2. Changes
should be written under ---. Please look at other patches and tutorial
about sending
revised patches.

> Please always put at least one space after the end of a sentence, if i is
> followed by another one.
>
>>
>> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
>> ---
>>  drivers/staging/speakup/i18n.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
>> index 8960079..41b56d6 100644
>> --- a/drivers/staging/speakup/i18n.c
>> +++ b/drivers/staging/speakup/i18n.c
>> @@ -407,9 +407,9 @@ static char *next_specifier(char *input)
>>       int found = 0;
>>       char *next_percent = input;
>>
>> -     while ((next_percent != NULL) && !found) {
>> +     while ((next_percent) && !found) {
>
> You could really drop the parentheses at the same time.  They were not
> necessary before, but they are even less necessary when only a single
> variable is involved.
>
> julia
>
>>               next_percent = strchr(next_percent, '%');
>> -             if (next_percent != NULL) {
>> +             if (next_percent) {
>>                       /* skip over doubled percent signs */
>>                       while ((next_percent[0] == '%')
>>                              && (next_percent[1] == '%'))
>> --
>> 1.8.2.3
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160914092903.GA2663%40sandhya.
>> For more options, visit https://groups.google.com/d/optout.
>>



-- 
Vaishali
http://vaishalithakkar.in/

