X-GM-THRID: 6671742657236041728
X-Received: by 2002:a24:424a:: with SMTP id i71mr4773482itb.135.1553418599426;
        Sun, 24 Mar 2019 02:09:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:455f:: with SMTP id y92ls701132ita.1.canary-gmail; Sun,
 24 Mar 2019 02:09:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz2QP/iPXCssMDKAcAxKcUTeSpBsk4+CNXmN1ASjJ6eL5LRXpdikL4CZxIZ+q4GB8ZbuzqQ
X-Received: by 2002:a24:4290:: with SMTP id i138mr7436990itb.24.1553418598783;
        Sun, 24 Mar 2019 02:09:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553418598; cv=none;
        d=google.com; s=arc-20160816;
        b=p3e1VxZIfJO0oR2fyh9jsB/n6vlncRo8oa9lv514Dh9H2JWWAmY8Kd9ZGqhRZuzRYJ
         G2lKg2HoXgXg/eauIijIpEYbX3C2LK7QPNul9466w2v+Dt7d1WtmnSQbFjEbdtykit2M
         KbJdHvc37mCmfjnEafDumsctKFK+JnzgQ+XEa/FbJ07CiX0hriUBoa9+KVcKRmJkTwKa
         6J4rfsNGqIRNBXY6QXCW6VC8RatWySJEAN7Niwu7x3Dpkax3HKgv8PSPXPr1TArM2nZ/
         cWd+oBSVKxArRs25uUKeMj+HwTMIhFK+8RiSDqoCZCCCOQn0vN0UBFQF9P8xYNgYRrNn
         t0+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=CkohP9TgZOFDKwXMN5UeTDtmXd6KgY1t+Ds/ySRTDUA=;
        b=JUJSYjZbOI9NSAnjlYoY7su7bn86x/eGgocwZyrbRubRSWcmS1Efa3JCpEfSnkvzlL
         8cIt5qH5DymBhk9A2829dKaRsFgyUosx4KQZgYhkj0mUmAbDDCy3T/plqXSC8feVKsx1
         V2+jMZ2w0dvIrI75GvQzn6OQHMrePEaDFpgKALxI8vPt5WOU0hqw5rMHo5ba44TsvV7T
         CM9af+RxmE9T919xuyRnGA+wYo4ZyWx5B38RU0mmOU/wJHUzuzJmbyLmK5Bu7Iq0Dbin
         EBZD+ROTaze4sfRU1fSQwcJrpiOW5CcD7MPORAvUFyceGrptkGZpOxgxmJT8Jjmw06K5
         3wfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HLrtvAFQ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x26si658251iog.4.2019.03.24.02.09.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 02:09:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HLrtvAFQ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [89.248.140.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A146B2171F;
	Sun, 24 Mar 2019 09:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553418598;
	bh=C7ZNAzHmFqjSOJzlZpG0GjXy+cujK2VsnnnxpC08dkI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HLrtvAFQ2Wa6fHKJer2ncKI7I3NUwW/ZduGELjslWd8cNw/A2UhvG1mTI+QMivi/2
	 syVT8sYH8HEcGDot9lK7EFQv+JVMAkuQ5s+DG1tQX6bHlpcQKSXedwYi+Y71rYB2U3
	 M8ymwd+j3JIXT9bEaaZFO51isiPCGhY0FjtxJF8Q=
Date: Sun, 24 Mar 2019 10:09:55 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatsala Narang <vatsalanarang@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: rtl8192u: ieee80211: Remove unnecessary braces.
Message-ID: <20190324090955.GA7359@kroah.com>
References: <20190324000832.12027-1-vatsalanarang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190324000832.12027-1-vatsalanarang@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 24, 2019 at 05:38:32AM +0530, Vatsala Narang wrote:
> Remove braces around single statement block to get rid of checkpatch warning.
> 
> Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 11 +++--------
>  1 file changed, 3 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> index 6009fe0e1d4f..f0e6b72eb054 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> @@ -853,14 +853,10 @@ static u8 parse_subframe(struct sk_buff *skb,
>  
>  			if (skb->len != 0) {
>  				nPadding_Length = 4 - ((nSubframe_Length + ETHERNET_HEADER_SIZE) % 4);
> -				if (nPadding_Length == 4) {
> +				if (nPadding_Length == 4) 
>  					nPadding_Length = 0;
> -				}
> -
> -				if (skb->len < nPadding_Length) {
> +				if (skb->len < nPadding_Length) 
>  					return 0;
> -				}
> -
>  				skb_pull(skb, nPadding_Length);
>  			}
>  		}
> @@ -1313,9 +1309,8 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>  
>  				stats->rx_packets++;
>  				stats->rx_bytes += sub_skb->len;
> -				if (is_multicast_ether_addr(dst)) {
> +				if (is_multicast_ether_addr(dst)) 
>  					stats->multicast++;
> -				}

ALWAYS run your patches through checkpatch.pl so you do not add new
errors to the file, like you did here :(

greg k-h

