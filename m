X-GM-THRID: 6392997475785900032
X-Received: by 10.25.41.85 with SMTP id p82mr2128487lfp.16.1488491883186;
        Thu, 02 Mar 2017 13:58:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.13.9 with SMTP id 9ls820279ljn.46.gmail; Thu, 02 Mar 2017
 13:58:02 -0800 (PST)
X-Received: by 10.46.22.16 with SMTP id w16mr2205825ljd.8.1488491882766;
        Thu, 02 Mar 2017 13:58:02 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id h62si15434wme.2.2017.03.02.13.58.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 13:58:02 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id y193so5442043lfd.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 13:58:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=/k9uAr49UkGLp4COBul2QsuwA6lGlBgzJBCisCMIRdc=;
        b=XCJEpYZIwGZKUQR/ES64jV83CoeSLnEoKHlC4ePmKX6dM8ci/lmxMLrEInCkpt/YrW
         D3gmReLKOqIqlmy35YfF9+u32XyR2GJr7NG+LiM4yRqoD5GRmN1hqsrVLIgA3Vzhs5+t
         ONaHLEq4mkSxsHBmYe9tBILMPCrRN/IGEQBRwnHkn7TF2JKH1/Q37aiO4lDq15Afq2C9
         ZJb8Z9LoqmPzyer3irLZPsSvj0AJI8qZ/xISleltcQBSUiE3W1S1jogO3sg2BDXIuVID
         dW8HcqStvwr++uTzmJAaeqNXrHnDnWmPdRiSdbm/zn2ONHWuN48gIqKMTofGy4Y+qF99
         k1gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=/k9uAr49UkGLp4COBul2QsuwA6lGlBgzJBCisCMIRdc=;
        b=gbJAAWKTDg1c0klK8hSFvctsqhrjWxlCbMXfN8ZvidsF/Z2mQTBqicdi78zRHy/jyx
         v7JPr19fepAoXIakOzCrHx1jBHv/ynctkKDKRNN767zR6kCt00jJp9d59XmzFuO9dTjI
         IpJ48v3FEBTQN/0iLi1MeBVlsZGR6EZtIr2l55lD4aUUPjE58pTpbgJ8F+nYOUomM/qB
         Ex9PLvHFZ4QmUhWJppubdH9vI9OzK+hGlnSXqTydNelXc0WpapWSdUOI4EzBBg3hJwYc
         d/ranjygXsYphjEk9QOeYZlQcB/MY6XBGOjHvsT0nnJ3wWJY31c8+gxtWQkHgfl9OWes
         mdWg==
X-Gm-Message-State: AMke39mO8mT7XUhz3O7PZB8g0G1wC0vmfoNglrS8ttJOQ5t1ueqnIVFeDYPY7jGPEOxqQpSpbSxzB44AmZIVsg==
X-Received: by 10.46.33.75 with SMTP id h72mr5648593ljh.37.1488491882181; Thu,
 02 Mar 2017 13:58:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Thu, 2 Mar 2017 13:58:01 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1703022256190.2175@hadrien>
References: <1488489544-25941-1-git-send-email-singhalsimran0@gmail.com>
 <1488489544-25941-4-git-send-email-singhalsimran0@gmail.com> <alpine.DEB.2.20.1703022256190.2175@hadrien>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Fri, 3 Mar 2017 03:28:01 +0530
Message-ID: <CALrZqyMKEyZHZeOeCr10qRaqz8VL5W-D0G0ygzSCpV5j7oX90A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/5] staging: rts5208: Remove
 unnecessary cast on void pointer
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Larry.Finger@lwfinger.net, 
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>, Greg KH <gregkh@linuxfoundation.org>, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	oleg.drokin@intel.com, marvin24@gmx.de, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 3, 2017 at 3:26 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
>> index 2379901..d745b93 100644
>> --- a/drivers/staging/rts5208/rtsx_transport.c
>> +++ b/drivers/staging/rts5208/rtsx_transport.c
>> @@ -767,7 +767,7 @@ int rtsx_transfer_data(struct rtsx_chip *chip, u8 card, void *buf, size_t len,
>>
>>       if (use_sg) {
>>               err = rtsx_transfer_sglist_adma(chip, card,
>> -                                             (struct scatterlist *)buf,
>> +                                             buf,
>
> Here too, buf doesn't need its own line.
>
I will send v2.
> julia
>
>>                                               use_sg, dma_dir, timeout);
>>       } else {
>>               err = rtsx_transfer_buf(chip, card, buf, len, dma_dir, timeout);
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488489544-25941-4-git-send-email-singhalsimran0%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

