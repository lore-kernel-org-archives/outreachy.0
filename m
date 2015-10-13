X-GM-THRID: 6205236713884745728
X-Received: by 10.182.221.196 with SMTP id qg4mr29898079obc.23.1444772363189;
        Tue, 13 Oct 2015 14:39:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.168.199 with SMTP id e68ls794914ioj.26.gmail; Tue, 13 Oct
 2015 14:39:22 -0700 (PDT)
X-Received: by 10.66.227.166 with SMTP id sb6mr30720826pac.0.1444772362941;
        Tue, 13 Oct 2015 14:39:22 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pe1si504967pac.2.2015.10.13.14.39.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 14:39:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (50-76-40-150-ip-static.hfc.comcastbusiness.net [50.76.40.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 8AE3597;
	Tue, 13 Oct 2015 21:39:22 +0000 (UTC)
Date: Tue, 13 Oct 2015 14:39:21 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: host_interface:
 Remove unused enum
Message-ID: <20151013213921.GA31237@kroah.com>
References: <20151013204726.GA9714@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151013204726.GA9714@ubuntu>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 14, 2015 at 02:17:27AM +0530, Shivani Bhardwaj wrote:
> Remove unused enum scan_conn_timer and its occurences as it is not used
> anywhere in the code.
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/wilc1000/host_interface.c | 9 ---------
>  1 file changed, 9 deletions(-)

There is too much "fuzz" to apply this properly, which means this hasn't
been made against my latest branch, please rebase your patch and resend.

thanks,

greg k-h

