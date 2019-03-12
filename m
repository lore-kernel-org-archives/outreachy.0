X-GM-THRID: 6667585252544741376
X-Received: by 2002:a81:4fcc:: with SMTP id d195mr18062220ywb.4.1552418165834;
        Tue, 12 Mar 2019 12:16:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:3414:: with SMTP id b20ls2294552yba.2.gmail; Tue, 12 Mar
 2019 12:16:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwgwuDa+m9S5juSsPGkn2K6pGELegXelAeuSHS0olpFhLveaPxixt/FSenGVhFErfvIGXMv
X-Received: by 2002:a25:660d:: with SMTP id a13mr10090027ybc.0.1552418164998;
        Tue, 12 Mar 2019 12:16:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552418164; cv=none;
        d=google.com; s=arc-20160816;
        b=udvf7pEKVnZ/P8rMYdlMDF1raoy/sR5eCOqXmdbUzj0AzGU3DuQmjOPpVrSX9PXsZa
         Rjcj+Iu+yDXOOHPzujt7P3866Z0ocCH4wVq4bsCvjMB3b6hufmNsBBtbXoa8ZuoV+2fk
         Y7ZWvmlcUSHyiKtw896d4F317YrEHk+LSTQpZ1RgI9kKm9HwOi9iLkxbW00ejLltBTsn
         h8yy5V601toviMraojtR3iAuUtkHl2/vg66Sc8XGQdHAFpXPGInXDNNWVpaqPtzxya2M
         vv8FNMiQIfXGoThHpi9mXM9JgZ4rLPtOkZRjjTXhDHB5f3elggwfD40Zk3yCqQPtODTM
         lReQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+tF5YCEEwXiC6t/eGG/WpLCG+fbLq/gWfl+De6VUOeM=;
        b=xQL4L0NYArOSzCtcTCCUHyG8NUad9RBFoPrnviEG6LATOvdVNGWGDvI4sJB1JJBnjS
         BJKERkqailHxG2UiWb6A4R1+taK4eoWtftB7peAe1jNMIJTQZVIfuwWWP44dy3ycV6Fq
         +BwEFyJ5HQhsupDmIipHA75K8995NSxuUCgoWv18S0OCl+SnqCSo1MBljhexvRYQTyGi
         F/qORfV3z3IgXYQ1sm+1N5zk4mX9RC9yVRwBXlEIab0cnYdySQrHSJdWtz85nNkQ6xHv
         GcNhHDOGytlBkv6W3wxOnM+cPMpAkyElVI8SNIblCBMtis2KMq9YOdNGe/X+uAlE9n7d
         czhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jNR+tD9X;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t128si466390ywa.4.2019.03.12.12.16.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 12:16:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jNR+tD9X;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.133.8.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DC2B22077B;
	Tue, 12 Mar 2019 19:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552418164;
	bh=xOusnD3lfc+CQkpL45OajFYk4zp9xp8FpX9589p7dWg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jNR+tD9XDqQcIvh4OfhawzS+0AD+C0UQo1JuaouWFXKCSAftp+sAbg+Z1GKkjc02A
	 N6QWGlUwnCWu1WFgL+vSIfqtX9nP6Ewyy0EJrqNFVqoCb902idJroX3TGwPVjC789D
	 KW3M7mKU6UmlRFbnSP7D5BRc64zsq4Ep/sLTw22A=
Date: Tue, 12 Mar 2019 12:16:02 -0700
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Shadaab G <shadaab2202@gmail.com>
Cc: Forest Bond <forest@alittletooquiet.net>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: vt6655: Update TODO & checkpatch.pl check
Message-ID: <20190312191602.GA18223@kroah.com>
References: <20190312190832.GA3330@sreyansh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190312190832.GA3330@sreyansh>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Wed, Mar 13, 2019 at 12:38:32AM +0530, Shadaab G wrote:
> This updates TODO where task of killing ttype.h is done but
> not updated. It also fixes the following checkpatch.pl check:
> 
> CHECK: spaces preferred around that '-'
> 
> Signed-off-by: Shadaab G <shadaab2202@gmail.com>

We need a "full" name for the signed-off-by line.  Do you sign documents
with just "G" as your name?

> ---
>  drivers/staging/vt6655/TODO   |  2 +-
>  drivers/staging/vt6655/rxtx.c | 48 +++++++++++++++++++++----------------------
>  2 files changed, 25 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/TODO b/drivers/staging/vt6655/TODO
> index 63607ef..462cbdd 100644
> --- a/drivers/staging/vt6655/TODO
> +++ b/drivers/staging/vt6655/TODO
> @@ -7,7 +7,7 @@ TODO:
>    - remove dead code
>    - abstract VT3253 chipset specific code
>  - add common vt665x infrastructure
> -- kill ttype.h
> +- kill ttype.h -- done


Why is this change part of the coding style change?

Shouldn't this be multiple patches?

thanks,

greg k-h

