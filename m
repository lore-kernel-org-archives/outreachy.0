X-GM-THRID: 6388328536690655232
X-Received: by 10.31.69.133 with SMTP id s127mr2979680vka.19.1487401030692;
        Fri, 17 Feb 2017 22:57:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.179 with SMTP id 48ls4528538otj.27.gmail; Fri, 17 Feb
 2017 22:57:10 -0800 (PST)
X-Received: by 10.157.47.200 with SMTP id b8mr3358111otd.22.1487401030342;
        Fri, 17 Feb 2017 22:57:10 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x242.google.com (mail-yw0-x242.google.com. [2607:f8b0:4002:c05::242])
        by gmr-mx.google.com with ESMTPS id n10si1513076ywd.4.2017.02.17.22.57.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 22:57:10 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) client-ip=2607:f8b0:4002:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x242.google.com with SMTP id q71so4662196ywg.3
        for <outreachy-kernel@googlegroups.com>; Fri, 17 Feb 2017 22:57:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ivWliRtUoIkurzLt3/FsCDB7e1NJo5ycOyQ0CqTSKqg=;
        b=pHM/Uq5s3J/xW+McwIx0J2WaRFCmIikVVtG6yU1nl/voL0QM0/OqxfUtfdW7C8r+zh
         Dis3f1V8IVZdpLgeHYFv2Gn1aqMQsgVv402pcVFm48TqMhmGZPYEcWI+utyRfO8oOINV
         dTu9vF19pI4r8SB3YqOvlzE7XmHXPJCaWC1LTyHrr1a9h/n0INOGJxiN1f4ikpfbWJ35
         wfv9tcVVIsh0qMhJNkuFnlw2heMYV1vZjAua8gLVhhFyKbIF3KQaVDkIgFDd2jr3RyRp
         wZctxzrL2yBhBXl/uM3YKK0idnSZDPvkUbYXy4sgZnzHuCRktG7EUMeJeiXxL5bWKk3u
         g/ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ivWliRtUoIkurzLt3/FsCDB7e1NJo5ycOyQ0CqTSKqg=;
        b=nqJcM9jBTVeGbOewFPkXN1ABjJXN9lKwyfZR17cbZt024KfUyOICJylH3MJonPkxsh
         55tVtWiMRV9Fqx4DybWZRGT2BwX0IgTdh2oovUScYdraygNX4WhFX4ZdiMZfvV49UXTK
         +xRIGjRe+BGMKI7ID2rOvP9ik0kZojAcDzRB2kjIidu+4kwehPeWF/s42YrqXyysgBu1
         B+sN8R1MvKFeiuQr0C3vOrXiNOjORf590n221Ck2uuiFn9FbQmqrnkBZu8lbSAEuqIDS
         YJms2CT0WLJqes0Djha96DMgYqswt3uOLce7yLQbYuZ/3poUjjjJa88aqDvSgF2xps4u
         Y50A==
X-Gm-Message-State: AMke39krVnSrhZzCqtTDZDtreLENRwGup61Uxp8y38n3qrbFAHiH9TfSOvK4OHGJGJgtl3qZu9/FH3hr7hX3Lw==
X-Received: by 10.129.181.81 with SMTP id c17mr8476019ywk.265.1487401030069;
 Fri, 17 Feb 2017 22:57:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.163.196 with HTTP; Fri, 17 Feb 2017 22:56:29 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1702180741200.2121@hadrien>
References: <20170218061710.GA24477@sayli-HP-15-Notebook-PC> <alpine.DEB.2.20.1702180741200.2121@hadrien>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Sat, 18 Feb 2017 12:26:29 +0530
Message-ID: <CAKG5xWhHkjkxxdAyRquefVo9MXwMD47_7h-nZJok=J4C6s4Qgg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: ieee80211: Remove
 typedef to structure _bandwidth_autoswitch
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 18, 2017 at 12:11 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 18 Feb 2017, sayli karnik wrote:
>
>> Using typedef for a structure type is not suggested in Linux kernel coding
>> style guidelines. So remove typedef from the _bandwidth_autoswitch structure.
>
> I think you could remove the _ from the front of the name too.  That is
> normally to indicate a hidden name, but the name is not hidden any more.
>
Yes, sent a v2.

> julia
>

>> The typedef pointer pbandwidth_autoswitch is not used anywhere, so omit
>> it.
>>
>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
>> ---
>>  drivers/staging/rtl8192u/ieee80211/ieee80211.h | 9 ++++-----
>>  1 file changed, 4 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
>> index 176083e..0df9812 100644
>> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
>> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
>> @@ -1461,13 +1461,12 @@ struct tx_pending {
>>       struct ieee80211_txb *txb;
>>  };
>>
>> -typedef struct _bandwidth_autoswitch {
>> +struct _bandwidth_autoswitch {
>>       long threshold_20Mhzto40Mhz;
>> -     long    threshold_40Mhzto20Mhz;
>> +     long threshold_40Mhzto20Mhz;
>>       bool bforced_tx20Mhz;
>>       bool bautoswitch_enable;
>> -} bandwidth_autoswitch, *pbandwidth_autoswitch;
>> -
>> +};
>>
>>  //added by amy for order
>>
>> @@ -1873,7 +1872,7 @@ struct ieee80211_device {
>>       Fsync_State                     fsync_state;
>>       bool            bis_any_nonbepkts;
>>       //20Mhz 40Mhz AutoSwitch Threshold
>> -     bandwidth_autoswitch bandwidth_auto_switch;
>> +     struct _bandwidth_autoswitch bandwidth_auto_switch;
>>       //for txpower tracking
>>       bool FwRWRF;
>>
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170218061710.GA24477%40sayli-HP-15-Notebook-PC.
>> For more options, visit https://groups.google.com/d/optout.
>>

