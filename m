X-GM-THRID: 6330925606572654592
X-Received: by 10.237.39.71 with SMTP id n65mr156068qtd.53.1474035902747;
        Fri, 16 Sep 2016 07:25:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.61.202 with SMTP id l68ls6340859otc.1.gmail; Fri, 16 Sep
 2016 07:25:02 -0700 (PDT)
X-Received: by 10.237.41.70 with SMTP id s64mr152390qtd.37.1474035902371;
        Fri, 16 Sep 2016 07:25:02 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yb0-x241.google.com (mail-yb0-x241.google.com. [2607:f8b0:4002:c09::241])
        by gmr-mx.google.com with ESMTPS id v21si265511ywa.7.2016.09.16.07.25.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 07:25:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::241 as permitted sender) client-ip=2607:f8b0:4002:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yb0-x241.google.com with SMTP id x93so2688141ybh.0
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 07:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=3A67PpvSQwYCIAu/Z8R8gYd3shytAu7qmq5TsBa0wzc=;
        b=ry4QWO7wsDp29lf1XVJwn4Gznj9sDjiA3kqY9yNoVXR8pHoDN4dDOQ/kNHMxdqY19V
         Zen4xwn6Jp0NjGWFO3Sk/tdpY9T4N8dQJg75uXq9Cs9a/6zLEOGE8iOYvpVb5n890bvc
         l5yRwfqMzLed9geACYFjN3PNU0D/PJqH9gZPZAOgfcuixd2Rl9LR7u5AIUxAIKVOh5Bf
         lofZeocZvdhzEkkS7wPv4KWIQd+jHYmQaAoNIBAQ4iY40eYjLU+pdFfB4ycf1AgqiFXl
         L3WRDZDKcB4NySbLMK8fXPYlOEh2ydTv4GMXUln+Ro7R5gM7SmgBB41MCFcS1I0pO11m
         q48g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=3A67PpvSQwYCIAu/Z8R8gYd3shytAu7qmq5TsBa0wzc=;
        b=Ys642mkohAWidvEbk3eBBimyg6IHBs2eA7JEC/vDnmb4dAJlvxyd84p7zUr0tzzZNy
         SSBrkSKmbpKlbtTUyAwVqQaG0XUeclMjwguZPvEMhV9M05q6sKBywi6xipf+xajkCsoS
         s+MS4GzBmJLauwUkWn3vksacBpvhJp9PW1MU3AGi2wBRNeRVLvdZRiBlr/Dwz1VrTWs0
         leJ3m/Gn5JVG+05k6/0Fg2vPRmieHL6Ul20RAenAHabnfvJWYLMsObEhOfEyelj9J9dB
         W0F/dv5/wBSmaZAssRKjHzdBpLTxw6fPl3qJ/F/iQ0qc4caQyj1LKxRbq4XhFHQmghHu
         uTUw==
X-Gm-Message-State: AE9vXwPrC6veDpCIDrtC5HdsZ0zA3p1lLEvh+vOL21ZHRjBhUdkcS/pvQLAk738Q7rjgQo5u8ZWLZRYQHaEzaA==
X-Received: by 10.37.5.134 with SMTP id 128mr767348ybf.33.1474035902167; Fri,
 16 Sep 2016 07:25:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.41.132 with HTTP; Fri, 16 Sep 2016 07:24:21 -0700 (PDT)
In-Reply-To: <20160916140528.GA391@kroah.com>
References: <cover.1474032241.git.karniksayli1995@gmail.com>
 <78d72b736673b2c871b591b694e8cbee35056f93.1474032241.git.karniksayli1995@gmail.com>
 <20160916140528.GA391@kroah.com>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Fri, 16 Sep 2016 19:54:21 +0530
Message-ID: <CAKG5xWiK5mhE4Rx1YFkhd3-C4qfbVd3eP6ocnZf7-yCTU+QPag@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] staging: ks7010: Remove unnecessary blank lines
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Sep 16, 2016 at 7:35 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Fri, Sep 16, 2016 at 07:20:37PM +0530, sayli karnik wrote:
>> The patch removes unnecessary blank lines as detected by checkpatch.pl.
>>
>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
>> ---
>> v2: Code under comments removed as suggested by Julia.
>>
>>  drivers/staging/ks7010/ks7010_sdio.c | 5 -----
>>  1 file changed, 5 deletions(-)
>>
>> diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
>> index b0c6f93..bee7504 100644
>> --- a/drivers/staging/ks7010/ks7010_sdio.c
>> +++ b/drivers/staging/ks7010/ks7010_sdio.c
>> @@ -180,8 +180,6 @@ int _ks_wlan_hw_power_save(struct ks_wlan_private *priv)
>>
>>       if (priv->reg.operation_mode == MODE_INFRASTRUCTURE &&
>>           (priv->connect_status & CONNECT_STATUS_MASK) == CONNECT_STATUS) {
>> -
>> -             //DPRINTK(1,"psstatus.status=%d\n",atomic_read(&priv->psstatus.status));
>
> That is not a "unnecessary blank line" :(
>
> Please update your changelog text when you do something else in the
> patch...
>
> thanks,
>
> greg k-h

Yes I'll update the changelog and send a v3.

thanks,

sayli

