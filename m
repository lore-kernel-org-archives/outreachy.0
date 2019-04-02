X-GM-THRID: 6674267883353145344
X-Received: by 2002:a63:f14f:: with SMTP id o15mr946670pgk.67.1554184574985;
        Mon, 01 Apr 2019 22:56:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9347:: with SMTP id g7ls4983953plp.7.gmail; Mon, 01
 Apr 2019 22:56:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyzuU5GxSNtcIppm0ypeWfsFLESEpqW/Q/L5viixBWvxa4jgJKj2A2gnK5icV3I5Gb5Q6qZ
X-Received: by 2002:a17:902:722:: with SMTP id 31mr2052617pli.113.1554184574460;
        Mon, 01 Apr 2019 22:56:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554184574; cv=none;
        d=google.com; s=arc-20160816;
        b=0FUcYLqLg9EY1riSqDz8GD/JMuzEmqxfN9Y+Fll41hGBcoz4DO6oxFvRFiD3XUVQ2m
         6s9fjnc3rkbIyOXa70F3l0RCn3UJkKuefZwbquhJMp5WCQ74pZafPLbW3eupevvUNbOQ
         pPPojGWl8Jl7o45kEGNrLFRmHEaBJ3lc7xeE2WY+KB1f+R+VDqa6vsDxAElFjRLfPYLW
         jhdA67c2pKEPtNROk2k+gPlKLzF5E7Gsw1+0yve5KqWpa2uMzJrnQq6BslBYcCMMdNVN
         7TnMXa5xojnBe0/+h4SffHffYot99nbVcfzVgepAs5Wp1n5D0WE+adrceFqbFPX3A/kS
         TYDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=BnT8qc88A+MHeoksFA4zabq9RYAoSLsIGB8hZj9wiRA=;
        b=EbqPpSbEyrjRDbwX3oy0fjI6fMO7K9W3P0SQw2ejL7ZhkCjd811MaYz4O5nVwPS05p
         MfPDla1wwyV9a4VXUxjeNu+lzIMxU7Rw4OIxXZG7Y1LOvJD5I872MJYNSSlHEJZ3nmvU
         mil6QxEgnQd/WHOl38TacNly01FEVOWXrsnzRAbOt0pXvj7yFHoXn25P8XZm4xnW4Ahl
         i850jxHCTsC1yYvKJohSI5kjkPesC4724ZDHjUis7FhLPIrdpFY1Da9nuHOJXQhxSldC
         3qJB3SoecfE4cXKM1p914k4poCom2rz5NM6mV6T30KfCJP4MtYSLoaD1PHSFhOubndYF
         qN8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="M/LUQ/m3";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g13si706981pfm.1.2019.04.01.22.56.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 22:56:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="M/LUQ/m3";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BAC392084C;
	Tue,  2 Apr 2019 05:56:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1554184574;
	bh=M1pzNjItfcDsJUIUkaLSqplGk72eZgb5MEh3r+nrXy4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M/LUQ/m3AOs1TwKY/ixiQZu+F4VQlsPuTdIvo28FgrrKZ6qusVNTjgS/Lt0CbFLpn
	 2JuFaADsamziEUueInXhpVpquJuZU7k9uiV7BTi3e2fA1/cQXKWIt7Qm+au7/DzKck
	 xWj+JWFSRhH5f0NXJB7/3BC5gieMRqPRq90QM74k=
Date: Tue, 2 Apr 2019 07:56:08 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Himadri Pandya <himadri18.07@gmail.com>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4 3/6] staging: rtl8712: use list_entry in function
 _free_network_queue
Message-ID: <20190402055608.GG14075@kroah.com>
References: <20190401200955.98744-1-himadri18.07@gmail.com>
 <20190401200955.98744-4-himadri18.07@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190401200955.98744-4-himadri18.07@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Tue, Apr 02, 2019 at 01:39:52AM +0530, Himadri Pandya wrote:
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
> index 6912d73e8172..e0b4b8fbcc0e 100644
> --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> @@ -162,7 +162,7 @@ static void _free_network_queue(struct _adapter *padapter)
>  	phead = &scanned_queue->queue;
>  	plist = phead->next;
>  	while (!end_of_queue_search(phead, plist)) {
> -		pnetwork = container_of(plist, struct wlan_network, list);
> +		pnetwork = list_entry(plist, struct wlan_network, list);

Very odd, I think you can use list_for_each_entry() here too, but be
careful to verify it, I don't know what end_of_queue_search() is trying
to do.

thanks,

greg k-h

