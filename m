X-GM-THRID: 6204754090721804288
X-Received: by 10.194.118.65 with SMTP id kk1mr5724642wjb.5.1444659709677;
        Mon, 12 Oct 2015 07:21:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.24.195 with SMTP id 64ls385022lfy.3.gmail; Mon, 12 Oct 2015
 07:21:49 -0700 (PDT)
X-Received: by 10.112.173.136 with SMTP id bk8mr5747468lbc.20.1444659709127;
        Mon, 12 Oct 2015 07:21:49 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id c1si500457wiv.3.2015.10.12.07.21.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 07:21:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x230.google.com with SMTP id q8so58467342wij.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 07:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=4DHnFP9ArP77mS035gKcz3mtva4GE74yPs2XYO8eb3Y=;
        b=xQ4ULnpBKrHQ16GOYn4wIEYjRwWp/go5FRdwM9AZM/GrnAp5P0SCabd6Dwo0EAAAxZ
         wW5RT6Dkt3sMqYxLYd/3zl2YDHQKrTBbRQwEiydiLax7OSR69WKjTy9+d8rhnZqtmu6l
         y1IyrEJAV9fkFBt3mzUUjfSPYtAJpbup/hjkWkDmxewh0L39jfN9/3HqBiQKUDB5Gpr7
         WK+psfaQuxizIDjpSAPJ+zLrlXtznipyA9lViPUZCQPVT60Zg2u3aUdTZryjA+mUs/Z/
         zZMt7U0NrAGNGABj7owuwGVnYvKCWcZGSu0k0cAcpgyyRh/ELESQN07i1WP0WJm9oWF0
         kiPg==
MIME-Version: 1.0
X-Received: by 10.180.206.52 with SMTP id ll20mr13825921wic.48.1444659709004;
 Mon, 12 Oct 2015 07:21:49 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Mon, 12 Oct 2015 07:21:48 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510121542430.2652@hadrien>
References: <cover.1444655924.git.shivanib134@gmail.com>
	<d8f8cff7018b0c9905df40eaa754b53e8164324e.1444655924.git.shivanib134@gmail.com>
	<alpine.DEB.2.10.1510121542430.2652@hadrien>
Date: Mon, 12 Oct 2015 19:51:48 +0530
Message-ID: <CAKHNQQGJM7VqEQnwgPjKBqQQGf8ukrB4_JX=t21F5phcf3NnAw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/3] Staging: wilc1000: host_interface:
 Remove unused code
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 12, 2015 at 7:24 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Mon, 12 Oct 2015, Shivani Bhardwaj wrote:
>
>> Remove declaration and initialization of variables that are not used
>> anywhere in the code.
>> Issue found using coccinelle.
>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>>  drivers/staging/wilc1000/host_interface.c | 4 ----
>>  1 file changed, 4 deletions(-)
>>
>> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
>> index b6eea9a..9e8bbc1 100644
>> --- a/drivers/staging/wilc1000/host_interface.c
>> +++ b/drivers/staging/wilc1000/host_interface.c
>> @@ -4894,7 +4894,6 @@ s32 host_int_set_join_req(tstrWILC_WFIDrv *hWFIDrv, u8 *pu8bssid,
>>       s32 s32Error = 0;
>>       tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>> -     tenuScanConnTimer enuScanConnTimer;
>
> Got grep shows me only three uses of "tenuScanConnTimer".  One is the
> typedef, and the other two are removed by your patch.  So you could redo
> the patch and get rid of the typedef as well.
>
> Looking a bit more at the code, I see the following, which looks strange:
>
> tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>
> As far as I can tell, hWFIDrv already has type tstrWILC_WFIDrv, so the
> cast is not necessary.  And it seems strange to have the two tests, first
>
> if (pstrWFIDrv == NULL || pfConnectResult == NULL)
>
> and then
>
> if (hWFIDrv == NULL)
>
> because the second one tests a subset of what the first one tests.
>
> Greg would also say that we don't need the type names embedded in the
> variable names either, but that would be a lot to change, especially since
> it impacts the field names too.
>
> In Coccinelle, you can make an expression metavariable that matches
> expressions of a particular type.  So
>
> @@
> type T;
> T e;
> identifier x;
> @@
>
> * T x = (T)e;
>
> will highlight initializations with useless casts.
>
> julia
>

Thanks so much, Julia. I'm applying all of this. Thank you for the
coccinelle script. Also, I want to know that I've been notified about
one of the patch of this series that it was sent before and has not
been applied. So, should I send an entirely new patch series removing
that one or even parts of the series can be applied to the tree?

>>
>>       if (pstrWFIDrv == NULL || pfConnectResult == NULL) {
>>               s32Error = -EFAULT;
>> @@ -4957,7 +4956,6 @@ s32 host_int_set_join_req(tstrWILC_WFIDrv *hWFIDrv, u8 *pu8bssid,
>>               return -EFAULT;
>>       }
>>
>> -     enuScanConnTimer = CONNECT_TIMER;
>>       pstrWFIDrv->hConnectTimer.data = (unsigned long)hWFIDrv;
>>       mod_timer(&pstrWFIDrv->hConnectTimer,
>>                 jiffies + msecs_to_jiffies(HOST_IF_CONNECT_TIMEOUT));
>> @@ -5560,7 +5558,6 @@ s32 host_int_scan(tstrWILC_WFIDrv *hWFIDrv, u8 u8ScanSource,
>>       s32 s32Error = 0;
>>       tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>> -     tenuScanConnTimer enuScanConnTimer;
>>
>>       if (pstrWFIDrv == NULL || ScanResult == NULL) {
>>               PRINT_ER("pstrWFIDrv or ScanResult = NULL\n");
>> @@ -5602,7 +5599,6 @@ s32 host_int_scan(tstrWILC_WFIDrv *hWFIDrv, u8 u8ScanSource,
>>               return -EINVAL;
>>       }
>>
>> -     enuScanConnTimer = SCAN_TIMER;
>>       PRINT_D(HOSTINF_DBG, ">> Starting the SCAN timer\n");
>>       pstrWFIDrv->hScanTimer.data = (unsigned long)hWFIDrv;
>>       mod_timer(&pstrWFIDrv->hScanTimer,
>> --
>> 2.1.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/d8f8cff7018b0c9905df40eaa754b53e8164324e.1444655924.git.shivanib134%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

