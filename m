X-GM-THRID: 6674450234072891392
X-Received: by 2002:a37:4e4b:: with SMTP id c72mr6878151qkb.57.1554140446536;
        Mon, 01 Apr 2019 10:40:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:de09:: with SMTP id h9ls2850307qkj.5.gmail; Mon, 01 Apr
 2019 10:40:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyMPmZpOqMzaA3VKvWz416P9WoqLEF8Arm7GYdgt9yPzlvHaDniYr62+LH5Wg13DrtZG7JZ
X-Received: by 2002:a37:9f88:: with SMTP id i130mr6914808qke.3.1554140445982;
        Mon, 01 Apr 2019 10:40:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554140445; cv=none;
        d=google.com; s=arc-20160816;
        b=ACt03qICgPX6ZRlEPJUKrVBHPgcm383DKhGj5Oyi3ctLajbfvAG+unf97e2vEuz3FQ
         mxCyggU/RKocvU1YvppnmLtmk4btuh4RqKOUpvR6wYr5TqkeYGksRR9iGnV3DL3rgM8v
         QbT35FNMkV6qEW93euoH1EFzmZHAxMMWFFW6AN6608EV7LrVYdC877dYw0Jd5EJ1uut6
         iwXl+o1ieL9FZyw3bQJnKc5oqszyFrnn9AcStYffW3Vqbx8pBP25O5dLJnzF2ipzImhi
         rpLAqZ7EWAJiYReUQTIYq3fGAtKeZKwCKH/gBLH1CtA9uR3vWW/f31JX9hwAmbDhXjh9
         CDSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=9COV0pKQkHx6zsITkU9fSNqRu8rk/wMwv3T6TCF7Ie8=;
        b=aY1WB8dOnkVG/59fc+DzKnODsSdCUpm5YeMl9uiFRpfLauRb+09RE19CopYWap1o2p
         mDbs03r/CCZSHxqcvjp4nIUnPZP7X5GLSKACqECGOGHkzL+Y1KJW7gILQWaM2UVh1PAR
         FkEbF5YtRq+/UKElzZH3pyMU6KhvIq4Z2pY6fHBOmTWjKCSgoR3sgVvAUDMmzff06IkK
         xfH06HHAztabhEdkkr0V+92/H3uDXBVOKf9Ee5O3y2Qqx5cM7NP1p12sB0xOs4Dpz5ms
         J54w3hdZ6EEg570R3KeQP+GMobyzVYZbOwLezG7xOIjZuG678ZtxxeoZR5ktvZm9QpOT
         H2qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=SEDdVfUP;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=sm8OtzE0;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com. [66.111.4.25])
        by gmr-mx.google.com with ESMTPS id q58si511365qtf.5.2019.04.01.10.40.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 10:40:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) client-ip=66.111.4.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=SEDdVfUP;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=sm8OtzE0;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 8605B21DC1;
	Mon,  1 Apr 2019 13:40:45 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Mon, 01 Apr 2019 13:40:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=9COV0pKQkHx6zsITkU9fSNqRu8r
	k/wMwv3T6TCF7Ie8=; b=SEDdVfUPRqTKQwhsIfJ/yh5rqgOWGCJAx53GyagdmbQ
	KFTL4E9xH51CG+O+YdB8Vj/JaHG+EjkoQqAMFtpJmWbuzII2iJ1x6XCSOdI/TaLG
	jCLd2gzT9bWoxp/i4Molo2CHAPFLsarbJiDgXs6UoGlRzhPVNSUrXo+CZbYMwhnt
	M7kyJZLxSawJBRpUtFkf1tIHrvMzqP1hBvDTrODOQqPBDiMqJcNUjRCBya3R3pYo
	r/WoPXVNm0fGxr8BgyZyb9oopmD55BMm4U034Kwf3xz9exZ/nU7TUNSQyDlXiO+D
	T0Xe4TjOFDcYVFDFJ1S70f5WH4l9qVmF2chOMtXSgog==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=9COV0p
	KQkHx6zsITkU9fSNqRu8rk/wMwv3T6TCF7Ie8=; b=sm8OtzE0X2kMa7c3pvNfEN
	+VKVZhCkE7dUyh3HPhRyn6hrW8MqErmTPatRiuvZ6EzBStDJamBbWP2wgEWkSf2Y
	m2e7OT1e5W17SBBTDk+OI9qW7Ng5j8YI3iNKnUB2NlVMwtQFCgtgzUqEb7EI1I7F
	GHdP9FPuvV6Z+BoCu2vw43K9HajG+JT8eR2p1o4rza8gGcF4vb9ekwWOvQrwoRSw
	A6uQh5Q9i32DsZRUhVmvsBE3j/LbnyVQ64nkPVgSY6KGa3cswurCgvtpgOyh3Qto
	4oQCFSr0BukWDUcrddc9Go5bNJG35mAUf2J6MlXz4Hy4XpbrZ90OF9/KanQRN+mw
	==
