X-GM-THRID: 6671711882278076416
X-Received: by 2002:a62:1783:: with SMTP id 125mr628301pfx.131.1553876030418;
        Fri, 29 Mar 2019 09:13:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:ff24:: with SMTP id k36ls1165751pgi.2.gmail; Fri, 29 Mar
 2019 09:13:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwZ/WpVw+UGDLRztwwfVl2GzXQ9c4Oiz+sMHUqomyGKj9RNYTfxuGGs64wG7AC0vcWANvOm
X-Received: by 2002:a63:6786:: with SMTP id b128mr551129pgc.122.1553876029610;
        Fri, 29 Mar 2019 09:13:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553876029; cv=none;
        d=google.com; s=arc-20160816;
        b=MDbsDJSOYVmzAvRBv8UcKn2gwsQwspCAZqKgXDJf9PdPHWXLgKoP4GPXmDpzp6jiNJ
         ZZFJv78Zb8osq0QoJhcdLZIw7x6NycPwyNIXLv1+Gp56RRJT98lz1vXM8Me5axW7B6r9
         l0vBeQKSeWRmwY3/MC71mkSrIoJysiOyZX2neQZFIbCWLbJUZs0rNNniLTie5ZR2yJ03
         XrPjChWfDCt/j9ySOQDoBihj1u3RJ3Aq/nBh+gpCpZ/Ykzc3b8VpwjYKq/L6k5nKiwqa
         QdvDYzI3L6gZ579BWQqqJI09DMQ7CTyEY2cd66UNanHhJ4Ued+CK9uW9E7kYYXTTJ+GX
         jdUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=NyiP1micdJRePjA0wotE5qqSb2DW3EOcg5iG+0Ud65w=;
        b=QdeHOhpAvEyRbM43lkvcRUCRs7YJP9bU9fCfT0CxeCyy7kXDabovFsSmrH7vpbKFGM
         lM7oQiptsEPEqljnXLE/poGzyP4/+qj7Mz+RHzY8N/1Xe2qCkdl0q2rq7vptg322TSqD
         Yej9nhxx047JbzJZ0x+4IEpey7noufbjSeJLRfkm4iU3eOf2pwQAtTRvM4q3JuBQOJnG
         LyEqPCBZH3AqsCIf2sxzjDS7BjPgOzSGAoUoRz2HafysOiNuJ70Oq23sYg+BYUg4QiJx
         iSz0VlTftMG1p1d0RBBi5PdwXyTHS5VPocCbjJpxAGTNAVfpXsi+bRAKYDnyP8qqrZen
         4+gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UKVaMvd7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k70si104228pfc.0.2019.03.29.09.13.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 09:13:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UKVaMvd7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D9B38218A3;
	Fri, 29 Mar 2019 16:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553876029;
	bh=tb4TZ20AgZaYx03hBL83dD81firsdJmZhbIS/LlEr7E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UKVaMvd7q05E90a/f+Ac1/l6K8wAURZIyqg2hDBNBGj0NOTA8gWLvUZiUIK51pc0J
	 deG+s+MKFyYJwIoKz2qifEiU9fpTTs4MilHbU3ybp6gjppqdATGQKGfb4sm4Ur3UE2
	 ljfKE5wwoIVb0n6O5Q8EG3TYzmYLY8m7v0BeDw4E=
