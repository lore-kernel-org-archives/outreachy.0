X-GM-THRID: 6257098330259587072
X-Received: by 10.50.178.145 with SMTP id cy17mr2870182igc.10.1456845073824;
        Tue, 01 Mar 2016 07:11:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.145 with SMTP id f17ls2847671qgd.27.gmail; Tue, 01 Mar
 2016 07:11:13 -0800 (PST)
X-Received: by 10.140.143.200 with SMTP id 191mr17222057qhp.3.1456845073166;
        Tue, 01 Mar 2016 07:11:13 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-oi0-x230.google.com (mail-oi0-x230.google.com. [2607:f8b0:4003:c06::230])
        by gmr-mx.google.com with ESMTPS id i9si1431712igg.1.2016.03.01.07.11.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 07:11:13 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c06::230 as permitted sender) client-ip=2607:f8b0:4003:c06::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c06::230 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x230.google.com with SMTP id d205so47775075oia.0
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 07:11:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=Gc37eWXZ97JSwloChjNXeDw+5I72KB7+pEVrT/r3wAI=;
        b=pUAcRupz8lw8ZzYbCuMAe1IHAY2Wn9i0hHiTCSxqhLd6D9lUMJ0lqXN7jm4TJlFplx
         A/EK0mqzDWnXsaozARLWK1s6ThCiKwNvDbh6M/TugeMqF2XEZg1v942UZBX0v2D/YnLI
         eOVbG7ajURJ7b5KImvk1GCgMmDeYwGPBcM0N0pqV3FhCY7weeSGCBiD/87h4Lg49SM6q
         njmfgLbI+6so8EE+Zf/4plA3a5TrQ7fOpJtodc1MWYERldQLyhfBskHRJlyQ1RrI9+67
         kGkEOSJRIEALpR3W2D0lpnqs4IWYvZ5CYybepHWtOMwAu0iYY/rWMZF9o+GrnWSk9Laz
         farg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=Gc37eWXZ97JSwloChjNXeDw+5I72KB7+pEVrT/r3wAI=;
        b=Vjh1dY56NZ5IyAhQE1/ZzrBfndMoz98QmRFEHOl+PXph6mAFORkmqyh7CtmSxZOme2
         exK60q0SLbKObCBWe+OXHGoC+kYZxiWoMKfzz0FUEX2UlaW2UgbnqMRpKxGOewBpsZBA
         K6wR/DDjvJh3OKsHfroz1dlTCFzMib53vuajhL5gVZCWUBd8W30Ye3KZmjLHfitCqB+T
         frWtWAc0EB58+qDsLI570flJZJKx3PxYGvq0ZaTehv7esaHmz9HUP+LWE6FzseYCrNl3
         eQrfgyKtc7ByVxowXd1JhbzuS95w8JlVmKqUW46e4mrlCFRJxXZiG2vq2tet8p9rStcs
         3ZMw==
X-Gm-Message-State: AD7BkJIx752GOiZPp5SyGjM3UzMHgKIm5sK+RrhMEC5yd3eJ278fHDdJD3/hr/7V8eWpEkQgQwrFLIl9j7Lwhg==
MIME-Version: 1.0
X-Received: by 10.202.217.136 with SMTP id q130mr16244314oig.127.1456845072933;
 Tue, 01 Mar 2016 07:11:12 -0800 (PST)
Received: by 10.157.40.174 with HTTP; Tue, 1 Mar 2016 07:11:12 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1603011601100.2624@hadrien>
References: <1456844212-29057-1-git-send-email-bhumirks@gmail.com>
	<alpine.DEB.2.10.1603011601100.2624@hadrien>
Date: Tue, 1 Mar 2016 20:41:12 +0530
Message-ID: <CAOH+1jG58L8Mjg2bO3t48bMoCJgR0=Di-sbHi0vj7DCWqOBbqw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192e: Use kzalloc instead
 of kmalloc and memset
From: Bhumika Goyal <bhumirks@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 1, 2016 at 8:31 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Tue, 1 Mar 2016, Bhumika Goyal wrote:
>
>> The code in this patch allocates some memory and then clears it. The
>> function kzalloc does the both so replace kmalloc and memset with
>> kzalloc.
>> Done using coccinelle:
>>
>> @@
>> expression e,e1,e2;
>> @@
>> - e=kmalloc(e1,e2);
>> + e=kzalloc(e1,e2);
>> if(!e)
>>   return NULL;
>> ...
>> - memset(e,...);
>>
>> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> ---
>>  drivers/staging/rtl8192e/rtllib_tx.c | 3 +--
>>  1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8192e/rtllib_tx.c b/drivers/staging/rtl8192e/rtllib_tx.c
>> index 58fc70e..1642f29 100644
>> --- a/drivers/staging/rtl8192e/rtllib_tx.c
>> +++ b/drivers/staging/rtl8192e/rtllib_tx.c
>> @@ -221,12 +221,11 @@ static struct rtllib_txb *rtllib_alloc_txb(int nr_frags, int txb_size,
>>       struct rtllib_txb *txb;
>>       int i;
>>
>> -     txb = kmalloc(sizeof(struct rtllib_txb) + (sizeof(u8 *) * nr_frags),
>> +     txb = kzalloc(sizeof(struct rtllib_txb) + (sizeof(u8 *) * nr_frags),
>>                     gfp_mask);
>>       if (!txb)
>>               return NULL;
>>
>> -     memset(txb, 0, sizeof(struct rtllib_txb));
>
> The sizes are not the same.  I don't know if this is a performance issue.
>

By sizes do you mean the size of memory allocated by kmalloc and
kzalloc?  I think this won't be an issue when the second argument is
GFP_KERNEL.

Thanks,
Bhumika
> julia
>
>>       txb->nr_frags = nr_frags;
>>       txb->frag_size = cpu_to_le16(txb_size);
>>
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1456844212-29057-1-git-send-email-bhumirks%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

