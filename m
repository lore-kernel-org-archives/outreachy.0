X-GM-THRID: 6204754090721804288
X-Received: by 10.112.72.39 with SMTP id a7mr2153770lbv.1.1444664938060;
        Mon, 12 Oct 2015 08:48:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.105.3 with SMTP id gi3ls857741wib.13.canary; Mon, 12 Oct
 2015 08:48:57 -0700 (PDT)
X-Received: by 10.180.105.98 with SMTP id gl2mr3056007wib.0.1444664937631;
        Mon, 12 Oct 2015 08:48:57 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id i8si362754wib.1.2015.10.12.08.48.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 08:48:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x235.google.com with SMTP id ge5so155354384wic.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 08:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=YKdcO2N6J9Eit8ENJTgwVxXXR71QAo/HyV+/+8Kpin8=;
        b=j2BLF9yWp+o1LcNFaI0wFykOuf/PwppLfbmJlsYj5wvy0MThHuf+IEIoHTtnZDdTCv
         QJmLNLOseybD0VZq2+Te5X2y3bAgcVQt81J8warv/Ovg9t5QWb7vxqg+QKO1ZZk6maXq
         BwT2o4wLed7IYn4KEtX8Urf5ajA8VfNRo2rBLlGJSUujNSA2Q51weliEK6pwvcoA4HRL
         5KcxoEfxXvR3zKOsZNpINLV8IHRW1gyiOeRhkwg02CuCF3Q80SC/ennPKg7yphbdlVjf
         4DV/FBqXFpvTjruCviFH1nj+E/T1toLM6Ex0DpZWLQuWeRgzAdtZh35b3wbwVau2mSQY
         rAQA==
MIME-Version: 1.0
X-Received: by 10.194.52.6 with SMTP id p6mr34992927wjo.119.1444664937504;
 Mon, 12 Oct 2015 08:48:57 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Mon, 12 Oct 2015 08:48:57 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.11.1510122108570.26851@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <cover.1444655924.git.shivanib134@gmail.com>
	<c122920d4c47aae820bb3a350cdb8511376b0c3c.1444655924.git.shivanib134@gmail.com>
	<alpine.DEB.2.11.1510122108570.26851@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
Date: Mon, 12 Oct 2015 21:18:57 +0530
Message-ID: <CAKHNQQHnYQ3jR3iyzkWbSOLr6EMDMpL+jjv2=A2QBy=Yy+3qBg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/3] Staging: wilc1000: host_interface:
 Remove extra NULL test
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 12, 2015 at 9:12 PM, Shraddha Barke <shraddha.6596@gmail.com> wrote:
>
>
> On Mon, 12 Oct 2015, Shivani Bhardwaj wrote:
>
>> Remove NULL test statement as it is preceded by another NULL test on the
>> same variable in the code.
>> Issue found using coccinelle.
>
>
> While you are at it, you might want to consider taking a closer look at this
> file. There are other instances of unnecessary null test which can be
> found using Coccinelle.I didn't work on this one since you already are :)
>
> Shraddha

Thanks! Are you writing your own cocci scripts? I used the one made
available by Julia, it finds only one.

>>
>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>> drivers/staging/wilc1000/host_interface.c | 7 ++-----
>> 1 file changed, 2 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/staging/wilc1000/host_interface.c
>> b/drivers/staging/wilc1000/host_interface.c
>> index d279eba..b6eea9a 100644
>> --- a/drivers/staging/wilc1000/host_interface.c
>> +++ b/drivers/staging/wilc1000/host_interface.c
>> @@ -6038,11 +6038,8 @@ s32 host_int_deinit(tstrWILC_WFIDrv *hWFIDrv)
>>         if (ret)
>>                 s32Error = -ENOENT;
>>
>> -       if (pstrWFIDrv != NULL) {
>> -               kfree(pstrWFIDrv);
>> -               /* pstrWFIDrv=NULL; */
>> -
>> -       }
>> +       kfree(pstrWFIDrv);
>> +       /* pstrWFIDrv=NULL; */
>>
>>         clients_count--; /* Decrease number of created entities */
>>         terminated_handle = NULL;
>> --
>> 2.1.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups
>> "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an
>> email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit
>> https://groups.google.com/d/msgid/outreachy-kernel/c122920d4c47aae820bb3a350cdb8511376b0c3c.1444655924.git.shivanib134%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>
>

