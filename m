X-GM-THRID: 6205570001447944192
X-Received: by 10.180.210.71 with SMTP id ms7mr2247072wic.4.1444914403076;
        Thu, 15 Oct 2015 06:06:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.253.231 with SMTP id ad7ls383988wid.11.gmail; Thu, 15 Oct
 2015 06:06:42 -0700 (PDT)
X-Received: by 10.180.35.132 with SMTP id h4mr6900122wij.5.1444914402707;
        Thu, 15 Oct 2015 06:06:42 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id q6si1068234wif.2.2015.10.15.06.06.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 06:06:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id ll6so18005081wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 06:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=sv2GkKqvQ827XewV1xUsd3PuBJnuN60ave6to91Hzdo=;
        b=l6EEW1DErSJZUvKsTKQPWup4M/sRhWcZkaOJfUIX5Nqb35SaUwdg1ocPHQogboQaZE
         bfiHlJGqsZUW5G9J3kPRRYmKn2QWu61QeV4GObPs9zYzDvyKfy4NfjpneQKTiE8KXXtE
         Fzv5TDRPoBcLrrgk9Ac+heJOLkHd7z5DQj+qiuKiMWqbllqNzfthzcUeoISy7forLOSX
         ZRarrYfcZXWLVwulFmo2qroEiFaYFX6gQqh0Zd2irI7SWj85TnluiTeA3eWtZErkAyUW
         5Ih1Y4Rro5Vl46aGWJ8EusqhncPbMYFasvao3IrI6xuB5vyzk1bJPLFhPLymJ5sA2B3A
         bmvw==
MIME-Version: 1.0
X-Received: by 10.194.116.197 with SMTP id jy5mr10835965wjb.86.1444914402581;
 Thu, 15 Oct 2015 06:06:42 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Thu, 15 Oct 2015 06:06:42 -0700 (PDT)
In-Reply-To: <CAEnQRZBT1Zj5MKQ7GeN+FF9RTvnoFeQkAgbcUZFMPxW0KA6VRA@mail.gmail.com>
References: <20151014182046.GA24803@ubuntu>
	<CAEnQRZBT1Zj5MKQ7GeN+FF9RTvnoFeQkAgbcUZFMPxW0KA6VRA@mail.gmail.com>
Date: Thu, 15 Oct 2015 18:36:42 +0530
Message-ID: <CAKHNQQEo6sCCLxbXnXEH_cTj1Gx0Gwt4thkz=W9ZeRr23SBUvg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192e: rtllib_softmac:
 Remove unnecessary NULL test
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 11:57 PM, Daniel Baluta <daniel.baluta@gmail.com> wrote:
> On Wed, Oct 14, 2015 at 9:20 PM, Shivani Bhardwaj <shivanib134@gmail.com> wrote:
>> Remove NULL test on the variable ssidbroad as it is already tested for that.
>>
>
> Hmm, care to explain more on this?
>
>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>>  drivers/staging/rtl8192e/rtllib_softmac.c | 6 ++----
>>  1 file changed, 2 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
>> index d0fedb0..89da282 100644
>> --- a/drivers/staging/rtl8192e/rtllib_softmac.c
>> +++ b/drivers/staging/rtl8192e/rtllib_softmac.c
>> @@ -1693,11 +1693,9 @@ inline void rtllib_softmac_new_net(struct rtllib_device *ieee,
>>                         }
>>                         memcpy(&ieee->current_network, net,
>>                                sizeof(struct rtllib_network));
>> -                       if (!ssidbroad) {
>
> You can reach this line with ssidbroad = 0.
>

Yes, it is true. I wrote just about NULL test because Julia mentioned
in a discussion here,

https://groups.google.com/forum/#!searchin/outreachy-kernel/rtw_mlme_ext/outreachy-kernel/obtRajQfZx0/i-h6KcaWCwAJ

I'm guessing you want to say that I should not just mention about NULL
checks because even for the value 0, the statements inside the block
can be reached. If I'm wrong please let me know.

Thank you

>> -                               strncpy(ieee->current_network.ssid, tmp_ssid,
>
>
>> +                       strncpy(ieee->current_network.ssid, tmp_ssid,
>>                                         IW_ESSID_MAX_SIZE);
>> -                               ieee->current_network.ssid_len = tmp_ssid_len;
>> -                       }
>> +                       ieee->current_network.ssid_len = tmp_ssid_len;
>>                         netdev_info(ieee->dev,
>>                                     "Linking with %s,channel:%d, qos:%d, myHT:%d, networkHT:%d, mode:%x cur_net.flags:0x%x\n",
>>                                     ieee->current_network.ssid,
>
> thanks,
> Daniel.

