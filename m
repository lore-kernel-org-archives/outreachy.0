X-GM-THRID: 6394809093953945600
X-Received: by 10.157.51.111 with SMTP id u44mr634552otd.129.1488909434432;
        Tue, 07 Mar 2017 09:57:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.31.133 with SMTP id f127ls385054iof.27.gmail; Tue, 07 Mar
 2017 09:57:13 -0800 (PST)
X-Received: by 10.99.226.3 with SMTP id q3mr800337pgh.129.1488909433558;
        Tue, 07 Mar 2017 09:57:13 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-io0-x242.google.com (mail-io0-x242.google.com. [2607:f8b0:4001:c06::242])
        by gmr-mx.google.com with ESMTPS id f73si226738ita.1.2017.03.07.09.57.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 09:57:13 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) client-ip=2607:f8b0:4001:c06::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x242.google.com with SMTP id f84so1331444ioj.0
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 09:57:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=e/ZLg+guOLK0XNFRgHMlE5FYuVkxbSBzEERVKSqnrv4=;
        b=ERXVrsZku/d/PkYpIEWI+yq8Mi1VFbZDRtMWo8JVjWHPcoONZNKJUXm/ISKi8IXP05
         Xq8OXGVRQonmBnYjXb+hV6m/3Hr8rGx2vPgbkU8w5C78HpBCGcEF6LK42jPzrI9hogq5
         kPcF9GWDX7RPzbkMBEr+uwqlO8rYgf5lq15wOXVpIuACCrNtcS1H/3PGYMctZGvh0yg6
         6BYpyQy1wsGGaQoAbXk0iT19BZjVNCVSX+TRKnZ5E8V26lSiK5wcGN3QyC0eQXqqWsrY
         Ny0WLKR1CC1yKPBGO0LRrXkGlPRsjC8NXn0hNeYaKjpIgsCjqqmSc4U0qg9cs39lXvN0
         utLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=e/ZLg+guOLK0XNFRgHMlE5FYuVkxbSBzEERVKSqnrv4=;
        b=BwF757SsFYo+cS7XoR3d32J/XrxNwRp/9pHr4E8Tc4msYgvNH0zvTSvjc0J3Pgx+0H
         aq7Mh/hhYoILlvoqfi2E5z2RomlqTBKY2K0/BRzdlFVZjig59GuXjob2SliIdmgYvQmz
         6/w2/lp01m9FIWEmXdE0ZARbkDfaSusqKQZ7j4dwR4vhmNz7x//RLr0dWlyTdHl7IveT
         dCwvKDDTJBmffm+/uY5oZ8X/70ziHHnLI7wvSdUV8A0J9wW6J/gLhhYbBKA32gSOlwf/
         mwM4L10CRJfeyYBhjyyDDDf/B0RnRCCgNvrkxMwOeDEhSPW6p2jbfmAUboP4HuvSK2BZ
         Jp9g==
X-Gm-Message-State: AMke39nttbCKNn1yDjkhYSqk8H+WDsNDhzTHdkF/R2477/CK722TxUsayxQACCJFIHbSiDee4ywjLuCSPj+pNw==
X-Received: by 10.107.27.207 with SMTP id b198mr2037065iob.218.1488909433268;
 Tue, 07 Mar 2017 09:57:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Tue, 7 Mar 2017 09:56:42 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1703071828130.3150@hadrien>
References: <1488907371-26513-1-git-send-email-gs051095@gmail.com> <alpine.DEB.2.20.1703071828130.3150@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Tue, 7 Mar 2017 23:26:42 +0530
Message-ID: <CAOCi2DGJ-QNpvdoo5M4v320qD7dE3w-ZcvNJ8Xa0P+cYoZEhiA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: gdm724x: Replace ternary
 operator with min macro
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 7, 2017 at 11:01 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Tue, 7 Mar 2017, Gargi Sharma wrote:
>
>> Use macro min() to get the minimum of two values for
>> brevity and readability.
>>
>> Found using Coccinelle:
>> @@ type T; T x; T y; @@
>> (
>> - x < y ? x : y
>> + min(x,y)
>> |
>> - x > y ? x : y
>> + max(x,y)
>> )
>>
>> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
>> ---
>>  drivers/staging/gdm724x/gdm_tty.c | 3 +--
>>  1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/gdm724x/gdm_tty.c b/drivers/staging/gdm724x/gdm_tty.c
>> index ae39663..fc7682c 100644
>> --- a/drivers/staging/gdm724x/gdm_tty.c
>> +++ b/drivers/staging/gdm724x/gdm_tty.c
>> @@ -190,8 +190,7 @@ static int gdm_tty_write(struct tty_struct *tty, const unsigned char *buf,
>>               return 0;
>>
>>       while (1) {
>> -             sending_len = remain > MUX_TX_MAX_SIZE ? MUX_TX_MAX_SIZE :
>> -                                                      remain;
>> +             sending_len = min(MUX_TX_MAX_SIZE, remain);
>
> Just a warning on this one.  Coccinelle has no idea what the type of
> MUX_TX_MAX_SIZE is.  It just sees an identifier with all capital letters
> and assumes it's an int.  In this case, it looks ok, because remain is an
> int and MUX_TX_MAX_SIZE is small (2048).

So, can the script be modified to check bounds on the macros as well?
Also, will it be better if I edit the commit log to specify that the maximum
value of the MUX_TX_MAX_SIZE is well within the integer range.
The min macro uses typeof for strict type-checking, but I'm not sure
how it determines the type of a macro like MUX_TX_MAX_SIZE.

thanks,
gargi
>
> julia
>
>>               gdm_tty_send(gdm,
>>                            (void *)(buf + sent_len),
>>                            sending_len,
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488907371-26513-1-git-send-email-gs051095%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

