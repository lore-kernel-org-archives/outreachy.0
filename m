X-GM-THRID: 6529514677099036672
X-Received: by 10.46.116.1 with SMTP id p1mr1089564ljc.18.1520287275255;
        Mon, 05 Mar 2018 14:01:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.85 with SMTP id x21ls1778079ljd.2.gmail; Mon, 05 Mar
 2018 14:01:13 -0800 (PST)
X-Google-Smtp-Source: AG47ELumZn1JtfyTvPY7RghylA7p9ykayYaU/R1NdwVlkYnmgRvtyRmwsTMuM137ojr/DLB3FfCn
X-Received: by 10.46.145.198 with SMTP id u6mr1132865ljg.14.1520287273806;
        Mon, 05 Mar 2018 14:01:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520287273; cv=none;
        d=google.com; s=arc-20160816;
        b=lOsD1EhTqL8gdQ258umbr7u4r4ah+y+PLeZUcJ5GMO3fDMsoi3x9KwXrqco84BNt2F
         BlDTQAJ6SukiFHStq6nzvJnSlcfkfGQkvdNcWJtGqj9nHFouxgZg7dChJ1CxEPe0Fid/
         9OT5iwoTA/E7diEI6TUCIzRC3I5fmSe6gJx53snd4/8e8zXRSOJLVanr91orITxZu29u
         pi9baGPd4bI5OHvUxpuvFnHs5P6mFp4UMb3WDtgIOacGczapPt/puXtgUoMwe9HiDNw2
         CbR4+P5mcrAONzrxtCmFNXCKf2iQjBV+PKcnAgGzPxoWRMKw56zfdyKdLZLH7HUZL4UR
         cAAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=ybCLkfa3YxLGGTcsO1smVgMFeBT9nJHzzHboGOyhoqs=;
        b=W0b398zpXl6flbzi0qKb22wyf8/df/o8xNoxzT87n6lJJYAy2GkpEGb6cAjIhaXqdA
         UVbADZk8odb7SDn65SfqzhtmPO+A6PFSFaFhxMUO8nNl8AT6/4VlC4Du2l2GkPPeNgq/
         lxdYLse+6xLn0W3md6J02zgxQ5CbP1FWcPMT78PH0UTmWGrdHp9OxK9ygnyTaae88Zhi
         XvLsJTTnO/Y2ibbrDujNMB73E21u7YZzOBBGRbVVxdyIM4mFUVR+SzESGVCeq2cztoHe
         gE0miKbeRw3NNGQdTUh47WK5XddJf7jJ8pY9JrFDeFH32tX1tJ+aARCCJq4frDEY8rFO
         34uQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w7si653542ljw.4.2018.03.05.14.01.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Mar 2018 14:01:13 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,428,1515452400"; 
   d="scan'208";a="316533722"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2018 23:01:12 +0100
Date: Mon, 5 Mar 2018 23:01:12 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Santha Meena Ramamoorthy <santhameena13@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8188eu: place constant
 on the right side of test
In-Reply-To: <1520275079-54162-1-git-send-email-santhameena13@gmail.com>
Message-ID: <alpine.DEB.2.20.1803052301002.2763@hadrien>
References: <1520275079-54162-1-git-send-email-santhameena13@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 5 Mar 2018, Santha Meena Ramamoorthy wrote:

> Place constants on the right side of the test during comparisons to
> conform to the Linux kernel coding style. Issue found using checkpatch.
>
> Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> Change in v2:
>  - Mention tool used in the commit message.
>
>  drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c      | 2 +-
>  drivers/staging/rtl8188eu/hal/rtl8188e_dm.c       | 2 +-
>  drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c | 8 ++++----
>  drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c    | 2 +-
>  4 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c b/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
> index 1ab2e55..8d242ad 100644
> --- a/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
> +++ b/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
> @@ -36,7 +36,7 @@ static u8 _is_fw_read_cmd_down(struct adapter *adapt, u8 msgbox_num)
>
>  	do {
>  		valid = usb_read8(adapt, REG_HMETFR) & BIT(msgbox_num);
> -		if (0 == valid)
> +		if (valid == 0)
>  			read_down = true;
>  	} while ((!read_down) && (retry_cnts--));
>
> diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
> index d04b7fb..ff227c8 100644
> --- a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
> +++ b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
> @@ -182,7 +182,7 @@ void rtw_hal_dm_init(struct adapter *Adapter)
>  /*  Compare RSSI for deciding antenna */
>  void rtw_hal_antdiv_rssi_compared(struct adapter *Adapter, struct wlan_bssid_ex *dst, struct wlan_bssid_ex *src)
>  {
> -	if (0 != Adapter->HalData->AntDivCfg) {
> +	if (Adapter->HalData->AntDivCfg != 0) {
>  		/* select optimum_antenna for before linked =>For antenna diversity */
>  		if (dst->Rssi >=  src->Rssi) {/* keep org parameter */
>  			src->Rssi = dst->Rssi;
> diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c b/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
> index 3673f57..54ede4b 100644
> --- a/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
> +++ b/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
> @@ -221,13 +221,13 @@ s32 InitLLTTable(struct adapter *padapter, u8 txpktbuf_bndy)
>  	} else {
>  		for (i = 0; i < (txpktbuf_bndy - 1); i++) {
>  			status = _LLTWrite(padapter, i, i + 1);
> -			if (_SUCCESS != status)
> +			if (status != _SUCCESS)
>  				return status;
>  		}
>
>  		/*  end of list */
>  		status = _LLTWrite(padapter, (txpktbuf_bndy - 1), 0xFF);
> -		if (_SUCCESS != status)
> +		if (status != _SUCCESS)
>  			return status;
>
>  		/*  Make the other pages as ring buffer */
> @@ -235,13 +235,13 @@ s32 InitLLTTable(struct adapter *padapter, u8 txpktbuf_bndy)
>  		/*  Otherwise used as local loopback buffer. */
>  		for (i = txpktbuf_bndy; i < Last_Entry_Of_TxPktBuf; i++) {
>  			status = _LLTWrite(padapter, i, (i + 1));
> -			if (_SUCCESS != status)
> +			if (status != _SUCCESS)
>  				return status;
>  		}
>
>  		/*  Let last entry point to the start entry of ring buffer */
>  		status = _LLTWrite(padapter, Last_Entry_Of_TxPktBuf, txpktbuf_bndy);
> -		if (_SUCCESS != status) {
> +		if (status != _SUCCESS) {
>  			return status;
>  		}
>  	}
> diff --git a/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c b/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
> index a9912b6..4f0f512 100644
> --- a/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
> +++ b/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
> @@ -552,7 +552,7 @@ s32 rtl8188eu_xmitframe_complete(struct adapter *adapt, struct xmit_priv *pxmitp
>  		pbuf = round_up(pbuf_tail, 8);
>
>  		pfirstframe->agg_num++;
> -		if (MAX_TX_AGG_PACKET_NUMBER == pfirstframe->agg_num)
> +		if (pfirstframe->agg_num ==  MAX_TX_AGG_PACKET_NUMBER)
>  			break;
>
>  		if (pbuf < bulkptr) {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1520275079-54162-1-git-send-email-santhameena13%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

