X-GM-THRID: 6329558000960798720
X-Received: by 10.129.53.208 with SMTP id c199mr19532137ywa.0.1473754041264;
        Tue, 13 Sep 2016 01:07:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.27.100 with SMTP id l91ls752770otl.14.gmail; Tue, 13 Sep
 2016 01:07:20 -0700 (PDT)
X-Received: by 10.129.155.145 with SMTP id s139mr1900158ywg.31.1473754040888;
        Tue, 13 Sep 2016 01:07:20 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x242.google.com (mail-yw0-x242.google.com. [2607:f8b0:4002:c05::242])
        by gmr-mx.google.com with ESMTPS id p193si378924ywe.6.2016.09.13.01.07.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 01:07:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) client-ip=2607:f8b0:4002:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x242.google.com with SMTP id u82so4208213ywc.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 01:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=CQ8o9lSZGCNno0vMCEvpOK33rY9XM0Fs8lOGaqA8qFA=;
        b=akXKqb0Dm5re49OiAc6/H0Pv1D8D7SYEqcGTzapOdCKv90CRr1PmQXSTSdny4Bwvie
         a8Xxn10zkhIlTG69dzOUKYV6B9Vl16s6tr34aS17jnFSbWpLV4PZ6vVmC4mUxbRJQXse
         0RKGfosfs9IBzspb49dsO9Qivryd8ociLvvjTpD5N96R3TmZeetjC3BlOY+ml9ns2987
         nr0iCJP7g1B3QIi0lvc/1amqSxNgOh9pfVAnmiZXdCOTIfZusFJy8FWyHAWcl4JeLmau
         yyoH5ccnGTaH/sJO55LcGuCEi5s/cYv94c5oRdqRZyiDzPGFbF6yeU+oXL1mRAQeC9Ft
         KEtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=CQ8o9lSZGCNno0vMCEvpOK33rY9XM0Fs8lOGaqA8qFA=;
        b=Q/YZfbro8zjzburxhs+a+8CbSbeIykIcj8qcIOHyKxN5Sn0b7hXV/+XBAgxPxnH11d
         jyElHSoOFakCfoWOf9eqSb9PR4NFVHPLovP7qokYuD3exo3ZonD+imfCyQrmg1Ee1emw
         TXD285w4Jc18A7JoBU3MZLu3s4tH1LbhFTmWY8hB6judaIR1FaKbXPcfSLBtxOtK7OwW
         HJDe50+wwbZ6U4bARXv1/u92t7ZslxcM9Fm+/Xcl3aYkgZH/IoLB/dl1BLGtDAnP3vD1
         3lnr8WwTKUHERHTFp7GISQmTG/zqW3BXIu5/N6H+JEJXvuUks5e8a7ePxFTX82vQRbAe
         /21w==
X-Gm-Message-State: AE9vXwNIzxBovUIMf6pNDYc/MilMltW+LEAz5iuEwZLj+V8T6QkMdj8qbHaJWztcd1zwB+6gOGSV/g/wnKfmOA==
X-Received: by 10.13.205.193 with SMTP id p184mr19805756ywd.264.1473754040614;
 Tue, 13 Sep 2016 01:07:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.41.132 with HTTP; Tue, 13 Sep 2016 01:06:40 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609122320590.3549@hadrien>
References: <20160912211728.GA13970@sayli-HP-15-Notebook-PC> <alpine.DEB.2.10.1609122320590.3549@hadrien>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Tue, 13 Sep 2016 13:36:40 +0530
Message-ID: <CAKG5xWi2jK35G+Va7NU4_Q8_jNgbanJozASquzpwxDug7SB6MA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: ks7010: Remove the explicit
 NULL comparison
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Content-Type: text/plain; charset=UTF-8

One way to do reduce the ugliness of the casts is to use typedefs to
structures, but they certainly deteriorate readability according to
Documentation/CodingStyle.
Anyway since a void * is implicitly casted to other types, should I
remove the casts and send a separate patch for that?

Thanks!