X-ME-Sender: <xms:HU2iXPEHPpqU75xl0tK6P99Slj7ezgFSUvMfjUP8yihxT2gKD7l89Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrleeggdduudefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomhepifhrvghg
    ucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecukfhppeekfedrkeeirdekledrud
    dtjeenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhmnecu
    vehluhhsthgvrhfuihiivgepud
X-ME-Proxy: <xmx:HU2iXAnd3Fg8TBHCk31dDwbsqV9giYxX-mZQpCbDvAX3xNDOVOLb3A>
    <xmx:HU2iXMIfl5isMhjbxMeW7rMO6sfPZWt-FvmQJa2x5qNGsDjCs7dLRw>
    <xmx:HU2iXBbbt1Brcz5DBzZTAR3u9jAz4Qw2ZtYVR8F1zJfh9yz28XZSFg>
    <xmx:HU2iXOTSZx_KDF2MngZDR6QNyF_4Vq5tdk_Zou6vgWD1tUSuD-duGQ>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id D6EC01030F;
	Mon,  1 Apr 2019 13:40:44 -0400 (EDT)
Date: Mon, 1 Apr 2019 19:24:43 +0200
From: Greg KH <greg@kroah.com>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/9] staging: rtl8723bs: os_dep:
 ioctl_linux.c: Fix indentation issue.
Message-ID: <20190401172443.GA16636@kroah.com>
References: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
 <c1a8790575615dcf3af1fc5bb75092c3f93a3c68.1554028003.git.payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c1a8790575615dcf3af1fc5bb75092c3f93a3c68.1554028003.git.payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 31, 2019 at 04:18:36PM +0530, Payal Kshirsagar wrote:
> To fix the indentation issue remove spaces and add tabs.
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 85 +++++++++++++-------------
>  1 file changed, 41 insertions(+), 44 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> index ec336a5..e6f24b8 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> @@ -939,30 +939,30 @@ static int rtw_wx_get_mode(struct net_device *dev, struct iw_request_info *a,
>  
>  
>  static int rtw_wx_set_pmkid(struct net_device *dev,
> -	                     struct iw_request_info *a,
> -			     union iwreq_data *wrqu, char *extra)
> +			    struct iw_request_info *a,
> +			    union iwreq_data *wrqu, char *extra)
>  {
>  	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
> -	u8          j, blInserted = false;
> -	int         intReturn = false;
> +	u8 j, blInserted = false;
> +	int intReturn = false;
>  	struct security_priv *psecuritypriv = &padapter->securitypriv;
> -        struct iw_pmksa*  pPMK = (struct iw_pmksa*)extra;
> -        u8     strZeroMacAddress[ ETH_ALEN ] = { 0x00 };
> -        u8     strIssueBssid[ ETH_ALEN ] = { 0x00 };
> +	struct iw_pmksa*  pPMK = (struct iw_pmksa*)extra;
> +	u8 strZeroMacAddress[ ETH_ALEN ] = { 0x00 };
> +	u8 strIssueBssid[ ETH_ALEN ] = { 0x00 };
>  
>  	/*
> -        There are the BSSID information in the bssid.sa_data array.
> -        If cmd is IW_PMKSA_FLUSH, it means the wpa_suppplicant wants to clear all the PMKID information.
> -        If cmd is IW_PMKSA_ADD, it means the wpa_supplicant wants to add a PMKID/BSSID to driver.
> -        If cmd is IW_PMKSA_REMOVE, it means the wpa_supplicant wants to remove a PMKID/BSSID from driver.
> -        */
> +	There are the BSSID information in the bssid.sa_data array.
> +	If cmd is IW_PMKSA_FLUSH, it means the wpa_suppplicant wants to clear all the PMKID information.
> +	If cmd is IW_PMKSA_ADD, it means the wpa_supplicant wants to add a PMKID/BSSID to driver.
> +	If cmd is IW_PMKSA_REMOVE, it means the wpa_supplicant wants to remove a PMKID/BSSID from driver.
> +	*/

That is not the correct indentation to make :(


