X-GM-THRID: 6467597635831201792
X-Received: by 10.99.55.90 with SMTP id g26mr26054pgn.174.1505856579045;
        Tue, 19 Sep 2017 14:29:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.120.3 with SMTP id p3ls263401itc.7.gmail; Tue, 19 Sep 2017
 14:29:36 -0700 (PDT)
X-Received: by 10.99.49.150 with SMTP id x144mr39388pgx.68.1505856576816;
        Tue, 19 Sep 2017 14:29:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505856576; cv=none;
        d=google.com; s=arc-20160816;
        b=Y1cljK3lrJSLszOicfivvNTFgZW9nY60525hHyZgIDAUiA9lNkRSNRL5zDt7rq6YXP
         MFyrJgc+AFar7HgFF4O0+zufpl8KqU6qMaSsGCH4V2nPibMQrAGCNh8XkVIRoCG4+96C
         MX//wtKt0MeXxLpmbzVDVqGD7sbr5s/8brRKBaXJizGbiapo1CjlymxLbCt5rWVJCI/P
         AO0TIVQm4RqGV7OnzmzYUowBIE8T0aqvIe5a4p4Sjj7NQC+1VAMpgAYqr7OiiPKY5Irp
         t7olnF2Z8d2E2vruCocwp2SWLBJg+AqYzZXksI6PbRZaNmbX1swNwWu9umAF9+7Ae+mR
         6/Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=tUNjfIBAMBV+iXN+/yly+aqaz4fYQSmLYzsKVxooBfQ=;
        b=E0Iw1s2C1htC+yx+HbQyUVMevh7t27mvUjV9nEVPrlw87cKY+djUC9pmkA6lbBCpdj
         azlCOz1KmxwQW3KwpwXCIZEXk6ph8krQyZGSCzAg9P8pqs4vrDDhnWkcmYVhdVhAzfUD
         1tYlWzr2L/OCK3/CG+bSTki1fw6BqWLDwNi2XRS3/8F4f6ZNV0IQMUgvyo1OYVs8JHEz
         N8eW2fwjq1iKf11uu72lXStz3v62mblAco57gMFGv80oeCs429C+f1f3XOF5ZxtgQLaQ
         CXta5mLdz5b86o/NCSd+myiel5KICaP8stNqgoVPQvFvAijZujvRZ0eR2GPDYrwyaM/W
         cCVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ekJ8SWtN;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-qt0-x242.google.com (mail-qt0-x242.google.com. [2607:f8b0:400d:c0d::242])
        by gmr-mx.google.com with ESMTPS id t131si14409ywe.15.2017.09.19.14.29.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Sep 2017 14:29:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) client-ip=2607:f8b0:400d:c0d::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ekJ8SWtN;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x242.google.com with SMTP id l25so595398qtf.2
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Sep 2017 14:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=tUNjfIBAMBV+iXN+/yly+aqaz4fYQSmLYzsKVxooBfQ=;
        b=ekJ8SWtNFrgAuIasy/LE8GkaSraa9C9mwItXj6Bcndb6nxPIj4YGrQEcs2/uVfgIhO
         OrQsu6eHqnDi4CO6Y1kuezpFd4kFp9CzK2ABjPkQj+5RPfi8g+kHw9fZOz/BzPUiilEA
         pgz4J6TOvNvbHpIxolYX7c1i96l0n3Bw1+HMlTRDYe2QkGzU2iiv/mrTFllOQgVoIEit
         vn0XAEHl1l4ZmZ0tQ3sxygo/89eerOKZNdLCzZ16AkTPCiesucyWfMR72gP1A9mrNMTF
         f7k7beIIjvER8DrcdoCf5MtXWMuUElDU5MPTYhmeTzdMEkbRDbWYuQSSL8WGsgwdofRf
         WvLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=tUNjfIBAMBV+iXN+/yly+aqaz4fYQSmLYzsKVxooBfQ=;
        b=TYSwomTvGW7zDa6CI3jzuWQ2RJ3sisBMClumODmN8qzWNUXPMAUqyYNiD24J0an4cv
         eGghpTdipEE2bxKxtBsmtFQsTu7gFWna2kmVy/cMmujvvAGo7twmO+ylQP7k41UE02W3
         XGljXng5lK0QJpIokzx+qfT4jCcYjImPff1MuOvAVbMofuC0p/9lZdFy4clqyHsSBugl
         8TU1+MULi4HXv0x3meYndWjze0CmT+xrqifVvuAwogyYjq8R5z81mgA/5+btuZkvir0e
         V1tdTB7OCANqVt2+mv9K+7Dq7f6VFZVcDvGfL5ta/bYA0a0HdpyA1EgVPkyleTEqPqHO
         P4Fw==
