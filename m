X-GM-THRID: 6341957980641034240
X-Received: by 10.200.49.105 with SMTP id h38mr5637876qtb.75.1476624751410;
        Sun, 16 Oct 2016 06:32:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.9.229 with SMTP id 98ls4041824ioj.10.gmail; Sun, 16 Oct
 2016 06:32:30 -0700 (PDT)
X-Received: by 10.67.14.33 with SMTP id fd1mr150685pad.136.1476624750114;
        Sun, 16 Oct 2016 06:32:30 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yb0-x242.google.com (mail-yb0-x242.google.com. [2607:f8b0:4002:c09::242])
        by gmr-mx.google.com with ESMTPS id w126si1434419yww.7.2016.10.16.06.32.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 06:32:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::242 as permitted sender) client-ip=2607:f8b0:4002:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yb0-x242.google.com with SMTP id 191so3295945ybv.1
        for <outreachy-kernel@googlegroups.com>; Sun, 16 Oct 2016 06:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=TKkHTK+khYDaczP2yMcudOBo8PMcHxIu9WV4nV+Ff14=;
        b=v0bykQnRwAhkHiT2mTeCh4GZEpP2xbK6y36OuuU5qtqKhj9FB1QAmzkQu5737oiJyr
         jGP02BTuKRF6xITmhqD0f/lZvRHzA24BxcKEUtPRRrdmMbSOe6n4LsRLesWFUWJyOj6l
         FXeUGvg5Dap2APvJJjQMBDy6mDNeuSWFb3rwzr6mrexJjvXmp/Ih3R6EZzljUhnteohN
         NTbyfdrGBrwJ2gkgGG6+ELBDprEVfiEZ6v10j2s9dPpBV0ybEmSe3TOM8npHcFN8wfaq
         XiUe1J7HTyJLys3H41SsjYgyGD32tzIY1qbqbK1yyYVwP37mRpjWXd/LNNVtLTxtMbyk
         xJbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=TKkHTK+khYDaczP2yMcudOBo8PMcHxIu9WV4nV+Ff14=;
        b=gArR9ftp2Kroc0qzyZ7EbNDrE3MZPJ+JrChkLxdQ4gqsvbuszYB2iDMA+dBBLN31JA
         iVEUG0AtjPXcXpOkw1AqnZ1egAfzyYSsmjQqmdOlZ01vvuPRWae2bmNYIkPMzNW5gxvZ
         MEd7URtScTJBa19K+rqSCP9ZVAte0Ze1eOd1HjjatrtbDhYGwdMvnna/pSmtLOj0Qp0S
         BGBDrl5+mniG4xQN3UTgwGdh92Kymr0w5gH8fkg3fti+wWIcLgedd84KvPhZVDaJ8Jmc
         HS+xXpAwibQqaIUTpm5Rxsu93sIO5uo53y/07+dyLuGIRru3eB+T/tdvZI1puIOwh/77
         1GhQ==
X-Gm-Message-State: AA6/9Rk4I5uohdKlGbQIXi3upUxaOqTsTxnsVkiSBGk80FwYqrWZC0s3QZ4Mo1HvuUrUXnLGOXOV87Z6MSDu0w==
X-Received: by 10.37.123.68 with SMTP id w65mr19243656ybc.116.1476624749823;
 Sun, 16 Oct 2016 06:32:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.21.4 with HTTP; Sun, 16 Oct 2016 06:31:49 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1610161310430.2116@hadrien>
References: <20161016071531.GA15510@sayli-HP-15-Notebook-PC> <alpine.DEB.2.20.1610161310430.2116@hadrien>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Sun, 16 Oct 2016 19:01:49 +0530
Message-ID: <CAKG5xWiEsXfESWJa0GgsPWvnNwhAfUzsB=E98fy4e6c_EFxKpw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: vchiq_arm: Use
 ARRAY_SIZE macro
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 16, 2016 at 4:41 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sun, 16 Oct 2016, sayli karnik wrote:
>
>> This patch uses ARRAY_SIZE macro instead of division of two sizeofs to find array size.
>> Done using coccinelle.
>> @@
>> type T;
>> T[] E;
>> @@
>> (
>> - (sizeof(E)/sizeof(*E))
>> + ARRAY_SIZE(E)
>> |
>> - (sizeof(E)/sizeof(E[...]))
>> + ARRAY_SIZE(E)
>> |
>> - (sizeof(E)/sizeof(T))
>> + ARRAY_SIZE(E)
>> )
>>
>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
>> ---
>>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
>> index 5ec7c96..f7d9513 100644
>> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
>> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
>> @@ -190,8 +190,8 @@ static const char *const ioctl_names[] = {
>>       "CLOSE_DELIVERED"
>>  };
>>
>> -vchiq_static_assert((sizeof(ioctl_names)/sizeof(ioctl_names[0])) ==
>> -     (VCHIQ_IOC_MAX + 1));
>> +vchiq_static_assert(ARRAY_SIZE(ioctl_names) ==
>> +                 (VCHIQ_IOC_MAX + 1));
>
> Doesn't this code all fit on one line?
>
yes it does.

thanks,
sayli
> julia
>
>>
>>  static void
>>  dump_phys_mem(void *virt_addr, uint32_t num_bytes);
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161016071531.GA15510%40sayli-HP-15-Notebook-PC.
>> For more options, visit https://groups.google.com/d/optout.
>>

