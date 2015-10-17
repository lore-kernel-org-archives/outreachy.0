X-GM-THRID: 6206326590573379584
X-Received: by 10.182.246.98 with SMTP id xv2mr17084048obc.3.1445060978100;
        Fri, 16 Oct 2015 22:49:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.40.148 with SMTP id x20ls2150620qgx.34.gmail; Fri, 16 Oct
 2015 22:49:37 -0700 (PDT)
X-Received: by 10.31.182.10 with SMTP id g10mr16086278vkf.7.1445060977678;
        Fri, 16 Oct 2015 22:49:37 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id el2si2355032pbb.0.2015.10.16.22.49.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 22:49:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 56AE367;
	Sat, 17 Oct 2015 05:49:37 +0000 (UTC)
Date: Fri, 16 Oct 2015 22:49:37 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: iio: cdc: ad7152: Remove
 unused macros
Message-ID: <20151017054937.GB18400@kroah.com>
References: <1445023006-10140-1-git-send-email-shraddha.6596@gmail.com>
 <1445023006-10140-3-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1445023006-10140-3-git-send-email-shraddha.6596@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Oct 17, 2015 at 12:46:46AM +0530, Shraddha Barke wrote:
> Remove the macros since they are not used anywhere throughout the
> kernel.


Same here, please leave these.

thanks,

greg k-h

