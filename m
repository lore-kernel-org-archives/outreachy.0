X-GM-THRID: 6473412482924806144
X-Received: by 10.98.224.194 with SMTP id d63mr4079587pfm.46.1508350723413;
        Wed, 18 Oct 2017 11:18:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.210.203 with SMTP id a69ls1401589pli.1.gmail; Wed, 18 Oct
 2017 11:18:42 -0700 (PDT)
X-Received: by 10.84.140.3 with SMTP id 3mr4449468pls.27.1508350722430;
        Wed, 18 Oct 2017 11:18:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508350722; cv=none;
        d=google.com; s=arc-20160816;
        b=l6uABk5GoL+pl1/bRVZ98xlbEtbrAYmAx1dHDCTyH4MK8SaUPydOYMDbHu+gLjaAqu
         ffLtQ/cGyPmzLCbXDOikS0WMRi39wFTbIW8UxDiQmV/4DzpcAWwpsIqq/sBiTVynKpIm
         N6JbMYbx9E/oGsOCf/2OT/ZrLc5mlfG3to4D/+nXV4RoVc7eTngU1XAxgSA2MWD9Gvsn
         bQlJ4P64X784jITh1Nl3HwqqGqJXS4GTryu/X71YTmcjJO+GJm6jFNs+BNvA4h+Nxs9H
         cJ4xRk2Vkb2sk6Dsu9aysqk1rjX0lQnGkkTPa5LtBIjiKk+X55FC5gw0fHpWYldgg0Ph
         t6yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=VT4OicruVvsGZjl12DcRyw5YXJ+EWRwYBUIMacaStHo=;
        b=PHAugvwY6qnuecNA/DShK0O+JWOZ8z3jq905aX/ErgCykL0Y1+SMqdqzfUt7ayUD3e
         pte9/MLW3Iw7UPGBq3/0lg78ScaZEKnuDsGK53BR2BauK9R8xiUKC3fVLJfjZOgDumlo
         kA6minqnDOcFcITgck4YqyvvLGhSHkmti+PvbtFGEy67tqNrK7iZnUq0gZlXZsPHc1AC
         R8ZWRH/9dqo19e7Nbn8WD1xPcMkIchVhRIOlXKIRNfasrEkVcfGzWwmqpUulxs/ntJD7
         NUSKluR1iPbViZh/x1OJIrqmUPvjzuKx1Vt6XjeInvgeci+huwBKJDccB/Ur7J1ovsri
         kwxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XSoFLuvP;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id b184si603742pga.4.2017.10.18.11.18.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 11:18:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XSoFLuvP;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id b7so65493vkh.12
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 11:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=VT4OicruVvsGZjl12DcRyw5YXJ+EWRwYBUIMacaStHo=;
        b=XSoFLuvPjnxJYZtk2hpH21tIY9hPbPiO1H7MyYdXDj0l1Xxv/UHxasajOXe04lv/GU
         eD9uPWwvojNUQNP+UuCuLThbknnQOcGbOx+5yumb2cvZgBxKp4rIDZEYC6rouSzxQiZ+
         UTqKV2CsCHwGzdLat/3qcTf6wAj7plOQ+A1XUT1qm/XLMe3r/IL5ZNDGTuGNa9n2KW17
         fFo/5rnxuNdKGGz8nMo155jnqiVXvJOO4Nw28nkl3TRDtxxJI9M7eBaxz3eb4WiHrTOV
         qbE/c0EORrwgtITQV5JOsVy1VJOmY2dfg5to76DzOkMeqaFSGqAkiPfKKtqkUOSrfaQE
         wtuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=VT4OicruVvsGZjl12DcRyw5YXJ+EWRwYBUIMacaStHo=;
        b=m5e4SG+Q5j5y+W1D3yTnj5lHBlF4do+H/PcsUojxJ++MNae3DsrrNrz9IoWGXFpw/L
         H3LWErRS5m6QAsBKuhPObF1H/mgGOWytwcWhGZUmWNkgCBY1qQZpNl1Gvq4DMHFl4JUq
         4JZUNWqGhWbrYjsU+7KW8yH0Mnuf0LcAkVHDuLRPmkoBMLkbCrkZfwwV3xLzHNQossv5
         Ny/9CsGHn/bjhFrtbf4B5vVQJ3vaHGwLjybBBCTenbv+CXU1SRdm5acIYgN5eJsyBO6b
         74imLGUwZjfnzzHrGKe8hYRbpoQ+rUINbL/0E3SZ1490Uyj5W8x+7ilHEJiVzHcm/oYS
         Xqfg==
X-Gm-Message-State: AMCzsaXAV6E/+Zrbb/fjkLxjy10BeEo0Y+yTdEIo/OBLlLzzgCkAT/UF
	Vaau6qF2O++X8pVha4BMFNuXC/eCnZ4TPKEEWjWMmQ==
X-Google-Smtp-Source: ABhQp+TWAI5NokONJvGvl0P52ZxfYV27TlZcA/Z+Aau7R6gGg3fN/IU+pQkdyOEiKXnfb02hbzON66NoN+5LQglFRRA=
X-Received: by 10.31.60.211 with SMTP id j202mr3541767vka.134.1508350721712;
 Wed, 18 Oct 2017 11:18:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.63.140 with HTTP; Wed, 18 Oct 2017 11:18:41 -0700 (PDT)
In-Reply-To: <20171018132651.GA11879@kroah.com>
References: <1507208787-18008-1-git-send-email-aastha.gupta4104@gmail.com>
 <1507208787-18008-4-git-send-email-aastha.gupta4104@gmail.com> <20171018132651.GA11879@kroah.com>
From: Aastha Gupta <aastha.gupta4104@gmail.com>
Date: Wed, 18 Oct 2017 23:48:41 +0530
Message-ID: <CAHXiS590OR2e+5r=ch3MOj1sjnA2Oa8BAGXoEqSzjkwS6hvQdg@mail.gmail.com>
Subject: Re: [PATCH 3/7] staging: rtl8188eu: use pr_info() instead of printk()
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Wed, Oct 18, 2017 at 6:56 PM, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Thu, Oct 05, 2017 at 06:36:23PM +0530, Aastha Gupta wrote:
>> Fixes checkpatch.pl warning:
>> WARNING: printk() should include KERN_ facility level
>>
>> Replaced printk() without any KERN_facility level with pr_info().
>> The statements before use pr_info and the new line character is to be
>> appended to them.
>> Could have used printk() with KERN_INFO level, but used pr_info() just to use the same function as that had been used before in the code.
>>
>> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
>> ---
>>  drivers/staging/rtl8188eu/include/rtw_debug.h | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8188eu/include/rtw_debug.h b/drivers/staging/rtl8188eu/include/rtw_debug.h
>> index 9cc4b8c..33bc7f5 100644
>> --- a/drivers/staging/rtl8188eu/include/rtw_debug.h
>> +++ b/drivers/staging/rtl8188eu/include/rtw_debug.h
>> @@ -106,9 +106,9 @@ extern u32 GlobalDebugLevel;
>>                                        (((__i + 1) % 4) == 0) ?       \
>>                                        "  " : " ");   \
>>                               if (((__i + 1) % 16) == 0)              \
>> -                                     printk("\n");                   \
>> +                                     pr_info("\n");                  \
>
> No, this isn't doing what you think it is...
>
> It should be a 'pr_cont()', right?
>
> thanks,
>
> greg k-h

Yes as it is in continuation of the previous pr_info it should be pr_cont.
I will make this change and send the patch again.

Aastha

