X-GM-THRID: 6398075563231150080
X-Received: by 10.157.40.138 with SMTP id s10mr3801242ota.97.1489670653387;
        Thu, 16 Mar 2017 06:24:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.197 with SMTP id t63ls5284512otb.7.gmail; Thu, 16 Mar
 2017 06:24:13 -0700 (PDT)
X-Received: by 10.157.34.114 with SMTP id o105mr3979603ota.48.1489670653005;
        Thu, 16 Mar 2017 06:24:13 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 2si916427pfx.8.2017.03.16.06.24.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Mar 2017 06:24:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [183.98.136.252])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 3286198C;
	Thu, 16 Mar 2017 13:24:12 +0000 (UTC)
Date: Thu, 16 Mar 2017 22:23:58 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] applications
Message-ID: <20170316132358.GA10184@kroah.com>
References: <alpine.DEB.2.20.1703161332510.3168@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703161332510.3168@hadrien>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Thu, Mar 16, 2017 at 01:40:09PM +0100, Julia Lawall wrote:
> Hello,
> 
> The end of the application period is coming up in two weeks (March 30).
> Greg doesn't take any more patches from the mailing list after the end of
> the application period, so the patches that count for your application are
> essentially those that are accepted up to that time.

Along those lines, I've caught up with all submitted outreachy patches
that I know of at the moment.  So again, if you have not received an
email saying that your patch was applied, consider it lost, and rebase
and resend it.

thanks,

greg k-h

