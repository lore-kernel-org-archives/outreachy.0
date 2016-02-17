X-GM-THRID: 6252008171554996224
X-Received: by 10.182.243.135 with SMTP id wy7mr24165461obc.8.1455685936914;
        Tue, 16 Feb 2016 21:12:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.67.100 with SMTP id m4ls1314074igt.21.canary; Tue, 16 Feb
 2016 21:12:16 -0800 (PST)
X-Received: by 10.66.141.102 with SMTP id rn6mr25871875pab.26.1455685936610;
        Tue, 16 Feb 2016 21:12:16 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-io0-x22c.google.com (mail-io0-x22c.google.com. [2607:f8b0:4001:c06::22c])
        by gmr-mx.google.com with ESMTPS id ug8si63852igb.3.2016.02.16.21.12.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 21:12:16 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4001:c06::22c as permitted sender) client-ip=2607:f8b0:4001:c06::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4001:c06::22c as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x22c.google.com with SMTP id z135so23552962iof.0
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 21:12:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=yPYm9jVupVOOL8TAMEJ487vVbuQge95JjbampWY9l3E=;
        b=vrQsMtgZzv8aN7CKF86Ppp3oylS7ejHII3T+NS/+dyU2Mr/LVxnl/psVzDdGJ2CXz5
         e17yo693a8kRaRYYwuHEhZp9vsn75VLvwRicVJFLw5MdmpzPwbVBd/M9gucS9Vz0GevA
         weXNh867jFgB5BCITosxoklan9sfpM6pW1WbKZRGe7eu8aG/d1aMI3bU55GfzsZM3yFI
         Q941Owlm9O54WCS0cxIUiUgqh4s4zCyEqweaRsSrMYIPaHLMLXzYMy/BYja7mdN7ZEqn
         pqb+3AEEawZSBKt5KMVmUSJWL1rp+cIq8XOAGRp/3k2Qkw6GNpAMp0bdyzBvdDaWM571
         sJtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=yPYm9jVupVOOL8TAMEJ487vVbuQge95JjbampWY9l3E=;
        b=Mw8MM6x/AbtVDhZ+Or8OKI++raxWkIUSoGto1VtD70TckGcm59JCNY5hZsHMWzyvRR
         NF8vT00/v3wLSJyZxHok1gE+nQEMKZLYHmjHmI5ozzjEkM8i+x0AygWLFiIszlFEAhpi
         eWd6VUPLUWngV28Wo2KoMBcVhKQwQ30DnudK0wL7j86gW9YWOs0KTNPZHGy7NS2uoVLt
         0mg/F5h9IbkTspzbGdIj3xbc87G/gQN+7AnBL701k9TJltggHrIqKiQueB3dtXIG72yI
         3MWwGlUvP2+4nomIzuKAEWQIlLt8GNQuStkJZ9j5uyln6fVPFABvnYSWZ9FCpxqfIWwL
         0ePw==
X-Gm-Message-State: AG10YOQhA76nk47oYuaVRSCFrNI8IYArEF0ttpS2I282dPc+Ev6cZ/wI0x599Av65/b8uA1u3f21NRUcAKR0bQ==
MIME-Version: 1.0
X-Received: by 10.202.193.10 with SMTP id r10mr6605222oif.126.1455685936465;
 Tue, 16 Feb 2016 21:12:16 -0800 (PST)
Received: by 10.157.40.238 with HTTP; Tue, 16 Feb 2016 21:12:16 -0800 (PST)
In-Reply-To: <1455662649.15821.47.camel@surriel.com>
References: <1455659073-20498-1-git-send-email-bhumirks@gmail.com>
	<1455662649.15821.47.camel@surriel.com>
Date: Wed, 17 Feb 2016 10:42:16 +0530
Message-ID: <CAOH+1jGLzcOrkDOdDgZtqrzb-GpwVa_LGc9QBFwDtr80u5-PRA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lnet: Simplify
 function kiblnd_find_rd_dma_mr
From: Bhumika Goyal <bhumirks@gmail.com>
To: Rik van Riel <riel@surriel.com>
Cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>, 
	Andreas Dilger <andreas.dilger@intel.com>, James Simmons <jsimmons@infradead.org>, 
	GuillaumeMatheron <guillaume.matheron@ens.fr>
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 17, 2016 at 4:14 AM, Rik van Riel <riel@surriel.com> wrote:
> On Wed, 2016-02-17 at 03:14 +0530, Bhumika Goyal wrote:
>> The struct pointer  prev_mr is made NULL in the for loop so
>> if(!prev_mr)
>> will be true and (pre_mr = mr) will always execute and so the second
>> if
>> statement will reduce to if(!mr). prev_mr is serving no purpose here
>> and
>> can be removed along with the if statement.
>>
>> @@ -1339,15 +1338,12 @@ struct ib_mr
>> *kiblnd_find_rd_dma_mr(kib_hca_dev_t *hdev, kib_rdma_desc_t *rd)
>>       if (hdev->ibh_nmrs == 1)
>>               return hdev->ibh_mrs[0];
>>
>> -     for (i = 0, mr = prev_mr = NULL;
>> +     for (i = 0, mr = NULL;
>>            i < rd->rd_nfrags; i++) {
>>               mr = kiblnd_find_dma_mr(hdev,
>>                                       rd->rd_frags[i].rf_addr,
>>                                       rd->rd_frags[i].rf_nob);
>> -             if (!prev_mr)
>> -                     prev_mr = mr;
>> -
>> -             if (!mr || prev_mr != mr) {
>> +             if (!mr) {
>>                       /* Can't covered by one single MR */
>>                       mr = NULL;
>>                       break;
>
> You certainly found some suspicious looking
> code, but remember that prev_mr = NULL is
> only set when we first enter the loop.
>
> On the first iteration, prev_mr is set to
> the value of the found mr, and on the second
> iteration the code can hit prev_mr != mr.
>
> At that point it will set mr = NULL, before
> breaking out of the function and returning
> NULL.
>
> Your patch changes that, by only returning
> NULL if the last iterator in the loop finds a
> NULL value of mr, which is not guaranteed.
>
> In other words, your patch changes the behaviour
> of the code.
>
> Looking at the calling function, kiblnd_map_tx()
> I am not sure either the old or the new behaviour
> is right.
>
> CC'ing some Lustre developers and maintainers,
> since it is not at all clear to me what that code
> is supposed to do.
>
> --
> All rights reversed
Thank you for the input. I just realized that my change is not
returning NULL when (prev_mr!=mr) condition is satisfied. I have
deleted the condition but I think this condition is necessary for
proper behavior of the code.

Thanks,
Bhumika

