X-GM-THRID: 6474892395413504000
X-Received: by 10.28.4.210 with SMTP id 201mr1153065wme.19.1507564935377;
        Mon, 09 Oct 2017 09:02:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.216.71 with SMTP id p68ls272921wmg.2.gmail; Mon, 09 Oct
 2017 09:02:14 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QByffFAKzFPybt9RCiDeIS2PDlOrwtpytpt6A3uoJavMMI2Wxm6hBzJwRNxmo+zXWk0WLA7
X-Received: by 10.28.217.201 with SMTP id q192mr1285318wmg.20.1507564934337;
        Mon, 09 Oct 2017 09:02:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507564934; cv=none;
        d=google.com; s=arc-20160816;
        b=gzH5XFSsi2FLS3lxUe0OmL/R08vxZfscHvTrGp18DwFDCrN+NdyPnti7FP/O3FtZRn
         VGeb3UojOXy5jxwM1ftos88lTy2OmrE7JGCJlGAmyIkS3pbLUu9JQqvx+n1JXqMQ1mlQ
         cEGO0MCglARkqys7eVKE9NyYZGdThQvVihWTq5pWvDfzRodp716MsvzMkPfvwAlMYtT8
         cvecBKtNfhMe+qbxeyJufFSGGGXI2bUH2PPegQ8ra555rp1mdel0ic8kHsaBXV1t1H5B
         K6cCEoPsKnH1Iz/mgV8o55U3YQcu3/bd3qdP0KviBddf2zN7gtnSMkN6Un6GboBirswR
         HQpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=TPmIN8U0y1wETQAbQQfqHljvKRxIa0Yqi5eSugXSqGU=;
        b=07ViyD6kqyTMO6UHeleHSaumS5J2lXqbUK9jjCSqgkqjdwP/7bmig+143Md68Qd6a0
         P+8zFcUSOf57LU4M/j4wHDwPBgWUYaeWaNbC2J80BXt/uK94/jAYScc0K5NRIRsltBv1
         P18eDICU0GY8mQDkak7YLwiIXWcdWnMyo1OyNTddYLR1NQ8BhOQOcHKl9+fzGr2UJP65
         2d60QYsF7AovR2z93Z13wFcr36z/10xacETM85HGSRhRdR1bmgOGCGnU7jJCk/S2lzHG
         l3qEhpsEttZlHHSsZZ4pmOEa1jMwsQDcoEkz639fTRuKAJnW8X/xpZy7DnXu6oTDp5gu
         npqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p200si1064866wmg.4.2017.10.09.09.02.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Oct 2017 09:02:14 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,500,1500933600"; 
   d="scan'208";a="240346687"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Oct 2017 18:02:13 +0200
Date: Mon, 9 Oct 2017 18:02:13 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: remove implicit
 int->bool conversions
In-Reply-To: <20171009124918.omgogujj2titces2@aishwarya>
Message-ID: <alpine.DEB.2.20.1710091800370.3870@hadrien>
References: <20171009124918.omgogujj2titces2@aishwarya>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 9 Oct 2017, Aishwarya Pant wrote:

> Implicit type conversions are bad; they hinder readability of code and have
> potential to cause bugs. Here the variable wait_ack is always supplied a bool
> value while in function declarations it is defined as an int type. Fix it by
> defining wait_ack a bool type in all usages.

The commit message lines are a tiny bit on the long side.  If you do git
log, you will see that a few spaces get added in front of your text.  So
you shouldn't really go up to 80 characters.

>
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> index 355ce9b19d1c..0dca5cdef2e7 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> @@ -2831,7 +2831,9 @@ void issue_probersp(struct adapter *padapter, unsigned char *da, u8 is_valid_p2p
>
>  }
>
> -static int _issue_probereq(struct adapter *padapter, struct ndis_802_11_ssid *pssid, u8 *da, u8 ch, bool append_wps, int wait_ack)
> +static int _issue_probereq(struct adapter *padapter,
> +			   struct ndis_802_11_ssid *pssid,
> +			   u8 *da, u8 ch, bool append_wps, bool wait_ack)
>  {
>  	int ret = _FAIL;
>  	struct xmit_frame		*pmgntframe;
> @@ -3430,7 +3432,8 @@ void issue_assocreq(struct adapter *padapter)
>  }
>
>  /* when wait_ack is ture, this function shoule be called at process context */
> -static int _issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int power_mode, int wait_ack)
> +static int _issue_nulldata(struct adapter *padapter, unsigned char *da,
> +			   unsigned int power_mode, bool wait_ack)
>  {
>  	int ret = _FAIL;
>  	struct xmit_frame			*pmgntframe;
> @@ -3591,7 +3594,8 @@ s32 issue_nulldata_in_interrupt(struct adapter *padapter, u8 *da)
>  }
>
>  /* when wait_ack is ture, this function shoule be called at process context */
> -static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int wait_ack)
> +static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da,
> +			       u16 tid, bool wait_ack)
>  {
>  	int ret = _FAIL;
>  	struct xmit_frame			*pmgntframe;
> @@ -3715,7 +3719,8 @@ int issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int
>  	return ret;
>  }
>
> -static int _issue_deauth(struct adapter *padapter, unsigned char *da, unsigned short reason, u8 wait_ack)
> +static int _issue_deauth(struct adapter *padapter, unsigned char *da,
> +			 unsigned short reason, bool wait_ack)
>  {
>  	struct xmit_frame			*pmgntframe;
>  	struct pkt_attrib			*pattrib;
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171009124918.omgogujj2titces2%40aishwarya.
> For more options, visit https://groups.google.com/d/optout.
>

