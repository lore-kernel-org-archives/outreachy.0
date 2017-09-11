X-GM-THRID: 6464558532911955968
X-Received: by 10.31.129.196 with SMTP id c187mr6231923vkd.67.1505153551879;
        Mon, 11 Sep 2017 11:12:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.170 with SMTP id f42ls1065230ioi.12.gmail; Mon, 11 Sep
 2017 11:12:31 -0700 (PDT)
X-Received: by 10.101.93.79 with SMTP id e15mr7680395pgt.30.1505153551115;
        Mon, 11 Sep 2017 11:12:31 -0700 (PDT)
Received: by 10.202.166.5 with SMTP id p5msoie;
        Mon, 11 Sep 2017 11:10:31 -0700 (PDT)
X-Received: by 10.200.35.199 with SMTP id r7mr4741431qtr.24.1505153430845;
        Mon, 11 Sep 2017 11:10:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505153430; cv=none;
        d=google.com; s=arc-20160816;
        b=UYRc7S6ezmirbEXtOg1QuiRtuLB63gmAUA/k2YSWRWH+lcscX1lMf+vC2bHtDELLVh
         Wk8DbcHSoao/Lp2fuidV57PbHHFdClOEZWPZyckoFbWVTeEdlXvJCBnmVp2oSyNwksA/
         koLtnlJ1LVgNwgXuY4GKZaMTr+JVfN36ap9muXbHGp0o0zYv5nL0zbxsfHGl/m2LK/kI
         R/MOJGITMhG2+JFKvyUxovqnxq2Z+tbWeqISuIxR0wWWi/EUldJtuXwmilVvKM1iyBRp
         fAkhGk8kPaKs8ThDWz8YGTRl+bGXHTVTUpcL92TjLlo4O3gUzqE+S8y6Yf/Qw/bVPyWn
         eyew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=Yx+9/sKva0VaSvUHqq5KZ0ZZTuaqNuoC3erx3If89Pg=;
        b=KighlwfHpV0bTw0wSoNfUC8zHah5apfZNeTb7/JlhM6OKfTaxcvBafNZWRHKE3s26j
         hb51lJ51YseLHpqqWhPDXcft5sjItafCB8xGg983KNzYX9972AghHQIaX/EMV7sqzVS/
         61Ep9DGqeJHP4YGyoOf9F49h0Dsj753FGn7HhpLgDFmgbbrgccOri19727EkAn/hs4m2
         L8HYCuJQ85zpWN+7povSslK8QCk9jEQYXQTCo5ao/3f6TnLEcg1WhIKnFWmSAfkcDTdx
         oJ9yAdld5Me8XpK1i3ZgadAGTALGJ6gc1NSscxjP6o9HMhQ4TAplT+bOTNiu0SL0QPRr
         fjIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=temperror (dns failure for signature) header.i=@benyossef-com.20150623.gappssmtp.com header.s=20150623 header.b=nRr8/X/M;
       spf=neutral (google.com: 2607:f8b0:4001:c06::244 is neither permitted nor denied by best guess record for domain of gilad@benyossef.com) smtp.mailfrom=gilad@benyossef.com
Return-Path: <gilad@benyossef.com>
Received: from mail-io0-x244.google.com (mail-io0-x244.google.com. [2607:f8b0:4001:c06::244])
        by gmr-mx.google.com with ESMTPS id o190si653600ywo.11.2017.09.11.11.10.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 11:10:29 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4001:c06::244 is neither permitted nor denied by best guess record for domain of gilad@benyossef.com) client-ip=2607:f8b0:4001:c06::244;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (dns failure for signature) header.i=@benyossef-com.20150623.gappssmtp.com header.s=20150623 header.b=nRr8/X/M;
       spf=neutral (google.com: 2607:f8b0:4001:c06::244 is neither permitted nor denied by best guess record for domain of gilad@benyossef.com) smtp.mailfrom=gilad@benyossef.com
