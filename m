X-GM-THRID: 6203951800553308160
X-Received: by 10.112.209.73 with SMTP id mk9mr4394758lbc.14.1444558261737;
        Sun, 11 Oct 2015 03:11:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.230.226 with SMTP id tb2ls635161wic.49.canary; Sun, 11 Oct
 2015 03:11:01 -0700 (PDT)
X-Received: by 10.180.10.202 with SMTP id k10mr1654362wib.2.1444558261366;
        Sun, 11 Oct 2015 03:11:01 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id q6si258363wif.2.2015.10.11.03.11.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Oct 2015 03:11:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id ge5so117471347wic.0
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Oct 2015 03:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Cw11CSl7yFn1Ub2OO4bQpSKNsFcIvbKjr9+4gRyfaKc=;
        b=pY1mM+fGtagQMBMLZvd3Y6s/hZl8m58VcQ5E/mR98Qr647R47hlzJKB1eSKgHu+N9i
         o+dhfBPSGWGqr8yMf8/HhCfOliRvQE6MmM9Yt88+H2NojtLinKTrxCC2esIudbgR03F8
         uG8foesaOmbm4kMqXvyVMRDsMRKZb8BI79CODssI/pziznQz+OoL0rj7GiyaAddD2iac
         KlibAFi7eF3o9tOf5Uf5YmcmxhCbWWN3LZ3GhJjmyX5A65R06aDuiNmUgOaZ+FysnlUO
         F9KObHgnUDTGOCJ3/U4Puj3ttlGw9hria8P3XQy3l602uRphwYkPuRQ0x/u5CgWxG10C
         qibg==
MIME-Version: 1.0
X-Received: by 10.194.7.97 with SMTP id i1mr27231371wja.87.1444558261274; Sun,
 11 Oct 2015 03:11:01 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Sun, 11 Oct 2015 03:11:01 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1510111159100.2052@localhost6.localdomain6>
References: <cover.1444469447.git.shivanib134@gmail.com>
	<0e904876eb0c4ce2c937f9b1c54afb1039ac83c6.1444469447.git.shivanib134@gmail.com>
	<alpine.DEB.2.02.1510101221490.2065@localhost6.localdomain6>
	<CAKHNQQGXQNjUy4Jgjftjb4dYotgE44vTdHbpHTjocUuro=twOg@mail.gmail.com>
	<alpine.DEB.2.02.1510111159100.2052@localhost6.localdomain6>
Date: Sun, 11 Oct 2015 15:41:01 +0530
Message-ID: <CAKHNQQEG3=rRUe1_xjATZcws3+1BDWzL3L9E2ZgZxeWQRrADEQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] Staging: vt6655: rxtx: Remove
 unnecessary space character
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 11, 2015 at 3:31 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sun, 11 Oct 2015, Shivani Bhardwaj wrote:
>
>> On Sat, Oct 10, 2015 at 3:53 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> > On Sat, 10 Oct 2015, Shivani Bhardwaj wrote:
>> >
>> >> Remove unnecessary space character after the variable RATE_16M.
>> >> Fixes the warning by checkpatch : space prohibited before
>> >> that ',' (ctx:WxW)
>> >>
>> >> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> >> ---
>> >> Changes in v2:
>> >>       -Make the commit message better and clearer.
>> >>
>> >>  drivers/staging/vt6655/rxtx.c | 2 +-
>> >>  1 file changed, 1 insertion(+), 1 deletion(-)
>> >>
>> >> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
>> >> index 5875d65..a909128 100644
>> >> --- a/drivers/staging/vt6655/rxtx.c
>> >> +++ b/drivers/staging/vt6655/rxtx.c
>> >> @@ -78,7 +78,7 @@ static const unsigned short wFB_Opt0[2][5] = {
>> >>  };
>> >>  static const unsigned short wFB_Opt1[2][5] = {
>> >>       {RATE_12M, RATE_18M, RATE_24M, RATE_24M, RATE_36M}, /* fallback_rate0 */
>> >> -     {RATE_6M , RATE_6M,  RATE_12M, RATE_12M, RATE_18M}, /* fallback_rate1 */
>> >> +     {RATE_6M, RATE_6M,  RATE_12M, RATE_12M, RATE_18M}, /* fallback_rate1 */
>> >
>> > It looks lik ethere was a goal to get the constants and comment to line
>> > up, which doesn't seem to occur any more.  Maybe you could move the comma
>> > without breaking the alignment.
>> >
>> > julia
>> >
>>
>> How has the alignment been disturbed here, I do not understand. Can
>> you please tell, Julia?
>
> In the old code, the R of the second RATE_6M was aligned with the R of the
> RATE_18M just above.  Now the R of the second RATE_6M is one character to
> the left.  Before at the place you corrected, there was " , ", and you
> changed it to ", ".  But to preserve the alignment, you could change it to
> ",  ".  Then all the RATEs will line up and the comment will line up.
>
> You could also consider that this alignment is not important.  But then
> there should be ", " in every case, not sometimes ",  ".
>
> julia
>

Thank you, Julia! I'm fixing this.

>>
>> >>  };
>> >>
>> >>  #define RTSDUR_BB       0
>> >> --
>> >> 2.1.0
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/0e904876eb0c4ce2c937f9b1c54afb1039ac83c6.1444469447.git.shivanib134%40gmail.com.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKHNQQGXQNjUy4Jgjftjb4dYotgE44vTdHbpHTjocUuro%3DtwOg%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

