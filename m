X-GM-THRID: 9111863296000
X-Received: by 10.43.130.198 with SMTP id hn6mr4035901icc.29.1426862473928;
        Fri, 20 Mar 2015 07:41:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.114.4 with SMTP id jc4ls529715igb.23.canary; Fri, 20 Mar
 2015 07:41:13 -0700 (PDT)
X-Received: by 10.66.150.41 with SMTP id uf9mr41853030pab.14.1426862473702;
        Fri, 20 Mar 2015 07:41:13 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ni4si836564pdb.2.2015.03.20.07.41.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 07:41:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (unknown [31.221.94.139])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 10C50AF3;
	Fri, 20 Mar 2015 14:41:12 +0000 (UTC)
Date: Fri, 20 Mar 2015 13:20:40 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wlan-ng: Remove struct
 typedefs
Message-ID: <20150320122040.GA31606@kroah.com>
References: <20150319125859.GA27166@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150319125859.GA27166@akanksha>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 19, 2015 at 06:28:59PM +0530, Vatika Harlalka wrote:
> Remove struct typedefs and rename structs accordingly 
> as per kernel code conventions.

You have trailing whitespace in your changelog comments :(

> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/wlan-ng/hfa384x.h     |  78 +++++++--------
>  drivers/staging/wlan-ng/hfa384x_usb.c | 179 +++++++++++++++++-----------------
>  drivers/staging/wlan-ng/prism2mgmt.c  |  20 ++--
>  drivers/staging/wlan-ng/prism2mgmt.h  |   4 +-
>  drivers/staging/wlan-ng/prism2mib.c   |  36 +++----
>  drivers/staging/wlan-ng/prism2sta.c   |  40 ++++----
>  drivers/staging/wlan-ng/prism2usb.c   |   8 +-
>  7 files changed, 183 insertions(+), 182 deletions(-)

Please break this up into a patch series, each one only replacing one
specific typedef.  As it is, it's a bit hard to read this way.

thanks,

greg k-h

