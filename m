X-GM-THRID: 6469106545355390976
X-Received: by 10.36.57.209 with SMTP id l200mr4190243ita.31.1506332256832;
        Mon, 25 Sep 2017 02:37:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.159.194 with SMTP id v63ls2134401pfk.6.gmail; Mon, 25 Sep
 2017 02:37:35 -0700 (PDT)
X-Received: by 10.99.115.92 with SMTP id d28mr4639882pgn.55.1506332255785;
        Mon, 25 Sep 2017 02:37:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506332255; cv=none;
        d=google.com; s=arc-20160816;
        b=vUXYEZBMLsvTIHN1vRHc6uOkAJdOSq1BVgbzUUyxmwXOYvqrFzVIR7CBYIUBrebZm5
         RmJtpQ3C07E7m1TYl7GC2XEdb07UjoEDTcLIoNDiKQXcdjKnpijkMv9nN/R9EXqRS154
         MSu8UfgaHo5PCRT5HOUdmn/PiPdgxtGrEAU/CorarWNeTi8qjj/xWJMh/YMVwxS7JEdO
         bC9Xw2dQlDn+NyhLMB4eIMaqtgXWPuhk0P/0sZ8p5zzuRiQyqAyfBGB4riEvjjnKVEqT
         u5UPJjytdL+bPBYgmOhWDaOeZyeEXw0KzigGENAJhgu+lAQ9aZzUqZWt/VC8Fg7cyWA1
         vPTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=9HVCSJ6k+4PzI7sKGwfqAWOK3K+pEcEzjO3YfKu+2bo=;
        b=GDhhCzNnBJe/PTMBw9qGC9sDloeQyShDei1KmS9TLuTnWxLywvQrhKWOVfIELqC69f
         2OHDlamr99iVV4W4R27U/Mok97351objx/+T9V9xs16S4oM65uaDb8qq+oWqrilltbQg
         vCUtQFqLk793NGSSDyCWvRnDDkmIEQR1G3RtXozAOsXycoV7Kz7ZP1LaNrgMdYML4r1T
         A8nz3UX2OBxHVzq8V4dZsyhiYU7i1SeQ62uiPZYW9N9rxW0HVLr8jdYERMATQClpImr6
         t9ydAFjjoC8t/c6JDb5l7KOQBTPrDahPjn8eYyxrH8rbjlwOj8N0xJaEd9JYlF1dpDUL
         t3ZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t2VWkCdl;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-qt0-x241.google.com (mail-qt0-x241.google.com. [2607:f8b0:400d:c0d::241])
        by gmr-mx.google.com with ESMTPS id g186si277309ywc.29.2017.09.25.02.37.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Sep 2017 02:37:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) client-ip=2607:f8b0:400d:c0d::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t2VWkCdl;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x241.google.com with SMTP id q8so4593652qtb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Sep 2017 02:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=9HVCSJ6k+4PzI7sKGwfqAWOK3K+pEcEzjO3YfKu+2bo=;
        b=t2VWkCdl70i2giaTokvbON3fq6hqX56t3Fug0YPhne4dcMd13ARQ/+VbNVMccEupBE
         9q+0ErropI8eJsUWidNyQeSV7G9+SIxIAR49tbe84bfmQpeJ3kePU/i1/d36Bu2jNKyt
         2AfZsXoCKD30GBoSoUtuQbxjF218Za0+aeN2Hd+ainScympKZssB1KaNyiI/CcPAYtCZ
         95bcZJshXN4nPyG6NAAkwAp76v16/Ct2NoPMx87tpgCigluPoZRMiEflH/1AD65AsjvO
         0wp8ztoeYLURHbzjBf0EDdx/5n/Wf1Y2g0UJ0kTNI1jp25B84kkELxd13Zxm9V2xXvTg
         D3Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=9HVCSJ6k+4PzI7sKGwfqAWOK3K+pEcEzjO3YfKu+2bo=;
        b=WYKQq4rvrsf/t4bxydR/nDyF9PInWl090AKb79gq5/6CXhP86ba0rVqC6gVI6pYnFO
         tBC7NPBKXvOmJsFAZExpPrD+eiJr9TpVVYnNh6C9XntzWpJ+6ZowMNDesLkeOcPBLWeO
         J9XB52E4487/im6+7Yt9SqmGQH/FhAzJTUg8zzg7YhePHuOIEp8tJ5tuxdbDZkD7Q3iI
         bcmbvCb02lO8SEDVi1kigr8vYfKhIQMmuXQ++aqgRKNXJrRhi88otLiA4rABobGn9JHo
         omS0vHIORsrCjDx+N3VnldobFrEbBky3oguoEEXlwZeAEnZKa5BTYfrjGMkDzrl0nHt8
         O9zQ==
X-Gm-Message-State: AHPjjUgbfJ8voCYmRQdShPP3Zr1Zca3C5yhqsKtQGTCvI2rTodhpj224
	bvXWyAu9hdEjlwUXrZBG+HTQeBPAyuqOrVSxqVg=
