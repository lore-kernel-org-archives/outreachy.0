X-GM-THRID: 6205817882698317824
X-Received: by 10.194.83.169 with SMTP id r9mr1974105wjy.6.1444905785608;
        Thu, 15 Oct 2015 03:43:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.20.92 with SMTP id k89ls29608lfi.16.gmail; Thu, 15 Oct 2015
 03:43:05 -0700 (PDT)
X-Received: by 10.112.63.165 with SMTP id h5mr2035120lbs.18.1444905785022;
        Thu, 15 Oct 2015 03:43:05 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id c1si447662wiv.3.2015.10.15.03.43.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 03:43:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id ll6so11958478wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 03:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=8Q3nimp3Bk58WqB96HXlxNE3iRP2f791/GFK8N+YQo8=;
        b=V0d0QPhbbVJLqcl44bbGgFf//igq7QocD+4i7TMkYbStRmty9cIs/xL+L2BW0iyHwI
         IgAtI8RUeC8R11twJJSaKkaUwoQ8BFrgZx7K9n9Bmqef+gswzlJcBgZ5T3827A1EmYVg
         At5QDTMoneErOEHhcribnIKB8+uwgjkUWMiLknySsOa66pEN9UF4W6CLWXLbz8VRwBMu
         Lm5wixTBcUnrzW0RxVu0jcHofU5esst5/tGEOanAcLWjLhFbI1UCRvC7cWpeGCeVHfyK
         dCPgSAFQM09nITIsat5Oa0thA123jMg/lY8iB6COYub1Udo+BxxEUP5ipntdUmCRlWV4
         wBpw==
MIME-Version: 1.0
X-Received: by 10.180.38.13 with SMTP id c13mr11371619wik.48.1444905784900;
 Thu, 15 Oct 2015 03:43:04 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Thu, 15 Oct 2015 03:43:04 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510151232590.2350@hadrien>
References: <20151015102240.GA17961@ubuntu>
	<alpine.DEB.2.10.1510151232590.2350@hadrien>
Date: Thu, 15 Oct 2015 16:13:04 +0530
Message-ID: <CAKHNQQHpKbm764rqrO0Tarp25QtYy-h7TVBjXK7_s+n3_XY+bw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: most: cdev: Remove
 unnecessary check
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 15, 2015 at 4:03 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Thu, 15 Oct 2015, Shivani Bhardwaj wrote:
>
>> The variable mbo is already NULL tested so, check on it should be
>> removed.
>> Semantic patch used:
>>
>> @@ expression E;
>> statement S1, S2, S3; @@
>> if(E==NULL) {... return ...;}
>> else S1
>> - if(E==NULL)
>>   S2
>> - else S3
>
> I don't think that this semantic patch actually matches the code below.
>
> julia
>

I'm sorry. I've sent another version. I've tested that on a dummy file.
Thank you.

>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>>  drivers/staging/most/aim-cdev/cdev.c | 3 +--
>>  1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/most/aim-cdev/cdev.c b/drivers/staging/most/aim-cdev/cdev.c
>> index 930ada0..5dc5608 100644
>> --- a/drivers/staging/most/aim-cdev/cdev.c
>> +++ b/drivers/staging/most/aim-cdev/cdev.c
>> @@ -207,8 +207,7 @@ static ssize_t aim_write(struct file *filp, const char __user *buf,
>>       }
>>       return actual_len - retval;
>>  error:
>> -     if (mbo)
>> -             most_put_mbo(mbo);
>> +     most_put_mbo(mbo);
>>       return err;
>>  }
>>
>> --
>> 2.1.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151015102240.GA17961%40ubuntu.
>> For more options, visit https://groups.google.com/d/optout.
>>

