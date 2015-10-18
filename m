X-GM-THRID: 6206306733630947328
X-Received: by 10.180.160.194 with SMTP id xm2mr824648wib.6.1445147607136;
        Sat, 17 Oct 2015 22:53:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.144.6 with SMTP id s6ls488057lfd.91.gmail; Sat, 17 Oct 2015
 22:53:26 -0700 (PDT)
X-Received: by 10.112.130.41 with SMTP id ob9mr5593696lbb.17.1445147606398;
        Sat, 17 Oct 2015 22:53:26 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id cm6si410689wib.1.2015.10.17.22.53.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 22:53:26 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,696,1437429600"; 
   d="scan'208";a="150901746"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Oct 2015 07:53:25 +0200
Date: Sun, 18 Oct 2015 07:53:24 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Alison Schofield <amsfield22@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [RESEND PATCH] staging: r8723au: move * to
 be adjacent to pointer name
In-Reply-To: <1445125163-2116-1-git-send-email-amsfield22@gmail.com>
Message-ID: <alpine.DEB.2.02.1510180752360.2232@localhost6.localdomain6>
References: <20151016175941.GA17049@Ubuntu-D830> <1445125163-2116-1-git-send-email-amsfield22@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 17 Oct 2015, Alison Schofield wrote:

> Move * in pointer types to be adjacent to pointer names per Linux
> coding style.
> 
> Addresses checkpatch.pl: ERROR: "foo*    bar" should be "foo *bar"
> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> ---
> 
> (Rebased and resending)
> 
> Question to reviewers:
> Are checkpatch.pl CHECK errors permitted in a patch?
>         ie. This driver has a lot of pre-existing CamelCase CHECKs that
>         appear when my pre-commit hook executes.  I'd like to submit other
>         changes without addressing the CamelCase simultaneously.
> 
> What is the recommendation in such cases?

Submitting the patch is OK.  Fixing Camel Case problems is a very 
non-local transformation, and your change would get completely lost if you 
did that as well.

julia

> 
> 
>  drivers/staging/rtl8723au/core/rtw_ieee80211.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723au/core/rtw_ieee80211.c b/drivers/staging/rtl8723au/core/rtw_ieee80211.c
> index cdd7bc4..07a6490 100644
> --- a/drivers/staging/rtl8723au/core/rtw_ieee80211.c
> +++ b/drivers/staging/rtl8723au/core/rtw_ieee80211.c
> @@ -348,9 +348,9 @@ int rtw_generate_ie23a(struct registry_priv *pregistrypriv)
>  {
>  	u8	wireless_mode;
>  	int	sz = 0, rateLen;
> -	struct wlan_bssid_ex*	pdev_network = &pregistrypriv->dev_network;
> -	u8*	ie = pdev_network->IEs;
> -	u16 cap;
> +	struct wlan_bssid_ex *pdev_network = &pregistrypriv->dev_network;
> +	u8	*ie = pdev_network->IEs;
> +	u16	cap;
>  
>  	pdev_network->tsf = 0;
>  
> @@ -444,7 +444,8 @@ static int rtw_get_wpa2_cipher_suite(const u8 *s)
>  	return 0;
>  }
>  
> -int rtw_parse_wpa_ie23a(const u8* wpa_ie, int wpa_ie_len, int *group_cipher, int *pairwise_cipher, int *is_8021x)
> +int rtw_parse_wpa_ie23a(const u8 *wpa_ie, int wpa_ie_len, int *group_cipher,
> +			int *pairwise_cipher, int *is_8021x)
>  {
>  	int i, ret = _SUCCESS;
>  	int left, count;
> -- 
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1445125163-2116-1-git-send-email-amsfield22%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

