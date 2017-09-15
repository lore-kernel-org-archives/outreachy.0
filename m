X-GM-THRID: 6466090633212723200
X-Received: by 10.99.97.138 with SMTP id v132mr16010335pgb.59.1505504523552;
        Fri, 15 Sep 2017 12:42:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.29.86 with SMTP id 83ls1650663itj.19.gmail; Fri, 15 Sep
 2017 12:42:02 -0700 (PDT)
X-Received: by 10.202.170.87 with SMTP id t84mr14945211oie.51.1505504522711;
        Fri, 15 Sep 2017 12:42:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505504522; cv=none;
        d=google.com; s=arc-20160816;
        b=X/r/docVcSewuby0bUmPZKzk/tlG3OXF189egxXe2lWZ7ruTFU4eIlQ/jDOctyIcOq
         Vb8E2mCOmR4zvbp6seHd+jL5LL/Uz6JQedbRZvQ9NTqJqfk3zQYE3+OLaisDuLw3DNQp
         5OuBu4A3lfLDaQ8M0m18+7iYEBgzw6BigLHUVjnkSXLz2yOht6gzIroe+oyg52O9pIjy
         yU1TdVWzSAxaPf/VGU+OkCkcXz0TYLYvVZVKrpEW2UURYCA7lzko0oeekj6lJJeMIm8X
         I0PYCUSrKOxRXZy6YQrAmeGF62cCMqBFPC+iVcuuGoCokvzLUizJnJ55Wksm3GHFqMDz
         oJZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=PCqhkKoTIqRvwZLZTt+glwWDXe5tp+UZadfq9WjQO4s=;
        b=LSZ85PHo0cZQbmqvlsiqJNKYEzr0wndExyrsyBK2tj835IixC/9jgr26tRA9bhfLvc
         g4Cuty/JbVO0rARPsJphu2TPmlblNbNVMcoG7ilGjziy2oyIukgmMomX6Qa7Xgh+vwn1
         /fFgamLQRbhW4lB00PKNt0Zj/iCsQUVgvN2QhtjyTm1FvyQmdPLFrNI5isL8/rzuNZkv
         D5Uo/T63T9Ve+fdUhV3eUEJFLGdqwj5yq1iGAIrVP4M6Xy1wLYc2VRPJr2EGdglPmB7z
         afBlMVbo1SXF4HF28aU1TVPk+XkB05iJbhKrnVoTgPGy8pC3RRVGGFS99Dwmfbk+b6j8
         rGwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mPPeknDZ;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qt0-x242.google.com (mail-qt0-x242.google.com. [2607:f8b0:400d:c0d::242])
        by gmr-mx.google.com with ESMTPS id p62si98977ywc.5.2017.09.15.12.42.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 12:42:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) client-ip=2607:f8b0:400d:c0d::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mPPeknDZ;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x242.google.com with SMTP id q8so2115180qtb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 12:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=PCqhkKoTIqRvwZLZTt+glwWDXe5tp+UZadfq9WjQO4s=;
        b=mPPeknDZWwq4T6Dum/zQuSAzfm1VMqMsrk3AKWKfDJbA+ubJv+M+8VkVufe51jjsDs
         2UIVn9xanvQj2CW3UGofPMS8Ax9+4kGUybEBDn+A2V1V/mnuMHSPqLppf64PcuIyJuvK
         S/TjXA5XZG4gW/jddjstyE3nPGW9ZNeyZJkpgBcj2tKhsIvYXnCK4bmjsHcl8yEfZm8b
         LVp79yXYhzbZ/atWA+y1oq4Tp+tvOxfIkbdqGwWIk3CyyyyKOjTutBCxB8wa8aj2N8Hj
         kZMk4rAqEsKmj47HLK/UOyK0E6tIHC9+Jk4ohSA3XatrXGPP0hUZbcwyHrp5bxuEzLtQ
         Ui8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=PCqhkKoTIqRvwZLZTt+glwWDXe5tp+UZadfq9WjQO4s=;
        b=n0ixsSwPRIt04OQ4h21iCNOrNNkm2yZg5qDPD4fm7L8Z5h9JRb/8e1fy0i4lXkrC37
         Z9Vvs/hEDqmJ0TFXrCHCcircj1fF2m8cfaRyWHbp5Jz/PN9H2tFiZR1EeZtgx+SppMCg
         iQ/JvzEr4AWGfusln0JaoKADmoxUdXe2zw2IVxKJJJNNBfthbWKk1ojLuxU6A3VfO+un
         2F5YPEGKCT8nJe07cETKv0XJaBBXvWHGH17Cu0/qaHfrpAUbv0ELWteCqNlPv9KFKHl4
         +dEej4ykuHp/y9zaBHAG8uXryn5R7DlWtGe+u01rd1FJBMJFeRgnQEaqi5aSfXcHC+vK
         IGIQ==
X-Gm-Message-State: AHPjjUgSIMHqhYjtiyDQJnInYFEMHVg/cz+tBmYDyFEDB3aAp2zGJXM7
	QxpwXMbID8HTOzMM52NCK3AznXmUmblBPtQQwZI=
X-Google-Smtp-Source: AOwi7QDLYtBVkcCagcwOFqyUu7/KFGMLMqg1mHy6Zd4v+g2Jpvok/+NrpNmnqIljdEl+LlO2wRDyxj8WAfi5VIt6kVY=
X-Received: by 10.237.34.56 with SMTP id n53mr27346166qtc.140.1505504522337;
 Fri, 15 Sep 2017 12:42:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Fri, 15 Sep 2017 12:42:01 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709152136200.2533@hadrien>
References: <1505504036-21807-1-git-send-email-srishtishar@gmail.com> <alpine.DEB.2.20.1709152136200.2533@hadrien>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Sat, 16 Sep 2017 01:12:01 +0530
Message-ID: <CAB3L5ozymEpGYLqH88xZrfQBjDsCdO0yCJYLCFCiYDRXh8E2qg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: irda: Don't use assignment
 inside if statement
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: samuel@sortiz.org, Greg KH <gregkh@linuxfoundation.org>, netdev@vger.kernel.org, 
	devel@driverdev.osuosl.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Sat, Sep 16, 2017 at 1:08 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
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
>> +E = F
>
> The line above would need to end in a ;
Yes, I'll send a v2 after correcting it .
>
> This ends up with a lot of assignments with () around the right hand side.
> Maybe you could make a series removing them afterwards.
Yes, I'll do that . Thanks .

Regards,
Srishti
>
> julia
>
>> +if(E)
>>   S
>>
>> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>> ---
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
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505504036-21807-1-git-send-email-srishtishar%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

