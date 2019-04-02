X-GM-THRID: 6674267883353145344
X-Received: by 2002:a17:902:968f:: with SMTP id n15mr2057677plp.75.1554184601315;
        Mon, 01 Apr 2019 22:56:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9f86:: with SMTP id g6ls5948253plq.3.gmail; Mon, 01
 Apr 2019 22:56:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw/pFtFfoIZpuGba8FrOtP+c6SilJda0STr7wiRFjUzluwSrtgG5IRBw6w8MdSZu4dpLDhG
X-Received: by 2002:a17:902:6a87:: with SMTP id n7mr2038854plk.87.1554184600801;
        Mon, 01 Apr 2019 22:56:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554184600; cv=none;
        d=google.com; s=arc-20160816;
        b=S7Ytig8xDnTSRUG6YdveAhTkg5SgyQQnd8UQFS0XNd7BuN/xIn6KLrAKbVeGMyiziK
         s6BUywM4URgjxZWB6IfsuGm1IKMfp1wttKOqRlt+R9K/YotJq69V1YSp5FXb5cm2Yhzv
         nZN6amjwKekVgHW7NPi/+9smOjNTIID1V6PFWFmHpmzXA6CT+J27eMKz2nmiwcBGOuKF
         87eTulZILurYt0Cy2AmxxCIcxygAmr5jepcqKTTYLUBCt6TzVA/SShoEGFdgIek7pdJw
         nfvcWhQiA2ZaR3OMhofTeEMyuxcxevnzV5WtM58N/3mUSUK1HdZ2zlGjTjI3ruDOxxKy
         +/8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=nky7okipHzsNdPiu+o4U48WG0IECmuuu7sMiugeoAdU=;
        b=oJjPo7GUQndmC8pmuVJTPpxM+orZH78Ig77zXW61uXtukfXqtkU/Rg1PaYd4SQD16j
         QVej8a7P6mQMO2kpyL6QbaYScYixn4ttfPaBhsgBoXuifcyXdy/XlBQUObD7IdrusL6x
         fGwvFWOdnU52WCgG2ZvyQeb34vEt83Kl4n0h8DC7A2WhpJpEwk6InpOkZdskUTnYIUst
         xcVaMytfxoGyu1VfPdisImera50x2fNifHD36594fjvFgHkQl7R36iPVA533JvHrSCBk
         TJoXe3pK7sauI7EhpTBRYfDNNpkVXy5j0TQFJklSi8kKmBtS3qDNSgcdqHL0QmRg+gVj
         bjBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BQ6yPQNr;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e124si723725pgc.3.2019.04.01.22.56.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 22:56:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BQ6yPQNr;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1670A2084C;
	Tue,  2 Apr 2019 05:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1554184600;
	bh=P1GFIbmoNn9Ztw4dz2qRC4peGjXLDDlVdnx9cd2RRiE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BQ6yPQNrg8bmLuzy95pz44dTz60ThbU4iAoh6t/UVR3R5WJsS14v8roz1KiH2qknq
	 ThvAv/Q0oNjBZ3VU8DHdKY5B/t5YAebnzvk76BZeFU0vVpnmGHCu+/dPb8wcCB3ZOH
	 1VcIsRw1VwyTeQacv1AKUCPUx5MpLwm+azl0fxZY=
Date: Tue, 2 Apr 2019 07:56:34 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Himadri Pandya <himadri18.07@gmail.com>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4 5/6] staging: rtl8712: use list_entry in function
 update_scanned_network
Message-ID: <20190402055634.GI14075@kroah.com>
References: <20190401200955.98744-1-himadri18.07@gmail.com>
 <20190401200955.98744-6-himadri18.07@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190401200955.98744-6-himadri18.07@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Tue, Apr 02, 2019 at 01:39:54AM +0530, Himadri Pandya wrote:
> struct wlan_network contains field list of type list_head. Hence,
> getting the address of wlan_network using list_entry is equivalent
> of using container_of to do the same. And to use list_entry for list
> manipulations is a better choice.
> 
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
> Changes in V4:
> 	- Change log message
> Changes in V3:
> 	- Improve log message
> ---
>  drivers/staging/rtl8712/rtl871x_mlme.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
> index 05bfc2a60eb9..1a15c45aa83b 100644
> --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> @@ -370,7 +370,7 @@ static void update_scanned_network(struct _adapter *adapter,
>  		if (end_of_queue_search(phead, plist))
>  			break;
>  
> -		pnetwork = container_of(plist, struct wlan_network, list);
> +		pnetwork = list_entry(plist, struct wlan_network, list);

And here for this loop?

