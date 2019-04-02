X-GM-THRID: 6674267883353145344
X-Received: by 2002:a67:cd89:: with SMTP id r9mr7859295vsl.27.1554184629632;
        Mon, 01 Apr 2019 22:57:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:2d4c:: with SMTP id t73ls1974466vkt.3.gmail; Mon, 01 Apr
 2019 22:57:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx3Rn7fq/jnef0MBRWcRfG1isXiTYa5AVZywnE0dMARtD9+nGgz1scxYiyOLR+j9ZjLeOZx
X-Received: by 2002:a1f:ac56:: with SMTP id v83mr7822619vke.22.1554184629057;
        Mon, 01 Apr 2019 22:57:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554184629; cv=none;
        d=google.com; s=arc-20160816;
        b=Rzlbcfle7y1CutFfuHrWW1l+YWDXm4peB8tBrWg5hvBIXyCwVRW2jDGNDsmxm7cIXn
         DKMsXwvr0soGtOijliXov4w8UfjxFzHBUkeup8tl7y1oRUSURJ3WfI6+dfi6D78R8C2w
         F4RB2nI4JCAmLT1GBHqSXoCBK1vuc3/6ty9+xR5ByU6xvjNOv101nMm0MSCm+tq4s9WS
         bXG9zP16zBsA7Lx96+KzdZhkmr/vZiHQAzYWBb/bJFPZWsSsEtc57cEeWY0kYtRgEfXw
         0U7GQb/g8IT4pZpPdJH4OilrdlFal1TRqUFyDbzXqrknn1MQCUnSqY9GtcRtkJVO7XeF
         wHxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=BoS6wDxBnrIuil7QcGObc41AXhizpa6fNMVHdn7XUP4=;
        b=Zy35b9g1LpND/cb7NjWjzUIcHglDlYdyWw84a6G96nIZMdzFk63yuDp0tC4CyRUzU3
         EjbrOW0/CO5S1TYN7eFSz8Pb+mB01/BltJ/TTFBTCzpFo/Wtf6nuytVuEASdiHxkVtDv
         awp5W+pHv5up5z1QcrPEiow9K9ZCnP9cLfsd0uiUEcD6gHCwdT4SULf91JFQKqfiaqe8
         cKQdNpNALOjpQXlEmnZTwQ0RPMnrf9y5E5y4h4u3Yz1zafNrMJQ9bHM2Fuio+whRW00O
         Jo1cjytsWiia1I0nJ5TIW4FAfjY/xHFVBpb+bIa4Z+WAgWwsHzcVbnn+O35TmgFhG8OP
         acbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=E931lHnG;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g14si402360uah.1.2019.04.01.22.57.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 22:57:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=E931lHnG;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 826432084C;
	Tue,  2 Apr 2019 05:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1554184628;
	bh=Q9nXs4eSuaaafsxMSp10GtAUnDn5Bb/k9MYMBZJzu+4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E931lHnGk3SMqofyKkoa3ZUf+mqFeiEPe2PC7tOJkJGfvmjPSC1iyxX3qRqKVc8+4
	 ENRR7q5o2N2T/TJqis33LeMXA5lC7VSAbNQ3je52+W7Jm6gfjABa1vM0qPa6Y4X5Vy
	 3v4uXVNyEopUkIz2K+6mjv0D7XdljvoYEL6raxZA=
Date: Tue, 2 Apr 2019 07:57:01 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Himadri Pandya <himadri18.07@gmail.com>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4 6/6] staging: rtl8712: use list_entry in function
 r8712_select_and_join_from_scan
Message-ID: <20190402055701.GJ14075@kroah.com>
References: <20190401200955.98744-1-himadri18.07@gmail.com>
 <20190401200955.98744-7-himadri18.07@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190401200955.98744-7-himadri18.07@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Tue, Apr 02, 2019 at 01:39:55AM +0530, Himadri Pandya wrote:
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
>  drivers/staging/rtl8712/rtl871x_mlme.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
> index 1a15c45aa83b..164422b3ac07 100644
> --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> @@ -1117,8 +1117,8 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
>  			}
>  			return _FAIL;
>  		}
> -		pnetwork = container_of(pmlmepriv->pscanned,
> -					struct wlan_network, list);
> +		pnetwork = list_entry(pmlmepriv->pscanned,
> +				      struct wlan_network, list);
>  		if (pnetwork == NULL)
>  			return _FAIL;

A list entry can not be null, so this check is very odd.


