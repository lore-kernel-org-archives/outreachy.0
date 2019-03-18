X-GM-THRID: 6669714716866117632
X-Received: by 2002:a25:3f41:: with SMTP id m62mr8444051yba.72.1552917325841;
        Mon, 18 Mar 2019 06:55:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:dd6:: with SMTP id 205ls2792356ybn.15.gmail; Mon, 18 Mar
 2019 06:55:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxLGLiJxZb+lz5jYBdZIgX5RM7PintDn8iuhFguRBWxAg2OEuLkCeh9QrbpWLoPjAbsj8ca
X-Received: by 2002:a5b:4c9:: with SMTP id u9mr9217033ybp.93.1552917324912;
        Mon, 18 Mar 2019 06:55:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552917324; cv=none;
        d=google.com; s=arc-20160816;
        b=FJBlq+M00ba4YUSmtFb8GZhaKcjuRkCNF2rdNWMDEb19Lp/gjhk3v/ioeeNOATDBZh
         c+NQrjuOX5KpbWZBnjd2pBO9vi1c8p1vcKJ2KfqdeURC1GSL8xMps8MtOnMNPP94c9m5
         ji9j9D6e95Oa6NYR0HrmsEzNJoNuGopVW1C9C9Vnt2XG16Kv81ZXS5h47wswOa0Ab3BR
         220pU0NnRrfiTHRxzMT/x5V4U+qokq+0xq1fEGt1A1vPPoURP1BFCs8usmbD6yWROugk
         AKS1QXIfsYCtr0x/VM202y4hNSmakTWNXLF5GFKfYvQl6A6n+0JnHoUeEqJqbka4zsVl
         CxOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=boqaeBqK8B7x5mYGAw+oT2O22GKamJ/Xcbc/GQ4c5EU=;
        b=ZKU+Az0iOODXJj5oKD0tNSj7H7o6xztCzdFLullvPTtOklNZR6L7a1zVa+erXZQPRF
         lAGFlw/l0pd/4y/94p4JmwGWwBeocw7YFjBUKtOCucw9VFfZ4bGso8KUl4Cr1xsngMHQ
         WNPdYs98IUYUtQmbvkCPLbH37i74FMhq9GIL7Q3Pu4GaHJDLJVZ7TnOvBPOnCqytFOct
         q3l0+6EcnoJa85sZUIkHVp1uEJ47EbV91kBiFKhb3oaiQyZVwrNS4NWhVkXLefNDtOiD
         LwhFT6l/7JYdeRZIXvyZ0rQTKPxhYDrzt8lIwhx3ePa4vlNnvNyDuQcXtflmLm5TIj3o
         pMvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jEL5At8u;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s11si439590ywg.3.2019.03.18.06.55.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 06:55:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jEL5At8u;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 67EF220857;
	Mon, 18 Mar 2019 13:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552917323;
	bh=B952juAs+XT9n9U21zleeoWLw/W1PhEVyX/nrvyJJ2M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jEL5At8urd8cYIM4Sr2+rMjcH7TL0guT6S8u76jV0ggmOFV4l35jfeCw+t3eqdD8F
	 TayPwJ12jGNgS1GSgDx/71tgy2iFI6wVEkHA+JWAOe4pqjWB3SSo2Qo4y4Yjwiu1G8
	 /xD1xNb4SDj/noX4JHg/nSdZqbC0Ido3vnHFZfWs=
Date: Mon, 18 Mar 2019 14:55:21 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: rtl8188eu: core: rtw_mlme.c: Fix unbalanced
 braces around else.
Message-ID: <20190318135521.GA7342@kroah.com>
References: <20190318125918.13149-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190318125918.13149-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Mon, Mar 18, 2019 at 06:29:18PM +0530, Sanjana Sanikommu wrote:
> Fix unbalanced braces after else statement.
> Issue found by checkpatch.pl semantic patch results for rtw_mlme.c
> 
> CHECK: Unbalanced braces around else statement.
> 
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_mlme.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> index ca0cf8a86671..cbee02a86d22 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> @@ -1111,9 +1111,9 @@ static u8 search_max_mac_id(struct adapter *padapter)
>  				break;
>  		}
>  		mac_id = aid + 1;
> -	} else
> +	} else {
>  #endif
> -	{/* adhoc  id =  31~2 */
> +/* adhoc  id =  31~2 */

Never put anything in the first column within a function, unless it is a
jump label.  This isn't ok, but most importantly, I think you broke the
build.  The { is in that location for a reason, due to the #endif above
it, and can not be changed.

Please always think about the checkpatch changes you are making and do
not just blindly do them.

thanks,

greg k-h

