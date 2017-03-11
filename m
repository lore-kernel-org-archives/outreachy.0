X-GM-THRID: 6396276836280565760
X-Received: by 10.46.9.141 with SMTP id 135mr4383730ljj.19.1489253524681;
        Sat, 11 Mar 2017 09:32:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.13.9 with SMTP id 9ls1247723ljn.46.gmail; Sat, 11 Mar 2017
 09:32:03 -0800 (PST)
X-Received: by 10.25.79.23 with SMTP id d23mr3305831lfb.27.1489253523531;
        Sat, 11 Mar 2017 09:32:03 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 82si283170wmg.3.2017.03.11.09.32.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 09:32:03 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,147,1486422000"; 
   d="scan'208";a="264146592"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2017 18:32:03 +0100
Date: Sat, 11 Mar 2017 18:31:49 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192u: Remove typedef
 phy_ofdm_rx_status_rxsc_sgien_exintfflag
In-Reply-To: <20170311172100.GA18682@singhal-Inspiron-5558>
Message-ID: <alpine.DEB.2.20.1703111831180.3127@hadrien>
References: <20170311172100.GA18682@singhal-Inspiron-5558>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 11 Mar 2017, simran singhal wrote:

> Remove typdef phy_ofdm_rx_status_rxsc_sgien_exintfflag and replace its uses
> in the code.
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>
>  v2:
>    -Drop the "_" at the beginning of the name of the structure
>
>  drivers/staging/rtl8192u/r8192U.h      | 4 ++--
>  drivers/staging/rtl8192u/r8192U_core.c | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/r8192U.h b/drivers/staging/rtl8192u/r8192U.h
> index a7ba8f3..524c1c9 100644
> --- a/drivers/staging/rtl8192u/r8192U.h
> +++ b/drivers/staging/rtl8192u/r8192U.h
> @@ -793,12 +793,12 @@ typedef struct _phy_cck_rx_status_report_819xusb {
>  } phy_sts_cck_819xusb_t;
>
>
> -typedef struct _phy_ofdm_rx_status_rxsc_sgien_exintfflag {
> +struct phy_ofdm_rx_status_rxsc_sgien_exintfflag {
>  	u8			reserved:4;
>  	u8			rxsc:2;
>  	u8			sgi_en:1;
>  	u8			ex_intf_flag:1;
> -} phy_ofdm_rx_status_rxsc_sgien_exintfflag;
> +};
>
>  typedef enum _RT_CUSTOMER_ID {
>  	RT_CID_DEFAULT = 0,
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> index 13239f4..8448e83 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -4242,7 +4242,7 @@ static void rtl8192_query_rxphystatus(struct r8192_priv *priv,
>  {
>  	phy_sts_ofdm_819xusb_t *pofdm_buf;
>  	phy_sts_cck_819xusb_t	*pcck_buf;
> -	phy_ofdm_rx_status_rxsc_sgien_exintfflag *prxsc;
> +	struct phy_ofdm_rx_status_rxsc_sgien_exintfflag *prxsc;
>  	u8	*prxpkt;
>  	u8	i, max_spatial_stream, tmp_rxsnr, tmp_rxevm, rxsc_sgien_exflg;
>  	s8	rx_pwr[4], rx_pwr_all = 0;
> @@ -4432,7 +4432,7 @@ static void rtl8192_query_rxphystatus(struct r8192_priv *priv,
>
>  		/* record rx statistics for debug */
>  		rxsc_sgien_exflg = pofdm_buf->rxsc_sgien_exflg;
> -		prxsc =	(phy_ofdm_rx_status_rxsc_sgien_exintfflag *)
> +		prxsc =	(struct phy_ofdm_rx_status_rxsc_sgien_exintfflag *)
>  			&rxsc_sgien_exflg;
>  		if (pdrvinfo->BW)	/* 40M channel */
>  			priv->stats.received_bwtype[1 + prxsc->rxsc]++;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170311172100.GA18682%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.
>

