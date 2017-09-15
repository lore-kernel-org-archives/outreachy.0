X-GM-THRID: 6466090633212723200
X-Received: by 10.31.244.140 with SMTP id s134mr837515vkh.32.1505509658952;
        Fri, 15 Sep 2017 14:07:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.154.71 with SMTP id c68ls7823404ioe.22.gmail; Fri, 15 Sep
 2017 14:07:38 -0700 (PDT)
X-Received: by 10.13.232.16 with SMTP id r16mr16743759ywe.140.1505509658248;
        Fri, 15 Sep 2017 14:07:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505509658; cv=none;
        d=google.com; s=arc-20160816;
        b=K7Bp37Y1W4Z/+FGbA3yF8jVYqpXjYhF5zB6SXXEEoV0ZzdjzDY0FAtqkQknQvo48cL
         3oWkg2q5+OWDQXY6DyJ17TOxy0/1e85qbSsPro1mAvDADqcwULL0xa+XOd4SIGlqQTkA
         AL7hHKf8vfUR4tALkue5ty3lQoufgy4/1X3CE/a6oduJimi+Kt8VmZxhbvTyp30Q/+uu
         A15dPmjhLCd4d0bbMjb04GDT/nmnHlW2ey6KeaSdb7tf2ZR9knCKPziuyemmeiZoN+KK
         MN99yLxgtlKDrZayhYwJOTZDZHS9Qfn6r1HO4Y/8tMO210FYnAHc8FkLS8WUR2OTjiaO
         psoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=h38fOAUJS2SBEJx3TjKu0jE4hy3+Wpi5fDqHmpt+EzU=;
        b=hvSlWcdgqvIVwKQIcNpYxXj2ufyYFdIsqX4tZ3YslIUJdJSt0AGDabPPFi9A45C9yP
         zgQRcUYB2qjY9c0fnQ9Ew50hdD0E7MBZJSZO4rHD8rUC2avyfjlUU6anKFoDt8ZBxSRp
         Z9MF3+cncObqVquuaFDJyljBjc2KGqS1+ZstE134onW+uGgIcTZP2PR7eIa6UdZZlrIU
         25hVix3PgV3MY/QHxNKf+QaaPKl9ly/nqTgJus9j9hrtgFYhmOml1TgrHSzJ6wGwqE4X
         prhRf6ISjpeOO5lcU4Ez3FI6RvWVoX/O6US6ssbW5JQTkyzURJ0GWcLtMgYxVQY1vLy8
         APNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZEfr3mkC;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qk0-x241.google.com (mail-qk0-x241.google.com. [2607:f8b0:400d:c09::241])
        by gmr-mx.google.com with ESMTPS id l23si78484ywh.27.2017.09.15.14.07.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 14:07:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) client-ip=2607:f8b0:400d:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZEfr3mkC;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x241.google.com with SMTP id o77so2173738qke.2
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 14:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=h38fOAUJS2SBEJx3TjKu0jE4hy3+Wpi5fDqHmpt+EzU=;
        b=ZEfr3mkC+a7CNm64IkE8GuEvUtZ5ddM+Rqpjyn04oo5Q0kvd/mrtAyQ7usWNz0zX1d
         9a2IUmcldYMenXz5Kej7JIX5OVk0LQD4CBtdU8b9dOAMDmRXIDsrpYn/6iWEKb/zgiT9
         9/L6zAN+IweTZ8DAsyBIMY/NiSD+Rq+pek34BEMBiQEYNQt9ITMrjkrQAaP2mxn0msu+
         zu31dMWWdCvN/6jpB7EaizNAkjdAYIs+4sAhcN7q96p8EcXu2FIrughKvkL527W6Ff/U
         fLs3Qlk3sv7Y7akIuFtveZBSqe2OmeAykyqpSwU+D+udzK1OuBbG9EEc2aS6VBq2/+xL
         ty3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=h38fOAUJS2SBEJx3TjKu0jE4hy3+Wpi5fDqHmpt+EzU=;
        b=aY2wG1gOtjIdQXVdBukE3WtaeYNFB2/TTRTQindKnZbuIxF9BisC1OPm0N77ANQwxi
         HZnONYVvL2pULGAURl008yh62bGklcFm88NQxJusHusoi15yiFWKYRZzh282dnGx6MXX
         yqfNVpZRUMXHvZsSvNBWuQ2HAhucOzXRjHL/4+UbGP24juCIATAc2VgEuqj2D2tHSVa3
         wzu0l1mATyBvH/+JUV09TJannsCHpOUHePnocZ4z+ETN8S+vxpkP1wWTXzJ6tjJeM8ze
         R269Au7NkxKpivxDTK8PN+B/ZY2E/zlfPl17emaGQKLVZ9EWtoTVb1Zpl71mnzoWw3sm
         gJKg==
X-Gm-Message-State: AHPjjUj5PQrvxi9T7ohscfBjoreD4AMpwZy+goaMhI5uPADC7+1rWN0W
	vWlGibOUVU6SdldxeZqC1rglzFunstQPBiPr5uQ=
