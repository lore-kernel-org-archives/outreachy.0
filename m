X-GM-THRID: 6210663897171492864
X-Received: by 10.112.142.195 with SMTP id ry3mr11001456lbb.22.1446048460932;
        Wed, 28 Oct 2015 09:07:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.32.202 with SMTP id g193ls316053lfg.18.gmail; Wed, 28 Oct
 2015 09:07:40 -0700 (PDT)
X-Received: by 10.112.202.165 with SMTP id kj5mr10943761lbc.5.1446048460245;
        Wed, 28 Oct 2015 09:07:40 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id cm6si1048769wib.1.2015.10.28.09.07.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 09:07:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id fv8so18467104wic.0
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 09:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=LRFN85ooDvXTqkAzCqVjq3wr5TrT5biNMReF4qZiMFo=;
        b=oE3UTnrWuIY/Ujv9/v8oEcEIr5KoTi6ho+HocDStQumw7aHPH0TqNGu8Py6hWdhNPH
         jt14Mex6fNHU9npG+BMmX/ya40ujsaYUUQ2kTWzny8/3gVTAOpfJxWXEnFluatQbrNR8
         NYVTHah7/D/rma9yJuCwK/UPBL7EIsNsJfN/lLZrvj+lFk9DZd12QOF7qaC7wrReU0bV
         DebWdelFfO5pHHo9IQfD9Dz1fYv2/C9IEC0DHJYJgo4z5BGnpANkche0FzKZo/IIqMJm
         qD90Ba4TvNPhlo2OLqIWBUOZOqm7J2l6Le/8vSqI7djp4f6fHjjrGnbe0AE4afZPrLX/
         A98A==
MIME-Version: 1.0
X-Received: by 10.194.116.197 with SMTP id jy5mr53765469wjb.86.1446048460085;
 Wed, 28 Oct 2015 09:07:40 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Wed, 28 Oct 2015 09:07:39 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510281447310.2456@hadrien>
References: <cover.1446032441.git.shivanib134@gmail.com>
	<f2a06d6455d1f322d873ec728f622162fd00d959.1446032441.git.shivanib134@gmail.com>
	<alpine.DEB.2.10.1510281447310.2456@hadrien>
Date: Wed, 28 Oct 2015 21:37:39 +0530
Message-ID: <CAKHNQQErLiLrLbjP7zD22cVXgtYuoCg9sXoDj=hLKpqq_Gq_SA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 3/3] Staging: wilc1000: linux_wlan:
 Replace function calls
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 28, 2015 at 7:18 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Wed, 28 Oct 2015, Shivani Bhardwaj wrote:
>
>> Replace calls to wrapper functions with the actual functions called by
>> wrapper functions. Definitions needed to make those calls should also be added.
>
> The second sentence of the commit message is not clear.  When you say
> "should be" it gives the impression that you expect someone else to do it.
> So it would be better to say "are added".
>
> julia
>

I'll correct that.
Thank you

>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>> Changes in v2:
>>         -Break the patch 1/2 of v1 into two for clarity
>>
>>  drivers/staging/wilc1000/linux_wlan.c | 15 +++++++++++++--
>>  1 file changed, 13 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
>> index 9f899da..fbc3584 100644
>> --- a/drivers/staging/wilc1000/linux_wlan.c
>> +++ b/drivers/staging/wilc1000/linux_wlan.c
>> @@ -45,6 +45,17 @@
>>   #define _linux_wlan_device_removal()                {}
>>  #endif
>>
>> +#if defined(CUSTOMER_PLATFORM)
>> +/* TODO : User have to stable bus clock as user's environment. */
>> +#ifdef MAX_BUS_SPEED
>> +#define MAX_SPEED MAX_BUS_SPEED
>> +#else
>> +#define MAX_SPEED 50000000
>> +#endif
>> +#else
>> +#define MAX_SPEED (6 * 1000000) /* Max 50M */
>> +#endif
>> +
>>  extern bool g_obtainingIP;
>>  extern u16 Set_machw_change_vir_if(bool bValue);
>>  extern void resolve_disconnect_aberration(void *drvHandler);
>> @@ -976,8 +987,8 @@ void linux_to_wlan(wilc_wlan_inp_t *nwi, struct wilc *nic)
>>       nwi->io_func.io_deinit = linux_sdio_deinit;
>>       nwi->io_func.u.sdio.sdio_cmd52 = linux_sdio_cmd52;
>>       nwi->io_func.u.sdio.sdio_cmd53 = linux_sdio_cmd53;
>> -     nwi->io_func.u.sdio.sdio_set_max_speed = linux_sdio_set_max_speed;
>> -     nwi->io_func.u.sdio.sdio_set_default_speed = linux_sdio_set_default_speed;
>> +     nwi->io_func.u.sdio.sdio_set_max_speed = linux_sdio_set_speed(MAX_SPEED);
>> +     nwi->io_func.u.sdio.sdio_set_default_speed = linux_sdio_set_speed(sdio_default_speed);
>>  #else
>>       nwi->io_func.io_type = HIF_SPI;
>>       nwi->io_func.io_init = linux_spi_init;
>> --
>> 2.1.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/f2a06d6455d1f322d873ec728f622162fd00d959.1446032441.git.shivanib134%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

