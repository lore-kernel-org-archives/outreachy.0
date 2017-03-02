X-GM-THRID: 6392776978042191872
X-Received: by 10.25.157.14 with SMTP id g14mr1402422lfe.28.1488438361471;
        Wed, 01 Mar 2017 23:06:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.15.1 with SMTP id 1ls622797ljp.36.gmail; Wed, 01 Mar 2017
 23:06:00 -0800 (PST)
X-Received: by 10.46.20.27 with SMTP id u27mr1780324ljd.4.1488438360585;
        Wed, 01 Mar 2017 23:06:00 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h198si718056wmg.1.2017.03.01.23.06.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 23:06:00 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,228,1484002800"; 
   d="scan'208";a="215258348"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2017 08:05:59 +0100
Date: Thu, 2 Mar 2017 08:05:59 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtl8192u: Constify
 ieee80211_qos_parameters structure
In-Reply-To: <1488433574-26080-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1703020805390.2094@hadrien>
References: <1488433574-26080-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 2 Mar 2017, Gargi Sharma wrote:

> Declare ieee80211_qos_parameters structure constant it is only passed
> as src parameter to the function memcpy. The fields of
> def_qos_parameters structure are never modified and hence it can be
> declared as const.
>
> Coccinelle Script:
>
> @r1 disable optional_qualifier@
> identifier i;
> position p;
> @@
>
> static struct ieee80211_qos_parameters i@p ={...};
>
> @ok1@
> identifier r1.i;
> position p;
> expression e1,e2;
> @@
> memcpy(e1,&i@p,e2)
>
> @bad@
> position p!={r1.p,ok1.p};
> identifier r1.i;
> @@
> i@p
>
> @depends on !bad disable optional_qualifier@
> identifier r1.i;
> @@
> static
> +const
> struct ieee80211_qos_parameters i={...};

This script is much more appropriate, thanks.

julia

>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
> Changes in v3:
> 	- Fixed the commit message.
> Changes in v2:
> 	- Improved the coccinelle script to check for safety of the
> 	  modification.
> 	- Improved the commit message.
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488433574-26080-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

