X-GM-THRID: 6208553968461676544
X-Received: by 10.28.55.209 with SMTP id e200mr12012wma.1.1445553918177;
        Thu, 22 Oct 2015 15:45:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.157.135 with SMTP id g129ls346004lfe.84.gmail; Thu, 22 Oct
 2015 15:45:17 -0700 (PDT)
X-Received: by 10.112.173.170 with SMTP id bl10mr4234524lbc.7.1445553917255;
        Thu, 22 Oct 2015 15:45:17 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id cm6si185932wib.1.2015.10.22.15.45.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 15:45:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id ll6so8640777wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 15:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Jo5HTGOtrJvZdMzbBHLuogdgon7QJ4b1+WoOF8vwLIs=;
        b=MSe01EPDseqOcvZu1ZiH37XPrJuaREaqmBrCIklcoPVGMv1WTSXxdjrvNdHCzO/CAN
         nE/idgN8jv0nx9P/F3pPhGwE4v60PEMzfA2XP+Ie3JxE6ChB7wIHv9HzSpZkHrd0pV3N
         l50P5AHss2mGooivNG89rbyxxnCGUm6v4tecLOb2HiMSmC1GfMtSkz41k1cc6tNUU/50
         XQQ68woD6NcRKkScU30fsLI2N8Ji8fox06hENGnYsFEBYq9c33hlZgq8a1yLHWfw97Em
         SYguJohE9TlrgRplALG82HMgcQy0m6/aZ6gu5ilRZSH2ak6sQ0Pmt965h2kyyJ9VBSlM
         qh+Q==
MIME-Version: 1.0
X-Received: by 10.180.38.13 with SMTP id c13mr655178wik.48.1445553917148; Thu,
 22 Oct 2015 15:45:17 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Thu, 22 Oct 2015 15:45:17 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1510222128020.2066@localhost6.localdomain6>
References: <20151022192006.GA23576@ubuntu>
	<alpine.DEB.2.02.1510222128020.2066@localhost6.localdomain6>
Date: Fri, 23 Oct 2015 04:15:17 +0530
Message-ID: <CAKHNQQGaEZ8DofL6F4psu-8Xg_PS5BShLh6Z=btxUDN8xLDNBQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: coreconfigurator:
 Remove unnecessary wrapper function
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 23, 2015 at 12:59 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Fri, 23 Oct 2015, Shivani Bhardwaj wrote:
>
>> Remove the function get_current_channel() and replace its calls by
>> get_current_channel_802_11n() as the former function's definition
>> involves only returning the value of latter function.
>> Semantic patch used to find out the issue:
>>
>> @@
>> identifier f,g;
>> @@
>>
>> *f(...) {
>>  return g(...); }
>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>>  drivers/staging/wilc1000/coreconfigurator.c | 14 +++++---------
>>  1 file changed, 5 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
>> index 6dfe26d..f20f2f3 100644
>> --- a/drivers/staging/wilc1000/coreconfigurator.c
>> +++ b/drivers/staging/wilc1000/coreconfigurator.c
>> @@ -331,13 +331,6 @@ u8 get_current_channel_802_11n(u8 *pu8msa, u16 u16RxLen)
>>       return 0;  /* no MIB here */
>>  }
>>
>> -u8 get_current_channel(u8 *pu8msa, u16 u16RxLen)
>> -{
>> -     /* Extract current channel information from */
>> -     /* the beacon/probe response frame          */
>> -     return get_current_channel_802_11n(pu8msa, u16RxLen);
>> -}
>> -
>>  /**
>>   *  @brief                      parses the received 'N' message
>>   *  @details
>> @@ -425,8 +418,11 @@ s32 parse_network_info(u8 *pu8MsgBuffer, tstrNetworkInfo **ppstrNetworkInfo)
>>               /* Get BSSID */
>>               get_BSSID(pu8msa, pstrNetworkInfo->au8bssid);
>>
>> -             /* Get the current channel */
>> -             pstrNetworkInfo->u8channel = get_current_channel(pu8msa, (u16RxLen + FCS_LEN));
>> +             /*
>> +              * Extract current channel information from
>> +              * the beacon/probe response frame
>> +              */
>> +             pstrNetworkInfo->u8channel = get_current_channel_802_11n(pu8msa, (u16RxLen + FCS_LEN));
>
> This goes way over 80 characters.  I know the code went over 80 characters
> before, but in constructing the new code, you could respect the 80
> character limit at the same time.
>
> Another issue, if someone is looking for something to do with Coccinelle,
> is that the parentheses on the second argument above and on the addition
> below are not necessary.  But fixing that shouldn't be in the same patch.
>

I don't understand this issue, can you please elaborate a tad bit more?

> julia
>
>>
>>               /* Get beacon period */
>>               u8index = (MAC_HDR_LEN + TIME_STAMP_LEN);
>> --
>> 2.1.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151022192006.GA23576%40ubuntu.
>> For more options, visit https://groups.google.com/d/optout.
>>

