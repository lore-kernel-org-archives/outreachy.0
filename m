X-GM-THRID: 6808276319540871168
X-Received: by 2002:a2e:9605:: with SMTP id v5mr4216877ljh.258.1585207418215;
        Thu, 26 Mar 2020 00:23:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:58f1:: with SMTP id v17ls1007910lfo.8.gmail; Thu, 26 Mar
 2020 00:23:36 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtCTRrhEXhEshha7k/Jw6/58yz2a3n+N5Cf0uAcOHWgOiIKszd2uF1Mho59+qyBWdvfHtQP
X-Received: by 2002:a19:41c5:: with SMTP id o188mr4747185lfa.52.1585207416404;
        Thu, 26 Mar 2020 00:23:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585207416; cv=none;
        d=google.com; s=arc-20160816;
        b=naF3Fq48K/Pyu/CX0N9mILehAVzjN3Vqhus6zS7vAGTIx9z1z1goNwyHwaBLm1xcVx
         z+f7vA5XH46o8LmIkw6XD8OFuTCIQAa9FHy93aITja8upqFHF0RJ8b5GURzFkCmN2gWL
         9ailh2Su3UsM6WVMN01wIuENZS6qHe9mLTXjivTX+Yn7Pk/26V/1XnNBiibSG9CrY5uH
         dpI/9E4T38Z5K4osh779uXQyMW19Gbo3XMXN0FmBZYMYH5Jt+gYD7DV0fZCLUVIJx1fD
         lNOeNzRt9I8XWCtNwV5zvMysN03oz+K88+WPLqwpRcXTTpV+kcEH/gOHghBDWA6sWBzo
         wSdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=3Lf0+0VHgh35TDAf3HIKspC6uZePwofg9+LXjg8EnLM=;
        b=AsyjX3IxA6eatcmtwJ6ddPmiKbuTtbIojyD5QWzYYg5DPArZ/tOwef2dQ8y5XnfDT7
         Guo/6hZg7hTuhILxGccqlQPhiIlj3ZmcyHb6zbNtggS0dhJllTq6OPftDek8OPCZzR/v
         AOw/xLwGSbsLYsHBRZje2ZaGURRbp6Sfzj37zzI+/PeQvV4zBlAu/UDBtNAxFvIx3jSW
         RGA4aWtfRN3tueDbMtSTwvsMDPMoV5nENGFjkZV8hfaM9XxijO6wJCMv21Sd+WVACFDR
         E73BAHLFoWbWOBrmulxyV10I3OW+OKE5MTWzRLH1NcA8i6TaK3BosgVTTxH579dj521C
         nUvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p5si60297ljj.3.2020.03.26.00.23.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 00:23:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,307,1580770800"; 
   d="scan'208";a="343773967"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Mar 2020 08:23:35 +0100
Date: Thu, 26 Mar 2020 08:23:34 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Simran Singhal <singhalsimran0@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Clean up tests
 if NULL returned on failure
In-Reply-To: <20200325222908.GA5370@simran-Inspiron-5558>
Message-ID: <alpine.DEB.2.21.2003260822280.3019@hadrien>
References: <20200325222908.GA5370@simran-Inspiron-5558>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 26 Mar 2020, Simran Singhal wrote:

> Some functions like kmalloc/kzalloc return NULL on failure.
> When NULL represents failure, !x is commonly used.

Try for a shorter subject line.  "Simplify NULL tests" would do.  Then the
log message should be in the imperative.

julia


>
> This was done using Coccinelle:
> @@
> expression *e;
> identifier l1;
> @@
>
> e = \(kmalloc\|kzalloc\|kcalloc\|devm_kzalloc\)(...);
> ...
> - e == NULL
> + !e
>
> Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> index 29f36cca3972..5c27c11f006a 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> @@ -474,7 +474,7 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
>  			wep_key_len = wep_key_len <= 5 ? 5 : 13;
>  			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
>  			pwep = kzalloc(wep_total_len, GFP_KERNEL);
> -			if (pwep == NULL) {
> +			if (!pwep) {
>  				RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, (" wpa_set_encryption: pwep allocate fail !!!\n"));
>  				goto exit;
>  			}
> @@ -2137,7 +2137,7 @@ static int rtw_wx_set_enc_ext(struct net_device *dev,
>
>  	param_len = sizeof(struct ieee_param) + pext->key_len;
>  	param = kzalloc(param_len, GFP_KERNEL);
> -	if (param == NULL)
> +	if (!param)
>  		return -1;
>
>  	param->cmd = IEEE_CMD_SET_ENCRYPTION;
> @@ -3491,7 +3491,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
>  			wep_key_len = wep_key_len <= 5 ? 5 : 13;
>  			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
>  			pwep = kzalloc(wep_total_len, GFP_KERNEL);
> -			if (pwep == NULL) {
> +			if (!pwep) {
>  				DBG_871X(" r871x_set_encryption: pwep allocate fail !!!\n");
>  				goto exit;
>  			}
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200325222908.GA5370%40simran-Inspiron-5558.
>

