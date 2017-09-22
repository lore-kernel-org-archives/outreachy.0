X-GM-THRID: 6468535104462389248
X-Received: by 10.28.101.133 with SMTP id z127mr117672wmb.32.1506073993181;
        Fri, 22 Sep 2017 02:53:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.176.173 with SMTP id i42ls1240285wra.7.gmail; Fri, 22 Sep
 2017 02:53:12 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QARvx6PpTYbSnBLjkr6s8WZjSJ3L2I6l8k7prATR0ST91ARMbI+UeZfWVBGog2pqoxQJp0w
X-Received: by 10.28.154.68 with SMTP id c65mr114145wme.5.1506073992292;
        Fri, 22 Sep 2017 02:53:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506073992; cv=none;
        d=google.com; s=arc-20160816;
        b=0QFG8baXLxxwV4bi/HaTxFTUswd6PRjLyy7qz6yJr9m/50r3JwsmAZwEEbwRD/9g6h
         gRMrHzClGX6wJbWvaZYWn2nEJCfxy0GmqgIE9yXG5zRhyK3OupMjZF0ZA88+JUX8FY4s
         KMk5AWdhwfcRsowZZs3S9ur1wJB4tO6KUN5m+rkT9p9mc5ll970efGEVhG19U68rdxoj
         5rpLihj1NeCobNivaV+FpmH07thzFS0e1EUPBui1GzC+k+qV4WcdZ/5gOAqMWcebIGaN
         qzjOJ0xEDpL1JdFfvjDcgmezzusGYzCtyd0nLSRvuujBRAZKs6bsOJcLVJMhvL3b9ECF
         VIEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=SVIEqZG5Ptxh3b6vUav2t7AGM4GY+3aDeucRNqlSs7s=;
        b=IycjZl6F7S3PMyiWvgIPUzzbgI9Y8FyZPOXS4mAFxI8gI/7l9RGTBJV08ba49NySoe
         nHSxENBDkTJdhKoLfQNMjMBfmr7SebdiGkJTH9OjuMMxk19VSXPg63pNZ03Zc8LCeYfe
         Ipk9fOaeYhww+a//IbTBbCjE9MrEHFxaFU8oCnMLVJCqA2j3L+aafryi/6bn3ivwfTLh
         IJ+w1XiQgQ9+r2Txumyck5w7wTfMmU+8daxKV/a5jvP0JcFTSnaC2Ga32VzabtzX/KwX
         zOnC+s7YbbQgtxz8JYOcwdNX9QU2hmiEavPv5c4q4pYzor/D9fp/80T8K8SesET+SIox
         KCXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l133si306174wmb.3.2017.09.22.02.53.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 02:53:12 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,427,1500933600"; 
   d="scan'208";a="238380643"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Sep 2017 11:53:11 +0200
Date: Fri, 22 Sep 2017 11:52:36 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: remove implicit
 bool->int conversions
In-Reply-To: <20170922093939.GA29152@aishwarya>
Message-ID: <alpine.DEB.2.20.1709221151290.3170@hadrien>
References: <20170922093939.GA29152@aishwarya>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 22 Sep 2017, Aishwarya Pant wrote:

> Implicit type conversions are bad; they hinder readability of code and have
> potential to cause bugs. Here the variable wait_ack is always supplied a bool
> value while in function declarations it is defined as an int type. Fix it by
> defining wait_ack a bool type in all usages.

These are two patches on the same file.  They need to be in a series, so
Greg doesn't have to figure out whether they depend on each other.

Also, since you are changing the function headers, it would be very nice
if you could also change them to respect the 80 character limit.

julia

>
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> index 2db2ca6..99f3d5c 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> @@ -1196,7 +1196,7 @@ static void issue_assocreq(struct adapter *padapter)
>  }
>
>  /* when wait_ack is true, this function should be called at process context */
> -static int _issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int power_mode, int wait_ack)
> +static int _issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int power_mode, bool wait_ack)
>  {
>  	int ret = _FAIL;
>  	struct xmit_frame			*pmgntframe;
> @@ -1316,7 +1316,7 @@ int issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int pow
>  }
>
>  /* when wait_ack is true, this function should be called at process context */
> -static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int wait_ack)
> +static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, bool wait_ack)
>  {
>  	int ret = _FAIL;
>  	struct xmit_frame			*pmgntframe;
> @@ -1442,7 +1442,7 @@ int issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int
>  	return ret;
>  }
>
> -static int _issue_deauth(struct adapter *padapter, unsigned char *da, unsigned short reason, u8 wait_ack)
> +static int _issue_deauth(struct adapter *padapter, unsigned char *da, unsigned short reason, bool wait_ack)
>  {
>  	struct xmit_frame			*pmgntframe;
>  	struct pkt_attrib			*pattrib;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170922093939.GA29152%40aishwarya.
> For more options, visit https://groups.google.com/d/optout.
>

