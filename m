X-GM-THRID: 6330521261250183168
X-Received: by 10.98.54.197 with SMTP id d188mr9699346pfa.11.1474014743541;
        Fri, 16 Sep 2016 01:32:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.18.201 with SMTP id g67ls2480344otg.26.gmail; Fri, 16 Sep
 2016 01:32:23 -0700 (PDT)
X-Received: by 10.237.36.152 with SMTP id t24mr4012240qtc.23.1474014743190;
        Fri, 16 Sep 2016 01:32:23 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id um12si2230603pab.2.2016.09.16.01.32.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 01:32:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 79F7A8F5;
	Fri, 16 Sep 2016 08:32:22 +0000 (UTC)
Date: Fri, 16 Sep 2016 10:32:28 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com
Subject: Re: [PATCH v2] Use sizeof type *pointer instead of sizeof type
Message-ID: <20160916083228.GA12374@kroah.com>
References: <20160915113508.GA6773@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160915113508.GA6773@sayli-HP-15-Notebook-PC>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Thu, Sep 15, 2016 at 05:05:08PM +0530, sayli karnik wrote:
> The patch uses the size of the dereference to a variable instead of it's type,
> to make the code more resistant to type changes in the future. The type of the 
> pointer variable here is the same as the type in the argument that is being
> replaced in sizeof().
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
> v2: Updated the commit message.
>  drivers/staging/wilc1000/host_interface.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Please fix up the subject to say what part of the kernel you are
modifying, like the other patches are done for this driver.

thanks,

greg k-h

