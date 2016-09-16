X-GM-THRID: 6330911507339018240
X-Received: by 10.28.167.216 with SMTP id q207mr912149wme.4.1474030608047;
        Fri, 16 Sep 2016 05:56:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.27.67 with SMTP id b64ls764406wmb.7.canary; Fri, 16 Sep
 2016 05:56:47 -0700 (PDT)
X-Received: by 10.28.168.12 with SMTP id r12mr11233wme.12.1474030607196;
        Fri, 16 Sep 2016 05:56:47 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x241.google.com (mail-lf0-x241.google.com. [2a00:1450:4010:c07::241])
        by gmr-mx.google.com with ESMTPS id v132si539043wmf.1.2016.09.16.05.56.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 05:56:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) client-ip=2a00:1450:4010:c07::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x241.google.com with SMTP id s29so4958138lfg.3
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 05:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=C+zNRbPGUIukyYunm/L2cQhbnlsRtx+bU2u7mjO3XWo=;
        b=YBaiL5//KLcZ8rlWVfnt2kr12o+G/iqfDMgYL21EEF5bQhBFYsqV4QvfQWWsRTwTAA
         qQ3jpLq8QAERZpW5lC75co/Z5YB2qaSfVh8C4cNy0Af65bsV8M4e5/vUR+9r+c/m2ZQy
         q6r8FhepQrfTNHJnOb+qLUR+vuNo46/2OFynEUdLU80dEM2fgQ6/iQXvSqlUENl+ZWJm
         yktg9Wm15bxtjCWZJBpDiIypac+f0fdEaEVINCeGUPGDUB/5xJ97VmIHlFMWxsELEDQO
         zYC8LRPpBvZ2BoZYyZu8IrJGnL2swzSLJH+WNDmhF+3Qz00eHCoOJcAy2zVyaVncdOQP
         y3dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=C+zNRbPGUIukyYunm/L2cQhbnlsRtx+bU2u7mjO3XWo=;
        b=E/D2ZP38VMQPFVrtmA4u8D98+v3qUrOxANCQ5jwBwCIkYiF5oalTLYGiYbF4HxvhdN
         Q4jSLLlw0AOj9p86nppE9d29LJobgqRes9g1X6jYqgkWLyY5ro/lcCMBSLastyC2kO18
         5UHN+D6HP5rEmEA1aj7STMUjrxGboEB+9SW8rs8vbk5QH/9eo3wD9CJdpfV2YhTMTdio
         MBYW+m5N+/QsNxYVjk6sCGHxnoTH5C7e52lwRhyXFVoiWdcmmtF0lFeJ13iDAcb/6xZh
         TbHh/9DAc2fOgdaufdhoAYQvsOCoqa1x6RCk+HGBojbM2pEa207r8oEd2ZR0V3TkjkGY
         PP4w==
X-Gm-Message-State: AE9vXwPRJZzn6aB5EUEwOGvK4sOF3LmRjWrjNl6XPvPX0B/sFJ+AROvBaZP0fc7nRlawBdVFruLi0ecDIkszFA==
X-Received: by 10.46.69.87 with SMTP id s84mr5917369lja.67.1474030606542; Fri,
 16 Sep 2016 05:56:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Fri, 16 Sep 2016 05:56:45 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609161451450.3049@hadrien>
References: <1474030173-24054-1-git-send-email-bhumirks@gmail.com> <alpine.DEB.2.10.1609161451450.3049@hadrien>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Fri, 16 Sep 2016 18:26:45 +0530
Message-ID: <CAOH+1jE4s+p5nuF_7J_F-0nfgGT_Yqd1FP4SMfa+e=tgbmE+8w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: ks7010: Replace memset with eth_zero_addr
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Sep 16, 2016 at 6:22 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Fri, 16 Sep 2016, Bhumika Goyal wrote:
>
>> Use eth_zero_addr to assign zero address to the given address array
>> instead of memset when the second argument in memset is address
>> of zero. Coccinelle was used to do the replacement and add the
>> header file linux/etherdevice.h if not added by default.
>> Script:
>> @header@
>> @@
>> #include<linux/etherdevice.h>
>
> It comes out ok in the end, but normally there is a space after an
> #include in code, so it is nice to also put it in the semantic patch.
>
> Same for the includeheader rule below.
>

Oh yes, I forgot to put spaces there. I will send a v2 with the changes.

Thanks,
Bhumika

