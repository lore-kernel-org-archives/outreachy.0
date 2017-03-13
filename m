X-GM-THRID: 6395629856318554112
X-Received: by 10.129.172.96 with SMTP id z32mr18705085ywj.39.1489444164909;
        Mon, 13 Mar 2017 15:29:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.143.75 with SMTP id r72ls4386271iod.30.gmail; Mon, 13 Mar
 2017 15:29:24 -0700 (PDT)
X-Received: by 10.99.55.71 with SMTP id g7mr18285590pgn.157.1489444164221;
        Mon, 13 Mar 2017 15:29:24 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 2si3384315pfx.8.2017.03.13.15.29.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 15:29:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [122.147.243.130])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 69B1EB56;
	Mon, 13 Mar 2017 22:29:23 +0000 (UTC)
Date: Tue, 14 Mar 2017 06:29:11 +0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [PATCH v3 1/3] staging: wilc1000: Declare variables to top of
Message-ID: <20170313222911.GA5186@kroah.com>
References: <20170313142926.12262-1-diaconita.tamara@gmail.com>
 <20170313142926.12262-2-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170313142926.12262-2-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Mon, Mar 13, 2017 at 04:29:24PM +0200, Tamara Diaconita wrote:
> Move declaration of variables to top of function to improve
> code readability.
> 
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
> Changes since v2:
> *Correct error of expression: from 'at top of function'
> to 'to top of function'.
> *Change tense to imperative: from 'moving declaration' to
> 'move declaration'.
> 
>  drivers/staging/wilc1000/wilc_spi.c | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)

This patch does not apply to my staging-testing branch at all.  Can you
please rebase all of these and resend them?

thanks,

greg k-h