X-Google-Smtp-Source: AOwi7QAa3Ow6j6o2FzB/wZnubJrAhCOERW9tv6dOCz/kC05YnraHhwOl0J0ATAKa27QvHxToWgxFEI9JiFZTb0LQJ3Q=
X-Received: by 10.55.151.135 with SMTP id z129mr9850637qkd.119.1505509657957;
 Fri, 15 Sep 2017 14:07:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Fri, 15 Sep 2017 14:07:37 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709152200030.2533@hadrien>
References: <1505504680-22167-1-git-send-email-srishtishar@gmail.com> <alpine.DEB.2.20.1709152200030.2533@hadrien>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Sat, 16 Sep 2017 02:37:37 +0530
Message-ID: <CAB3L5oxr5K5aMo06ROCVV9ejY6a_g1+uUkjU=Z5bKTJtzUs7sA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: irda: Don't use assignment
 inside if statement
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: samuel@sortiz.org, Greg KH <gregkh@linuxfoundation.org>, netdev@vger.kernel.org, 
	devel@driverdev.osuosl.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Sat, Sep 16, 2017 at 1:30 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 16 Sep 2017, Srishti Sharma wrote:
>
>> Write assignment statement outside the if statement. Done using
>> the following semantic patch by coccinelle.
>>
>> @@
>> identifier E;
>> expression F;
>> statement S;
>> @@
>>
>> -if((E = F))
>> +E = F;
>> +if(E)
>>   S
>>
>> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>

Have sent a patchset for this instead .

Regards,
Srishti
>
>> ---
>> Changes in v2:
>>  -Semicolon was missing in one of the statements of the
>>   semantic patch
>>
>>  drivers/staging/irda/drivers/irda-usb.c | 4 ++--
>>  drivers/staging/irda/drivers/mcs7780.c  | 9 ++++++---
>>  drivers/staging/irda/net/irqueue.c      | 3 ++-
>>  3 files changed, 10 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/staging/irda/drivers/irda-usb.c b/drivers/staging/irda/drivers/irda-usb.c
>> index 723e49b..82bfc05 100644
>> --- a/drivers/staging/irda/drivers/irda-usb.c
>> +++ b/drivers/staging/irda/drivers/irda-usb.c
>> @@ -334,9 +334,9 @@ static void irda_usb_change_speed_xbofs(struct irda_usb_cb *self)
>>       urb->transfer_flags = 0;
>>
>>       /* Irq disabled -> GFP_ATOMIC */
>> -     if ((ret = usb_submit_urb(urb, GFP_ATOMIC))) {
>> +     ret = usb_submit_urb(urb, GFP_ATOMIC);
>> +     if (ret)
>>               net_warn_ratelimited("%s(), failed Speed URB\n", __func__);
>> -     }
>>  }
>>
>>  /*------------------------------------------------------------------*/
>> diff --git a/drivers/staging/irda/drivers/mcs7780.c b/drivers/staging/irda/drivers/mcs7780.c
>> index c3f0b25..2b674d5 100644
>> --- a/drivers/staging/irda/drivers/mcs7780.c
>> +++ b/drivers/staging/irda/drivers/mcs7780.c
>> @@ -605,19 +605,22 @@ static int mcs_speed_change(struct mcs_cb *mcs)
>>       if (mcs->new_speed <= 115200) {
>>               rval &= ~MCS_FIR;
>>
>> -             if ((rst = (mcs->speed > 115200)))
>> +             rst = (mcs->speed > 115200);
>> +             if (rst)
>>                       mcs_set_reg(mcs, MCS_MINRXPW_REG, 0);
>>
>>       } else if (mcs->new_speed <= 1152000) {
>>               rval &= ~MCS_FIR;
>>
>> -             if ((rst = !(mcs->speed == 576000 || mcs->speed == 1152000)))
>> +             rst = !(mcs->speed == 576000 || mcs->speed == 1152000);
>> +             if (rst)
>>                       mcs_set_reg(mcs, MCS_MINRXPW_REG, 5);
>>
>>       } else {
>>               rval |= MCS_FIR;
>>
>> -             if ((rst = (mcs->speed != 4000000)))
>> +             rst = (mcs->speed != 4000000);
>> +             if (rst)
>>                       mcs_set_reg(mcs, MCS_MINRXPW_REG, 5);
>>
>>       }
>> diff --git a/drivers/staging/irda/net/irqueue.c b/drivers/staging/irda/net/irqueue.c
>> index 160dc89..5aab072 100644
>> --- a/drivers/staging/irda/net/irqueue.c
>> +++ b/drivers/staging/irda/net/irqueue.c
>> @@ -217,7 +217,8 @@ static __u32 hash( const char* name)
>>
>>       while(*name) {
>>               h = (h<<4) + *name++;
>> -             if ((g = (h & 0xf0000000)))
>> +             g = (h & 0xf0000000);
>> +             if (g)
>>                       h ^=g>>24;
>>               h &=~g;
>>       }
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505504680-22167-1-git-send-email-srishtishar%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

