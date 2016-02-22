X-GM-THRID: 6253814918113394688
X-Received: by 10.129.117.11 with SMTP id q11mr8751195ywc.3.1456120787603;
        Sun, 21 Feb 2016 21:59:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.46.73 with SMTP id j67ls1003361qga.13.gmail; Sun, 21 Feb
 2016 21:59:46 -0800 (PST)
X-Received: by 10.129.78.66 with SMTP id c63mr24435920ywb.8.1456120786928;
        Sun, 21 Feb 2016 21:59:46 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-qk0-x22d.google.com (mail-qk0-x22d.google.com. [2607:f8b0:400d:c09::22d])
        by gmr-mx.google.com with ESMTPS id v197si1315529ywa.1.2016.02.21.21.59.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 21:59:46 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c09::22d as permitted sender) client-ip=2607:f8b0:400d:c09::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c09::22d as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22d.google.com with SMTP id s5so52347323qkd.0
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 21:59:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=Hcj33vEX4ITRNkkbWmEqn+iCvlIy31DeQ0lcttkyAFQ=;
        b=vup+p7/8Ewl5iT59hzGLWCazpJ2ELfLvzMTGoYqtqiJWIPILzPS9iU0gASVr53VtAC
         5qaa3tbWoZCUar2Ex3A2dXKyvAuuMYDYKzEpYA3/tu5cvNRRE8cEFqH9GJnlBcPhP4OU
         cwZ+ElLneZPJkwPGFAFyICY8qyjQl9lrR5Z/XsxBeo3lf2HEucXVCtqfcLspcpwmZwVv
         IA8Ey7t/rtcuI1BfPU+IXyc+6lUOtCcVJ0b3/oZtU/pw1JdWiiAhUT1bkVoTSThH4qw6
         ddLdN5USNFIwu/F5gJZAGpXtpYQzRjw6cdlsfxcBcmB9nbjUo5bUvbggsoDzVnI8gPdU
         Jn1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=Hcj33vEX4ITRNkkbWmEqn+iCvlIy31DeQ0lcttkyAFQ=;
        b=UFobA0nUnxZIM11LB71Es8vfGvqPh8SKlDi1Emj8u00pDOMMdy27JFpqoEfIb5SDDN
         u2jyDJby2Eaf1ZpjfSXTLWqSziU2c9RGBB9JQ3wEhrmJ3LnZcZ5LnXJHUs+imHMu1tef
         LBrShDttpZk6GJtfAzo1PCdq5ChD8xwU0y2hZbIe9DZh9Xk0IZMn+ttbkBydlTmy7dZG
         V/g72o1U/hEaIxyMbShaxjK3Hg2cxLgzGTxjDZD0h6J7oegYVb66kX2GkZTdpdI5Y0eU
         Y0nl63F1sVc4qkRhz737NIK5uUMQrm6uSpAe0zkDocwIzMY4ctsuV8yxn4chfXwDrBux
         uLug==
X-Gm-Message-State: AG10YORoauPlge2xuKF7XqAS/u086uDB4mkcvL+5LDgaq3xYPBT77S1bf90vIkaaALeiqo/sIJAJ2NxrOxeCxg==
X-Received: by 10.55.74.86 with SMTP id x83mr31969318qka.89.1456120786754;
 Sun, 21 Feb 2016 21:59:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.209.65 with HTTP; Sun, 21 Feb 2016 21:59:07 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602211937020.2512@hadrien>
References: <20160221183624.GA3428@Karyakshetra> <alpine.DEB.2.10.1602211937020.2512@hadrien>
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Date: Mon, 22 Feb 2016 11:29:07 +0530
Message-ID: <CAFNHFT-veFJ+0-FC_9rJDV3A0uzg1RZmvGDJWnxvBhLfHoZ_7Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/4] staging: most: hdm-usb: Use macro DIV_ROUND_UP
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hello Julia,

Like you suggested, I have dropped the macro CEILING altogether and
have replaced
it with DIV_ROUND_UP.

Should I resend the patchset or should I just  send a v2  for this patch?

Thanks,
Bhaktipriya

On Mon, Feb 22, 2016 at 6:07 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Mon, 22 Feb 2016, Bhaktipriya Shridhar wrote:
>
>> The macro DIV_ROUND_UP performs the computation
>> (((n) + (d) - 1) /(d)). It clarifies the divisor calculations.
>> This was done using the coccinelle script:
>> @@
>> expression e1;
>> expression e2;
>> @@
>> (
>> - ((e1) + e2 - 1) / (e2)
>> + DIV_ROUND_UP(e1,e2)
>> |
>> - ((e1) + (e2 - 1)) / (e2)
>> + DIV_ROUND_UP(e1,e2)
>> )
>>
>> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
>> ---
>>  drivers/staging/most/hdm-usb/hdm_usb.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/most/hdm-usb/hdm_usb.c b/drivers/staging/most/hdm-usb/hdm_usb.c
>> index 3ee9e6f..29ffe51 100644
>> --- a/drivers/staging/most/hdm-usb/hdm_usb.c
>> +++ b/drivers/staging/most/hdm-usb/hdm_usb.c
>> @@ -40,7 +40,7 @@
>>  #define MAX_SUFFIX_LEN               10
>>  #define MAX_STRING_LEN               80
>>  #define MAX_BUF_SIZE         0xFFFF
>> -#define CEILING(x, y)                (((x) + (y) - 1) / (y))
>> +#define CEILING(x, y)                (DIV_ROUND_UP(x, (y)))
>
> Maybe it would be better to just drop CEILING completely?  You could lok
> at where it is used, and see if there would be any conceptul loss in just
> calling DIV_ROUND_UP.
>
> julia
>
>>
>>  #define USB_VENDOR_ID_SMSC   0x0424  /* VID: SMSC */
>>  #define USB_DEV_ID_BRDG              0xC001  /* PID: USB Bridge */
>> --
>> 2.1.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160221183624.GA3428%40Karyakshetra.
>> For more options, visit https://groups.google.com/d/optout.
>>

