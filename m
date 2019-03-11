X-GM-THRID: 6666518955761336320
X-Received: by 2002:a25:911:: with SMTP id 17mr7917403ybj.67.1552345015819;
        Mon, 11 Mar 2019 15:56:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:b245:: with SMTP id q66ls7668019ywh.10.gmail; Mon, 11
 Mar 2019 15:56:55 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy1iDy7BfCCe93+Qpo5V7D45Y4aEfR+eBrcgIsB/yTVIGtfpENJ2FcnmUI4wbj74jBzChm5
X-Received: by 2002:a81:8546:: with SMTP id v67mr15654608ywf.1.1552345015025;
        Mon, 11 Mar 2019 15:56:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552345015; cv=none;
        d=google.com; s=arc-20160816;
        b=iErFwkvB0usu8BsqFLeo9GNAjf3YFQ0X7Keqx8oKrKwpPr60wqajmzF+Yms6fM12OU
         noIMBQbPfJXqvsFiGtnKfJSbdNGuZwpLEmCauM9SlrM9foW3ipbQqBOWjcGVNe4uIQuZ
         j83J3GsrLAwiW4go9qRbhz/y+4Agd2MuEcMcYE+iHdCt0GxO7IFvapgmfoA4hZ+F9Ric
         g7UEtqWQo0DYP+YVTz9VNeY38MujVdeu2O3IFtvrHj2gX5ou5f+dLLHD/CZyGCrlaO8N
         5pt3ypL16LvPXesIE5QTsX1r5NC0NYEausxN6cUVncCbZsDcz05oN8dYJIQQnEKa8Y4U
         n2pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=VMeyD+zQULsZKBUSn9Ng0Wml+YRtNS6xBW7RqHEpGtE=;
        b=oT5T7uk2QBXX7jHjmRgKb5WJIbfmc0KPV0rEkmo96yDZT+1l+43F7YvcsRpm421wx1
         KJk4F6SscXur9zXDvyxe104MrdAHjZZLgsnsCCECm3nSlqMY5DXn6z1D66HxNfkES4FA
         EPpV4+URpMs3C5KI+adB934mFV5eVDxbmhXLx0rL/qCrkhhWpIsS0EhcREGWuwbDVugJ
         SHAb6wCpldx6yR5nlxnB+o03KtmDxGjKN7zaQ57UpAJzE5nM32n3Nvgvo2P4a8EU9XkI
         APaBdLl21Ewyp8NlmnP8yEtUwzfDVXVJWKX2QcN6/R92g0tZhfoslZ/gHyz6M9b4ZmoE
         eXag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=l9WSnVTz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e23si307854ybb.1.2019.03.11.15.56.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 15:56:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=l9WSnVTz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.133.8.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E514A2087C;
	Mon, 11 Mar 2019 22:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552345014;
	bh=ft2TeJN893FFwDTI+rT350NEvQfQo1SphldkpFcb1TQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=l9WSnVTzXja1tfybzVwe3IaWit4UoUHtUqMvlwDHc1qx2xEWzZhoGT8jMDFk0PD2n
	 oAIJekrhYTOHQTcnhbAgUf1fao/uNf1D4/XWTi6xf6dpu0SgkerwjCmYOS3KxEJBzs
	 V7ib0aqRUOZXeeg99c31PbbQ6maZPWawQvYT3BuE=
Date: Mon, 11 Mar 2019 15:56:53 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Fix spinlock_t definition without comment warning
Message-ID: <20190311225653.GA1008@kroah.com>
References: <20190309221810.25936-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190309221810.25936-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sat, Mar 09, 2019 at 10:18:10PM +0000, Jules Irenge wrote:
> Fix checkpatch issue: "CHECK: spinlock_t definition without comment".
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/gdm724x/gdm_mux.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/gdm724x/gdm_mux.h b/drivers/staging/gdm724x/gdm_mux.h
> index 51c22e3d8aeb..f1169d7e10c1 100644
> --- a/drivers/staging/gdm724x/gdm_mux.h
> +++ b/drivers/staging/gdm724x/gdm_mux.h
> @@ -60,7 +60,7 @@ struct rx_cxt {
>  	struct list_head to_host_list;
>  	struct list_head rx_submit_list;
>  	struct list_head rx_free_list;
> -	spinlock_t to_host_lock;
> +	spinlock_t to_host_lock; /* spinlock for to_host command handling */

Are you sure about this?  Please document why this is true somehow in
the changelog text so we feel good about it :)

Also, the subject: needs to be fixed up to show the subsystem (staging),
and the driver name.  See the other patches on the mailing list for the
proper format.

thanks,

greg k-h

>  	spinlock_t submit_list_lock;
>  	spinlock_t free_list_lock;
>  };
> -- 
> 2.20.1
> 