Received: by mail-io0-x244.google.com with SMTP id n69so2223373ioi.3
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Sep 2017 11:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=benyossef-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Yx+9/sKva0VaSvUHqq5KZ0ZZTuaqNuoC3erx3If89Pg=;
        b=nRr8/X/McyoBaK569k7ecisKpCRCwAZKi3ckylTn9uBcZt2h+7bKM9cLTu3898EimS
         oAKf5SbjFhT1M7FkWrLr0gP3/sIveQYkuFINZ7RbVoTBGqYVlheLJMrwRoFG04R/mnnr
         2wgHOG3Sv213ueKJo+of0uGM48tpcd+4EGYylG10bLh2SOpING0JlkVpK+O8L4qmG0uL
         SWEH3j6U03dmBXI3nx0s3z3I/JsxMvYzELV/WbIF6zbrIc5AXCJFGRDtZHYzzyRpDczD
         +psRoBM3Gd5WyG3FA2BZBfeP51d6FPU94SpeVuRXEVSFBtIZcpmVquoc4wEe4v/hVIzF
         FFIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Yx+9/sKva0VaSvUHqq5KZ0ZZTuaqNuoC3erx3If89Pg=;
        b=SM7UsGO5uc76AUH/8Dodpo+mLHeNda4yevqeBpKLiBq+wzDgaKLdaymZqHjW/x30T6
         E5jgGR4hgen5PkDX+JsV/qVCShMRnhyW81uaT3mdFZo9OQEZTxafXkU/p526ln4C2OG1
         znw2+gqsFVszq0VyvBabOd022z02mIOYA+H0+tWWnahOFoCtccF+icKV8BksxHuQfh+H
         Dt00epIDop3B/SKEve0ih0s47DXL+jZKi/PdkB6ZUMIWxrTsQeBLrxBV63/BYPp4bqHq
         omzmesjAvru3M7n3Przgk/1VEbFBilEmj4X3h4s7mJ2u96jhsRZWKQttW87+gHL5XQ7D
         k17g==
X-Gm-Message-State: AHPjjUhmyMHuihE9hqhVGDz6le6uNayprBiQngWdnBw6llaiI/itnC6n
	05trcQjjr4u3pa3gUpZ68UYXlWPyqi76WuM=
X-Google-Smtp-Source: AOwi7QCFPU3eMxTWoNMUCSYNPMN8iTCABTs4+YHPdCtVdKuFRIZxXj744O+23modSqZvztFgoLbChazX8eEMn5MDI14=
X-Received: by 10.202.224.70 with SMTP id x67mr5767725oig.31.1505153429303;
 Mon, 11 Sep 2017 11:10:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.48.148 with HTTP; Mon, 11 Sep 2017 11:10:28 -0700 (PDT)
X-Originating-IP: [12.145.98.253]
In-Reply-To: <CAOw6vb+CZWz39-6_dtPzwi4=mxJkp_fQ=saUrLG8TfFORZkSkA@mail.gmail.com>
References: <1505147317-13411-1-git-send-email-srishtishar@gmail.com> <CAOw6vb+CZWz39-6_dtPzwi4=mxJkp_fQ=saUrLG8TfFORZkSkA@mail.gmail.com>
From: Gilad Ben-Yossef <gilad@benyossef.com>
Date: Mon, 11 Sep 2017 21:10:28 +0300
Message-ID: <CAOtvUMfoK3JxwYqXOXo8UEvSM5FPw+_RR2Evy9BfDKEf-StLDA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: ccree: Remove unused
 variable monitor_lock
To: Sean Paul <seanpaul@chromium.org>
Cc: Srishti Sharma <srishtishar@gmail.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, driverdev-devel@linuxdriverproject.org, 
	devel@driverdev.osuosl.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Mon, Sep 11, 2017 at 7:36 PM, Sean Paul <seanpaul@chromium.org> wrote:
> On Mon, Sep 11, 2017 at 12:28 PM, Srishti Sharma <srishtishar@gmail.com> wrote:
>> Remove the variable monitor_lock as it is not used anywhere.
>>
>> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>
> Reviewed-by: Sean Paul <seanpaul@chromium.org>

That variable is a left-over I've missed when I deleted an implementation of
something that was almost, but not quite, entirely unlike perf and is
no longer used.

So, assuming it compiles fine (I'm away from my build infrastructure
at the moment):

Acked-by: Gilad Ben-Yossef <gilad@benyossef.com>

Thank you,
Gilad

>
>> ---
>> Changes in v2:
>>  -The variable that was not to be declared as volatile can be
>>   eliminated as it is not being used anywhere.
>>
>>  drivers/staging/ccree/ssi_request_mgr.c | 1 -
>>  1 file changed, 1 deletion(-)
>>
>> diff --git a/drivers/staging/ccree/ssi_request_mgr.c b/drivers/staging/ccree/ssi_request_mgr.c
>> index e5c2f92..b94a91f 100644
>> --- a/drivers/staging/ccree/ssi_request_mgr.c
>> +++ b/drivers/staging/ccree/ssi_request_mgr.c
>> @@ -49,7 +49,6 @@ struct ssi_request_mgr_handle {
>>         dma_addr_t dummy_comp_buff_dma;
>>         struct cc_hw_desc monitor_desc;
>>
>> -       volatile unsigned long monitor_lock;
>>  #ifdef COMP_IN_WQ
>>         struct workqueue_struct *workq;
>>         struct delayed_work compwork;
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505147317-13411-1-git-send-email-srishtishar%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.



-- 
Gilad Ben-Yossef
Chief Coffee Drinker

"If you take a class in large-scale robotics, can you end up in a
situation where the homework eats your dog?"
 -- Jean-Baptiste Queru