On Tue, Sep 13, 2016 at 2:52 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Tue, 13 Sep 2016, sayli karnik wrote:
>
>> The patch removes the explicit null comparisons entirely for the ks7010 driver.
>> This was detected by checkpatch.pl
>
> It's orthogonal to the change you have made here, but there are a lot of
> ugly casts on the calls to kmalloc.  Since kmalloc returns a void * type,
> its result can be implicitly casted to other types via an assignment.
>
> julia
>
>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
>> ---
>>  drivers/staging/ks7010/ks7010_sdio.c | 14 +++++++-------
>>  drivers/staging/ks7010/ks_hostif.c   | 30 +++++++++++++++---------------
>>  drivers/staging/ks7010/ks_wlan_net.c |  2 +-
>>  3 files changed, 23 insertions(+), 23 deletions(-)
>>
>> diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
>> index b7337fd..129e203 100644
>> --- a/drivers/staging/ks7010/ks7010_sdio.c
>> +++ b/drivers/staging/ks7010/ks7010_sdio.c
>> @@ -268,7 +268,7 @@ static int enqueue_txdev(struct ks_wlan_private *priv, unsigned char *p,
>>
>>       if (priv->dev_state < DEVICE_STATE_BOOT) {
>>               kfree(p);
>> -             if (complete_handler != NULL)
>> +             if (complete_handler)
>>                       (*complete_handler) (arg1, arg2);
>>               return 1;
>>       }
>> @@ -277,7 +277,7 @@ static int enqueue_txdev(struct ks_wlan_private *priv, unsigned char *p,
>>               /* in case of buffer overflow */
>>               DPRINTK(1, "tx buffer overflow\n");
>>               kfree(p);
>> -             if (complete_handler != NULL)
>> +             if (complete_handler)
>>                       (*complete_handler) (arg1, arg2);
>>               return 1;
>>       }
>> @@ -349,7 +349,7 @@ static void tx_device_task(void *dev)
>>
>>               }
>>               kfree(sp->sendp);       /* allocated memory free */
>> -             if (sp->complete_handler != NULL)       /* TX Complete */
>> +             if (sp->complete_handler)       /* TX Complete */
>>                       (*sp->complete_handler) (sp->arg1, sp->arg2);
>>               inc_txqhead(priv);
>>
>> @@ -696,7 +696,7 @@ static void trx_device_exit(struct ks_wlan_private *priv)
>>       while (cnt_txqbody(priv) > 0) {
>>               sp = &priv->tx_dev.tx_dev_buff[priv->tx_dev.qhead];
>>               kfree(sp->sendp);       /* allocated memory free */
>> -             if (sp->complete_handler != NULL)       /* TX Complete */
>> +             if (sp->complete_handler)       /* TX Complete */
>>                       (*sp->complete_handler) (sp->arg1, sp->arg2);
>>               inc_txqhead(priv);
>>       }
>> @@ -1029,7 +1029,7 @@ static int ks7010_sdio_probe(struct sdio_func *func,
>>
>>       /* private memory allocate */
>>       netdev = alloc_etherdev(sizeof(*priv));
>> -     if (netdev == NULL) {
>> +     if (!netdev) {
>>               printk(KERN_ERR "ks7010 : Unable to alloc new net device\n");
>>               goto error_release_irq;
>>       }
>> @@ -1146,7 +1146,7 @@ static void ks7010_sdio_remove(struct sdio_func *func)
>>
>>       card = sdio_get_drvdata(func);
>>
>> -     if (card == NULL)
>> +     if (!card)
>>               return;
>>
>>       DPRINTK(1, "priv = card->priv\n");
>> @@ -1168,7 +1168,7 @@ static void ks7010_sdio_remove(struct sdio_func *func)
>>                       struct hostif_stop_request_t *pp;
>>                       pp = (struct hostif_stop_request_t *)
>>                           kzalloc(hif_align_size(sizeof(*pp)), GFP_KERNEL);
>> -                     if (pp == NULL) {
>> +                     if (!pp) {
>>                               DPRINTK(3, "allocate memory failed..\n");
>>                               return; /* to do goto ni suru */
>>                       }
>> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
>> index a8822fe..f32ce5a 100644
>> --- a/drivers/staging/ks7010/ks_hostif.c
>> +++ b/drivers/staging/ks7010/ks_hostif.c
>> @@ -1176,7 +1176,7 @@ int hostif_data_request(struct ks_wlan_private *priv, struct sk_buff *packet)
>>           kmalloc(hif_align_size(sizeof(*pp) + 6 + packet_len + 8),
>>                   KS_WLAN_MEM_FLAG);
>>
>> -     if (pp == NULL) {
>> +     if (!pp) {
>>               DPRINTK(3, "allocate memory failed..\n");
>>               dev_kfree_skb(packet);
>>               return -2;
>> @@ -1315,7 +1315,7 @@ void hostif_mib_get_request(struct ks_wlan_private *priv,
>>       /* make primitive */
>>       pp = (struct hostif_mib_get_request_t *)
>>           kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
>> -     if (pp == NULL) {
>> +     if (!pp) {
>>               DPRINTK(3, "allocate memory failed..\n");
>>               return;
>>       }
>> @@ -1346,7 +1346,7 @@ void hostif_mib_set_request(struct ks_wlan_private *priv,
>>       /* make primitive */
>>       pp = (struct hostif_mib_set_request_t *)
>>           kmalloc(hif_align_size(sizeof(*pp) + size), KS_WLAN_MEM_FLAG);
>> -     if (pp == NULL) {
>> +     if (!pp) {
>>               DPRINTK(3, "allocate memory failed..\n");
>>               return;
>>       }
>> @@ -1376,7 +1376,7 @@ void hostif_start_request(struct ks_wlan_private *priv, unsigned char mode)
>>       /* make primitive */
>>       pp = (struct hostif_start_request_t *)
>>           kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
>> -     if (pp == NULL) {
>> +     if (!pp) {
>>               DPRINTK(3, "allocate memory failed..\n");
>>               return;
>>       }
>> @@ -1404,7 +1404,7 @@ void hostif_ps_adhoc_set_request(struct ks_wlan_private *priv)
>>       /* make primitive */
>>       pp = (struct hostif_ps_adhoc_set_request_t *)
>>           kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
>> -     if (pp == NULL) {
>> +     if (!pp) {
>>               DPRINTK(3, "allocate memory failed..\n");
>>               return;
>>       }
>> @@ -1448,7 +1448,7 @@ void hostif_infrastructure_set_request(struct ks_wlan_private *priv)
>>       /* make primitive */
>>       pp = (struct hostif_infrastructure_set_request_t *)
>>           kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
>> -     if (pp == NULL) {
>> +     if (!pp) {
>>               DPRINTK(3, "allocate memory failed..\n");
>>               return;
>>       }
>> @@ -1515,7 +1515,7 @@ void hostif_infrastructure_set2_request(struct ks_wlan_private *priv)
>>       /* make primitive */
>>       pp = (struct hostif_infrastructure_set2_request_t *)
>>           kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
>> -     if (pp == NULL) {
>> +     if (!pp) {
>>               DPRINTK(3, "allocate memory failed..\n");
>>               return;
>>       }
>> @@ -1585,7 +1585,7 @@ void hostif_adhoc_set_request(struct ks_wlan_private *priv)
>>       /* make primitive */
>>       pp = (struct hostif_adhoc_set_request_t *)
>>           kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
>> -     if (pp == NULL) {
>> +     if (!pp) {
>>               DPRINTK(3, "allocate memory failed..\n");
>>               return;
>>       }
>> @@ -1631,7 +1631,7 @@ void hostif_adhoc_set2_request(struct ks_wlan_private *priv)
>>       /* make primitive */
>>       pp = (struct hostif_adhoc_set2_request_t *)
>>           kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
>> -     if (pp == NULL) {
>> +     if (!pp) {
>>               DPRINTK(3, "allocate memory failed..\n");
>>               return;
>>       }
>> @@ -1679,7 +1679,7 @@ void hostif_stop_request(struct ks_wlan_private *priv)
>>       /* make primitive */
>>       pp = (struct hostif_stop_request_t *)
>>           kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
>> -     if (pp == NULL) {
>> +     if (!pp) {
>>               DPRINTK(3, "allocate memory failed..\n");
>>               return;
>>       }
>> @@ -1702,7 +1702,7 @@ void hostif_phy_information_request(struct ks_wlan_private *priv)
>>       /* make primitive */
>>       pp = (struct hostif_phy_information_request_t *)
>>           kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
>> -     if (pp == NULL) {
>> +     if (!pp) {
>>               DPRINTK(3, "allocate memory failed..\n");
>>               return;
>>       }
>> @@ -1734,7 +1734,7 @@ void hostif_power_mngmt_request(struct ks_wlan_private *priv,
>>       /* make primitive */
>>       pp = (struct hostif_power_mngmt_request_t *)
>>           kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
>> -     if (pp == NULL) {
>> +     if (!pp) {
>>               DPRINTK(3, "allocate memory failed..\n");
>>               return;
>>       }
>> @@ -1761,7 +1761,7 @@ void hostif_sleep_request(struct ks_wlan_private *priv, unsigned long mode)
>>               /* make primitive */
>>               pp = (struct hostif_sleep_request_t *)
>>                   kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
>> -             if (pp == NULL) {
>> +             if (!pp) {
>>                       DPRINTK(3, "allocate memory failed..\n");
>>                       return;
>>               }
>> @@ -1795,7 +1795,7 @@ void hostif_bss_scan_request(struct ks_wlan_private *priv,
>>       /* make primitive */
>>       pp = (struct hostif_bss_scan_request_t *)
>>           kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
>> -     if (pp == NULL) {
>> +     if (!pp) {
>>               DPRINTK(3, "allocate memory failed..\n");
>>               return;
>>       }
>> @@ -1852,7 +1852,7 @@ void hostif_mic_failure_request(struct ks_wlan_private *priv,
>>       /* make primitive */
>>       pp = (struct hostif_mic_failure_request_t *)
>>           kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
>> -     if (pp == NULL) {
>> +     if (!pp) {
>>               DPRINTK(3, "allocate memory failed..\n");
>>               return;
>>       }
>> diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
>> index 1e21eb1..8462c98 100644
>> --- a/drivers/staging/ks7010/ks_wlan_net.c
>> +++ b/drivers/staging/ks7010/ks_wlan_net.c
>> @@ -3366,7 +3366,7 @@ int ks_wlan_start_xmit(struct sk_buff *skb, struct net_device *dev)
>>
>>       DPRINTK(3, "in_interrupt()=%ld\n", in_interrupt());
>>
>> -     if (skb == NULL) {
>> +     if (!skb) {
>>               printk(KERN_ERR "ks_wlan:  skb == NULL!!!\n");
>>               return 0;
>>       }
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160912211728.GA13970%40sayli-HP-15-Notebook-PC.
>> For more options, visit https://groups.google.com/d/optout.
>>

