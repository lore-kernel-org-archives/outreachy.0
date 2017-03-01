X-GM-THRID: 6392549731830071296
X-Received: by 10.28.87.210 with SMTP id l201mr143105wmb.4.1488381863675;
        Wed, 01 Mar 2017 07:24:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.83 with SMTP id v19ls465700ljd.15.gmail; Wed, 01 Mar
 2017 07:24:22 -0800 (PST)
X-Received: by 10.46.21.11 with SMTP id s11mr1217201ljd.23.1488381862336;
        Wed, 01 Mar 2017 07:24:22 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f7si1444834wmg.3.2017.03.01.07.24.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 07:24:22 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,226,1484002800"; 
   d="scan'208";a="262656099"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Mar 2017 16:24:22 +0100
Date: Wed, 1 Mar 2017 16:24:12 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: constify
 ieee80211_qos_parameters structure
In-Reply-To: <1488381326-7061-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1703011619200.3941@hadrien>
References: <1488381326-7061-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 1 Mar 2017, Gargi Sharma wrote:

> Declare def_qos_parameters instance of the ieee80211_qos_parameters
> structure as const since no modification is done to it. It is only
> used in two other places in the driver where it is the src parameter
> to memcpy.
>
> Done using Coccinelle script:
>
> @r1 disable optional_qualifier@
> identifier i;
> position p;
> @@
>
> static struct ieee80211_qos_parameters i@p ={...};
>
> @@
> identifier r1.i;
> @@
> +const
> struct ieee80211_qos_parameters i

I'm not sure that it makes that much sense to write such a Coccinelle
script.  It is only being applied in one place.  And the script is not
doing anything to ensure that the change is safe.  To make a structure
const, you have to check on how it is used, to ensure that the fields are
not modified anywhere.

I'm not even sure that the second rule would parse?

julia

>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> index b631990..bbb5f58 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -1814,7 +1814,7 @@ static void rtl8192_link_change(struct net_device *dev)
>  	}
>  }
>
> -static struct ieee80211_qos_parameters def_qos_parameters = {
> +static const struct ieee80211_qos_parameters def_qos_parameters = {
>  	{cpu_to_le16(3), cpu_to_le16(3), cpu_to_le16(3), cpu_to_le16(3)},
>  	{cpu_to_le16(7), cpu_to_le16(7), cpu_to_le16(7), cpu_to_le16(7)},
>  	{2, 2, 2, 2},/* aifs */
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488381326-7061-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

