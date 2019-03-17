X-GM-THRID: 6668974051336126464
X-Received: by 2002:a1c:ef02:: with SMTP id n2mr618925wmh.15.1552804393507;
        Sat, 16 Mar 2019 23:33:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:f106:: with SMTP id p6ls1629143wmh.6.gmail; Sat, 16 Mar
 2019 23:33:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwllKdLbYnrTSpyyhg+GTK1/2+3Ujv55Dig/sHSbYyrVlFvCOMLoDH+V86y7gI2BKej71rk
X-Received: by 2002:a7b:c40e:: with SMTP id k14mr635884wmi.12.1552804392767;
        Sat, 16 Mar 2019 23:33:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552804392; cv=none;
        d=google.com; s=arc-20160816;
        b=03wsHd+/46/xnJU4p5/ZSyX1KK2BoEQONMegBrf869X1iMUVo3Qzpluya3yHeJAshq
         oC6hLHtuv6VMSy2FHHqzdEVx31BSDjKrMqkeDXm3gvxiy+aO0unt8Ssfy2s3iQV9q4SE
         lnxnQnSYTcDV09yVMZl9Ipg+nt29GiI05sKK/3AdVYO8wz6radON2RDvSnRjz4nMPvjk
         8GqLxwpmb4dRP4xGMwvx5tTHU6HVQQwUBotgeLHiQ72R4Zzy5K4JNy3TM31By+P6dF2t
         0fvJnQ25aZq8pUo97EBRauzS+Sx4Ys8PPWDXSNRtvtvEYzHh5e7FmKO55/6J6IOTal6s
         RFeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=DOx2RSbEcf9P5nE+w8qPRBNQAAEAGx8THuMNIwT6Igo=;
        b=tm0r7mjQ5HzjN3fcvFpHd1izOBiAVWViZ1q7M2+hl5vZyX5tjj5KaYt3FJ50YLlnLm
         CNe6mxEENzpUayoUE1+rJiXeEKFg9J4nK2XUT1gU1Cz1db4GpY+/2cPNoAGt5smbFhIp
         FOomuTkb+1lGoauplrHAalmc67JdvUGjcZZ7m8jq9pp5k8xSKdVa0KV1HGqNkN33QoXM
         O+OZLdEuiEn4LnL/Jf9CHs9SUyZReS5tBltgmscEkTCYyJ5QCyqEIk4xaX/+9zNmfQLU
         4FcvPt0MhpEJCh+yV0j2JQNqJkzrrG/tN+Q6+qz8kK0VU1fT3OhFPjcfsUiizqsUOsl3
         3MnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id z129si312005wmc.2.2019.03.16.23.33.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:33:12 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,488,1544482800"; 
   d="scan'208";a="299664578"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Mar 2019 07:33:12 +0100
Date: Sun, 17 Mar 2019 07:33:12 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/7] Staging: rtl8723bs: Replace error
 codes with values
In-Reply-To: <5e5f5a18cd37b5edb56196cbe8ec6d2ce5819493.1552782299.git.madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903170730500.2588@hadrien>
References: <cover.1552782299.git.madhumithabiw@gmail.com> <5e5f5a18cd37b5edb56196cbe8ec6d2ce5819493.1552782299.git.madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Madhumitha Prabakaran wrote:

> Replace error codes with values in order to match return types of called
> functions rtw_init_cmd_priv and rtw_init_evt_priv.

-ENOMEM is also an error code.  "Use standard error codes" would be a
better description.

And this patch should be merged in with the one that changes the return
values.  Admittedly it's not a build issue, but the driver would not be
working between the patch that changes the return value and this one that
fixes the call sites.  You have first introduced a bug and then fixed it.

julia

>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/os_intfs.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> index 143e3f9b31aa..6b3def0397f0 100644
> --- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> +++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> @@ -757,7 +757,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
>
>  	rtw_init_hal_com_default_value(padapter);
>
> -	if ((rtw_init_cmd_priv(&padapter->cmdpriv)) == _FAIL) {
> +	if ((rtw_init_cmd_priv(&padapter->cmdpriv)) == -ENOMEM) {
>  		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init cmd_priv\n"));
>  		ret8 = _FAIL;
>  		goto exit;
> @@ -765,7 +765,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
>
>  	padapter->cmdpriv.padapter = padapter;
>
> -	if ((rtw_init_evt_priv(&padapter->evtpriv)) == _FAIL) {
> +	if ((rtw_init_evt_priv(&padapter->evtpriv)) == -ENOMEM) {
>  		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init evt_priv\n"));
>  		ret8 = _FAIL;
>  		goto exit;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/5e5f5a18cd37b5edb56196cbe8ec6d2ce5819493.1552782299.git.madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

