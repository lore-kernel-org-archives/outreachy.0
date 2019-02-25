X-GM-THRID: 6661982581807906816
X-Received: by 2002:aa7:81c8:: with SMTP id c8mr7189576pfn.102.1551117545453;
        Mon, 25 Feb 2019 09:59:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a514:: with SMTP id s20ls7336429plq.0.gmail; Mon, 25
 Feb 2019 09:59:04 -0800 (PST)
X-Google-Smtp-Source: AHgI3IY6w5ZsvO89dfAfZmfUsCBgo9Yei+GfqCGhkUld6YHW690eZrGfSH5gvBCryM6sRfai4nzn
X-Received: by 2002:a17:902:c6b:: with SMTP id 98mr113272pls.24.1551117544693;
        Mon, 25 Feb 2019 09:59:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551117544; cv=none;
        d=google.com; s=arc-20160816;
        b=pt7p570OiTKEkr9KLFgOHifhuifZKjGUVcaHsFA4BrS3pwMeG4RX4AMivM9h6kUN8+
         RF2NKb9t1xupP19yRUvienU80evGPtxhQG8fiNnwHC3RSItNTJpw2QqWFNtjorLHX42n
         dJ5JD2ygN1h6vB0gnkJ5mhq4yYbXWWkGiv9TXNYXklMMEJXoj0jMItV4yqkHYIFbOPYQ
         b84M6flk0kTHwUGv2Tjfg+p3z2ppRE3+OzHxa4JHJS3X+seEkta0jcESojHcfcxxo2zp
         3hLhVHHoeY2fa1iocjJYliEOYrb5ntzxMlfNhCQCgqL5RpOELAf2oJvL3LX55rCmqslT
         CfIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=f/ug1VXjsKz/LnCfF+k7IjJ3Wr2hWerL0LFH11GJ0JA=;
        b=V8BsbHlfYb8FzI9L4OSXhdPlOwTLzm6zQk24pweG7qMmjZpN3esafFERE14o30VNmx
         Z0bm9urJPEHXJIAQXfefZZSdt74bW0oyFl+3qTy/MgKEr5HxcofEoUF2mSZAeC3MmsvD
         vrMyVoZZKzvcEkfTuCvWg2IwPwK2cZ7dL8HptG3xBCLmJBEkRzu8MJftZg97tEuyXAFA
         oJa7OqhuUZ4wX8DTnKggDdUnjFViy5OeXewXwP3e//PQBK2iWkCW95paqyk2sNeFqAkY
         2XC/3/7hsELTKI69d8mbFV7Z9MobLl8FFMMJtSVF8NGY1JHGOIssUe4DVvyOoacEBIjv
         0grQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LNLCDoYn;
       spf=pass (google.com: domain of srs0=mf0b=ra=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=mF0B=RA=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=mF0B=RA=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q140si493582pgq.2.2019.02.25.09.59.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 09:59:04 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=mf0b=ra=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LNLCDoYn;
       spf=pass (google.com: domain of srs0=mf0b=ra=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=mF0B=RA=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DE69B2084D;
	Mon, 25 Feb 2019 17:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551117544;
	bh=KwuuwiuCLUju5r0nXn1O33SlkdfBEf6FJ+kUlcENKyk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LNLCDoYnZ1iOa3eVpS7YYCyfaIiICc7MPmY0ach65W1NveNVTOOpAednpcOtOQFIY
	 glN37q96jB95fiFwiiBcqLoYm5LzgsaCVTwmEdJYLfJHq/7uA3jI4x0aQjCVwZEUaf
	 F5QX5rowJNsErugHXCQTtTenzUlr2ahvCWrKE7w8=
Date: Mon, 25 Feb 2019 18:59:02 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Larry Finger <Larry.Finger@lwfinger.net>
Subject: Re: [RFC] Staging: rtlwifi: rtl8822be: Use __func__ instead of func
 name
Message-ID: <20190225175902.GB30288@kroah.com>
References: <20190225165435.12474-1-bhanusreemahesh@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190225165435.12474-1-bhanusreemahesh@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Mon, Feb 25, 2019 at 10:24:35PM +0530, Bhanusree Pola wrote:
> Fix checkpatch warning:
> WARNING: Prefer using '"%s...", __func__' to using 'rtl8822be_set_fw_rsvdpagepkt', this function's name, in a string
> 
> Use __func__ instead of using complete function name.
> Avoid line over 80 characters
> 
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/rtlwifi/rtl8822be/fw.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Why is this a "RFC"?

Personally, I ignore those types of patches as the author obviously
doesn't think they are good enough to be applied :)

thanks,

greg k-h

