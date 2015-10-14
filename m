X-GM-THRID: 6205292199606747136
X-Received: by 10.180.81.165 with SMTP id b5mr5257316wiy.1.1444813153038;
        Wed, 14 Oct 2015 01:59:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.103 with SMTP id q7ls1236406wia.30.canary; Wed, 14 Oct
 2015 01:59:12 -0700 (PDT)
X-Received: by 10.180.106.197 with SMTP id gw5mr576209wib.7.1444813152661;
        Wed, 14 Oct 2015 01:59:12 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id hs5si892697wib.1.2015.10.14.01.59.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 01:59:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x233.google.com with SMTP id q12so70927941wie.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 01:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=uxdlw67NwGpT2TqbuMMJylW5g0u1rvM0ng60cZenMVA=;
        b=KjMU4s1jcZ/sz/iyEfLdOrlN/IMmuFDmC0j3CQTE5/jcuojM7vSgVvtAcVZaWpmKw4
         lML3PcHyPKaox6EjV2aEiyfrX2G3oMwyyn+6go6hRqOSXq2Q93qElsLVE87XYw5Fgyui
         +hoi0Rjd6j7Eba5fZ1iaMLJO4fHMKNSW+0WxF3MiyQgCeO6YGqor+JJlQPp7SXowZX/f
         QcpNBydKEObuA2AcwCOamgD9FxV7JR6kuCEIUf+b6Q00hYzHyOF2eCP/h7qOykZhggj3
         DXsZs30igcrH85Dz56jhIdGD828aWvLAS6OcaaCrrC1s/TU5noeggXdgXgGp2fwJXQc5
         /8vg==
MIME-Version: 1.0
X-Received: by 10.194.7.97 with SMTP id i1mr2856026wja.87.1444813152537; Wed,
 14 Oct 2015 01:59:12 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Wed, 14 Oct 2015 01:59:12 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1510140749160.2038@localhost6.localdomain6>
References: <20151014002245.GA21441@ubuntu>
	<alpine.DEB.2.02.1510140749160.2038@localhost6.localdomain6>
Date: Wed, 14 Oct 2015 14:29:12 +0530
Message-ID: <CAKHNQQEyph7zLEsO=AV6L98FkG15RWJGRV=9rbRHQU0Z7BZEzg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: rtw_mlme_ext:
 Remove extra test expression
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 11:21 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Wed, 14 Oct 2015, Shivani Bhardwaj wrote:
>
>> Logical and-ing of a struct and its member should be replaced by the
>> member only.
>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>>  drivers/staging/rtl8723au/core/rtw_mlme_ext.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/rtl8723au/core/rtw_mlme_ext.c b/drivers/staging/rtl8723au/core/rtw_mlme_ext.c
>> index fca22ba..d28f29a 100644
>> --- a/drivers/staging/rtl8723au/core/rtw_mlme_ext.c
>> +++ b/drivers/staging/rtl8723au/core/rtw_mlme_ext.c
>> @@ -1715,7 +1715,7 @@ OnAssocReq23a(struct rtw_adapter *padapter, struct recv_frame *precv_frame)
>>       spin_unlock_bh(&pstapriv->asoc_list_lock);
>>
>>       /*  now the station is qualified to join our BSS... */
>> -     if (pstat && pstat->state & WIFI_FW_ASSOC_SUCCESS &&
>> +     if (pstat->state & WIFI_FW_ASSOC_SUCCESS &&
>
> I don't understand the reasoning here.  Are you sure that pstat is not
> NULL?  If you are the transformation is OK, but the commit message should
> be completely different.  If you are not sure that it is not NULL, then
> the code has to be in the original way.
>
> Furthermore, note that pstat is not being &&d with pstat->state.  It is
> being &&d with pstat->state & WIFI_FW_ASSOC_SUCCESS.
>
> julia
>

I'm really very sorry. Commit message is wrong. I forgot to mention
why it was OK to have just pstate's member instead of pstate, it is
because it has already been checked for NULL value before. I am
updating commit message and sending v2.
Thank you

>>           status == WLAN_STATUS_SUCCESS) {
>>               /* 1 bss_cap_update & sta_info_update23a */
>>               bss_cap_update_on_sta_join23a(padapter, pstat);
>> --
>> 2.1.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151014002245.GA21441%40ubuntu.
>> For more options, visit https://groups.google.com/d/optout.
>>

