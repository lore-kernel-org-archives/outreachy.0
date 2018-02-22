X-GM-THRID: 6524718047469502464
X-Received: by 10.223.157.196 with SMTP id q4mr764489wre.23.1519321062361;
        Thu, 22 Feb 2018 09:37:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.129.141 with SMTP id c135ls935923wmd.11.canary-gmail; Thu,
 22 Feb 2018 09:37:41 -0800 (PST)
X-Google-Smtp-Source: AH8x227I+pbIi3LBNhPsVJWFpAA3GrsqhmWmFF4MTrge3N/cAwlMEzjkEVYfnDpovsk5uZbAso2y
X-Received: by 10.28.69.194 with SMTP id l63mr665756wmi.18.1519321061191;
        Thu, 22 Feb 2018 09:37:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519321061; cv=none;
        d=google.com; s=arc-20160816;
        b=CZbWVIqizvxEO1Xqk4Zr9jfoe6cZamHhnD0Gzw0uaWSuz+Pvp8IiajChoeUSz3Agim
         FeKRZf9kSDeWg6w5PxJd/rfB2a4ouXtx6J3/lMKcZUs5+sjKg1uPV5cbTeBLf/CWbTpX
         SWEbROoiUUwpPpOAYDks/Ym5p0l+m6idLvEgQD5ut7KYIGqnmhJDPjOHa/GaHd/EzlcJ
         RCjdG4Q/HfIjduaP5LJjdebFzrUTQTHSnDlrX/yTd25+AUu9f5KegD2Wf6YZKn4ADBmT
         2ch+h01YaEY3RTh05BKxK1XS/0Ka4trnZ/mthES+xjBxqpRco88AIC7/AK7T5AASXrg4
         lChw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=kKbMKsK+bGjXzsewtUrrR+ZnEASn3IWfppJCA674XYE=;
        b=vtdD807Uih28gq7s4SBFj6nfnkcCKYIO6yLbYo02ZFnBfR5rdn6S1TNypIWl2jMb4G
         mF3sTF+6aHbiH4/jwHTmuBlD1ugFrqkfACj1+sAYXD15ljWj2y/H4l6cDSDLGgoIl8Dq
         sRWBP6vm24O4zIwgQ5x0ZaPECw14xHiRE84zMlaGK7WxLKIe9MwWHZoG0af3jGQuWtCd
         17BIGS/YxYSRl2XLgY6y1s42D//1uEdHI2daHyA8PNze6DbJw+K3mqjeWqLekKS59T7X
         mxZmELOOCEUHFs+E80nWO1aKcvdweKT6HTl8NMG9+iwupL1np/3Yad4AV6cXL4uIjA0i
         j/eA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id r7si89106wmc.4.2018.02.22.09.37.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Feb 2018 09:37:41 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12258-90.w90-92.abo.wanadoo.fr [90.92.71.90])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 79CA7EE5;
	Thu, 22 Feb 2018 17:37:39 +0000 (UTC)
Date: Thu, 22 Feb 2018 18:37:40 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] xgif: Fixed Line Splitting Issue
Message-ID: <20180222173740.GA22317@kroah.com>
References: <1519154288-490-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1519154288-490-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Mutt/1.9.3 (2018-01-21)

On Wed, Feb 21, 2018 at 12:48:08AM +0530, Nishka Dasgupta wrote:
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> ---
>  reply1.txt | 7 -------
>  reply2.txt | 7 -------
>  2 files changed, 14 deletions(-)
>  delete mode 100644 reply1.txt
>  delete mode 100644 reply2.txt

diffing 2 replies is not a valid kernel patch :(

Did something go really wrong here?

greg k-h

