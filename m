X-GM-THRID: 6659981654376841216
X-Received: by 2002:a5d:8794:: with SMTP id f20mr24116161ion.32.1550649234832;
        Tue, 19 Feb 2019 23:53:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:4594:: with SMTP id o20ls219957jad.2.gmail; Tue, 19 Feb
 2019 23:53:54 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ibavbf/18m+2ObD4GphEh3k8sn+6pzMGUqtd+5d6OCoITvyYQOw4DB1qf8vvOcKSvHoWhFS
X-Received: by 2002:a02:9d52:: with SMTP id m18mr437534jal.1.1550649234110;
        Tue, 19 Feb 2019 23:53:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550649234; cv=none;
        d=google.com; s=arc-20160816;
        b=a0SUK75IJ3c/Dzc1bMvD81rsyCohc0yBivgPs1CABUHJPgLn9WCBTcpSD1kQHBx50+
         BYssBUASDk8f7A3KUNDEvTqr3Q/eUSudLtocrQCP9zG1gn60KWtJpNkW0efGuzc49QWf
         HJzxHnx070TSx7S89G8fbB+vvJpfPrdPeyvWUr1dpZFn9XvIoDy/wcD1Gr5ZZouhkHzR
         TBuKhrKQfew36ZzzJlRUIlT6g0n6H0oT/d8q8x+lm7TLOkMAH995OJnaxRg6i36sWr9K
         mAOmI1SwofmKrlDUJ7+CqgJT6rNRax0FpN6ZBPkX9/rnU1vfkhpsTWv2d20LZD70sKod
         EZCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=BHqMCIxkZOMw84nuFOHB9KPlLjhWZj/Nz6emwpgqZTA=;
        b=FuArmhIun4JyrsGvReNL6LXI/oANfWVF0zojO9hQ0AGaBl/XdYH8l0ATcsYuJNjgtU
         6QyIyktf5ALH4CBXtlwu7kA37/a60XS+K33B0GCFeEkyftS6AHPJkgZ/Mulzp/vKAm9y
         22B8BOsiTCVbddJTWuSS+beJyiiH8qJYHE9bu68ohYjlxsQhQt+g894IG2OueoxYKZY1
         ybvshN/2mqfkHypgOsU5kzBg9GU83GzSHwvnOrjgH/W46gp+cw7UjFC+hbR1Jg+3dhto
         XGg7/i5es/foJnokOqATh0niL50hz4vaLmqyekHzPMhhIzWQXLKAaZi0ErPD8b54x/6d
         m9bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Iw9RisuO;
       spf=pass (google.com: domain of srs0=vgux=q3=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=vgUX=Q3=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=vgUX=Q3=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 77si153915ita.2.2019.02.19.23.53.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 23:53:54 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=vgux=q3=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Iw9RisuO;
       spf=pass (google.com: domain of srs0=vgux=q3=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=vgUX=Q3=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (unknown [145.15.244.27])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 41B2E2083B;
	Wed, 20 Feb 2019 07:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1550649233;
	bh=5BkS3kG5CFvBRiFDUXg1BalqKw6QlSMq/poKXmRTPbQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Iw9RisuO+XdJUwHwXFn5qTeRCP148yBpPLuiOU4MJVunnFzoExsM4LYW6uqttvie4
	 aOmBr3qVKQq/KUHJrm/CWvlKjITBbk9IHbVL5V04tay842BLZJIgHmupXLP0YOWkVx
	 73FRxIhdeLX/Vqzoqhl4bFgrSZrGs19lJ4v8pAGg=
Date: Wed, 20 Feb 2019 08:53:48 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/2] Staging: rtl8192e: Avoid using bool structure members
Message-ID: <20190220075348.GA14929@kroah.com>
References: <20190220073011.GA21216@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190220073011.GA21216@bhanusree-MacBookAir>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Wed, Feb 20, 2019 at 01:00:11PM +0530, Bhanusree Pola wrote:
> Use 'u8' with bitfield instead of 'bool' to avoid alignment
> issues and remove checkpatch.pl check:
> CHECK: Avoid using bool structure members because of possible alignment
> issues
> 
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/rtl8192e/dot11d.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8192e/dot11d.h b/drivers/staging/rtl8192e/dot11d.h
> index 44f11f629922..f3e8373b1312 100644
> --- a/drivers/staging/rtl8192e/dot11d.h
> +++ b/drivers/staging/rtl8192e/dot11d.h
> @@ -29,7 +29,7 @@ enum dot11d_state {
>   */
>  
>  struct rt_dot11d_info {
> -	bool enabled;
> +	u8 enabled:1;

Ick, no, that might just have caused a lot more work to have happen to
access that variable (think about how a bool is stored and accessed vs.
a bitfield).

There's nothing wrong with this bool as-is, I would leave it alone.

thanks,

greg k-h

