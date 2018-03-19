X-GM-THRID: 6532871168257425408
X-Received: by 2002:a17:902:7883:: with SMTP id q3-v6mr4496966pll.23.1521473827971;
        Mon, 19 Mar 2018 08:37:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.251.15 with SMTP id x15ls2528474pfm.11.gmail; Mon, 19 Mar
 2018 08:37:06 -0700 (PDT)
X-Google-Smtp-Source: AG47ELtQriAxyzL1dxbkzP9HlowfNbor4+OHRKkLsSoop8prT8ivyOmIbARGihz0gEbDlxU49+0/
X-Received: by 10.99.140.76 with SMTP id q12mr3390542pgn.114.1521473826767;
        Mon, 19 Mar 2018 08:37:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521473826; cv=none;
        d=google.com; s=arc-20160816;
        b=a5K9cU+q6PjsvYHZ76edPrhJ7oqRN6ugscThQBmbuu3kzYemKJ1z2WhCcbxCsdWF/e
         fJX1blBtheLCgxEbIpVah7FAHKmmhdNRg1zS75EJqYByroBD9b6nUBFgqFahJ1XZ7oAk
         ogaGCsh3TOxUG/88wUGhvG3zGd227Jrxg3WxwbJlU/BI1KwJLNzoTsVMZBwRyjuBCrcr
         h+D+ld8NZYMyN//QkZxGFufUEGkIkaXVNQQNLeAerT0zcmDMu1aOLfOkeIlNO/l3yQWy
         Yj2dTEm08Oxe9FmrSw1v/yqjRl6DHwsaj+pW9EhD+30E5SS+N0ChKfbeYvdi8QAhNnKj
         J/nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=PHlOwytkcJ52PdqlUNs+gS6isYy9v3LVpGOE9KBygWo=;
        b=z0LP86WdvZrW+OSXhanEDUaugxTl/58Co2/juCntKhNdJO+nVeU+AsDixJJq+NzUdK
         BlG8wsCbZiUy7hEZiCwfqvb2LY9XkC+JhrGjMzrTYOEZQJr6whoruBAEAK1lioEDki4/
         Zge0cyRn+YAFVRioxZyF7mZabHMNHsl6iboEVk5I0BivumYiw3nUm0LjC35+sU7br4ru
         KrJmf8XkN2Pi429UyKuoUBz/OkjAIfkojTeic1SRTCYRsT/AyMQeEq46D6aD46WIgQSG
         AZeO1msW+xU1urh1/Qg9yOLQ+3/8Umk2wU7uzQWOxYgPubNOx9Q3NUO8YhJR+XScpEWO
         K1Wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id k9-v6si34737pll.0.2018.03.19.08.37.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Mar 2018 08:37:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12247-202.w90-92.abo.wanadoo.fr [90.92.61.202])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 3319410D9;
	Mon, 19 Mar 2018 15:37:06 +0000 (UTC)
Date: Mon, 19 Mar 2018 16:37:05 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: vc04_services: bcm2835-camera: Add blank line
 after declaration
Message-ID: <20180319153705.GA23694@kroah.com>
References: <1521052574-27793-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1521052574-27793-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 14, 2018 at 06:36:14PM +0000, Nishka Dasgupta wrote:
> Add blank line after declaration. Issue found with checkpatch.
> 
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> ---
>  drivers/staging/vc04_services/bcm2835-camera/controls.c | 1 +
>  1 file changed, 1 insertion(+)

You have sent 7 or more patches for this same driver, yet I have no idea
what order to apply the patches in :(

Please resend them properly, as a patch series, so I have a chance to
get it right :)

thanks,

greg k-h