X-Google-Smtp-Source: AOwi7QAWXU3Ms6DP22bbXfByiq4wTnt2EtsryBScSs8BM7gVifyn2P4s7hIdxsyOkmIT3i/DveWkaSL8slipLkvcU7w=
X-Received: by 10.200.12.11 with SMTP id k11mr10431321qti.105.1506332255492;
 Mon, 25 Sep 2017 02:37:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.18.240 with HTTP; Mon, 25 Sep 2017 02:37:34 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709240908110.2101@hadrien>
References: <20170923223708.19952-1-georgiana.chelu93@gmail.com> <alpine.DEB.2.20.1709240908110.2101@hadrien>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Mon, 25 Sep 2017 12:37:34 +0300
Message-ID: <CALta04xDbHqximmtZTPUxS9HV7mw5Y=sVDu=sTc9XUVdxyZxPA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: core: Use __func__
 instead of function name
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On 24 September 2017 at 10:08, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sun, 24 Sep 2017, Georgiana Chelu wrote:
>
>> Replace the function name from format string with the
>> constant __func__ to avoid multiple changes in case
>> the name of the function will be modified.
>
> Could you meke the code that you are changing a little more 80-column
> friendly?
>
> julia

Yes, I will do the required changes. Thank you!


Georgiana

>
>>
>> Issue reported by checkpatch.pl script.
>>
>> Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
>> ---
>>  drivers/staging/rtl8188eu/core/rtw_recv.c | 20 ++++++++++----------
>>  1 file changed, 10 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
>> index 3fd5f4102b36..3c764b847249 100644
>> --- a/drivers/staging/rtl8188eu/core/rtw_recv.c
>> +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
>> @@ -237,25 +237,25 @@ static int recvframe_chkmic(struct adapter *adapter,
>>       stainfo = rtw_get_stainfo(&adapter->stapriv, &prxattrib->ta[0]);
>>
>>       if (prxattrib->encrypt == _TKIP_) {
>> -             RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n recvframe_chkmic:prxattrib->encrypt==_TKIP_\n"));
>> -             RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n recvframe_chkmic:da=0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n",
>> -                      prxattrib->ra[0], prxattrib->ra[1], prxattrib->ra[2], prxattrib->ra[3], prxattrib->ra[4], prxattrib->ra[5]));
>> +             RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n %s: prxattrib->encrypt==_TKIP_\n", __func__));
>> +             RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n %s: da=0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n",
>> +                                                            __func__, prxattrib->ra[0], prxattrib->ra[1], prxattrib->ra[2], prxattrib->ra[3], prxattrib->ra[4], prxattrib->ra[5]));
>>
>>               /* calculate mic code */
>>               if (stainfo != NULL) {
>>                       if (IS_MCAST(prxattrib->ra)) {
>>                               if (!psecuritypriv) {
>>                                       res = _FAIL;
>> -                                     RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("\n recvframe_chkmic:didn't install group key!!!!!!!!!!\n"));
>> -                                     DBG_88E("\n recvframe_chkmic:didn't install group key!!!!!!!!!!\n");
>> +                                     RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("\n %s: didn't install group key!!!!!!!!!!\n", __func__));
>> +                                     DBG_88E("\n %s: didn't install group key!!!!!!!!!!\n", __func__);
>>                                       goto exit;
>>                               }
>>                               mickey = &psecuritypriv->dot118021XGrprxmickey[prxattrib->key_index].skey[0];
>>
>> -                             RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n recvframe_chkmic: bcmc key\n"));
>> +                             RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n %s: bcmc key\n", __func__));
>>                       } else {
>>                               mickey = &stainfo->dot11tkiprxmickey.skey[0];
>> -                             RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("\n recvframe_chkmic: unicast key\n"));
>> +                             RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("\n %s: unicast key\n", __func__));
>>                       }
>>
>>                       /* icv_len included the mic code */
>> @@ -273,8 +273,8 @@ static int recvframe_chkmic(struct adapter *adapter,
>>                       for (i = 0; i < 8; i++) {
>>                               if (miccode[i] != *(pframemic+i)) {
>>                                       RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
>> -                                              ("recvframe_chkmic:miccode[%d](%02x)!=*(pframemic+%d)(%02x) ",
>> -                                              i, miccode[i], i, *(pframemic+i)));
>> +                                              ("%s: miccode[%d](%02x)!=*(pframemic+%d)(%02x) ",
>> +                                               __func__, i, miccode[i], i, *(pframemic+i)));
>>                                       bmic_err = true;
>>                               }
>>                       }
>> @@ -346,7 +346,7 @@ static int recvframe_chkmic(struct adapter *adapter,
>>                               }
>>                       }
>>               } else {
>> -                     RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("recvframe_chkmic: rtw_get_stainfo==NULL!!!\n"));
>> +                     RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("%s: rtw_get_stainfo==NULL!!!\n", __func__));
>>               }
>>
>>               skb_trim(precvframe->pkt, precvframe->pkt->len - 8);
>> --
>> 2.11.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170923223708.19952-1-georgiana.chelu93%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

