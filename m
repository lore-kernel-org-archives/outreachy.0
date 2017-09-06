X-GM-THRID: 6462772146556895232
X-Received: by 10.98.224.210 with SMTP id d79mr297154pfm.47.1504732170301;
        Wed, 06 Sep 2017 14:09:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.160.204 with SMTP id o195ls57120ite.12.canary-gmail; Wed,
 06 Sep 2017 14:09:29 -0700 (PDT)
X-Received: by 10.107.137.98 with SMTP id l95mr308924iod.137.1504732169580;
        Wed, 06 Sep 2017 14:09:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504732169; cv=none;
        d=google.com; s=arc-20160816;
        b=EP0hotHykGJkBXadFnsBazzchk6cWlKDpFboET8FecsA30kNE15VgQp4Z6Fefr/BLC
         je4NJoo67JW3Zh6FYTSGGUuTWV4fCf4tqlz44P6j5iBQ/ekx86tUzGkoSFHvqaDEh5pa
         ulS+73mW/YRU/GgKtZ66UwPJu3t+kAIoGYavNALMiP8xKB2xBvDhv06C6Ff1KHGXTM4G
         Z0lQ3clJ6H7pHlGj2gQrCjDnPjvVEo2bk9/RvpTLX88ymBXWVDNkQp5R0y39UToZbocW
         BxBhrRw7Bqp6bjTtos8hw4eAbH1gkQhwLljTSVGKZeuzwHdcHHlefP40RRD9mC+hmK9s
         OUrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=b75ducsXE9datAKcb/u2od0gN/UbX2gLICUjvUAYaGY=;
        b=U19g+bqS6PX13lw55cGZ0JKy8k4XpnPIvvdMV47oBNs068dYMhlcgU69wNM9h4EEil
         HYfd3d4Z4AXEdLgSydxQjHlpyhwe/8fkDmbDUlgOnjzg4q+eLbnG8oFG6gEzZsVPgXwE
         i1RlVCPGcLotsti7Pmh2PG/eZ9axlPDABu0kk0bJo8qc70SGxTzfM8eaBncbZ4tGoQ91
         9bl7ZIGx6N3Jjb/HEZKKv+dAZLxcx1f6qp33UXQ8s+ADVLkQhogsFO6YVHksQI2+zwZU
         tbK4TgkhkDelYVNlZpL3ET2w84/bHMBKivq3E/3s1qFVhxizNvx+UpKEv6kCma5PReWL
         SPmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U8KKR2VV;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qk0-x242.google.com (mail-qk0-x242.google.com. [2607:f8b0:400d:c09::242])
        by gmr-mx.google.com with ESMTPS id u127si72865ywg.1.2017.09.06.14.09.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Sep 2017 14:09:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) client-ip=2607:f8b0:400d:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U8KKR2VV;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x242.google.com with SMTP id o77so4537073qke.2
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Sep 2017 14:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=b75ducsXE9datAKcb/u2od0gN/UbX2gLICUjvUAYaGY=;
        b=U8KKR2VVuyp1eHeHz14yT5Sg7x9cYHuCS6GENYH2T5CV18I5ec93rfff3jXzu8kV0N
         LRrJb3mysahYqJN3bIdTiuaaqUnfGD4/KQXKBGGOVUWc6iMMmZAOKUYs+MXAWoxuNUU9
         cubenln6wZ3ZwbZEgG6xdbGKN3PRIfDCp8n51epDJm4y891nK/UGXaTXbPetNquHqfJG
         GRqG72A26tcl/4kPVnZnhSsetK4ZAIxY9RuLqlHs/LjlMMctvK5VwKDXO7bN6qk8/3bk
         KjpG/V+4Lqzq9JS+QxHMJZf7eySBxudVmcNOherSRmoVAzLzRi2TyMbeYBD4bt3aiEF9
         3NMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=b75ducsXE9datAKcb/u2od0gN/UbX2gLICUjvUAYaGY=;
        b=r75Km7ad/4cqwhYGLiw5lzAJ4VWfqOusLN/cslZNRB59Ok+3ZdENK3z6WnzfexerRz
         BHZ9yhXe/9fCdpL02EiUaRBD/Wh6FBZBIxxb8+K58PcytXRq2gZmzoGnxhawpPVJElUg
         FUXTiYms2tSu8cRIBWIhgFuuFBICpGFIMZ0WjFHEwJAI3I43fCN+Yq9RdjbLz6AhND3E
         M0T3eD71gagiYtx3XdWwQhybJ7aN5purECaXrRXwRrk7hS53rbe3s9WlorYir2GzZms4
         xccu+4TYecnQqgmf1uMW6tsj57U7XW3YrlOSRycc1wU2weiFyK1ZLFfcbDAH07IMJ2Xp
         9bng==
