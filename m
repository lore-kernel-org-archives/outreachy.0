X-GM-THRID: 6202030500933009408
X-Received: by 10.107.132.81 with SMTP id g78mr25471942iod.10.1444024983256;
        Sun, 04 Oct 2015 23:03:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.16.198 with SMTP id 64ls2727168qgb.52.gmail; Sun, 04 Oct
 2015 23:03:02 -0700 (PDT)
X-Received: by 10.129.134.129 with SMTP id w123mr24009062ywf.17.1444024982758;
        Sun, 04 Oct 2015 23:03:02 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id pe1si3134062pac.2.2015.10.04.23.03.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 23:03:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id ex6so166561295pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 23:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=B0ZotS6eRmtG7Il46Lmo3+E8Fo7Kt88NI1wHshPqO/Q=;
        b=y2dTkftuGzfrfgMbQJ6wxaaJpn7DpddEdm5PTfBsU0MzisXNX7KSU0e2/cU1RiPKhZ
         OMD0HeFXhzVtlmw58Ic+IlcDRxsaYmZk/HVVSmTf5yU/0sFFvMMin1notgYoNiqgznxA
         bDBYuK3eqmCSGsLpyg5e3oVvZ3Jk/QXRR6ZbQIMRylPwmwRF7Em3jI6/Ee1eEvMVsQed
         18oeEnagIYi2GNrvYGzRR3w3/ozFdIokFoyro76iIA0s38+6d4BGYEQv96x6KIUA2C0i
         qZ6aDsGMnva4Twej5pDTRHnN+X27GgRpdR+KQVahsDJvdC4yL8LqsUWxk9/CC6+p/fmT
         XMqQ==
X-Received: by 10.68.184.195 with SMTP id ew3mr37850624pbc.28.1444024982591;
        Sun, 04 Oct 2015 23:03:02 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.30.0.216] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id xm9sm25204570pbc.32.2015.10.04.23.02.45
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 23:03:01 -0700 (PDT)
Date: Mon, 5 Oct 2015 11:32:35 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Vaishali Thakkar <vthakkar1994@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: wilc1000: wilc_wfi_cfgoperations:
 Replace memset with eth_zero_addr
In-Reply-To: <CAK-LDbKOPFeYW-ZFyd+ZNohU9R86n_=v0v+-zP=btJuD9BsZ7g@mail.gmail.com>
Message-ID: <alpine.DEB.2.11.1510051131530.4396@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1444024004-6326-1-git-send-email-shraddha.6596@gmail.com> <CAK-LDbKOPFeYW-ZFyd+ZNohU9R86n_=v0v+-zP=btJuD9BsZ7g@mail.gmail.com>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.56121287.0363,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  



On Mon, 5 Oct 2015, Vaishali Thakkar wrote:

> On Mon, Oct 5, 2015 at 11:16 AM, Shraddha Barke <shraddha.6596@gmail.com> wrote:
>> Use eth_zero_addr to assign the zero address to the given address
>> array instead of memset when second argument is address of zero.
>>
>> The Coccinelle patch used -
>>
>> // <smpl>
>> @eth_zero_addr@
>> expression e;
>> @@
>>
>> -memset(e,0x00,ETH_ALEN);
>> +eth_zero_addr(e);
>> // </smpl>
>>
>> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
>> ---
>> Changes in v2-
>>  Dropped the second patch in series as it breaks the build.
>
> Hi,
>
> I am not sure why you dropped the second patch in series when you can
> solve the build errors by looking at errors more closely. Your change is
> correct. It just needs something more to be added.
>
> Please send the whole series after solving the errors.

Yeah sure. I'm sorry I thought the change was incorrect.
>
>>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 6 +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
>> index 04838f1..7cf39b29 100644
>> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
>> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
>> @@ -562,7 +562,7 @@ static void CfgConnectResult(tenuConnDisconnEvent enuConnDisconnEvent,
>>                          *  = SUCCESSFUL_STATUSCODE, while mac status is MAC_DISCONNECTED (which means something wrong happened) */
>>                         u16ConnectStatus = WLAN_STATUS_UNSPECIFIED_FAILURE;
>>                         linux_wlan_set_bssid(priv->dev, NullBssid);
>> -                       memset(u8ConnectedSSID, 0, ETH_ALEN);
>> +                       eth_zero_addr(u8ConnectedSSID);
>>
>>                         /*Invalidate u8WLANChannel value on wlan0 disconnect*/
>>                         if (!pstrWFIDrv->u8P2PConnect)
>> @@ -619,9 +619,9 @@ static void CfgConnectResult(tenuConnDisconnEvent enuConnDisconnEvent,
>>                 u8P2Plocalrandom = 0x01;
>>                 u8P2Precvrandom = 0x00;
>>                 bWilc_ie = false;
>> -               memset(priv->au8AssociatedBss, 0, ETH_ALEN);
>> +               eth_zero_addr(priv->au8AssociatedBss);
>>                 linux_wlan_set_bssid(priv->dev, NullBssid);
>> -               memset(u8ConnectedSSID, 0, ETH_ALEN);
>> +               eth_zero_addr(u8ConnectedSSID);
>>
>>                 /*Invalidate u8WLANChannel value on wlan0 disconnect*/
>>                 if (!pstrWFIDrv->u8P2PConnect)
>> --
>> 2.1.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1444024004-6326-1-git-send-email-shraddha.6596%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>
>
>
> -- 
> Vaishali
>

