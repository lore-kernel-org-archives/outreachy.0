X-GM-THRID: 6330925606572654592
X-Received: by 10.36.135.11 with SMTP id f11mr2339449ite.14.1474226414243;
        Sun, 18 Sep 2016 12:20:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.49.22 with SMTP id e22ls9472837otc.32.gmail; Sun, 18 Sep
 2016 12:20:13 -0700 (PDT)
X-Received: by 10.129.98.136 with SMTP id w130mr3232915ywb.107.1474226413878;
        Sun, 18 Sep 2016 12:20:13 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x244.google.com (mail-yw0-x244.google.com. [2607:f8b0:4002:c05::244])
        by gmr-mx.google.com with ESMTPS id w124si1730162ywc.4.2016.09.18.12.20.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 12:20:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) client-ip=2607:f8b0:4002:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x244.google.com with SMTP id g192so6591575ywh.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 12:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=rSOdV28Egv5b4ZtvXAkxxt4rxvkqRwf/5ZEWgjRZFNk=;
        b=IT1orcmIbEyvib05IyHp5FFErlIgcIjY1fEsDHOzKqTWB4c7ONTGX00GyFwEDfvxx/
         A0QlOQsNX7wtQWvIp6WsH3sqIh4P6dGoWzhagDq3crwG4HdgfvOtNYIHxt0d2LLWpiW3
         wZQzvwp5Wqvpn91qEDUk+j1CGeFQZ4BE7Qh8Nw8dppsafZ8mt2Y3X30BOTaMCrDOZm9N
         kUEoFF+gNFekUJX7a19X8YDJNl9tUXbDRNtaRwvpsZZbtecsZDQdV5HgT8xNb7RMyWRk
         LPT8758OTgAC2JqmVtHr4p0S2ysUigs6QVkDYp4FTqRKuZ99iMEjKNywajxOXvBJ5V5k
         /YkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=rSOdV28Egv5b4ZtvXAkxxt4rxvkqRwf/5ZEWgjRZFNk=;
        b=g07aqAB8U2CX7qL8YpSXWE0Whs7A9wmu/3PG4RK7TIE3uV0yoMjHfFPIkzxoAGI7Ix
         t7OIn7QH2KlwTeLKVBHH5+PPivXJNneuqf97GVCJvuZWDVCZH68gY0BicYC5ujMNJYZj
         Fllgby8BvWQdwv40FWNISDinGMwWCTzxCrpeD4zdhSopxICH+gD8GSjDWkXkpQdRi5Vy
         pEPgeaX6uyoihauG8rXR0/cgbIMLMnhc7mq2xje1czE+S/l+eH+7N3wtuNW9S3+K9VP7
         +J3+5tmvr2uph/fPKzFpx/VK3ggWCYQVU8IIQdADuHpCqFi1qzZrN7VzkRwJRlW3IXsY
         WItQ==
X-Gm-Message-State: AE9vXwP8rl/JFZ4lWqQOTxuCji3V71uz1JmCK+skwm6nMUDCa1FlzMMIjZsYkhimp1ffkx4TfpzdYTvfK7lV8w==
X-Received: by 10.129.71.9 with SMTP id u9mr24066607ywa.115.1474226413621;
 Sun, 18 Sep 2016 12:20:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.41.132 with HTTP; Sun, 18 Sep 2016 12:19:33 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609181302420.3238@hadrien>
References: <cover.1474032241.git.karniksayli1995@gmail.com>
 <38a21c2a1b3bc3476860cfe2080ef85816569e7f.1474032241.git.karniksayli1995@gmail.com>
 <alpine.DEB.2.10.1609181302420.3238@hadrien>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Mon, 19 Sep 2016 00:49:33 +0530
Message-ID: <CAKG5xWizCzdeFj4cLg1Ghs=90uu-8XK1Rvnam5qMxQr7L9PfaA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 2/6] staging: ks7010: Remove braces
 following single statement blocks
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Sun, Sep 18, 2016 at 4:32 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sun, 18 Sep 2016, sayli karnik wrote:
>
>> The patch removes braces {} for single statement blocks, as suggested by
>> checkpatch.pl.
>
> Why do you add blank lines everywhere?
>
I thought it was better that way, even checkpatch.pl did not complain.
Should I amend it?

thanks
sayli

