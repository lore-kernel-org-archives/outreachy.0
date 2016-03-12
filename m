X-GM-THRID: 6261204257874116608
X-Received: by 10.182.33.42 with SMTP id o10mr12631240obi.12.1457828453633;
        Sat, 12 Mar 2016 16:20:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.90.71 with SMTP id w65ls2977661qgd.6.gmail; Sat, 12 Mar
 2016 16:20:53 -0800 (PST)
X-Received: by 10.31.174.2 with SMTP id x2mr12767072vke.13.1457828453112;
        Sat, 12 Mar 2016 16:20:53 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h69si1096318pfj.0.2016.03.12.16.20.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 16:20:53 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [172.76.132.118])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C36BBC97;
	Sun, 13 Mar 2016 00:20:51 +0000 (UTC)
Date: Sat, 12 Mar 2016 15:47:37 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/4] staging: wilc1000: Fix line over
 80 characters
Message-ID: <20160312234737.GA3537@kroah.com>
References: <cover.1457800084.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457800084.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Mar 12, 2016 at 10:00:04PM +0530, Anchal Jain wrote:
> staging: wilc1000: Fix line over 80 characters
> staging: wilc1000: Fix line over 80 characters
> staging: wilc1000: Fix line over 80 characters
> staging: wilc1000: Fix line over 80 characters
> 
> 
> Anchal Jain (4):
>   staging: wilc1000: Fix line over 80 characters
>   staging: wilc1000: Fix line over 80 characters
>   staging: wilc1000: Fix line over 80 characters
>   staging: wilc1000: Fix line over 80 characters

You can't send 4 patches all with the same commit message, yet doing
different things, I can't accept that, sorry.  Please fix up and make
them unique.

greg k-h

