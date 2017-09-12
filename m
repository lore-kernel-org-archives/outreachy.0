X-GM-THRID: 6464551056446586880
X-Received: by 10.98.211.86 with SMTP id q83mr7843799pfg.22.1505217922748;
        Tue, 12 Sep 2017 05:05:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.142 with SMTP id u14ls1062796iou.25.gmail; Tue, 12 Sep
 2017 05:05:21 -0700 (PDT)
X-Received: by 10.159.35.207 with SMTP id 73mr8485643uao.105.1505217921866;
        Tue, 12 Sep 2017 05:05:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505217921; cv=none;
        d=google.com; s=arc-20160816;
        b=arFG1e8cVmPiZAuq3FtffJGf/Ur8d/LScLJxAoZwU+/9lA65d2QmM9UTxmMvRXYrVS
         32GiA+cuPNN/lIMPDQqbpCxUZYFxXyM6XiOfDsoiHVslmC4KCBi1paMIt1JUGtNtrzw7
         iLQFU0qlEmCS+3MxW9pvFzt7xCVdmSO4p64RhNporZ6G8Yllg0BzAuuNCwuwFn3j4HSY
         Lf/7YwIcQuEwLP9D/QY83UJ1XMkB0CKqVlFNtPY/XxmbtYTeZUrD8QmAtdP3ps7dDr0y
         jWizmkU3m49q4VL0tPejsUpjPNVU5XLJMXZkLrJg+H9tgzX23A5ZHss1BD4xKa+OV9uB
         TvoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=ZPHP2rlM0JIQw38MKSETvUoPsoGwIjLuiFezB8XBiYg=;
        b=r3nGsjB2wMcyewbS+kMqsGbLJrNyIkG5dOGLc43dXj7ckJ6nOzzgJSbDXqKNxVBjk/
         46kMpSJB+gQ0nuCQYuCXR3I+sgjQD6l0B6dz60u4qNhDAUoCvNMspdlXW3V1LgVyVykF
         B0HO6a9t8GtG1TIMbF/FewFWFfStv4f5FcqnJk67l5P3jnRbMfU1Y5h0dARnBGh5dGr1
         3338HV2Wm4jgCAofH99vGS9t+A1Zkpa5FaYV5LrQdLSGExaiS8amXDXcqNs0RAbNGxUY
         jQwQ/1q0Yd3tGf138YZnZB3pcZAlbxS5UmJW3fMGLt/6fueLqL6jzoWTu/GBiAo4ZcfH
         As4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XtkVZPhz;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qt0-x242.google.com (mail-qt0-x242.google.com. [2607:f8b0:400d:c0d::242])
        by gmr-mx.google.com with ESMTPS id v124si882307ywe.5.2017.09.12.05.05.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 05:05:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) client-ip=2607:f8b0:400d:c0d::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XtkVZPhz;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x242.google.com with SMTP id q8so7207920qtb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Sep 2017 05:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ZPHP2rlM0JIQw38MKSETvUoPsoGwIjLuiFezB8XBiYg=;
        b=XtkVZPhzFwh/XsEpzdrNT4PoUpKIhcPnZ7YaXoLLOZgjkXPoN1yT6/RtjSIQMAPCIg
         ldGXv4nwClDxZ9qY9W39Thx4OsJ8y/UulpyEZhHeSiZD8KcBi0+snsiey09m+KwfwnnM
         bDIV4vyMnSHhg9cRQI1JlEzithCfElYtC/6AhWaIv6+WyiLfckLAGbwgIe9bgtpJkRtx
         2Kw19PthUu/RRrUFPpgUXwXcZlRElIzz1V9l3+J0Ih9SJj0GcU7yEKWycPF6nHKuRJdo
         V7UOgWLFZjGhtFJV1RfT29H2kN0T+iVxnMO3Ys5WvVhBgKh83nFu9HxkRz96siwprZ14
         yAtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ZPHP2rlM0JIQw38MKSETvUoPsoGwIjLuiFezB8XBiYg=;
        b=f/ovGSR/7WvaMxXi6SNDhZaLXOJEmE1WbuoHDL6UgJMxTZBSw2wdu+6xSmDkuLbc5N
         qV3uaL4CAczckyuNL9PIEEbDkazPY8NYsvhQrd0eA+bZAirOUAPcUczWiTQOqg958kzh
         uxX+5ewTmgXBy0Vsn2nRgGidfkpsKdnwkFhzDgNKnT9pg/F/4jMOu2exIm0cjbeNtQvo
         Yf/lfZgq4TFG3T49Brm3QbYnpSRpPXSsDEuGPD7Lg4NZX476Tu7vtnLljvT0Qpe652lV
         pz7GjtkvcB0EyBHPMW4mc2DKIBN0ffjvN0Ion6abL8Y9+Sljv19L0IrA3Ad7mdRBi5Lz
         eGKg==
X-Gm-Message-State: AHPjjUgv69cTuYt5zTkgi/PJsj6RgUmMMuxYXqM20aFhkTwERCAA/USB
	twyxlFKcDE+1fpgsFHurDjVKlzBsMg==
X-Google-Smtp-Source: AOwi7QDL8WPC1iaWNl5B9sYmGfxf8r/yjgMujWo3nT28INKaQfimu2g+ytOCbk/hmSEG685rQ3ez7PQKBW75xOGV+XE=
X-Received: by 10.237.63.15 with SMTP id p15mr20158374qtf.117.1505217921553;
 Tue, 12 Sep 2017 05:05:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Tue, 12 Sep 2017 05:05:21 -0700 (PDT)
In-Reply-To: <20170912091951.noslc3dlncyxonyg@mwanda>
References: <1505145571-11248-1-git-send-email-srishtishar@gmail.com> <20170912091951.noslc3dlncyxonyg@mwanda>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Tue, 12 Sep 2017 17:35:21 +0530
Message-ID: <CAB3L5oy17gOjA7_HCZZXPqXO9yYh4283+ehruaDUz0pJNDu+EQ@mail.gmail.com>
Subject: Re: [PATCH] Staging: ccree: Don't use volatile for monitor_lock
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Gilad Ben-Yossef <gilad@benyossef.com>, devel@driverdev.osuosl.org, 
	Greg KH <gregkh@linuxfoundation.org>, driverdev-devel@linuxdriverproject.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Sep 12, 2017 at 2:49 PM, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> On Mon, Sep 11, 2017 at 09:29:31PM +0530, Srishti Sharma wrote:
>> The use of volatile for the variable monitor_lock is unnecessary.
>>
>> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>> ---
>>  drivers/staging/ccree/ssi_request_mgr.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/ccree/ssi_request_mgr.c b/drivers/staging/ccree/ssi_request_mgr.c
>> index e5c2f92..7d77941 100644
>> --- a/drivers/staging/ccree/ssi_request_mgr.c
>> +++ b/drivers/staging/ccree/ssi_request_mgr.c
>> @@ -49,7 +49,7 @@ struct ssi_request_mgr_handle {
>>       dma_addr_t dummy_comp_buff_dma;
>>       struct cc_hw_desc monitor_desc;
>>
>> -     volatile unsigned long monitor_lock;
>> +     unsigned long monitor_lock;
>
> The variable seems unused.  Try deleting it instead.

Had already sent a patch for that as v2.

Thanks
Srishti

> regards,
> dan carpenter
>

