X-GM-THRID: 6609326471053836288
X-Received: by 2002:a0c:f3ca:: with SMTP id f10-v6mr17920076qvm.0.1539007535915;
        Mon, 08 Oct 2018 07:05:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:bfef:: with SMTP id u44ls236910qvj.2.gmail; Mon, 08 Oct
 2018 07:05:35 -0700 (PDT)
X-Received: by 2002:ad4:500d:: with SMTP id s13-v6mr16981024qvo.26.1539007535422;
        Mon, 08 Oct 2018 07:05:35 -0700 (PDT)
Received: by 2002:a37:644a:0:0:0:0:0 with SMTP id y71-v6msqkb;
        Mon, 8 Oct 2018 06:29:07 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62FQLzvwoJba1oYA3JbWTYa3oaV9ysqFuDcKA3g+AsQOUWrwccw7feRb377RPfn2pOTLDti
X-Received: by 2002:a5d:420d:: with SMTP id n13-v6mr989999wrq.25.1539005347582;
        Mon, 08 Oct 2018 06:29:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539005347; cv=none;
        d=google.com; s=arc-20160816;
        b=MSPkn6FWNNloAvjnL6bNvM38VY6CTTuQlVijxGcKYtr8M5R6ANQLwIlPjoOspbxuME
         41P1vPpKXbwgLN9cPrZKGyiDQt2IlL5Njk+yReEjpPfoVoj6JPnmZ7UaiuJu8Z1Ewz0B
         zm4D+UPxJNQVsdc17tueJ9YutpYWlG/Hul43s2yRADPlUBFs00azUkqJOmUpQdPUS1lT
         EupnVZmVaAVJvbleAWE3sTbyhTeOJauUCxC9fNKkPyBm9AknEyvgdVgfiWTW23Xzdc+c
         znwcGnOvX6v8bLlBTySa6KP6XaGBuV8aZf3jRlKfqENc2fBsVwkM08WKtVZJafPhKiEg
         FTWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=zjYVAHSoekJ7NP15MsRuKP49X/CVmn2WevOWCkA64hE=;
        b=zFsN8/8CTlj9h6+JLgI50v/RIEgEridi9ykcw2gEuxg7qFdhOOvYpjW0YR11D5GoF3
         1/XnzgVX7fwWd2uLeST2NFF8343b6PKDwvsGpbR49pUosC3LrwHGeuakM0SlsTrAo79h
         7sCPTaRH8knQZr++aIiyZjB87ep8HCBM7VzoHZn4fwuwkDv+iXKb6sxrPCYX0FjCoWvy
         fwNEVBnaXvW2cZjbJkySB3cqYBIUCNgvprA++zIZBd5HG/hx1b2WkkrDzfIeQ+kCT/9J
         VQ26y5InPV6GQxzfNVDPwA7qbd6DIgDSWX+quvnklG7FM2+EfQnX5N8+5+sDkTkqPpGw
         fuOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.26 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb2-smtp-cloud9.xs4all.net (lb2-smtp-cloud9.xs4all.net. [194.109.24.26])
        by gmr-mx.google.com with ESMTPS id u91-v6si681575wrc.1.2018.10.08.06.29.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Oct 2018 06:29:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.26 as permitted sender) client-ip=194.109.24.26;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.26 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from [192.168.2.10] ([212.251.195.8])
	by smtp-cloud9.xs4all.net with ESMTPA
	id 9VapgN1ShSskC9VasgghMk; Mon, 08 Oct 2018 15:29:07 +0200
Subject: Re: [Outreachy kernel] [PATCH vicodec] media: pvrusb2: replace
 `printk` with `pr_*`
To: Greg KH <greg@kroah.com>, Dafna Hirschfeld <dafna3@gmail.com>
Cc: isely@pobox.com, mchehab@kernel.org, helen.koike@collabora.com,
 outreachy-kernel@googlegroups.com,
 Linux Media Mailing List <linux-media@vger.kernel.org>
References: <20181008120647.10271-1-dafna3@gmail.com>
 <20181008130719.GA20351@kroah.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <8882bb79-b4cc-ca79-30b9-2f983cea6f37@xs4all.nl>
