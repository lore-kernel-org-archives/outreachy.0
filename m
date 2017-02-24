X-GM-THRID: 6387816856867045376
X-Received: by 10.107.11.216 with SMTP id 85mr1458357iol.5.1487956581028;
        Fri, 24 Feb 2017 09:16:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.44.99 with SMTP id f90ls5647253otb.24.gmail; Fri, 24 Feb
 2017 09:16:20 -0800 (PST)
X-Received: by 10.13.204.75 with SMTP id o72mr1174990ywd.91.1487956580455;
        Fri, 24 Feb 2017 09:16:20 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id d63si1548196pfe.2.2017.02.24.09.16.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 09:16:20 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C4A84AB9;
	Fri, 24 Feb 2017 17:16:19 +0000 (UTC)
Date: Fri, 24 Feb 2017 18:16:13 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: simran singhal <singhalsimran0@gmail.com>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] staging: rtl8192u: Prefer using the BIT macro
Message-ID: <20170224171613.GA376@kroah.com>
References: <20170217175059.GA26957@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170217175059.GA26957@singhal-Inspiron-5558>
User-Agent: Mutt/1.7.2 (2016-11-26)

On Fri, Feb 17, 2017 at 11:20:59PM +0530, simran singhal wrote:
> Replaces left shift operation (1 << d) by BIT(x) macro.
> 
> Fix the checkpatch.pl issue:
> CHECK: Prefer using the BIT macro replacing
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  
>  V2:
>    -modified patch message.
> 
>  drivers/staging/rtl8192u/ieee80211/ieee80211.h | 140 ++++++++++++-------------
>  1 file changed, 70 insertions(+), 70 deletions(-)

The last chunk of this patch did not apply, please fix up and resend.

thanks,

greg k-h

