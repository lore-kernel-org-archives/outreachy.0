X-GM-THRID: 6331202607933030400
X-Received: by 10.194.89.35 with SMTP id bl3mr239893wjb.8.1474116675019;
        Sat, 17 Sep 2016 05:51:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.16 with SMTP id 16ls451578lja.9.gmail; Sat, 17 Sep 2016
 05:51:14 -0700 (PDT)
X-Received: by 10.25.195.134 with SMTP id t128mr148668lff.1.1474116674538;
        Sat, 17 Sep 2016 05:51:14 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id s6si40904wmb.1.2016.09.17.05.51.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 05:51:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id l131so6120489lfl.0
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 05:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=88KIvwNgV9jezHcZf15L1g/ql+Gs1liFNK6BGbebpQo=;
        b=lQgtfcDNCjdOBEVh/X7U5rdrB/SWBx4sNeMtpzw6LisljMq110QDxr7IvAB1LAVM7m
         mG1QAQ3WRgVlnmeURzQzH+7imvVUwyOXT+/gpdpKuBp83gOKYK9fJL4+BUO2U3DlagOp
         IRgUplbeKJAEZNqJbBSOBusbw6oXJ/XYQO973k5rse1pjhicr/Thr0f8vvTBbJyZwdnC
         3eIYWjbr+EUd2x5tpWp+dwkN7b+M4RwMqxBX1GkuAxDs/7RVzDk+j/CXE9uAHFpeeX0J
         GEcGOrysg6Lpxls+4jTEpsYvxd9tZjFxBDHbBoYlTZRmwudB7XuelhUPy6t8muYLCg+D
         2Sbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=88KIvwNgV9jezHcZf15L1g/ql+Gs1liFNK6BGbebpQo=;
        b=ggPaxbgW82rr2ZVDPNrMTECQAAN6upBq/T96yOPq8JY2JJLEFIZkWsrKGrB6Ytxq34
         89h4O1FIlvBYKZMz/YK7IEm7KLe+kNqJmxEya+w8aDvpZ2F9uQXNlVAWhdqTfkj6h/BM
         MZ/fiNBtY0BlfKAtbeqlL3F1OQD+a/Av33/tWtCjUobqj7omI+aUW4mnf8caF1rwlLEE
         CebtzNEjfQ5bq3xj1p16vFa2JNLRFoBSdyjHE5nr0lsImDaOriPtLm1Jd64DXJwAkj28
         yGuWB2Gi+G9MM2EvWyBpZ2qYNzA1WXtEx498MFob2oLS+CpjszawBQ00xcTw+3bJ60op
         aoHg==
X-Gm-Message-State: AE9vXwM8+Gg1lBDhzgWnQq+aXfruGzSwh5wBGL+5H09OJLXPLYShd0ges5/aU4a/5NqU7g2LpQCd/41z+1vNTg==
X-Received: by 10.25.196.135 with SMTP id u129mr4790290lff.125.1474116674152;
 Sat, 17 Sep 2016 05:51:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Sat, 17 Sep 2016 05:51:13 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609171039200.3113@hadrien>
References: <1474097953-4884-1-git-send-email-bhumirks@gmail.com> <alpine.DEB.2.10.1609171039200.3113@hadrien>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Sat, 17 Sep 2016 18:21:13 +0530
Message-ID: <CAOH+1jFz5PxmVvkPh_QrdgrDnMW5Z_Yp9Wd-t7aNT0z1GE_rNg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: ks7010: Remove extern keyword
 from function declaration
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sat, Sep 17, 2016 at 2:09 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Sat, 17 Sep 2016, Bhumika Goyal wrote:
>
>> Remove extern specifier from function declaration as they have
>> it by default. Also move extern declaration from .c files to
>> their respective header file 'ks_hostif.h'. Coccinelle was used
>
> Did you check that the ones in the .c files actually have to be extern?
>

The extern declaration from file ks_wlan_net.c can be dropped as the
function was anyway not getting used in that file.
For file ks_hostif.c the extern declarations are dropped and moved to
file ks_hostif.h  as the file ks_hostif.h is shared amongst all the
files where the those extern functions are defined or used. Am I right
in making the change?

Thanks,
Bhumika

