X-GM-THRID: 6252682956300615680
X-Received: by 10.50.154.2 with SMTP id vk2mr3459006igb.9.1455995789695;
        Sat, 20 Feb 2016 11:16:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.2.23 with SMTP id 23ls398523ioc.58.gmail; Sat, 20 Feb 2016
 11:16:29 -0800 (PST)
X-Received: by 10.50.13.69 with SMTP id f5mr3498197igc.7.1455995789354;
        Sat, 20 Feb 2016 11:16:29 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-ob0-x22c.google.com (mail-ob0-x22c.google.com. [2607:f8b0:4003:c01::22c])
        by gmr-mx.google.com with ESMTPS id ug8si1178640igb.3.2016.02.20.11.16.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 11:16:29 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c01::22c as permitted sender) client-ip=2607:f8b0:4003:c01::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c01::22c as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x22c.google.com with SMTP id jq7so135647316obb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 11:16:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=xAVidznP6KYRyrYcjWe6G0b7JywC9xmvNSTibtRLpBo=;
        b=dc/hJxqtShsVZOW+fTcG6R6za+VRozWgk0OZ+b94/UWlGaMYCWjziN0o9eWHNKvmPZ
         jn/Ww+R+RGJn5NLOhs9Uc0cpgvUDzifRI+aD81DPYjghR+XPd7jxgRqkLojfB5ax5W/b
         8m5FIr/2e3TphWVVc1+NRXrxQzGzz7Z/retfPJCCcYDFScloUTPLtIOL1isygWyEEoRm
         Ga3lRPozRT96RZWaHvN2S/AGXb6ZcGPbmyIWsAVgeIKebxLJgCS3Aynx8rbBqzgPz47M
         CKdp2agBlC47qf9UkUg+247BkpLcp6XR6XRmvesBgb+ln54IObkHuym+ii6dcuvQK0V5
         2Upw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=xAVidznP6KYRyrYcjWe6G0b7JywC9xmvNSTibtRLpBo=;
        b=Ba8texGPf4nGFS6NbIYCOhZs8JhebkpsTW9WwFGsIDi9350Tx3ajC+SUjzlh3d9+3c
         2SYTN90s2M6ZTcqN6HAXvgy4KGiRIqkx4vzBEoWigj1XccWgpUUHBknI6HiM7kKgH+Fo
         PgD/UEh368dXLn567FjHnJUKIgPCca5Q4q/zmqFV0YkXi1LboCXERCr+3o+sBtpbJPk6
         R/+TAYVcbJVi4aAe+ztrAA45nszRZQjCve/0fEeaYRNgTvHjttJNsS/un087FmAmdrNp
         xRtacG6fiGvlp65fvQKiM/0DgXqp9ebaL4Uz/76f/BOB97+rRLD3Vu/hLIy+DPNj1Mgg
         T+WA==
X-Gm-Message-State: AG10YORX9qD7ZKuAYXZR+WC7ltOU90kXcitAiM6xjZizD86DuWAIqv1DY9luYNk0fGLO/OCW4sA1pV1Iqk1asg==
MIME-Version: 1.0
X-Received: by 10.182.186.105 with SMTP id fj9mr16679354obc.17.1455995789069;
 Sat, 20 Feb 2016 11:16:29 -0800 (PST)
Received: by 10.157.40.238 with HTTP; Sat, 20 Feb 2016 11:16:29 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602201405440.2711@hadrien>
References: <1455816184-25563-1-git-send-email-bhumirks@gmail.com>
	<1455982285-17907-1-git-send-email-bhumirks@gmail.com>
	<alpine.DEB.2.10.1602201405440.2711@hadrien>
Date: Sun, 21 Feb 2016 00:46:29 +0530
Message-ID: <CAOH+1jFS6Pn2tsyMOOMVb2koL_pUsM5iEOGtAY-2L5==E9FXCQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: wilc1000: Remove and
 rename struct typedefs from .c files
From: Bhumika Goyal <bhumirks@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 21, 2016 at 12:38 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Sat, 20 Feb 2016, Bhumika Goyal wrote:
>
>> Using typedef for a structure type is not suggested in Linux kernel coding
>> style guidelines. So remove typedefs from structures wilc_sdio_t,
>> wilc_spi_t and wilc_mac_cfg_t. Also remove '_t' suffix from the names.
>>
>> The following semantic patch detects cases:
>>
>> @tn1@
>> type td;
>> @@
>>
>> typedef struct { ... } td;
>>
>> @script:python tf@
>> td << tn1.td;
>> tdres;
>> @@
>> coccinelle.tdres = td;
>>
>> @@ type tn1.td;
>> identifier tf.tdres;
>> @@
>> -typedef
>>  struct
>> + tdres
>>   { ... }
>> -td
>>   ;
>> @@ type tn1.td;
>> identifier tf.tdres;
>> @@
>> -td
>> + struct tdres
>
> Actually, the semantic patch performs part of the transformation.  So it
> would be good to say in the commit message that you have changed the names
> by hand.
>
> julia
>

Ok will keep it in mind. v3 on the way .