X-Gm-Message-State: AHPjjUhaCjtumzqgxwofTrH4YWTy5p6jBIYW9K33La1js8g+EO34vuWb
	U78GeDT8bzYZtnErNlclhlod2iEnezBmmtn2tifi4wqN
X-Google-Smtp-Source: AOwi7QCtC/z6a1C7xQSpElWLWOgMjSr7d1hnb3IvXppa9XRXVOxbd+SdX8hOLY/ZNuDtkuxV0fLRtEj2JDB1x7yu/Mk=
X-Received: by 10.200.12.11 with SMTP id k11mr4428256qti.105.1505856576366;
 Tue, 19 Sep 2017 14:29:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.18.240 with HTTP; Tue, 19 Sep 2017 14:29:35 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709192312550.2518@hadrien>
References: <20170919210157.44uf4sm27tjshxn6@fireworks> <alpine.DEB.2.20.1709192312550.2518@hadrien>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Wed, 20 Sep 2017 00:29:35 +0300
Message-ID: <CALta04xQ91BxdN4KmXMGWTS2gpX_QOLrm4dLjQMZtcWPw=870w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtlwifi: halmac: Remove
 unnecessary 'out of memory' messages
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On 20 September 2017 at 00:13, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Wed, 20 Sep 2017, Georgiana Chelu wrote:
>
>> Remove unnecessary messages because OOM (Out Of Memory Manager)
>> reports memory allocation fail messages.
>>
>> Fix issue found by by checkpatch.pl.
>> WARNING: Possible unnecessary 'out of memory' message.
>
> Do you need to add the comments?  Looking at the code, it seems pretty
> obvious from the few lines above what the problem is.
>
> julia
>
>

I saw similar comments in this file, so I thought it would be nice
to have uniformity in the code. But, as you say, the return error is
obvious. So, I will send a second version of the patch without the
'out of memory' comments.

>>
>> Signed-off-by: Georgiana Chelu <georgiana.chelu93@example.com>
>> ---
>>  drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c | 10 +++++-----
>>  1 file changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
>> index f33024e4d853..269c9e082165 100644
>> --- a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
>> +++ b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
>> @@ -277,7 +277,7 @@ halmac_dump_efuse_drv_88xx(struct halmac_adapter *halmac_adapter)
>>       if (!halmac_adapter->hal_efuse_map) {
>>               halmac_adapter->hal_efuse_map = kzalloc(efuse_size, GFP_KERNEL);
>>               if (!halmac_adapter->hal_efuse_map) {
>> -                     pr_err("[ERR]halmac allocate efuse map Fail!!\n");
>> +                     /* out of memory */
>>                       return HALMAC_RET_MALLOC_FAIL;
>>               }
>>       }
>> @@ -538,7 +538,7 @@ halmac_read_logical_efuse_map_88xx(struct halmac_adapter *halmac_adapter,
>>       if (!halmac_adapter->hal_efuse_map_valid) {
>>               efuse_map = kzalloc(efuse_size, GFP_KERNEL);
>>               if (!efuse_map) {
>> -                     pr_err("[ERR]halmac allocate local efuse map Fail!!\n");
>> +                     /* out of memory */
>>                       return HALMAC_RET_MALLOC_FAIL;
>>               }
>>
>> @@ -554,7 +554,7 @@ halmac_read_logical_efuse_map_88xx(struct halmac_adapter *halmac_adapter,
>>                       halmac_adapter->hal_efuse_map =
>>                               kzalloc(efuse_size, GFP_KERNEL);
>>                       if (!halmac_adapter->hal_efuse_map) {
>> -                             pr_err("[ERR]halmac allocate efuse map Fail!!\n");
>> +                             /* out of memory */
>>                               kfree(efuse_map);
>>                               return HALMAC_RET_MALLOC_FAIL;
>>                       }
>> @@ -3579,7 +3579,7 @@ halmac_verify_send_rsvd_page_88xx(struct halmac_adapter *halmac_adapter)
>>       rsvd_buf = kzalloc(h2c_pkt_verify_size, GFP_KERNEL);
>>
>>       if (!rsvd_buf) {
>> -             /*pr_err("[ERR]rsvd buffer malloc fail!!\n");*/
>> +             /* out of memory */
>>               return HALMAC_RET_MALLOC_FAIL;
>>       }
>>
>> @@ -3598,7 +3598,7 @@ halmac_verify_send_rsvd_page_88xx(struct halmac_adapter *halmac_adapter)
>>                           GFP_KERNEL);
>>
>>       if (!rsvd_page) {
>> -             pr_err("[ERR]rsvd page malloc fail!!\n");
>> +             /* out of memory */
>>               kfree(rsvd_buf);
>>               return HALMAC_RET_MALLOC_FAIL;
>>       }
>> --
>> 2.11.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170919210157.44uf4sm27tjshxn6%40fireworks.
>> For more options, visit https://groups.google.com/d/optout.
>>

