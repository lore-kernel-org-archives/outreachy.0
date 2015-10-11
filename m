X-GM-THRID: 6203951800553308160
X-Received: by 10.180.189.49 with SMTP id gf17mr1620657wic.6.1444556835623;
        Sun, 11 Oct 2015 02:47:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.153.196 with SMTP id b187ls444806lfe.80.gmail; Sun, 11 Oct
 2015 02:47:14 -0700 (PDT)
X-Received: by 10.112.130.41 with SMTP id ob9mr4341827lbb.17.1444556834293;
        Sun, 11 Oct 2015 02:47:14 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id h2si273401wiy.0.2015.10.11.02.47.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Oct 2015 02:47:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x230.google.com with SMTP id q8so19447154wij.0
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Oct 2015 02:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=pOq9H32cMGdyxm63LDyMY/bKDNelvxRCT14coXOPIzY=;
        b=VYxkL7Yu65f4ehp4AReUU1eoz/j1rZmSrAKjjDyZ8oM1HejNqM1LdHt9KtZyn9N3BO
         o82wvDBDPj2HQXQH5LWcqrWZrJje3W7+E0Uq8NQrv2CwalWKAnxGqPRpP+rX7M3CLJ8q
         LNehYV7Bb9A9hHDy+TrfKDrDYksYCdgpz+i+hhK3WEqaCkulY0dSR94jhlMkE1XsZvN3
         qX9OJvUGZMyGLoilF5w/iX/lVRALD49iNqOAx9pinkH+a+OWH2leigA3ummr12MuwxH7
         szLWgax2c/vx9yiuIXVbWE9NakYiAyY2lNi6Jw6rwTaI49qQm9HQ/HPNRgMWwYHZfejd
         TNKg==
MIME-Version: 1.0
X-Received: by 10.194.116.197 with SMTP id jy5mr24496559wjb.86.1444556834158;
 Sun, 11 Oct 2015 02:47:14 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Sun, 11 Oct 2015 02:47:14 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1510101221490.2065@localhost6.localdomain6>
References: <cover.1444469447.git.shivanib134@gmail.com>
	<0e904876eb0c4ce2c937f9b1c54afb1039ac83c6.1444469447.git.shivanib134@gmail.com>
	<alpine.DEB.2.02.1510101221490.2065@localhost6.localdomain6>
Date: Sun, 11 Oct 2015 15:17:14 +0530
Message-ID: <CAKHNQQGXQNjUy4Jgjftjb4dYotgE44vTdHbpHTjocUuro=twOg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] Staging: vt6655: rxtx: Remove
 unnecessary space character
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 10, 2015 at 3:53 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Sat, 10 Oct 2015, Shivani Bhardwaj wrote:
>
>> Remove unnecessary space character after the variable RATE_16M.
>> Fixes the warning by checkpatch : space prohibited before
>> that ',' (ctx:WxW)
>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>> Changes in v2:
>>       -Make the commit message better and clearer.
>>
>>  drivers/staging/vt6655/rxtx.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
>> index 5875d65..a909128 100644
>> --- a/drivers/staging/vt6655/rxtx.c
>> +++ b/drivers/staging/vt6655/rxtx.c
>> @@ -78,7 +78,7 @@ static const unsigned short wFB_Opt0[2][5] = {
>>  };
>>  static const unsigned short wFB_Opt1[2][5] = {
>>       {RATE_12M, RATE_18M, RATE_24M, RATE_24M, RATE_36M}, /* fallback_rate0 */
>> -     {RATE_6M , RATE_6M,  RATE_12M, RATE_12M, RATE_18M}, /* fallback_rate1 */
>> +     {RATE_6M, RATE_6M,  RATE_12M, RATE_12M, RATE_18M}, /* fallback_rate1 */
>
> It looks lik ethere was a goal to get the constants and comment to line
> up, which doesn't seem to occur any more.  Maybe you could move the comma
> without breaking the alignment.
>
> julia
>

How has the alignment been disturbed here, I do not understand. Can
you please tell, Julia?

>>  };
>>
>>  #define RTSDUR_BB       0
>> --
>> 2.1.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/0e904876eb0c4ce2c937f9b1c54afb1039ac83c6.1444469447.git.shivanib134%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