X-Gm-Message-State: AHPjjUiira91CLjWClk746rqs310gDRHpUmI32sU2T5BUeWpdigrDA3I
	k82USLUa7wd8SR4Qi0Kww5K+HxW6Kg==
X-Google-Smtp-Source: ADKCNb5mr1kyHgC7JDABhFF5s9fKqVkqxBZ2tr4N+htIKgtIDrtBEnzlrzd0ZEjKpBvtXl6MEUQqtPhItxALUIVCfTA=
X-Received: by 10.55.176.132 with SMTP id z126mr695544qke.209.1504732169264;
 Wed, 06 Sep 2017 14:09:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Wed, 6 Sep 2017 14:09:28 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709062302040.2984@hadrien>
References: <1504731390-9536-1-git-send-email-srishtishar@gmail.com>
 <alpine.DEB.2.20.1709062258000.2984@hadrien> <CAB3L5owNmnR5poc9a3pH-fp+m7us4yztzPs9dzNRjzYVEneRgA@mail.gmail.com>
 <alpine.DEB.2.20.1709062302040.2984@hadrien>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Thu, 7 Sep 2017 02:39:28 +0530
Message-ID: <CAB3L5oxc37o9rJJNqMwPaTr9B=SMzGtcWmCJryQecRCob3zuOw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: ccree: ssi_cipher.c: Make
 comment more comprehensible.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, Gilad Ben-Yossef <gilad@benyossef.com>, 
	outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 7, 2017 at 2:32 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Thu, 7 Sep 2017, Srishti Sharma wrote:
>
>> On Thu, Sep 7, 2017 at 2:28 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Thu, 7 Sep 2017, Srishti Sharma wrote:
>> >
>> >> Edited comment to make it more comprehensible.
>> >>
>> >> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>> >> ---
>> >> Changes in v2:
>> >>  - Make comment more comprehensible , instead of just correcting typos.
>> >>  drivers/staging/ccree/ssi_cipher.c | 4 +++-
>> >>  1 file changed, 3 insertions(+), 1 deletion(-)
>> >>
>> >> diff --git a/drivers/staging/ccree/ssi_cipher.c b/drivers/staging/ccree/ssi_cipher.c
>> >> index 99232b2..fec2faa 100644
>> >> --- a/drivers/staging/ccree/ssi_cipher.c
>> >> +++ b/drivers/staging/ccree/ssi_cipher.c
>> >> @@ -702,7 +702,9 @@ static int ssi_blkcipher_complete(struct device *dev,
>> >>
>> >>       ssi_buffer_mgr_unmap_blkcipher_request(dev, req_ctx, ivsize, src, dst);
>> >>
>> >> -     /*Set the inflight counter value to local variable*/
>> >> +     /*
>> >> +      * Save inflight_counter in a local variable.
>> >> +      */
>> >
>> > This is the format for multiline comments.  Your comments is only one
>> > line.  You just need to add spaces around the text, as compared to the
>> > original version.
>> >
>> > julia
>> >
>> >>       inflight_counter =  ctx_p->drvdata->inflight_counter;
>> >>       /*Decrease the inflight counter*/
>> >>       if (ctx_p->flow_mode == BYPASS && ctx_p->drvdata->inflight_counter > 0)
>> >> --
>> >> 2.7.4
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504731390-9536-1-git-send-email-srishtishar%40gmail.com.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>
>> Okay, Thanks I'll re-send it .
>
> While it is good not to top post, you can put your response under my text,
> not all the way at the end of the message.

  Okay, will take care !

  Regards,
  Srishti

>
> julia
>
>>
>> Regards,
>> Srishti
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAB3L5owNmnR5poc9a3pH-fp%2Bm7us4yztzPs9dzNRjzYVEneRgA%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

