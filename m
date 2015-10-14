X-GM-THRID: 6205509094362578944
X-Received: by 10.112.198.33 with SMTP id iz1mr972521lbc.8.1444838894991;
        Wed, 14 Oct 2015 09:08:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.147.7 with SMTP id v7ls55622lfd.65.gmail; Wed, 14 Oct 2015
 09:08:13 -0700 (PDT)
X-Received: by 10.112.136.99 with SMTP id pz3mr996019lbb.11.1444838893640;
        Wed, 14 Oct 2015 09:08:13 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id c1si331020wiv.3.2015.10.14.09.08.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 09:08:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id q8so88419772wij.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 09:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Iy9Ol3OjRf5ujLUstATCvLa6RB/hiQDzTbTuj/l80dc=;
        b=ikR/N6bpliy9P/hnddgqtSSpsm7pADjyHxtypMGzGUw8b3ge9by5cYzOkH4mWyN/Oc
         yDg9GZjUjmZTdLhk1eG93KACG5XAKsWkC+to6cUSTjuvE0lgqH6jnzwJXMq2bOesJQuw
         kb8/tgI9Q/TNHGPWqNYjp3fU5vt6tRoMbJB8KrPoJEg2lCSXRA+LBJ//YX9zv4jKFh3z
         WthAD7uMNP5pyVv0MXds8fg9cEy8GJijrEIX079bIkFv0fZXp7oDD7COhaqltGlTCjZ5
         sSfJZUjas+6bsx6qcMQyix4daCaRC348X8zZL/DL4cPU6bIcsMQacYpWWoBZW8q1V7yC
         QbiQ==
MIME-Version: 1.0
X-Received: by 10.194.116.197 with SMTP id jy5mr5196683wjb.86.1444838887698;
 Wed, 14 Oct 2015 09:08:07 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Wed, 14 Oct 2015 09:08:07 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510141625572.2421@hadrien>
References: <20151014142414.GA17736@ubuntu>
	<alpine.DEB.2.10.1510141625572.2421@hadrien>
Date: Wed, 14 Oct 2015 21:38:07 +0530
Message-ID: <CAKHNQQHjzrqSggo57khaaV+Bsv28NKUawQcbbhEmnXVy_80OZA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211_rx:
 Remove unused code
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 7:56 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Wed, 14 Oct 2015, Shivani Bhardwaj wrote:
>
>> The variable frame_authorized is declared and mentioned in the code but
>> is not used anywhere so, it should be removed.
>> Semantic patch used:
>> @@
>> type T;
>> identifier i;
>> constant C;
>> position p != e.p;
>> @@
>>
>> - T i@p;
>>   <+... when != i
>> - i = C;
>>   ...+>
>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 3 ---
>>  1 file changed, 3 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
>> index 4b5f32d..ab60c3f 100644
>> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
>> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
>> @@ -899,7 +899,6 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>>       struct net_device *wds = NULL;
>>       struct sk_buff *skb2 = NULL;
>>       struct net_device *wds = NULL;
>> -     int frame_authorized = 0;
>>       int from_assoc_ap = 0;
>>       void *sta = NULL;
>>  #endif
>> @@ -1106,10 +1105,8 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>>               switch (hostap_handle_sta_rx(ieee, dev, skb, rx_stats,
>>                                            wds != NULL)) {
>>               case AP_RX_CONTINUE_NOT_AUTHORIZED:
>> -                     frame_authorized = 0;
>>                       break;
>>               case AP_RX_CONTINUE:
>> -                     frame_authorized = 1;
>>                       break;
>
> Should the cases be merged?  I don't know what is the common strategy in
> the Linux kernel.
>
> julia
>

What do you suggest?

>>               case AP_RX_DROP:
>>                       goto rx_dropped;
>> --
>> 2.1.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151014142414.GA17736%40ubuntu.
>> For more options, visit https://groups.google.com/d/optout.
>>

