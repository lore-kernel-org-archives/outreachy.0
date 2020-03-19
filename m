X-GM-THRID: 6805913239014080512
X-Received: by 2002:a62:19d8:: with SMTP id 207mr4326657pfz.278.1584626910235;
        Thu, 19 Mar 2020 07:08:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:a35b:: with SMTP id v27ls1602481pgn.6.gmail; Thu, 19 Mar
 2020 07:08:28 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtkNNtxa6MiB+/4KFypPdgTzZ6MUkn+c+ZmcJfSxMe4dEqij3jT2bsrk846Dy6TgCaEP8ZL
X-Received: by 2002:a62:76c3:: with SMTP id r186mr4214458pfc.303.1584626908706;
        Thu, 19 Mar 2020 07:08:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584626908; cv=none;
        d=google.com; s=arc-20160816;
        b=Er5jKLNRktcT+6sCznGAlwr0fmprL22ql2duzoS2VP9KXCMLhd/Sbfi7EITL9HuHNU
         X/c4M1Mn6Sc8oheFzXNUy9w0rnQ+w7/nMWqzDLJlAAX2fKclQwf0ikhXk6nQK2iBH2mA
         zz0mMm5CFtPJeZjdp0BJPIgMJKp5Vql+YsA8Gf1zba1vVP3zBunDB67HWEJgrFw6+z/G
         QkMEBCrntwcam4D4fyk+dfRZZcfagmAuoPjFATARvF6a7XQOmdyDC5ABFMC14XoqJGuA
         DDZpYdqy6c9pyFXiCxlVsiwTzy87pdRL6nsUT6p2mAxaekWUMB8GmBTlJRyYB80wVfg3
         7tyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tXL89U5qFiqEFHJ6bxjquqs8sEVFMDEIk54VyxX3kak=;
        b=qnJoKrQrHJ11QJMPL/jvIVeHpBA7obEe6OoeuhTOmunZDfelW0EKV22he5xvHes+rS
         lb+3ni8DIFQYsJPaUJoMU49GxwaJXaAbxRMGaMUnE526EHL1CADEqzikRiGtS4wLsHYQ
         zTUDM5C8N77Yde3U5EqOdkCeCh52KBwPG4gg27h0Cwsw2+4afSLVhKN1tJwq81MivUuh
         SP3CB6YsPmlvRWZ6rccO5BuN4u2V1XS7tdFhw3PboQrHpllGUU0vXtqKApBLxR8m1Bn2
         ui0rZzQXjGdkmthxdbnMb2ygBgWF1kqZYQUzB+ZXDhzhV34/EG8CKCevoq7TKrM66fur
         vTmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OGl0IZnB;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u15si119279pjm.1.2020.03.19.07.08.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 07:08:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OGl0IZnB;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0B4642137B;
	Thu, 19 Mar 2020 14:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584626908;
	bh=VpSg+xHlzQnKXZ0niKRPqKBpHrAu+hu84pB8VRtynOU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OGl0IZnBJuUArjuczfC4ypfY0eaeYpuPCIHe+UQYkinf6TrRZqcdK2ZFsYYuYq5OZ
	 yCvnXzsLAw18H2FoKX5EZ20H3Y5foC52fZVF4m4+Htpx5aCPYCGMH6ohfxqka9LOSV
	 gbGRKDLdjVK4p0AOfDIriIKZClJ3ExfnyzaZxN3M=
Date: Thu, 19 Mar 2020 15:08:25 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH 2/2] staging: rtl8723bs: os_dep: Correct long line
 comments
Message-ID: <20200319140825.GC4192874@kroah.com>
References: <cover.1584624834.git.vkor@vkten.in>
 <96f4bde2df7cea5309398a6fdd5d52836d5ae914.1584624834.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <96f4bde2df7cea5309398a6fdd5d52836d5ae914.1584624834.git.vkor@vkten.in>

On Thu, Mar 19, 2020 at 07:09:00PM +0530, R Veera Kumar wrote:
> Correct long line comments to respect 80 character line
> limit.
> 
> Signed-off-by: R Veera Kumar <vkor@vkten.in>
> ---
>  drivers/staging/rtl8723bs/os_dep/recv_linux.c | 27 ++++++++++++++-----
>  1 file changed, 21 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> index a6491f163272..8296ea03ecde 100644
> --- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> @@ -35,7 +35,9 @@ void rtw_os_recv_resource_free(struct recv_priv *precvpriv)
>  
>  	for (i = 0; i < NR_RECVFRAME; i++) {
>  		if (precvframe->u.hdr.pkt) {
> -			dev_kfree_skb_any(precvframe->u.hdr.pkt);/* free skb by driver */
> +
> +			/* free skb by driver */
> +			dev_kfree_skb_any(precvframe->u.hdr.pkt);

Why did you add an extra blank line for no reason?

Be careful.

thanks,

greg k-h

