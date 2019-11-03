X-GM-THRID: 6755177272483774464
X-Received: by 2002:a54:4686:: with SMTP id k6mr13146861oic.66.1572816611483;
        Sun, 03 Nov 2019 13:30:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a54:4407:: with SMTP id k7ls2546698oiw.7.gmail; Sun, 03 Nov
 2019 13:30:10 -0800 (PST)
X-Google-Smtp-Source: APXvYqwoou0/zID0UqF3w47jo2NXzqh1P3/nbQhKpc2c5aGX0aD7dattEwMXiRaeJrHfHbfoNll2
X-Received: by 2002:aca:90a:: with SMTP id 10mr10907714oij.130.1572816610377;
        Sun, 03 Nov 2019 13:30:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572816610; cv=none;
        d=google.com; s=arc-20160816;
        b=vTwYHR1vE/ahzpRAyYhcCg2nAxRYupj1D3+36dQY+ULBtwzmcoki1ovohTyjsfErwf
         VO7Lm6Gmpoaxj1A1DSr8SDl7MNZZdx2tDC4Z4P25DO/8yqqMxS7hKjg3sdAewfAMoX1S
         Sw73OUhh5UaiGiCCTBCQ9Fp7aqi8XcaE6tcyXithXsUfPgRaeBjJlYgEmWMxCLjxA5RZ
         yIFbI6NpUFLbrL0gCZp9WMtk+Lfn2f/8iLqAw+ZPQ6db6xH4SbCCLZ1yRFaT47q0aUAi
         LDVfwt1mBJLhkYX2TbRfkNDmS2DIgCkY0HqkIHgqlgAXYrnfLSWjDqam6TguOlxrneVx
         Kxtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature;
        bh=hWKPqEk5LxTA/5yibK5/8hbYJoHPkAjFUa9tzi3J0gw=;
        b=1Jkm0uFOqsOeqQbmcOmrU/W+NjP06h0ktG4yLKldBriyvsF1BrAu8FLxAZXjYtDfdM
         L7WzLw6c0AUxXfSTihvtilhZ5vjUqPuhHi5SttXeXOv6gc2fE5P7gcWFSNGRGXq8tsYp
         f+OlcFTrdbm5sU+xcPrpVIKDfBvovj3Nisw/OJoRRkIdqDbR1OFkRs9M+rV5Q5kvKXEF
         gPtWKWrJGGZ8eUKWgVc6HUBRjXLguuaTyOFQT7FpP9VDeeVfj3WxQFQ4v/k4vaH1ak9M
         zB679cC/6d26GfVi7wYvegM6hhbpwYGRI2VdBWhEOKxZzF+G4v1L9ZecQ2CyrTMuG5kR
         HsBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@g001.emailsrvr.com header.s=20190322-9u7zjiwi header.b="UGn/L4Cr";
       dkim=pass header.i=@mev.co.uk header.s=20190130-41we5z8j header.b=B0omTPQN;
       spf=pass (google.com: domain of abbotti@mev.co.uk designates 173.203.187.97 as permitted sender) smtp.mailfrom=abbotti@mev.co.uk
Return-Path: <abbotti@mev.co.uk>
Received: from smtp97.iad3a.emailsrvr.com (smtp97.iad3a.emailsrvr.com. [173.203.187.97])
        by gmr-mx.google.com with ESMTPS id x65si246142oig.5.2019.11.03.13.30.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Nov 2019 13:30:10 -0800 (PST)
