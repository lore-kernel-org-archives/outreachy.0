X-GM-THRID: 9152848986112
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,56524335c2ab2304
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.230.39 with SMTP id i37mr85577499yhq.47.1426862511879;
        Fri, 20 Mar 2015 07:41:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.154 with SMTP id v26ls1273546iov.99.gmail; Fri, 20 Mar
 2015 07:41:51 -0700 (PDT)
X-Received: by 10.66.171.9 with SMTP id aq9mr89731280pac.20.1426862511686;
        Fri, 20 Mar 2015 07:41:51 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gu4si850676pac.1.2015.03.20.07.41.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 07:41:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (unknown [31.221.94.139])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 06385ACF;
	Fri, 20 Mar 2015 14:41:50 +0000 (UTC)
Date: Fri, 20 Mar 2015 13:39:33 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Cristina Opriceana <cristina.opriceana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] Staging: iio: Place driver in
 sleep mode on error
Message-ID: <20150320123933.GA2001@kroah.com>
References: <cover.1426790651.git.cristina.opriceana@gmail.com>
 <ff210f9a653e92e158858d4beef1d9dc38106c63.1426790651.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ff210f9a653e92e158858d4beef1d9dc38106c63.1426790651.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 19, 2015 at 09:19:08PM +0200, Cristina Opriceana wrote:
> Added sleep_mode label, on which the device enters sleep mode if
> encounters an error after initialization. This helps saving energy
> consumption.
> 
> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
> ---
>  drivers/staging/iio/magnetometer/hmc5843_core.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)

This series doesn't apply, and also, if forced, breaks the build :(

Please fix up and resend.

thanks,

greg k-h

