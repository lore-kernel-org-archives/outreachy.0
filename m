X-GM-THRID: 6256394552037343232
X-Received: by 10.50.20.135 with SMTP id n7mr6917317ige.5.1456681456708;
        Sun, 28 Feb 2016 09:44:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.220 with SMTP id o89ls1232143ioi.29.gmail; Sun, 28 Feb
 2016 09:44:16 -0800 (PST)
X-Received: by 10.66.221.100 with SMTP id qd4mr9710012pac.0.1456681456314;
        Sun, 28 Feb 2016 09:44:16 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-ob0-x22f.google.com (mail-ob0-x22f.google.com. [2607:f8b0:4003:c01::22f])
        by gmr-mx.google.com with ESMTPS id ph8si660727igb.0.2016.02.28.09.44.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 09:44:16 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c01::22f as permitted sender) client-ip=2607:f8b0:4003:c01::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c01::22f as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x22f.google.com with SMTP id ts10so116799136obc.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 09:44:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to;
        bh=mpUugFgwvupErjORoCgOfRcYbvrNBLdM7CMiAqlRoys=;
        b=spUvHUmeTI0jpl77PJcMua4KTIEWUcRmGWe6HFltwjL82vY0kqudYAm39BeapKOeEd
         BGC8nqCSGyroarGDXuCgZ0G0xBO1S/tw7s25f0B7qv2KQgyaqxnjPSPaoBFP/ELmn/AF
         pcHkULu+h+WXmtsjYm4mfS+1SGceYInfSZcvxq85LrOmTPDymUOSA/lEZ2tM3UCK7tNE
         hDuwI9oRsgy5rDYxk9YK08KPIgE8BoUnDjKb4ayLpX1f3DrsGiLmSTxKNuX/FH/HUIYb
         tolBycqEtJL8AILgsMU4/SfEqlaP/HeYeHCfLdGLIkOQRD/JR7U+IWIU0Mlgq0sun7eL
         phgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=mpUugFgwvupErjORoCgOfRcYbvrNBLdM7CMiAqlRoys=;
        b=GktfKrak5OschCFjIc4ZD0JpX0q+VpLXchsFMpaXHhk2DYlrXcVM19iFYZbEgMo4qq
         YXtquVXAiGcAsYRKi2vNOEMPyIIk9jnSEPa8pJ/s9fQneMtneoF6Jy80jf12knaZjrVw
         s8501zEA3MkpPobtpi3kz5J8M047y4iq1kzdUILP621ZbvQfJX2c16dNhYxq35MvwkvJ
         USLeouMF8Nh1KHTeeGlM4H7i2snLxBDDznVV+gsmapLGdWhacPJZd9+PsuipjG1Mqr3s
         nOC55dxujxZt2qCbAn4M7bBt85CmR9ZWXfHjPBbH3ld4ZVoiYIouHiUxKGsbl1QEQ8Jk
         0OeA==
X-Gm-Message-State: AD7BkJI+s88rZK2aJLnQwlBC5yu9NWvOkGphkCjKF1kYm8ykrNMrZKLb9yDQwD2pOBVoFk3GQZFs6rM4KhSIFg==
MIME-Version: 1.0
X-Received: by 10.60.76.10 with SMTP id g10mr8850545oew.50.1456681456119; Sun,
 28 Feb 2016 09:44:16 -0800 (PST)
Received: by 10.157.40.174 with HTTP; Sun, 28 Feb 2016 09:44:16 -0800 (PST)
In-Reply-To: <CAOH+1jF9Gr0qni4cKbccXc1nuq+qmzxT4bJshzNmYq+WfeBcAw@mail.gmail.com>
References: <1456680358-31613-1-git-send-email-bhumirks@gmail.com>
	<alpine.DEB.2.02.1602281834200.2147@localhost6.localdomain6>
	<CAOH+1jF9Gr0qni4cKbccXc1nuq+qmzxT4bJshzNmYq+WfeBcAw@mail.gmail.com>
