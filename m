X-GM-THRID: 7771698233344
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bf41c3c2dfbbf61f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.211.199 with SMTP id ne7mr2774527wic.5.1426144831465;
        Thu, 12 Mar 2015 00:20:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.74 with SMTP id v10ls307054wiz.26.canary; Thu, 12 Mar
 2015 00:20:31 -0700 (PDT)
X-Received: by 10.194.236.196 with SMTP id uw4mr2939566wjc.5.1426144831214;
        Thu, 12 Mar 2015 00:20:31 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id gj20si1460747wic.1.2015.03.12.00.20.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 12 Mar 2015 00:20:31 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,387,1422918000"; 
   d="scan'208";a="125523102"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Mar 2015 08:20:30 +0100
Date: Thu, 12 Mar 2015 08:20:26 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Cristina Opriceana <cristina.opriceana@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Remove unnecessary
 struct and typedef
In-Reply-To: <47d01e18e2aa91b110d99c06c240a1493fbbaf52.1426127289.git.cristina.opriceana@gmail.com>
Message-ID: <alpine.DEB.2.02.1503120820110.2072@localhost6.localdomain6>
References: <47d01e18e2aa91b110d99c06c240a1493fbbaf52.1426127289.git.cristina.opriceana@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 12 Mar 2015, Cristina Opriceana wrote:

> This patch removes the _bss_ht struct and the associated type definition
> because it is not used and it also introduces the warning:
> "WARNING: do not add new typedefs".

Maybe look around for more tpes that are not used.

julia

> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211.h | 18 ------------------
>  1 file changed, 18 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> index b6b862a..0f53c6a 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> @@ -1457,24 +1457,6 @@ struct	ether_header {
>  #define	ETHERTYPE_IP	0x0800		/* IP protocol */
>  #endif
>  
> -typedef struct _bss_ht{
> -
> -	bool				support_ht;
> -
> -	// HT related elements
> -	u8					ht_cap_buf[32];
> -	u16					ht_cap_len;
> -	u8					ht_info_buf[32];
> -	u16					ht_info_len;
> -
> -	HT_SPEC_VER			ht_spec_ver;
> -	//HT_CAPABILITY_ELE			bdHTCapEle;
> -	//HT_INFORMATION_ELE		bdHTInfoEle;
> -
> -	bool				aggregation;
> -	bool				long_slot_time;
> -}bss_ht, *pbss_ht;
> -
>  typedef enum _erp_t{
>  	ERP_NonERPpresent	= 0x01,
>  	ERP_UseProtection	= 0x02,
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/47d01e18e2aa91b110d99c06c240a1493fbbaf52.1426127289.git.cristina.opriceana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

