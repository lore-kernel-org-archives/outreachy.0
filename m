X-GM-THRID: 6808660671532630016
X-Received: by 2002:ab0:2159:: with SMTP id t25mr8635181ual.125.1585291069794;
        Thu, 26 Mar 2020 23:37:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:9acd:: with SMTP id c196ls515115vke.6.gmail; Thu, 26 Mar
 2020 23:37:48 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvQtsYTjl+7ttULtpIeHLw1fmQTlL71RqVTXgy5sB0crZ5MjssVOPsWkNcCHxZldeZinW/k
X-Received: by 2002:a1f:ee05:: with SMTP id m5mr10262374vkh.9.1585291068222;
        Thu, 26 Mar 2020 23:37:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585291068; cv=none;
        d=google.com; s=arc-20160816;
        b=ZzjVylzvAi/h8GFDTfsZa9cz9j2pxSi4/xudazH7mukeLSw3AVQLU6kT3RPl0nn2PE
         g6KlaWMnbSSuHrxlKDdBcphoGu1p4u4qkIteUvdLaUdNjskBEPAn7yn3hJb+RRxYmtv+
         Svtb/rY/XUbks5U5kPAjN+WGFfHOqYs0G2PSppx21IZypEZn63n2FpL5iECU6Cyu7tUa
         tPj2mgFb5APf/wO0kPyv1AzZUJyEJV+hpygU79cRwvoPgor8Tt/btn+J7PTtQB67gIYX
         VpYf3gsiMJeN2cpMcBWUiLu8R74pRCKW/+5JLt9ttMkQp15+nUWiQgKvkMZ3nV6202lt
         LWOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=I7AwgXO9Xc7+To4Xnzy8VLW7NaxCht360T4VaRbsVF4=;
        b=S3PE06QwxvtfET75Te1n1KAKFQUwDYzEb0eO2u6zDx1yFvIi342MQd9QnBLEjz4aaA
         YYZ0ihK4iKUNkFb3ySuYyxf3qSevl2iujAqI7/m8P2Wj+PChc5+hBfijfSXROQBgTArP
         bG1ut41pIukbMFIQi/Ygbv4OqD1wZMwKKaCJR+5XfmLNFqCnr7gHJEiL98ol0fJTor4H
         0MwNYVDHN2b6q8OYXinZGeAni1s3IxM8+LEXSkZ9wOVy05mdrUL8IItWKX8yZGsI233B
         +ws64kOHGMGtW2PiNK+R6ldlcsYg2y5vmG8DgHrGdOrkNQmi3ho+Dq5iSDHkmjL9thMD
         G5Uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=z2wlhuSQ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g4si273593vke.3.2020.03.26.23.37.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 23:37:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=z2wlhuSQ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 456F22072F;
	Fri, 27 Mar 2020 06:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585291067;
	bh=jb45ddwWCWt3oYix/TTQccKr1xOreABDE+oBVokNodU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=z2wlhuSQf/+k3K4Irs0oTaSz710F9W7cV8h8JKsSDaed91T1lR13bGZbemZ80klRQ
	 7qqCvl1gOUcr7xWub+sYdlZF+EAcxAWV3+zsiwVNKqZrvOG5QwEvn22I6n9PQzs2pk
	 VnM7rNqoI6yyrGMYeuSWm3ANp/xANZ5WV1aDS0i0=
Date: Fri, 27 Mar 2020 07:37:44 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com, teddy.wang@siliconmotion.com,
	sudipm.mukherjee@gmail.com
Subject: Re: [PATCH] staging: sm750fb: no spaces before tabs
Message-ID: <20200327063744.GI1601217@kroah.com>
References: <20200326232041.GA29979@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200326232041.GA29979@siyah2>

On Fri, Mar 27, 2020 at 02:20:41AM +0300, Gokce Kuler wrote:
> Add a space to follow the Linux kernel coding conventions.
> 
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750_cursor.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/sm750fb/sm750_cursor.c b/drivers/staging/sm750fb/sm750_cursor.c
> index b67c545..94e9dd8c 100644
> --- a/drivers/staging/sm750fb/sm750_cursor.c
> +++ b/drivers/staging/sm750fb/sm750_cursor.c
> @@ -117,7 +117,7 @@ void sm750_hw_cursor_setData(struct lynx_cursor *cursor, u16 rop,
>  
>  				/* 2 stands for forecolor and 1 for backcolor */
>  				data |= ((opr & (0x80 >> j)) ? 2 : 1) <<
> -				       	(j * 2);
> +				       	 (j * 2);

The original is correct here, why is checkpatch complaining?

thanks,

greg k-h

