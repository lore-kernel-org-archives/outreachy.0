X-GM-THRID: 6205242953520119808
X-Received: by 10.112.54.197 with SMTP id l5mr7332462lbp.21.1444771631049;
        Tue, 13 Oct 2015 14:27:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.166 with SMTP id az6ls1130852wib.15.canary; Tue, 13 Oct
 2015 14:27:10 -0700 (PDT)
X-Received: by 10.194.94.66 with SMTP id da2mr3170085wjb.7.1444771630683;
        Tue, 13 Oct 2015 14:27:10 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id hs5si822128wib.1.2015.10.13.14.27.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 14:27:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x235.google.com with SMTP id ge5so210878693wic.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 14:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=iotZxw+qf0rrAoWNYsyS+tCs//0LI0HAux9azItGikA=;
        b=K10mno2JrllAjWCWX/CfJAVO27deorQmfi/4p4m17eSjleROBKUM/liqXhKpUpe6WL
         WjU4J1UV+ErrMzglPMvmZF+hd8fc/+PQUu1qCuLaAqiGOvCTsA0Ur7QIP5u18y3K+Kl8
         mMy/DEp3QEL1wnvRHFyk5blYKSyaqEZqAF+m8+GgCPAe7WOfpszbq6tiiVucy/8O44XT
         19qeKtCERuZX2GJBtJDEOlhar3qA/nKlTDgIHm5xgiiW5kTJkma8SLvFe+ZlfJ7nL6e3
         fmKhYE+QmvYD4ETHZk9lHEk/rucTVWWF9+zF2LrlndPKxK9iyxaxQoxKou5kGhuDJg15
         xSdA==
MIME-Version: 1.0
X-Received: by 10.180.102.230 with SMTP id fr6mr162423wib.66.1444771630576;
 Tue, 13 Oct 2015 14:27:10 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Tue, 13 Oct 2015 14:27:10 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1510132319500.2189@localhost6.localdomain6>
References: <20151013211140.GA12128@ubuntu>
	<alpine.DEB.2.02.1510132319500.2189@localhost6.localdomain6>
Date: Wed, 14 Oct 2015 02:57:10 +0530
Message-ID: <CAKHNQQFuxc=RCSeAgSMZeTPj-Q5QkzkW0T1LupqdR63=jcYF3w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: sm750fb: sm750: Remove unused code
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 2:51 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Wed, 14 Oct 2015, Shivani Bhardwaj wrote:
>
>> Remove declaration and a statement comprising of a variable which is not
>> used throughout the code.
>
> This could be a little more helpful to the reader.
>
> The variable ret is only declared and initialized to 0, but never
> referenced, so remove it.
>
> Ret is a common variable name, so mentioning it conveys some information.
>
> julia
>

v2 with updated commit message?
Thank you.

>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>>  drivers/staging/sm750fb/sm750.c | 2 --
>>  1 file changed, 2 deletions(-)
>>
>> diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
>> index 8c1ecb3..805a403 100644
>> --- a/drivers/staging/sm750fb/sm750.c
>> +++ b/drivers/staging/sm750fb/sm750.c
>> @@ -524,14 +524,12 @@ static int lynxfb_ops_check_var(struct fb_var_screeninfo *var,
>>       struct lynxfb_crtc *crtc;
>>       struct lynxfb_output *output;
>>       struct lynx_share *share;
>> -     int ret;
>>       resource_size_t request;
>>
>>       par = info->par;
>>       crtc = &par->crtc;
>>       output = &par->output;
>>       share = par->share;
>> -     ret = 0;
>>
>>       pr_debug("check var:%dx%d-%d\n",
>>                var->xres,
>> --
>> 2.1.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151013211140.GA12128%40ubuntu.
>> For more options, visit https://groups.google.com/d/optout.
>>

