X-GM-THRID: 6473410411176656896
X-Received: by 10.223.134.175 with SMTP id 44mr1503480wrx.11.1508330168697;
        Wed, 18 Oct 2017 05:36:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.142.79 with SMTP id n73ls1198071wrb.3.gmail; Wed, 18 Oct
 2017 05:36:07 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+RrwdVWxA849/D/ONRKMpYorwS4mLwVaeKG1nTjvn6fr8xk8TwaB/Lm25iqf5IfMP2LautR
X-Received: by 10.28.8.71 with SMTP id 68mr774551wmi.24.1508330167932;
        Wed, 18 Oct 2017 05:36:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508330167; cv=none;
        d=google.com; s=arc-20160816;
        b=DY6+/XqAPGA3odkP050MYYe7UhB/maUc9mzOy6EA07gsI4KDFSUO2VMERs1UZh+QLx
         pTjJm62o5Y/52Ni7dSO682zFz/vhz8FYqXxxSaTOdRn8rzRBXtuUo9Db5oxYuZolLk3P
         525EUL+mmC27oTllmogQvqObv6SnBvFzS7ijffD3T54RLwP9A0i3OoLqVLylWUUHlc5I
         UZN1ITb7lZ1ootdvPvXJLchVSKx7WvTKS02CBnDbck1UTnVLSGlqZ16rxt5c+6e/QIB6
         6kGILT+fa7nW3uCWkjcJRMoutUJwOgHb2W8KjCkoWVjtxRusf6XowG4poo65nxigOYBu
         B7HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=8zALxmz6QkIoFvHvd/0FiSBRw6lAq6qRFCN8bxAdg8Q=;
        b=v8aqg4w5gefnyQJTPNx7Qg6z6TUbYeEa0kJq+hKkQtOqOcLM6Px3/E0gsrqxZAr3Dj
         52Q0KMdJPop38Z6YETSIMxvlwdyrPt/l1MUh7LPu5Pid3229GIStkpSzqoaWM6Gce5PT
         00aMO8KYn0XoMjzRibAptraJDOe8fqw/RL2nAHcpMFZqCEGObJp48pGLWf5+g3PO5eIi
         MnFgShGZgd+G9hscoZg+SeDFK7YcdZv6+lUIC7nVriVfFo0fLIPuWUfUrcOF1lqZ6oJ3
         W9X7Nc3ZhutTPh3NKyJ0s3dmYFqVLDWm7FZ9DwI0KKf4H1tJWseb50UwfxF3grwI7+Aq
         oASw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id m74si596682wma.0.2017.10.18.05.36.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 05:36:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 44466AD2;
	Wed, 18 Oct 2017 12:36:06 +0000 (UTC)
Date: Wed, 18 Oct 2017 14:36:15 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>
Subject: Re: [PATCH v3 00/10] staging: lustre: fix code styling issues and
 remove macros without users
Message-ID: <20171018123615.GA32178@kroah.com>
References: <1508328870-9416-1-git-send-email-aastha.gupta4104@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1508328870-9416-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Wed, Oct 18, 2017 at 05:44:20PM +0530, Aastha Gupta wrote:
> These patches fix:
> - multi line comment styling
> - line over 80 characters
> - macro definitions warnings by checkpatch.pl
> - drops macros without any users
> - Comparisons should place the constant on the right side
> 
> This patch series includes all the patches I sent for this driver to
> show the correct order.
> 
> Changes in v3:
> 	(as suggested by Andreas Dilger)
>         - fixed error message coding style
>         - fixed comment in ldlm_internal

Did you fix the build errors?  Please do so...

thanks,

greg k-h

