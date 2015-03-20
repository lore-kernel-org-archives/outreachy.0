X-GM-THRID: 8985735331840
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7da8cb61ff6c25cf
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.41.73 with SMTP id g49mr96267386yhb.57.1426862401055;
        Fri, 20 Mar 2015 07:40:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.21 with SMTP id i21ls1117230ioo.65.gmail; Fri, 20 Mar
 2015 07:40:00 -0700 (PDT)
X-Received: by 10.43.90.6 with SMTP id bg6mr4053115icc.11.1426862400803;
        Fri, 20 Mar 2015 07:40:00 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id l3si856234pdo.0.2015.03.20.07.40.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 07:40:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (unknown [31.221.94.139])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E03DFACF;
	Fri, 20 Mar 2015 14:39:59 +0000 (UTC)
Date: Fri, 20 Mar 2015 13:10:41 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Darshana Padmadas <darshanapadmadas@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/5] Staging: rtl8192e: Replace
 memcpy with ether_addr_copy
Message-ID: <20150320121041.GA19110@kroah.com>
References: <cover.1426685762.git.darshanapadmadas@gmail.com>
 <9eab4a1c89f930dac0710fda702a6de414172237.1426685762.git.darshanapadmadas@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9eab4a1c89f930dac0710fda702a6de414172237.1426685762.git.darshanapadmadas@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 18, 2015 at 07:13:19PM +0530, Darshana Padmadas wrote:
> This patch fixes the following warning found by checkpatch.pl:
> Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are __aligned(2
> 
> Also included header file linux/etherdevice.h that defines 
> ether_addr_copy.

<snip>

This series still adds kernel build warnings, which is not allowed.  It
looks like the patches are actually incorrect, and the compiler is
correctly warning you about this.

Please fix this up, TEST THEM!!!, and then resend.

thanks,

greg k-h

