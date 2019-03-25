X-GM-THRID: 6672360992338345984
X-Received: by 2002:a1c:cc0a:: with SMTP id h10mr12015239wmb.22.1553530494598;
        Mon, 25 Mar 2019 09:14:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:ef1a:: with SMTP id n26ls2131542wmh.6.gmail; Mon, 25 Mar
 2019 09:14:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyRCHkelcTOx3diqFf34xrphP2dNIbeDlxq92b8TbGPed40f99Ew/XPulG9U8z7rbewqJdb
X-Received: by 2002:a1c:7ec2:: with SMTP id z185mr6608744wmc.69.1553530493825;
        Mon, 25 Mar 2019 09:14:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553530493; cv=none;
        d=google.com; s=arc-20160816;
        b=k36FBYl8oy1nr3erHU4+4MlN5Q9LVM/gWLw6E60FNiQ6RGED/PU+6d82DeFoYOg/j9
         4I44gCYJ8rahS1y/MAi4NS2l8+bOlyEpbywQ33H2VHNzNLyo9/jA4q2CWA/Teih3pLF0
         MRdgyyKiCMrsl2RFVG07MVK5ops0Vo8QcLVVdNwuuHpYJJCdum8flEDNAep7HfMBqNds
         m7omGVd3VJxsNWOcS79O4VqCvwViKQvnq19RpSHeGJYteSfDGnHw4rsTtdviEncl4wVh
         30UbYZjBx1y+5Xu4VTApmx/PgiTu+O1t+bhfgydF+ihcRuY+ZHofF+egzERUKCWQOWc4
         RrDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=QnkRHwulSIPM1yYiGnIPbWTllrSfS7ExV5JOhlSc5oY=;
        b=0xFV++mK6G/EyDdoZamUSGEW0XUmdUjMRXF5YCLc3+wnF+paOqF96yMj0HFCCXHnG2
         EndNefih1LHv0H/EXJyI3l55+MY/804OHbi8U9fAbtz11J3s2O8EGIRCKY0YnjTqQnCP
         ii7/IKsFDGPocn206FVEuCPrazJPFMiX/Tu3ba6PACYrOUf+qbNsY9HZaot/XiMrJlk6
         2kMSkQ30YRr+WeDqxusqVnoAsZR8QQtwDSeI8yaDdsMv+7EG/PhZQgMHdcjnugo1mUgy
         emyLlyWQm7p/+QFEGHpzSWGUHRlQnWt9NpLgsKpZMWeMqcWm8XDRqVRiRmqiFsLVUsxk
         C+dQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s8si343415wme.0.2019.03.25.09.14.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 09:14:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,269,1549926000"; 
   d="scan'208";a="300666640"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Mar 2019 17:14:53 +0100
Date: Mon, 25 Mar 2019 17:14:51 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sammy Abed <abdlwahdsa@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: include: Fix
 indentation and spacing issues
In-Reply-To: <20190325031503.4616-1-abdlwahdsa@gmail.com>
Message-ID: <alpine.DEB.2.20.1903251712340.3543@hadrien>
References: <20190325031503.4616-1-abdlwahdsa@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

There aren't many patches on this file so far, but the one there is only
has staging: rtl8723bs: in the subject line.

On Sun, 24 Mar 2019, Sammy Abed wrote:

