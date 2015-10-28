X-GM-THRID: 6210650684709142528
X-Received: by 10.28.138.83 with SMTP id m80mr223051wmd.7.1446030180108;
        Wed, 28 Oct 2015 04:03:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.134.194 with SMTP id i185ls130733wmd.50.canary; Wed, 28 Oct
 2015 04:02:59 -0700 (PDT)
X-Received: by 10.28.170.75 with SMTP id t72mr222735wme.5.1446030179745;
        Wed, 28 Oct 2015 04:02:59 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id g9si106299wmd.2.2015.10.28.04.02.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 04:02:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id q8so247433217wik.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 04:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=D+KQS4yxR0txcgeMLPz/I9lTWEe1LjmKLHMG55RYfZ8=;
        b=CybwprhvM0EAoQqMOCCmCBilEVf4VD2nobccJ+emUvFA4PYDDyxNquwaQx9NO9FKZU
         zqkbd8D62vSLl1MBOJyFZIATUl1xMgnPha9lv7gOVvSEKYrfBispZZM/qg9nj5m5PYgj
         Og9l30r7f+PHau5cEIylbFYSZZwRPOl8/njfDo6kt37UdohR+jYKfa7vjrpGG6WinbUT
         poHPWTFoPl+ey84W/0es5uIs97tnns9P7RmBwjqV+rcUzY0tgzds368hwOieksj872hc
         vCmP1uH4Ca8xTFW3sNUa5nNYg7wQEM42gYsybw0RB9aV8InzN24Gpyq7saiiU313LTNH
         YQ9g==
MIME-Version: 1.0
X-Received: by 10.194.7.97 with SMTP id i1mr58058345wja.87.1446030179626; Wed,
 28 Oct 2015 04:02:59 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Wed, 28 Oct 2015 04:02:59 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510281159270.2456@hadrien>
References: <cover.1446029550.git.shivanib134@gmail.com>
	<16ce4db27490fbed8cbe035c6bf7bc6993b19c80.1446029550.git.shivanib134@gmail.com>
	<alpine.DEB.2.10.1510281159270.2456@hadrien>
Date: Wed, 28 Oct 2015 16:32:59 +0530
Message-ID: <CAKHNQQGXZsPEYowxdDUjw741pDbCQ3-ewrYoAzMTR4ARZY+v3g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: wilc1000:
 linux_wlan_sdio: Drop unnecessary wrapper functions
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 28, 2015 at 4:30 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Wed, 28 Oct 2015, Shivani Bhardwaj wrote:
>
>> Remove the functions linux_sdio_get_speed(), linux_sdio_set_max_speed()
>> and linux_sdio_set_default_speed(). Replace their calls with appropriate
>> functions. Also, definitions associated with these functions should be removed.
>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>>  drivers/staging/wilc1000/linux_wlan_sdio.c | 42 +++---------------------------
>>  1 file changed, 4 insertions(+), 38 deletions(-)
>>
>> diff --git a/drivers/staging/wilc1000/linux_wlan_sdio.c b/drivers/staging/wilc1000/linux_wlan_sdio.c
>> index 1f8d874..d58baf2 100644
>> --- a/drivers/staging/wilc1000/linux_wlan_sdio.c
>> +++ b/drivers/staging/wilc1000/linux_wlan_sdio.c
>> @@ -1,26 +1,12 @@
>>  #include "wilc_wfi_netdevice.h"
>> -
>>  #include <linux/mmc/sdio_func.h>
>>  #include <linux/mmc/card.h>
>>  #include <linux/mmc/sdio_ids.h>
>>  #include <linux/mmc/sdio.h>
>>  #include <linux/mmc/host.h>
>>
>> -
>> -
>
> Not clear why these blank lines are removed.  They are not needed, but
> they are not part of what is described in the commit message either.
>
>>  #define SDIO_MODALIAS "wilc1000_sdio"
>>
>> -#if defined(CUSTOMER_PLATFORM)
>> -/* TODO : User have to stable bus clock as user's environment. */
>> - #ifdef MAX_BUS_SPEED
>> - #define MAX_SPEED MAX_BUS_SPEED
>> - #else
>> - #define MAX_SPEED 50000000
>> - #endif
>> -#else
>> - #define MAX_SPEED (6 * 1000000) /* Max 50M */
>> -#endif
>> -
>>  struct wilc_sdio {
>>       struct sdio_func *func;
>>       struct wilc *wilc;
>> @@ -104,7 +90,6 @@ int linux_sdio_cmd53(sdio_cmd53_t *cmd)
>>
>>       sdio_release_host(func);
>>
>> -
>
> Sane for this one.
>
> julia
>

Should I just update the commit message or do it as a different patch
in the series?
Thank you

>>       if (ret < 0) {
>>               PRINT_ER("wilc_sdio_cmd53..failed, err(%d)\n", ret);
>>               return 0;
>> @@ -206,11 +191,6 @@ static int linux_sdio_set_speed(int speed)
>>       return 1;
>>  }
>>
>> -static int linux_sdio_get_speed(void)
>> -{
>> -     return local_sdio_func->card->host->ios.clock;
>> -}
>> -
>>  int linux_sdio_init(void *pv)
>>  {
>>
>> @@ -219,30 +199,16 @@ int linux_sdio_init(void *pv)
>>        **/
>>
>>
>> -     sdio_default_speed = linux_sdio_get_speed();
>> +     sdio_default_speed = local_sdio_func->card->host->ios.clock;
>>       return 1;
>>  }
>>
>>  void linux_sdio_deinit(void *pv)
>>  {
>> -
>> -     /**
>> -      *      TODO :
>> -      **/
>> -
>> +       /**
>> +        *      TODO :
>> +        **/
>>
>>       sdio_unregister_driver(&wilc_bus);
>>  }
>>
>> -int linux_sdio_set_max_speed(void)
>> -{
>> -     return linux_sdio_set_speed(MAX_SPEED);
>> -}
>> -
>> -int linux_sdio_set_default_speed(void)
>> -{
>> -     return linux_sdio_set_speed(sdio_default_speed);
>> -}
>> -
>> -
>> -
>> --
>> 2.1.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/16ce4db27490fbed8cbe035c6bf7bc6993b19c80.1446029550.git.shivanib134%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