> julia
>
>>
>> @r1@
>> expression e;
>> @@
>>
>> -memset(e,0,ETH_ALEN);
>> +eth_zero_addr(e);
>>
>> @includeheader depends on r1 && (!header)@
>> @@
>> + #include<linux/etherdevice.h>
>> #include<...>
>>
>> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> ---
>>  drivers/staging/ks7010/ks_hostif.c   | 7 ++++---
>>  drivers/staging/ks7010/ks_wlan_net.c | 6 +++---
>>  2 files changed, 7 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
>> index e3cc8ce..deb82ab 100644
>> --- a/drivers/staging/ks7010/ks_hostif.c
>> +++ b/drivers/staging/ks7010/ks_hostif.c
>> @@ -14,6 +14,7 @@
>>  #include "eap_packet.h"
>>  #include "michael_mic.h"
>>
>> +#include <linux/etherdevice.h>
>>  #include <linux/if_ether.h>
>>  #include <linux/if_arp.h>
>>
>> @@ -780,7 +781,7 @@ void hostif_start_confirm(struct ks_wlan_private *priv)
>>       wrqu.data.flags = 0;
>>       wrqu.ap_addr.sa_family = ARPHRD_ETHER;
>>       if ((priv->connect_status & CONNECT_STATUS_MASK) == CONNECT_STATUS) {
>> -             memset(wrqu.ap_addr.sa_data, '\0', ETH_ALEN);
>> +             eth_zero_addr(wrqu.ap_addr.sa_data);
>>               DPRINTK(3, "IWEVENT: disconnect\n");
>>               wireless_send_event(priv->net_dev, SIOCGIWAP, &wrqu, NULL);
>>       }
>> @@ -838,7 +839,7 @@ void hostif_connect_indication(struct ks_wlan_private *priv)
>>       wrqu0.ap_addr.sa_family = ARPHRD_ETHER;
>>       if ((priv->connect_status & CONNECT_STATUS_MASK) == DISCONNECT_STATUS &&
>>           (old_status & CONNECT_STATUS_MASK) == CONNECT_STATUS) {
>> -             memset(wrqu0.ap_addr.sa_data, '\0', ETH_ALEN);
>> +             eth_zero_addr(wrqu0.ap_addr.sa_data);
>>               DPRINTK(3, "IWEVENT: disconnect\n");
>>               DPRINTK(3, "disconnect :: scan_ind_count=%d\n",
>>                       priv->scan_ind_count);
>> @@ -910,7 +911,7 @@ void hostif_stop_confirm(struct ks_wlan_private *priv)
>>               if ((priv->connect_status & CONNECT_STATUS_MASK) ==
>>                   DISCONNECT_STATUS
>>                   && (old_status & CONNECT_STATUS_MASK) == CONNECT_STATUS) {
>> -                     memset(wrqu0.ap_addr.sa_data, '\0', ETH_ALEN);
>> +                     eth_zero_addr(wrqu0.ap_addr.sa_data);
>>                       DPRINTK(3, "IWEVENT: disconnect\n");
>>                       printk("IWEVENT: disconnect\n");
>>                       DPRINTK(3, "disconnect :: scan_ind_count=%d\n",
>> diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
>> index c17c45d..70cc9be 100644
>> --- a/drivers/staging/ks7010/ks_wlan_net.c
>> +++ b/drivers/staging/ks7010/ks_wlan_net.c
>> @@ -401,7 +401,7 @@ static int ks_wlan_set_wap(struct net_device *dev, struct iw_request_info *info,
>>                       priv->need_commit |= SME_MODE_SET;
>>               }
>>       } else {
>> -             memset(priv->reg.bssid, 0x0, ETH_ALEN);
>> +             eth_zero_addr(priv->reg.bssid);
>>               return -EOPNOTSUPP;
>>       }
>>
>> @@ -432,7 +432,7 @@ static int ks_wlan_get_wap(struct net_device *dev, struct iw_request_info *info,
>>       if ((priv->connect_status & CONNECT_STATUS_MASK) == CONNECT_STATUS) {
>>               memcpy(awrq->sa_data, &(priv->current_ap.bssid[0]), ETH_ALEN);
>>       } else {
>> -             memset(awrq->sa_data, 0, ETH_ALEN);
>> +             eth_zero_addr(awrq->sa_data);
>>       }
>>
>>       awrq->sa_family = ARPHRD_ETHER;
>> @@ -2091,7 +2091,7 @@ static int ks_wlan_set_pmksa(struct net_device *dev,
>>                       list_for_each(ptr, &priv->pmklist.head) {
>>                               pmk = list_entry(ptr, struct pmk_t, list);
>>                               if (!memcmp(pmksa->bssid.sa_data, pmk->bssid, ETH_ALEN)) {      /* match address! list del. */
>> -                                     memset(pmk->bssid, 0, ETH_ALEN);
>> +                                     eth_zero_addr(pmk->bssid);
>>                                       memset(pmk->pmkid, 0, IW_PMKID_LEN);
>>                                       list_del_init(&pmk->list);
>>                                       break;
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1474030173-24054-1-git-send-email-bhumirks%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

