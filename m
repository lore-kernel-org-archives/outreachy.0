X-GM-THRID: 6806098614327181312
X-Received: by 2002:a37:b146:: with SMTP id a67mr8241594qkf.473.1584713163444;
        Fri, 20 Mar 2020 07:06:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6214:a0c:: with SMTP id dw12ls1427717qvb.3.gmail; Fri,
 20 Mar 2020 07:06:02 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvqjarWZlq4wPwOewRr77nQNpWUgmJsoUkoO6r8lqpmYsJH90GM58pdEqfPC/0hqFNbnC2m
X-Received: by 2002:a05:6214:910:: with SMTP id dj16mr8308116qvb.123.1584713162194;
        Fri, 20 Mar 2020 07:06:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584713162; cv=none;
        d=google.com; s=arc-20160816;
        b=Yof8BZvI/zo+cYcXXpwrY0OnLDtUq1LYiJz4v1Srr+G3MKth6dHzu3AyKGvdbhTsyf
         iaw4cMEwyoOdl4DOkcM52aw5vr4FsMt3OZLbNv2F/tvO6to4LTPsdmLMHFJNku76UW2e
         UzEw6SEFz8qW+cZLB6BxPO6JwNH1bq8GWDBmeafwqfK2KJ0426TH6czDsCWjK9/YAn9d
         hpGUOdlNetqtEb0ub4MUF8i4Su4Jhi04l5h1NAuF/2MtlMou/koAAVx9poSuIX51MwHY
         bb8u1csmdiwH3Uh2YsL6zJKV3Ld/zgVWG5qxPYx6tiJ5lxxvi/a0KqSXUdsio3o6t98K
         /BOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=iecKwmQhJjxtCWM1HaPpDjXysfH9j/Ja+Tegbo0yAKw=;
        b=B/y74GAXFm4whL1YeozZWrYxyGyqWd1xTTL2IY4Z3Y6gcl5CtEjJaX6QpyiuSRwOlM
         NhnDiyD4mDLOiFCq87pk2VehDEwjQ7rLmxeHM7RPHMm166SzT/MrZg8d+yOJ9lWAhymy
         +mvpVb9/SdGuAXYq1dSsqpDwOsRvc6GSWDvXag212MMsS/yh24Dt2/+aYCHufdsb/BRa
         58dWfuyAI7W6Jcj9rLDi9SZU+DwU9WhQgQvDtQpd9+bkzxEp02mwEkBT46k442xPWJ91
         1bKB/kEaJRvolTUgEBLsricM2UOHb/Iy958j1do8/bJRU6YF0NfTKgAT7y0bLXhNIUM6
         dd8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=12KA3UjY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t24si439526qtt.1.2020.03.20.07.06.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2020 07:06:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=12KA3UjY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A37452072D;
	Fri, 20 Mar 2020 14:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584713161;
	bh=EHSRwWs4MczqUKvSEtpd6OvBfGiOmjPJuQfL2kSF83A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=12KA3UjY8clRwnvxO8ri220WWVlnOWjRxjIiF294SN4/LhhKFSdhBp8Dh6jKhMbyA
	 Uc9cXFPftOzvHTVQxr6UNcYm0r7LC+LgWvvmjuZpH6xkNDtVYIELBBplYokDKQEvHB
	 cZc0aH3yLgCjnBTQMo+ZwHfjsiBbFrVPL7OF7g7Q=
Date: Fri, 20 Mar 2020 15:05:58 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH 2/2] staging: rtl8723bs: os_dep: Remove whitespace
 characters in code line
Message-ID: <20200320140558.GB643325@kroah.com>
References: <cover.1584667932.git.vkor@vkten.in>
 <7cf2a33375608b6c00713ba55234c9686af499a4.1584667932.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7cf2a33375608b6c00713ba55234c9686af499a4.1584667932.git.vkor@vkten.in>

On Fri, Mar 20, 2020 at 07:08:23AM +0530, R Veera Kumar wrote:
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

No, the original was correct here, checkpatch should not have complained
about this.

thanks,

greg k-h