> Replaced spaces with tabs at the beginning of lines.
> Added spaces around a (+) operator.
>
> Signed-off-by: Sammy Abed <abdlwahdsa@gmail.com>
> ---
>  .../staging/rtl8723bs/include/wlan_bssdef.h   | 56 +++++++++----------
>  1 file changed, 28 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/include/wlan_bssdef.h b/drivers/staging/rtl8723bs/include/wlan_bssdef.h
> index bdb14a84e5a5..88890b1c3c4c 100644
> --- a/drivers/staging/rtl8723bs/include/wlan_bssdef.h
> +++ b/drivers/staging/rtl8723bs/include/wlan_bssdef.h
> @@ -129,15 +129,15 @@ struct ndis_801_11_ai_resfi {
>
>  typedef struct _NDIS_802_11_ASSOCIATION_INFORMATION

When this patch is accepted, you could get rid of these typedefs.

julia

>  {
> -    u32                   Length;
> -    u16                  AvailableRequestFixedIEs;
> -    struct ndis_802_11_ai_reqfi    RequestFixedIEs;
> -    u32                   RequestIELength;
> -    u32                   OffsetRequestIEs;
> -    u16                  AvailableResponseFixedIEs;
> -    struct ndis_801_11_ai_resfi    ResponseFixedIEs;
> -    u32                   ResponseIELength;
> -    u32                   OffsetResponseIEs;
> +	u32                   Length;
> +	u16                  AvailableRequestFixedIEs;
> +	struct ndis_802_11_ai_reqfi    RequestFixedIEs;
> +	u32                   RequestIELength;
> +	u32                   OffsetRequestIEs;
> +	u16                  AvailableResponseFixedIEs;
> +	struct ndis_801_11_ai_resfi    ResponseFixedIEs;
> +	u32                   ResponseIELength;
> +	u32                   OffsetResponseIEs;
>  } NDIS_802_11_ASSOCIATION_INFORMATION, *PNDIS_802_11_ASSOCIATION_INFORMATION;
>
>  enum NDIS_802_11_RELOAD_DEFAULTS {
> @@ -148,19 +148,19 @@ enum NDIS_802_11_RELOAD_DEFAULTS {
>  /*  Key mapping keys require a BSSID */
>  typedef struct _NDIS_802_11_KEY
>  {
> -    u32           Length;             /*  Length of this structure */
> -    u32           KeyIndex;
> -    u32           KeyLength;          /*  length of key in bytes */
> -    NDIS_802_11_MAC_ADDRESS BSSID;
> -    unsigned long long KeyRSC;
> -    u8           KeyMaterial[32];     /*  variable length depending on above field */
> +	u32           Length;             /*  Length of this structure */
> +	u32           KeyIndex;
> +	u32           KeyLength;          /*  length of key in bytes */
> +	NDIS_802_11_MAC_ADDRESS BSSID;
> +	unsigned long long KeyRSC;
> +	u8           KeyMaterial[32];     /*  variable length depending on above field */
>  } NDIS_802_11_KEY, *PNDIS_802_11_KEY;
>
>  typedef struct _NDIS_802_11_REMOVE_KEY
>  {
> -    u32                   Length;        /*  Length of this structure */
> -    u32                   KeyIndex;
> -    NDIS_802_11_MAC_ADDRESS BSSID;
> +	u32                   Length;        /*  Length of this structure */
> +	u32                   KeyIndex;
> +	NDIS_802_11_MAC_ADDRESS BSSID;
>  } NDIS_802_11_REMOVE_KEY, *PNDIS_802_11_REMOVE_KEY;
>
>  struct ndis_802_11_wep {
> @@ -181,7 +181,7 @@ struct ndis_802_11_wep {
>  #define MIC_CHECK_TIME	60000000
>
>  #ifndef Ndis802_11APMode
> -#define Ndis802_11APMode (Ndis802_11InfrastructureMax+1)
> +#define Ndis802_11APMode (Ndis802_11InfrastructureMax + 1)
>  #endif
>
>  struct wlan_phy_info {
> @@ -240,15 +240,15 @@ struct	wlan_network {
>  };
>
>  enum VRTL_CARRIER_SENSE {
> -    DISABLE_VCS,
> -    ENABLE_VCS,
> -    AUTO_VCS
> +	DISABLE_VCS,
> +	ENABLE_VCS,
> +	AUTO_VCS
>  };
>
>  enum VCS_TYPE {
> -    NONE_VCS,
> -    RTS_CTS,
> -    CTS_TO_SELF
> +	NONE_VCS,
> +	RTS_CTS,
> +	CTS_TO_SELF
>  };
>
>  #define PWR_CAM 0
> @@ -259,9 +259,9 @@ enum VCS_TYPE {
>
>  enum UAPSD_MAX_SP {
>  	NO_LIMIT,
> -       TWO_MSDU,
> -       FOUR_MSDU,
> -       SIX_MSDU
> +	TWO_MSDU,
> +	FOUR_MSDU,
> +	SIX_MSDU
>  };
>
>  #define NUM_PRE_AUTH_KEY 16
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190325031503.4616-1-abdlwahdsa%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