Date: Fri, 29 Mar 2019 17:13:46 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatsala Narang <vatsalanarang@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: rtl8723bs: include: Fix identation issue
Message-ID: <20190329161346.GB540@kroah.com>
References: <20190328184523.4480-1-vatsalanarang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190328184523.4480-1-vatsalanarang@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Fri, Mar 29, 2019 at 12:15:23AM +0530, Vatsala Narang wrote:
> Corrected the identation of switch case to get rid of checkpatch error
> 
> Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
> ---
>  drivers/staging/rtl8723bs/include/wifi.h | 72 ++++++++++++------------
>  1 file changed, 36 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
> index 559bf2606fb7..ee1994ecbf18 100644
> --- a/drivers/staging/rtl8723bs/include/wifi.h
> +++ b/drivers/staging/rtl8723bs/include/wifi.h
> @@ -374,18 +374,18 @@ __inline static unsigned char * get_da(unsigned char *pframe)
>  	unsigned int	to_fr_ds	= (GetToDs(pframe) << 1) | GetFrDs(pframe);
>  
>  	switch (to_fr_ds) {
> -		case 0x00:	/*  ToDs = 0, FromDs = 0 */
> -			da = GetAddr1Ptr(pframe);
> -			break;
> -		case 0x01:	/*  ToDs = 0, FromDs = 1 */
> -			da = GetAddr1Ptr(pframe);
> -			break;
> -		case 0x02:	/*  ToDs = 1, FromDs = 0 */
> -			da = GetAddr3Ptr(pframe);
> -			break;
> -		default:	/*  ToDs = 1, FromDs = 1 */
> -			da = GetAddr3Ptr(pframe);
> -			break;
> +	case 0x00:	/*  ToDs = 0, FromDs = 0 */
> +		da = GetAddr1Ptr(pframe);
> +		break;
> +	case 0x01:	/*  ToDs = 0, FromDs = 1 */
> +		da = GetAddr1Ptr(pframe);
> +		break;
> +	case 0x02:	/*  ToDs = 1, FromDs = 0 */
> +		da = GetAddr3Ptr(pframe);
> +		break;
> +	default:	/*  ToDs = 1, FromDs = 1 */
> +		da = GetAddr3Ptr(pframe);
> +		break;
>  	}
>  
>  	return da;
> @@ -398,18 +398,18 @@ __inline static unsigned char * get_sa(unsigned char *pframe)
>  	unsigned int	to_fr_ds	= (GetToDs(pframe) << 1) | GetFrDs(pframe);
>  
>  	switch (to_fr_ds) {
> -		case 0x00:	/*  ToDs = 0, FromDs = 0 */
> -			sa = GetAddr2Ptr(pframe);
> -			break;
> -		case 0x01:	/*  ToDs = 0, FromDs = 1 */
> -			sa = GetAddr3Ptr(pframe);
> -			break;
> -		case 0x02:	/*  ToDs = 1, FromDs = 0 */
> -			sa = GetAddr2Ptr(pframe);
> -			break;
> -		default:	/*  ToDs = 1, FromDs = 1 */
> -			sa = GetAddr4Ptr(pframe);
> -			break;
> +	case 0x00:	/*  ToDs = 0, FromDs = 0 */
> +		sa = GetAddr2Ptr(pframe);
> +		break;
> +	case 0x01:	/*  ToDs = 0, FromDs = 1 */
> +		sa = GetAddr3Ptr(pframe);
> +		break;
> +	case 0x02:	/*  ToDs = 1, FromDs = 0 */
> +		sa = GetAddr2Ptr(pframe);
> +		break;
> +	default:	/*  ToDs = 1, FromDs = 1 */
> +		sa = GetAddr4Ptr(pframe);
> +		break;
>  	}
>  
>  	return sa;
> @@ -421,18 +421,18 @@ __inline static unsigned char * get_hdr_bssid(unsigned char *pframe)
>  	unsigned int	to_fr_ds	= (GetToDs(pframe) << 1) | GetFrDs(pframe);
>  
>  	switch (to_fr_ds) {
> -		case 0x00:	/*  ToDs = 0, FromDs = 0 */
> -			sa = GetAddr3Ptr(pframe);
> -			break;
> -		case 0x01:	/*  ToDs = 0, FromDs = 1 */
> -			sa = GetAddr2Ptr(pframe);
> -			break;
> -		case 0x02:	/*  ToDs = 1, FromDs = 0 */
> -			sa = GetAddr1Ptr(pframe);
> -			break;
> -		case 0x03:	/*  ToDs = 1, FromDs = 1 */
> -			sa = GetAddr1Ptr(pframe);
> -			break;
> +	case 0x00:	/*  ToDs = 0, FromDs = 0 */
> +		sa = GetAddr3Ptr(pframe);
> +		break;
> +	case 0x01:	/*  ToDs = 0, FromDs = 1 */
> +		sa = GetAddr2Ptr(pframe);
> +		break;
> +	case 0x02:	/*  ToDs = 1, FromDs = 0 */
> +		sa = GetAddr1Ptr(pframe);
> +		break;
> +	case 0x03:	/*  ToDs = 1, FromDs = 1 */
> +		sa = GetAddr1Ptr(pframe);
> +		break;
>  	}
>  
>  	return sa;
> -- 
> 2.17.1
> 

Patch does not apply to my staging-next branch.  Please rebase and
resend.

thanks,

greg k-h