Date: Sun, 28 Feb 2016 23:14:16 +0530
Message-ID: <CAOH+1jEQMX_6eXpK428Mm1cdNtLxofF5G=dyEaED-RsLUn6wSw@mail.gmail.com>
Subject: Fwd: [Outreachy kernel] [PATCH] Staging: lustre: Remove print
 statement on function failure
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 28, 2016 at 11:05 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Sun, 28 Feb 2016, Bhumika Goyal wrote:
>
>> The  memory allocation functions generates a call stack containing
>> all the context information on failure, so print statements can be
>> removed on failure of these functions. Also remove
>> unwanted {} around if block after removal of these statements.
>> Done using coccinelle:
>>
>> @@
>> expression e;
>> @@
>>
>> e=\(kmalloc\|kmalloc\|kmalloc_array\|alloc_netdev\|kzalloc\|
>>    devm_kzalloc\|devm_ioremap\)(...);
>> ...
>> if(!e){
>> - \(DBG_8723A\|printk\|pr_err\|CERROR\|DBG_88E\)(...);
>> ...when any
>> }
>>
>> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> ---
>>  drivers/staging/lustre/lustre/libcfs/linux/linux-crypto.c | 1 -
>>  drivers/staging/lustre/lustre/obdclass/llog.c             | 5 ++---
>>  drivers/staging/lustre/lustre/obdecho/echo_client.c       | 2 --
>>  3 files changed, 2 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/staging/lustre/lustre/libcfs/linux/linux-crypto.c b/drivers/staging/lustre/lustre/libcfs/linux/linux-crypto.c
>> index ec75801..6742270 100644
>> --- a/drivers/staging/lustre/lustre/libcfs/linux/linux-crypto.c
>> +++ b/drivers/staging/lustre/lustre/libcfs/linux/linux-crypto.c
>> @@ -252,7 +252,6 @@ static int cfs_crypto_test_hashes(void)
>>
>>       data = kmalloc(data_len, 0);
>>       if (!data) {
>> -             CERROR("Failed to allocate mem\n");
>>               return -ENOMEM;
>>       }
>
> You need to drop the braces here too.
>

Oh yes. I will redo and send a v2.

>>
>> diff --git a/drivers/staging/lustre/lustre/obdclass/llog.c b/drivers/staging/lustre/lustre/obdclass/llog.c
>> index f7ee605..d1d74ee 100644
>> --- a/drivers/staging/lustre/lustre/obdclass/llog.c
>> +++ b/drivers/staging/lustre/lustre/obdclass/llog.c
>> @@ -365,10 +365,9 @@ int llog_process_or_fork(const struct lu_env *env,
>>       int                   rc;
>>
>>       lpi = kzalloc(sizeof(*lpi), GFP_NOFS);
>> -     if (!lpi) {
>> -             CERROR("cannot alloc pointer\n");
>> +     if (!lpi)
>>               return -ENOMEM;
>> -     }
>> +
>>       lpi->lpi_loghandle = loghandle;
>>       lpi->lpi_cb     = cb;
>>       lpi->lpi_cbdata    = data;
>> diff --git a/drivers/staging/lustre/lustre/obdecho/echo_client.c b/drivers/staging/lustre/lustre/obdecho/echo_client.c
>> index 2b13aa2..a5b6854 100644
>> --- a/drivers/staging/lustre/lustre/obdecho/echo_client.c
>> +++ b/drivers/staging/lustre/lustre/obdecho/echo_client.c
>> @@ -1767,8 +1767,6 @@ static int echo_client_setup(const struct lu_env *env,
>>
>>       ocd = kzalloc(sizeof(*ocd), GFP_NOFS);
>>       if (!ocd) {
>> -             CERROR("Can't alloc ocd connecting to %s\n",
>> -                    lustre_cfg_string(lcfg, 1));
>>               return -ENOMEM;
>>       }
>
> Extra braces here too.  You may want to make a special case for your
> semantic patch to detect the case where there is exactly one print and one
> other statement.  It is easy to overlook this issue, and you may as well
> let Coccinelle do the work for you.
>
> julia
>

I thought of doing so but then I did it manually. I will send a v2
with revised semantic patch.

Thanks
Bhumika
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1456680358-31613-1-git-send-email-bhumirks%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

