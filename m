X-GM-THRID: 6673477267526516736
X-Received: by 2002:a1f:403:: with SMTP id 3mr4308869vke.25.1553876121139;
        Fri, 29 Mar 2019 09:15:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:8d06:: with SMTP id p6ls614531vsd.3.gmail; Fri, 29 Mar
 2019 09:15:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyuYRKI+2SUn9KGGjyhAhvOoDfyCGeNijctc0qIcTFGDhZ5lbZgONokTrnF9/xqvepv5aef
X-Received: by 2002:a67:748d:: with SMTP id p135mr4341215vsc.38.1553876120570;
        Fri, 29 Mar 2019 09:15:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553876120; cv=none;
        d=google.com; s=arc-20160816;
        b=X9PPbwPnSE/IMuiqPwexsTWERdRgV8sLbrHa28eouHG4Stw4pL7P3fSkRx5Rb22PMk
         eLDrqnHC3LutOsM7mFiYs2M37yDSGcyOaYufhGEZajmX67SeKzwxNiXs3bOxf/AxJPAi
         PQokhj/oJeARVB64ff44Xu46EOOMjlCpj+ZpFeHbb2na7D8ykZlCXKcG1Vi9sSmLReV0
         AlSPeOD32Enzx1YveAd7kDWowQTwJpo9b1r5MWIJC2Kn4q5lU0Zp9hPYVaaPazZhr49W
         F1o3HsD0QD9Dbzat+83c6ArJ8vRFs3wlM9z+6Res1CjStw4MDt9bktBn3DqFL3jFzNZb
         imeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=UyGo245cSDmDUXGGr52GKS+WVU9hwnOBhdz/yWg3JOQ=;
        b=eOzjSuom2cJhndIvd8OyBOU0jniYvXRfdduoMp2VUlzZviiNrSPMhvaRwsyMSLjraF
         5g3EX5ozjsYngNtBJXgaMFR+9BYIMb4rW9xt3OSPJ4Ua1VnDp4VKtosChbHlv8qS21y9
         CoHzer8WyxQ+gbZH8Ozp+6AwmHFRAGVdEgjXWN3Q1p5OdBIs03KRtcz2d9MV9SuCqC+V
         oFW6P2ab+aQSLTX86Mdn4f830i2q77xraY/RodviypXF9PTKFaahHQXYZB1689GLisVK
         izNbnUNaYFljI/SROY76ziamTOa6NiIusyOhcUu9NhfRHUSy3Chzef/j4jLseZ8LRqnb
         j/xQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="FvE/d57L";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h13si172206vkf.4.2019.03.29.09.15.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 09:15:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="FvE/d57L";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E594D218A3;
	Fri, 29 Mar 2019 16:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553876119;
	bh=XL4VZqR7efxWtwyHMwvLm4PgTA3qPV0794VQY26OpW8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FvE/d57LZIlChjKnKMLl3ljX5pLs7bgBlNxRDc60GAUmqOBmZHy08Rcrv19gjMSlP
	 h2dWOXkqltCVybjJ433dEpRzhpi14ZiCRcPXJNQct1TAtMYeWt+OwnTHWo0ZoRc6Iy
	 NbYXIywWzMKtu7VE0RhNIVgc1W5Xo2zFt48O2KVg=
Date: Fri, 29 Mar 2019 17:15:17 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: rtl8192u: ieee80211: Remove custom macro
 IEEE80211_DEBUG
Message-ID: <20190329161517.GA3008@kroah.com>
References: <20190328162002.14740-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190328162002.14740-1-madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 28, 2019 at 11:20:02AM -0500, Madhumitha Prabakaran wrote:
> Remove the custom macro IEEE80211_DEBUG for printing message in
> dev_alloc_skb in order to maintain Linux kernel coding style based on
> which kernel does not print failure warning.
> 
> Issue suggested by Coccinelle.
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
> index 109445407cec..085309aace94 100644
> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
> @@ -119,7 +119,6 @@ static struct sk_buff *ieee80211_ADDBA(struct ieee80211_device *ieee, u8 *Dst, s
>  	}
>  	skb = dev_alloc_skb(len + sizeof(struct rtl_80211_hdr_3addr)); //need to add something others? FIXME
>  	if (!skb) {
> -		IEEE80211_DEBUG(IEEE80211_DL_ERR, "can't alloc skb for ADDBA_REQ\n");
>  		return NULL;
>  	}

When you do this, the extra { } should also be removed.

Same for the rest of the patch.

thanks,

greg k-h