Thanks
Bhumika
>>
>> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> ---
>> Changes in v2:
>> * Remove '_t' suffix from the struct names.
>>
>>  drivers/staging/wilc1000/wilc_sdio.c     |  8 ++++----
>>  drivers/staging/wilc1000/wilc_spi.c      |  8 ++++----
>>  drivers/staging/wilc1000/wilc_wlan_cfg.c | 10 +++++-----
>>  3 files changed, 13 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/staging/wilc1000/wilc_sdio.c b/drivers/staging/wilc1000/wilc_sdio.c
>> index 963875af..029bd09 100644
>> --- a/drivers/staging/wilc1000/wilc_sdio.c
>> +++ b/drivers/staging/wilc1000/wilc_sdio.c
>> @@ -30,15 +30,15 @@ static const struct sdio_device_id wilc_sdio_ids[] = {
>>
>>  #define WILC_SDIO_BLOCK_SIZE 512
>>
>> -typedef struct {
>> +struct wilc_sdio {
>>       bool irq_gpio;
>>       u32 block_size;
>>       int nint;
>>  #define MAX_NUN_INT_THRPT_ENH2 (5) /* Max num interrupts allowed in registers 0xf7, 0xf8 */
>>       int has_thrpt_enh3;
>> -} wilc_sdio_t;
>> +};
>>
>> -static wilc_sdio_t g_sdio;
>> +static struct wilc_sdio g_sdio;
>>
>>  static int sdio_write_reg(struct wilc *wilc, u32 addr, u32 data);
>>  static int sdio_read_reg(struct wilc *wilc, u32 addr, u32 *data);
>> @@ -675,7 +675,7 @@ static int sdio_init(struct wilc *wilc, bool resume)
>>       u32 chipid;
>>
>>       if (!resume) {
>> -             memset(&g_sdio, 0, sizeof(wilc_sdio_t));
>> +             memset(&g_sdio, 0, sizeof(struct wilc_sdio));
>>               g_sdio.irq_gpio = wilc->dev_irq_num;
>>       }
>>
>> diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
>> index 2928712..6a69b04 100644
>> --- a/drivers/staging/wilc1000/wilc_spi.c
>> +++ b/drivers/staging/wilc1000/wilc_spi.c
>> @@ -24,13 +24,13 @@
>>  #include "wilc_wlan.h"
>>  #include "wilc_wfi_netdevice.h"
>>
>> -typedef struct {
>> +struct wilc_spi {
>>       int crc_off;
>>       int nint;
>>       int has_thrpt_enh;
>> -} wilc_spi_t;
>> +};
>>
>> -static wilc_spi_t g_spi;
>> +static struct wilc_spi g_spi;
>>
>>  static int wilc_spi_read(struct wilc *wilc, u32, u8 *, u32);
>>  static int wilc_spi_write(struct wilc *wilc, u32, u8 *, u32);
>> @@ -867,7 +867,7 @@ static int wilc_spi_init(struct wilc *wilc, bool resume)
>>               return 1;
>>       }
>>
>> -     memset(&g_spi, 0, sizeof(wilc_spi_t));
>> +     memset(&g_spi, 0, sizeof(struct wilc_spi));
>>
>>       /**
>>        *      configure protocol
>> diff --git a/drivers/staging/wilc1000/wilc_wlan_cfg.c b/drivers/staging/wilc1000/wilc_wlan_cfg.c
>> index 9dab247..56455f4 100644
>> --- a/drivers/staging/wilc1000/wilc_wlan_cfg.c
>> +++ b/drivers/staging/wilc1000/wilc_wlan_cfg.c
>> @@ -19,7 +19,7 @@
>>   *
>>   ********************************************/
>>
>> -typedef struct {
>> +struct wilc_mac_cfg {
>>       wilc_debug_func dPrint;
>>
>>       int mac_status;
>> @@ -40,9 +40,9 @@ typedef struct {
>>       u8 firmware_info[8];
>>       u8 scan_result[256];
>>       u8 scan_result1[256];
>> -} wilc_mac_cfg_t;
>> +};
>>
>> -static wilc_mac_cfg_t g_mac;
>> +static struct wilc_mac_cfg g_mac;
>>
>>  static struct wilc_cfg_byte g_cfg_byte[] = {
>>       {WID_BSS_TYPE, 0},
>> @@ -349,7 +349,7 @@ static void wilc_wlan_parse_response_frame(u8 *info, int size)
>>
>>  static int wilc_wlan_parse_info_frame(u8 *info, int size)
>>  {
>> -     wilc_mac_cfg_t *pd = &g_mac;
>> +     struct wilc_mac_cfg *pd = &g_mac;
>>       u32 wid, len;
>>       int type = WILC_CFG_RSP_STATUS;
>>
>> @@ -539,7 +539,7 @@ int wilc_wlan_cfg_indicate_rx(struct wilc *wilc, u8 *frame, int size,
>>
>>  int wilc_wlan_cfg_init(wilc_debug_func func)
>>  {
>> -     memset((void *)&g_mac, 0, sizeof(wilc_mac_cfg_t));
>> +     memset((void *)&g_mac, 0, sizeof(struct wilc_mac_cfg));
>>       g_mac.dPrint = func;
>>       return 1;
>>  }
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455982285-17907-1-git-send-email-bhumirks%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