Date: Mon, 8 Oct 2018 15:29:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20181008130719.GA20351@kroah.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4wfGBp/LdgzHvRbFvg9ROgPlIud3aWAsGVJO+faNAxp15w41rEihqds9T6uR6LVNNPEV5cn1IjkepY1M2HAqx8RkY//TqI8PDF0zCEvCC8xH7ftyL91fzi
 e5Q/p6XO806AUgOF8YtAVhsWYVyY/iSZJP6P5EqimGyRDIosa/Tx0mtH78I9r+vNtNlju8Fw9mDcI1s6YQ++hPok4dmBCtSBlYwkCbChqgWl08NZ6koOD83P
 tTdPvQnqPdk7Yayy0bv1zIT8IUkoPuBk/IdW5xL7Jg59VqXPCJwf5zySuZtgyywsujYji4e/Os/1XZn1CpParjOKehEiHnUIisVgyR27XTPMHr1gdYTUpuzt
 O9P1MI1uxoE2oY3mp1lXPiqaAyfIDQ==

On 10/08/2018 03:07 PM, Greg KH wrote:
> On Mon, Oct 08, 2018 at 03:06:47PM +0300, Dafna Hirschfeld wrote:
>> Replace calls to `printk` with the appropriate `pr_*`
>> macro.
>>
>> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
>> ---
>>  drivers/media/usb/pvrusb2/pvrusb2-debug.h    |  2 +-
>>  drivers/media/usb/pvrusb2/pvrusb2-hdw.c      |  8 +++---
>>  drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c | 28 +++++++++-----------
>>  drivers/media/usb/pvrusb2/pvrusb2-main.c     |  4 +--
>>  drivers/media/usb/pvrusb2/pvrusb2-v4l2.c     |  4 +--
>>  5 files changed, 22 insertions(+), 24 deletions(-)
>>
>> diff --git a/drivers/media/usb/pvrusb2/pvrusb2-debug.h b/drivers/media/usb/pvrusb2/pvrusb2-debug.h
>> index 5cd16292e2fa..1323f949f454 100644
>> --- a/drivers/media/usb/pvrusb2/pvrusb2-debug.h
>> +++ b/drivers/media/usb/pvrusb2/pvrusb2-debug.h
>> @@ -17,7 +17,7 @@
>>  
>>  extern int pvrusb2_debug;
>>  
>> -#define pvr2_trace(msk, fmt, arg...) do {if(msk & pvrusb2_debug) printk(KERN_INFO "pvrusb2: " fmt "\n", ##arg); } while (0)
>> +#define pvr2_trace(msk, fmt, arg...) do {if (msk & pvrusb2_debug) pr_info("pvrusb2: " fmt "\n", ##arg); } while (0)
> 
> You should not need prefixes for pr_info() calls.
> 
>>  
>>  /* These are listed in *rough* order of decreasing usefulness and
>>     increasing noise level. */
>> diff --git a/drivers/media/usb/pvrusb2/pvrusb2-hdw.c b/drivers/media/usb/pvrusb2/pvrusb2-hdw.c
>> index a8519da0020b..7702285c1519 100644
>> --- a/drivers/media/usb/pvrusb2/pvrusb2-hdw.c
>> +++ b/drivers/media/usb/pvrusb2/pvrusb2-hdw.c
>> @@ -3293,12 +3293,12 @@ void pvr2_hdw_trigger_module_log(struct pvr2_hdw *hdw)
>>  	int nr = pvr2_hdw_get_unit_number(hdw);
>>  	LOCK_TAKE(hdw->big_lock);
>>  	do {
>> -		printk(KERN_INFO "pvrusb2: =================  START STATUS CARD #%d  =================\n", nr);
>> +		pr_info("pvrusb2: =================  START STATUS CARD #%d  =================\n", nr);
> 
> A driver should be using dev_info(), not pr_*.

pvrusb2 is an exception due to historical reasons. I'd rather not switch
over to dev_*.

> 
> Also, for the outreachy application process, I can not accept patches
> outside of drivers/staging/.

Hmm, that means media drivers are out of bounds since drivers in staging/media
are either high-quality drivers waiting for missing core features or that need maturing,
or they are deprecated drivers that will be removed in the not-too-distant future and
we're not accepting patches for those.

Whereas there are loads of old media drivers in driver/media that could use some TLC.
Although pvrusb2 was an unfortunate driver to pick, but Dafna had no way of knowing that.

There might be the odd checkpatch issue in staging/media, but I expect that that will be
slim pickings...

Sorry Dafna, I wasn't aware of this restriction. It looks like you will need to look
elsewhere in staging.

Regards,

	Hans

> 
> sorry,
> 
> greg k-h
> 


