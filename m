X-GM-THRID: 6261383436931432448
X-Received: by 10.129.85.11 with SMTP id j11mr25784099ywb.57.1458594119476;
        Mon, 21 Mar 2016 14:01:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.41.97 with SMTP id e1ls1049954igl.29.gmail; Mon, 21 Mar
 2016 14:01:59 -0700 (PDT)
X-Received: by 10.66.55.74 with SMTP id q10mr24457480pap.12.1458594119036;
        Mon, 21 Mar 2016 14:01:59 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y20si4216188pfa.2.2016.03.21.14.01.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 14:01:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-138-182-192.hsd1.ma.comcast.net [50.138.182.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 8098574;
	Mon, 21 Mar 2016 21:01:58 +0000 (UTC)
Date: Mon, 21 Mar 2016 17:01:57 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Juliana Rodrigues <juliana.orod@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: dgnc: fixed multiple
 blank lines
Message-ID: <20160321210157.GB9749@kroah.com>
References: <20160313040529.GA10236@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160313040529.GA10236@spock>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Mar 13, 2016 at 01:05:29AM -0300, Juliana Rodrigues wrote:
> This patch removes multiple blank lines that caused 
> checkpatch issues.
> 
> 
> Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> ---
> Changes in v2:
>    - Removed file name from subject line.

You have sent a lot of different patches for this same driver, some in
series, some not.  So I don't know what order to apply which in.  Some
also depend on other patches.  I'm totally confused.  Please resend all
patches you have made for this driver, in one series, in the needed
order as I've flushed all of your pending patches for this driver from
my todo queue now.

thanks,

greg k-h