> julia
>
>> to remove extern and other changes were done by hand.
>> Script:
>> @@
>> identifier func;
>> type T;
>> @@
>> - extern
>> T func(...);
>>
>> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> ---
>>  drivers/staging/ks7010/ks_hostif.c     |  9 ---------
>>  drivers/staging/ks7010/ks_hostif.h     | 22 +++++++++++++++-------
>>  drivers/staging/ks7010/ks_wlan.h       |  4 ++--
>>  drivers/staging/ks7010/ks_wlan_ioctl.h |  6 +++---
>>  drivers/staging/ks7010/ks_wlan_net.c   |  4 ----
>>  drivers/staging/ks7010/michael_mic.h   |  1 -
>>  6 files changed, 20 insertions(+), 26 deletions(-)
>>
>> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
>> index deb82ab..eb0192d 100644
>> --- a/drivers/staging/ks7010/ks_hostif.c
>> +++ b/drivers/staging/ks7010/ks_hostif.c
>> @@ -21,15 +21,6 @@
>>  /* Include Wireless Extension definition and check version */
>>  #include <net/iw_handler.h>  /* New driver API */
>>
>> -extern int ks_wlan_hw_tx(struct ks_wlan_private *priv, void *p,
>> -                      unsigned long size,
>> -                      void (*complete_handler) (void *arg1, void *arg2),
>> -                      void *arg1, void *arg2);
>> -extern void send_packet_complete(void *, void *);
>> -
>> -extern void ks_wlan_hw_wakeup_request(struct ks_wlan_private *priv);
>> -extern int ks_wlan_hw_power_save(struct ks_wlan_private *priv);
>> -
>>  /* macro */
>>  #define inc_smeqhead(priv) \
>>          ( priv->sme_i.qhead = (priv->sme_i.qhead + 1) % SME_EVENT_BUFF_SIZE )
>> diff --git a/drivers/staging/ks7010/ks_hostif.h b/drivers/staging/ks7010/ks_hostif.h
>> index dc806b5b..ffd0174 100644
>> --- a/drivers/staging/ks7010/ks_hostif.h
>> +++ b/drivers/staging/ks7010/ks_hostif.h
>> @@ -616,13 +616,21 @@ enum {
>>  #include "ks_wlan.h"
>>
>>  /* function prototype */
>> -extern int hostif_data_request(struct ks_wlan_private *priv,
>> -                            struct sk_buff *packet);
>> -extern void hostif_receive(struct ks_wlan_private *priv, unsigned char *p,
>> -                        unsigned int size);
>> -extern void hostif_sme_enqueue(struct ks_wlan_private *priv, uint16_t event);
>> -extern int hostif_init(struct ks_wlan_private *priv);
>> -extern void hostif_exit(struct ks_wlan_private *priv);
>> +int hostif_data_request(struct ks_wlan_private *priv,
>> +                      struct sk_buff *packet);
>> +void hostif_receive(struct ks_wlan_private *priv, unsigned char *p,
>> +                  unsigned int size);
>> +void hostif_sme_enqueue(struct ks_wlan_private *priv, uint16_t event);
>> +int hostif_init(struct ks_wlan_private *priv);
>> +void hostif_exit(struct ks_wlan_private *priv);
>> +int ks_wlan_hw_tx(struct ks_wlan_private *priv, void *p,
>> +                unsigned long size,
>> +                void (*complete_handler) (void *arg1, void *arg2),
>> +                void *arg1, void *arg2);
>> +void send_packet_complete(void *, void *);
>> +
>> +void ks_wlan_hw_wakeup_request(struct ks_wlan_private *priv);
>> +int ks_wlan_hw_power_save(struct ks_wlan_private *priv);
>>
>>  static
>>  inline int hif_align_size(int size)
>> diff --git a/drivers/staging/ks7010/ks_wlan.h b/drivers/staging/ks7010/ks_wlan.h
>> index f05dc01..693e7d8 100644
>> --- a/drivers/staging/ks7010/ks_wlan.h
>> +++ b/drivers/staging/ks7010/ks_wlan.h
>> @@ -499,7 +499,7 @@ struct ks_wlan_private {
>>       uint wakeup_count;      /* for detect wakeup loop */
>>  };
>>
>> -extern int ks_wlan_net_start(struct net_device *dev);
>> -extern int ks_wlan_net_stop(struct net_device *dev);
>> +int ks_wlan_net_start(struct net_device *dev);
>> +int ks_wlan_net_stop(struct net_device *dev);
>>
>>  #endif /* _KS_WLAN_H */
>> diff --git a/drivers/staging/ks7010/ks_wlan_ioctl.h b/drivers/staging/ks7010/ks_wlan_ioctl.h
>> index 49369e4..84554b6 100644
>> --- a/drivers/staging/ks7010/ks_wlan_ioctl.h
>> +++ b/drivers/staging/ks7010/ks_wlan_ioctl.h
>> @@ -58,9 +58,9 @@
>>  #include "ks_wlan.h"
>>  #include <linux/netdevice.h>
>>
>> -extern int ks_wlan_read_config_file(struct ks_wlan_private *priv);
>> -extern int ks_wlan_setup_parameter(struct ks_wlan_private *priv,
>> -                                unsigned int commit_flag);
>> +int ks_wlan_read_config_file(struct ks_wlan_private *priv);
>> +int ks_wlan_setup_parameter(struct ks_wlan_private *priv,
>> +                          unsigned int commit_flag);
>>
>>  #endif /* __KERNEL__ */
>>
>> diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
>> index 70cc9be..ee9c8f3 100644
>> --- a/drivers/staging/ks7010/ks_wlan_net.c
>> +++ b/drivers/staging/ks7010/ks_wlan_net.c
>> @@ -69,10 +69,6 @@ static const struct iw_handler_def ks_wlan_handler_def;
>>  /*
>>   *   function prototypes
>>   */
>> -extern int ks_wlan_hw_tx(struct ks_wlan_private *priv, void *p,
>> -                      unsigned long size,
>> -                      void (*complete_handler) (void *arg1, void *arg2),
>> -                      void *arg1, void *arg2);
>>  static int ks_wlan_open(struct net_device *dev);
>>  static void ks_wlan_tx_timeout(struct net_device *dev);
>>  static int ks_wlan_start_xmit(struct sk_buff *skb, struct net_device *dev);
>> diff --git a/drivers/staging/ks7010/michael_mic.h b/drivers/staging/ks7010/michael_mic.h
>> index c7e4eb2..89f17d5 100644
>> --- a/drivers/staging/ks7010/michael_mic.h
>> +++ b/drivers/staging/ks7010/michael_mic.h
>> @@ -20,7 +20,6 @@ struct michel_mic_t {
>>       uint8_t Result[8];
>>  };
>>
>> -extern
>>  void MichaelMICFunction(struct michel_mic_t *Mic, uint8_t * Key,
>>                       uint8_t * Data, int Len, uint8_t priority,
>>                       uint8_t * Result);
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1474097953-4884-1-git-send-email-bhumirks%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