> julia
>
>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
>> ---
>>  drivers/staging/ks7010/ks7010_sdio.c | 38 +++++++++++++++++-------------------
>>  1 file changed, 18 insertions(+), 20 deletions(-)
>>
>> diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
>> index b993804..8e1f68a 100644
>> --- a/drivers/staging/ks7010/ks7010_sdio.c
>> +++ b/drivers/staging/ks7010/ks7010_sdio.c
>> @@ -157,9 +157,9 @@ void ks_wlan_hw_wakeup_request(struct ks_wlan_private *priv)
>>               rw_data = WAKEUP_REQ;
>>               retval =
>>                   ks7010_sdio_write(priv, WAKEUP, &rw_data, sizeof(rw_data));
>> -             if (retval) {
>> +             if (retval)
>>                       DPRINTK(1, " error : WAKEUP=%02X\n", rw_data);
>> -             }
>> +
>>               DPRINTK(4, "wake up : WAKEUP=%02X\n", rw_data);
>>               priv->last_wakeup = jiffies;
>>               ++priv->wakeup_count;
>> @@ -398,9 +398,8 @@ static void rx_event_task(unsigned long dev)
>>               hostif_receive(priv, rp->data, rp->size);
>>               inc_rxqhead(priv);
>>
>> -             if (cnt_rxqbody(priv) > 0) {
>> +             if (cnt_rxqbody(priv) > 0)
>>                       tasklet_schedule(&priv->ks_wlan_hw.rx_bh_task);
>> -             }
>>       }
>>  }
>>
>> @@ -426,9 +425,8 @@ static void ks_wlan_hw_rx(void *dev, uint16_t size)
>>       retval =
>>           ks7010_sdio_read(priv, DATA_WINDOW, &rx_buffer->data[0],
>>                            hif_align_size(size));
>> -     if (retval) {
>> +     if (retval)
>>               goto error_out;
>> -     }
>>
>>       /* length check */
>>       if (size > 2046 || size == 0) {
>> @@ -443,9 +441,9 @@ static void ks_wlan_hw_rx(void *dev, uint16_t size)
>>               retval =
>>                   ks7010_sdio_write(priv, READ_STATUS, &read_status,
>>                                     sizeof(read_status));
>> -             if (retval) {
>> +             if (retval)
>>                       DPRINTK(1, " error : READ_STATUS=%02X\n", read_status);
>> -             }
>> +
>>               goto error_out;
>>       }
>>
>> @@ -459,9 +457,9 @@ static void ks_wlan_hw_rx(void *dev, uint16_t size)
>>       retval =
>>           ks7010_sdio_write(priv, READ_STATUS, &read_status,
>>                             sizeof(read_status));
>> -     if (retval) {
>> +     if (retval)
>>               DPRINTK(1, " error : READ_STATUS=%02X\n", read_status);
>> -     }
>> +
>>       DPRINTK(4, "READ_STATUS=%02X\n", read_status);
>>
>>       if (atomic_read(&priv->psstatus.confirm_wait)) {
>> @@ -545,9 +543,9 @@ static void ks7010_rw_function(struct work_struct *work)
>>               ks_wlan_hw_rx((void *)priv,
>>                             (uint16_t) (((rw_data & RSIZE_MASK) << 4)));
>>       }
>> -     if ((rw_data & WSTATUS_MASK)) {
>> +     if ((rw_data & WSTATUS_MASK))
>>               tx_device_task((void *)priv);
>> -     }
>> +
>>       _ks_wlan_hw_power_save(priv);
>>
>>   err_out:
>> @@ -884,9 +882,9 @@ static void ks7010_card_init(struct ks_wlan_private *priv)
>>               DPRINTK(1, "wait time out!! SME_START\n");
>>       }
>>
>> -     if (priv->mac_address_valid && priv->version_size) {
>> +     if (priv->mac_address_valid && priv->version_size)
>>               priv->dev_state = DEVICE_STATE_PREINIT;
>> -     }
>> +
>>
>>       hostif_sme_enqueue(priv, SME_GET_EEPROM_CKSUM);
>>
>> @@ -1029,9 +1027,9 @@ static int ks7010_sdio_probe(struct sdio_func *func,
>>       init_completion(&priv->ks_wlan_hw.ks7010_sdio_wait);
>>       priv->ks_wlan_hw.read_buf = NULL;
>>       priv->ks_wlan_hw.read_buf = kmalloc(RX_DATA_SIZE, GFP_KERNEL);
>> -     if (!priv->ks_wlan_hw.read_buf) {
>> +     if (!priv->ks_wlan_hw.read_buf)
>>               goto error_free_netdev;
>> -     }
>> +
>>       priv->dev_state = DEVICE_STATE_PREBOOT;
>>       priv->net_dev = netdev;
>>       priv->firmware_version[0] = '\0';
>> @@ -1067,9 +1065,9 @@ static int ks7010_sdio_probe(struct sdio_func *func,
>>       sdio_claim_host(func);
>>       ret = ks7010_sdio_write(priv, INT_PENDING, &rw_data, sizeof(rw_data));
>>       sdio_release_host(func);
>> -     if (ret) {
>> +     if (ret)
>>               DPRINTK(1, " error : INT_PENDING=%02X\n", rw_data);
>> -     }
>> +
>>       DPRINTK(4, " clear Interrupt : INT_PENDING=%02X\n", rw_data);
>>
>>       /* enable ks7010sdio interrupt (INT_GCR_B|INT_READ_STATUS|INT_WRITE_STATUS) */
>> @@ -1077,9 +1075,9 @@ static int ks7010_sdio_probe(struct sdio_func *func,
>>       sdio_claim_host(func);
>>       ret = ks7010_sdio_write(priv, INT_ENABLE, &rw_data, sizeof(rw_data));
>>       sdio_release_host(func);
>> -     if (ret) {
>> +     if (ret)
>>               DPRINTK(1, " error : INT_ENABLE=%02X\n", rw_data);
>> -     }
>> +
>>       DPRINTK(4, " enable Interrupt : INT_ENABLE=%02X\n", rw_data);
>>       priv->dev_state = DEVICE_STATE_BOOT;
>>
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/38a21c2a1b3bc3476860cfe2080ef85816569e7f.1474032241.git.karniksayli1995%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

