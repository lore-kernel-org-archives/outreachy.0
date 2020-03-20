X-GM-THRID: 6806100951859986432
X-Received: by 2002:a9d:4ee:: with SMTP id 101mr6667574otm.301.1584713206406;
        Fri, 20 Mar 2020 07:06:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:69cb:: with SMTP id v11ls2360067oto.5.gmail; Fri, 20 Mar
 2020 07:06:39 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt9n91WogZmRw55y+Rx56KOtIiUYuVaJu4qEZ0S1ODv6dYwIJQeXupY2Gol06Zsbai8qi3u
X-Received: by 2002:a05:6830:30a3:: with SMTP id g3mr6905425ots.222.1584713199022;
        Fri, 20 Mar 2020 07:06:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584713199; cv=none;
        d=google.com; s=arc-20160816;
        b=FISAdUKXwgUVJYMnKmn6CcfNNgxHL2eyFSsNishBW652Vx8VLvL3VPYm0fzXTcqlvm
         w0uAzJkUUBfYxucQzbt+6tEfggQLQcfoX1/57lYHouDEVyE3N+uNjSmT12QScoHuNUwR
         6HH3WxyzMW+HG7NTvD77Tkr4PIW2jtBN0eX1qAl7TguQLFWmO+/DvVAw3qQ0DNFRM80Z
         7ml7Fb7jPHVNvVeDFH8sEyR1h2xH7MDnuiQOxDYuameI9z1XLqkwqaUNsfP4eFDkihrS
         tHkq//Vdv8VTfdyST94BoW8dt7vcl4R4UbLmd5QmGJTloKqbCM/jqC28uklFh5zwN8BQ
         rD2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JBCHbzyVLI9ihRPhYxRgsGHo5y+aQjnig/uX6zLmQQE=;
        b=UQx1MzApa4ZD60MKSwi7DVqjNO8WQfBN8YAqcK+/4Sn1ohdJlbzLGAgjdfcdrJjHvY
         tBof0DvxWKJKPZlL1wQVLAKmoddgpzRNun0DjnCw8ShX3vAHdY4+nVtpTd7VYLvJ158o
         YNL2ykzYb3TiHGbQdyUNoOMNJOEzcEw6xnsoX508ufC27ePoX/EBJoR4VMrkNhBwPaD0
         vPv7uphOBnHDXrRqJcFrS3kx+r3tPPan57rPln84H2FRU46+wBcOjDZ4tegq3uBf5Kg+
         11mhWMFXIQqanGmhcbuaitgFHu/srFUj22awpso+Kjj6Rciig4ZR9Db9fkOcYTxFCwwH
         gV6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BHdPo5BT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t81si281201oie.5.2020.03.20.07.06.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2020 07:06:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BHdPo5BT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C339920754;
	Fri, 20 Mar 2020 14:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584713198;
	bh=q4wQAVTGkvPTwC60z/O51rqtur2Xpb7qMxrTiDVo2uk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BHdPo5BTqTaB1CKWIDKsprX2r/IX+p5q3db8DSs1I2NeGfCKyKNwtNIXQVguCoMAx
	 RxmEAfGPlAf5yJ5TSSRcj0eYRNNK0aSLnctZeAsw4wv0T3oL39d9ooSKgK1WveCZam
	 21g3xYPfUR+v0eH8eEHoRcrBMbbpGCLNxK61ZSyo=
Date: Fri, 20 Mar 2020 15:06:35 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2 2/2] staging: rtl8723bs: os_dep: Remove whitespace
 characters in code line
Message-ID: <20200320140635.GD643325@kroah.com>
References: <cover.1584668433.git.vkor@vkten.in>
 <7cf2a33375608b6c00713ba55234c9686af499a4.1584668433.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7cf2a33375608b6c00713ba55234c9686af499a4.1584668433.git.vkor@vkten.in>

On Fri, Mar 20, 2020 at 07:17:30AM +0530, R Veera Kumar wrote:
> Remove five leading whitespace characters in code line.
> 
> Signed-off-by: R Veera Kumar <vkor@vkten.in>
> ---
>  drivers/staging/rtl8723bs/os_dep/recv_linux.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> index 87090af7d776..1502477e48bb 100644
> --- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> @@ -79,8 +79,8 @@ _pkt *rtw_os_alloc_msdu_pkt(union recv_frame *prframe, u16 nSubframe_Length, u8
>  
>  	if (sub_skb->len >= 8 &&
>  		((!memcmp(sub_skb->data, rtw_rfc1042_header, SNAP_SIZE) &&
> -		  eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) ||
> -		 !memcmp(sub_skb->data, rtw_bridge_tunnel_header, SNAP_SIZE))) {
> +		eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) ||
> +		!memcmp(sub_skb->data, rtw_bridge_tunnel_header, SNAP_SIZE))) {

Again, this is just fine.

