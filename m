X-GM-THRID: 6395922242043117568
X-Received: by 10.107.181.129 with SMTP id e123mr6540049iof.17.1489214728702;
        Fri, 10 Mar 2017 22:45:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.170 with SMTP id 39ls157334otj.6.gmail; Fri, 10 Mar
 2017 22:45:28 -0800 (PST)
X-Received: by 10.157.0.74 with SMTP id 68mr9465434ota.133.1489214728374;
        Fri, 10 Mar 2017 22:45:28 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x243.google.com (mail-yw0-x243.google.com. [2607:f8b0:4002:c05::243])
        by gmr-mx.google.com with ESMTPS id f187si1565531ywc.0.2017.03.10.22.45.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 22:45:28 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::243 as permitted sender) client-ip=2607:f8b0:4002:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x243.google.com with SMTP id o4so5306810ywd.1
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 22:45:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=8d67i+El2hXIlBV89E34zN5u3JPu+iUOWM99NzbkfCI=;
        b=mzyBEIUQsUsVQK338eCpDhlCSl3kgmH3/rTqBTLB5IdbZNjDo6AjKl60aS6lHHEaiC
         5b5EEB/u6rxnFr6z9EZBnVIOqbuJHmm0iiAS4po/XcTwlQW4wr1PAhRBYtQVHqExm7ax
         5gWwCcpFz0BCVppQWscXdmu94TBjVhoy1g+eumf9PMgpwI53Ccm2agZpvWUxbQLaBUo2
         A5d6MDA2+aEn1EeRciBMTGCZYmDoyWHz1hZM6zYL3N7jEh0gR/AWkwNkfnOQ3Dznd5QX
         dh5i4B47RMDOtKge7fpmdC1s68nKIdbfBYDAe7a9uAUbci124nX/DoB6cK+KyHHdS3eL
         PNoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=8d67i+El2hXIlBV89E34zN5u3JPu+iUOWM99NzbkfCI=;
        b=jFjiTwrsdWkfmlJZ4H9wOUKxVByQtlmYCl1uBMKCl7O+36+PqgdyATmbR9yjKVblOL
         pPEfE+yv9ArrObDf2wn9JNFngtOIwmGi27Rgq3GWODRmHKr67cwhctZQ7nMXo5+0AeET
         yn+caySY0w//d3818xVSZvz4hh2Fz/s9glqrlRm4MIDF8hjEh8I96DOKy0/VGSl6+FQU
         SsJdqgiCQ/Dq142d1z51NmsRogs4jGHmY/6jDqZnc0UNm4Pm9DZP/ZiBVAVeSRqCxUXx
         ckllM3iOxAvwKapOMV3ySZUZHxZWe+XIhBCytTWe//OevX41YJWuCZXnK4P/BxB0Z8aA
         j4Mw==
X-Gm-Message-State: AMke39nlYUnXqr0EDQIglJmZqFWZZG1w3JjTChUAFtTpMVB4aLWzFflexnW7CxLxUusJrO4UOarVjXXPb+3JDg==
X-Received: by 10.37.161.2 with SMTP id z2mr10196788ybh.50.1489214728103; Fri,
 10 Mar 2017 22:45:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.173.10 with HTTP; Fri, 10 Mar 2017 22:44:47 -0800 (PST)
In-Reply-To: <20170310212742.GA11308@kroah.com>
References: <CAKG5xWiq5T9fgTpnb2vtCwFv4HrBnyBBtYGTpp1_zUS5k-Gq_g@mail.gmail.com>
 <20170310212742.GA11308@kroah.com>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Sat, 11 Mar 2017 12:14:47 +0530
Message-ID: <CAKG5xWjEB0QWQ732XVxTmAdyAt8Z5k4U2DWmZsxG-xKvyXA5fg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Doubt regarding use of a function
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 11, 2017 at 2:57 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Fri, Mar 10, 2017 at 10:54:10PM +0530, sayli karnik wrote:
>> ieee80211 has the following function which to me does nothing-
>> void ieee80211_tkip_null(void)
>> {
>>      printk("============>%s()\n", __func__);
>>      return;
>> }
>
> What exactly directory/file is this?
>
staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c: function definition
staging/rtl8192u/ieee80211/ieee80211_module.c: function call

>> Before its function call there is this comment-
>> /* These function were added to load crypte module autoly */
>>          ieee80211_tkip_null();
>>
>> Is this function needed in the driver?
>
> Yes, the function says what it is there for.
>
>> If not, can I send in a patch removing it?
>
> If you do, you have to fix the auto-loading of the module properly :)
>
Is there a way to do that apart from the one currently used?
> thanks,
>
> greg k-h