Received-SPF: pass (google.com: domain of abbotti@mev.co.uk designates 173.203.187.97 as permitted sender) client-ip=173.203.187.97;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@g001.emailsrvr.com header.s=20190322-9u7zjiwi header.b="UGn/L4Cr";
       dkim=pass header.i=@mev.co.uk header.s=20190130-41we5z8j header.b=B0omTPQN;
       spf=pass (google.com: domain of abbotti@mev.co.uk designates 173.203.187.97 as permitted sender) smtp.mailfrom=abbotti@mev.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
	s=20190322-9u7zjiwi; t=1572816609;
	bh=Q6YBZlCcpH7SGyLNjIWrWgxqFY6lsVSeiGXE1Qecrz8=;
	h=Subject:To:From:Date:From;
	b=UGn/L4CrbsMRun7CnhNEkXX3FnpuF6GtLwdakfsoN4bmzrAgUrgPPGCIoXZfE6wC/
	 LehHU9ShjtP5qyHNC6iJejs3SFf9UrXawYrG0T+EtynQ3lMTUi8sPl3VBRWMg0AQ/1
	 C7wJqBrrwlxK3k48DuNxdrT2+UHRoQHEBY2kVbws=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
	s=20190130-41we5z8j; t=1572816609;
	bh=Q6YBZlCcpH7SGyLNjIWrWgxqFY6lsVSeiGXE1Qecrz8=;
	h=Subject:To:From:Date:From;
	b=B0omTPQN+6rlQyBapEkgCeD6uOPSRgWoMDML46H5S675qaBnF9quRTzF6UBZJaehx
	 CGhEP28ozWoMwfNIs5Nr8RiKT0our9DWM0YNrdGjsLk9eDPQ4zMfCXiyjOKWw02i6q
	 R7xwrUjQWLZrGSYWRLk28XwqTzcSsJnZq+gII8PI=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp21.relay.iad3a.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id 1639E23ED3;
	Sun,  3 Nov 2019 16:30:08 -0500 (EST)
X-Sender-Id: abbotti@mev.co.uk
Received: from [192.168.1.35] (redmecca.plus.com [80.229.15.156])
	(using TLSv1.2 with cipher AES128-SHA)
	by 0.0.0.0:587 (trex/5.7.12);
	Sun, 03 Nov 2019 16:30:09 -0500
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: rewrite macro
 function with GNU extension
To: Julia Lawall <julia.lawall@lip6.fr>, Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 hsweeten@visionengravers.com
References: <20191103201740.25415-1-jbi.octave@gmail.com>
 <alpine.DEB.2.21.1911032119140.2557@hadrien>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <993d25d3-bc6c-7fce-c369-7e6d587d1310@mev.co.uk>
Date: Sun, 3 Nov 2019 21:30:07 +0000
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1911032119140.2557@hadrien>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 03/11/2019 20:20, Julia Lawall wrote:
> 
> 
> On Sun, 3 Nov 2019, Jules Irenge wrote:
> 
>> Rewrite macro function with GNU extension
>> to remove a possible side-effects of MACRO argument reuse "x".
>> Issue detected by checkpatch tool
>>
>> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
>> ---
>>   drivers/staging/comedi/comedi.h | 6 ++++--
>>   drivers/staging/wfx/queue.c     | 2 +-
>>   2 files changed, 5 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/comedi/comedi.h b/drivers/staging/comedi/comedi.h
>> index 09a940066c0e..d8a8eec82930 100644
>> --- a/drivers/staging/comedi/comedi.h
>> +++ b/drivers/staging/comedi/comedi.h
>> @@ -1103,8 +1103,10 @@ enum ni_common_signal_names {
>>
>>   /* *** END GLOBALLY-NAMED NI TERMINALS/SIGNALS *** */
>>
>> -#define NI_USUAL_PFI_SELECT(x)	(((x) < 10) ? (0x1 + (x)) : (0xb + (x)))
>> -#define NI_USUAL_RTSI_SELECT(x)	(((x) < 7) ? (0xb + (x)) : 0x1b)
>> +#define NI_USUAL_PFI_SELECT(x)		\
>> +	({typeof(x) x_ = (x); (x_ < 10) ? (0x1 + x_) : (0xb + x_); })
>> +#define NI_USUAL_RTSI_SELECT(x)		\
>> +	({typeof(x) x_ = (x); (x_ < 7) ? (0xb + x_) : 0x1b; })
> 
> It seems like a clever idea, but could these be functions?  The only
> problem could be if the arguments have different types a the different
> uses.  If that is the case, it would be good to mention that in the log
> message.

Since the stuff in "comedi.h" is intended to be UAPI, I think it would 
be preferable to avoid GNU extensions. static inline functions would be 
more acceptable.

> 
>>
>>   /*
>>    * mode bits for NI general-purpose counters, set with
>> diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
>> index ef3ee55cf621..5d29bce65f71 100644
>> --- a/drivers/staging/wfx/queue.c
>> +++ b/drivers/staging/wfx/queue.c
>> @@ -565,7 +565,7 @@ struct hif_msg *wfx_tx_queues_get(struct wfx_dev *wdev)
>>   		}
>>
>>   		if (ret)
>> -			return 0;
>> +			return NULL;
> 
> This seems to be left over from some other change.

Indeed, it seems so!

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-

