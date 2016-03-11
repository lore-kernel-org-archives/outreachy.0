X-GM-THRID: 6258974741183332352
X-Received: by 10.50.85.37 with SMTP id e5mr3661251igz.12.1457731986727;
        Fri, 11 Mar 2016 13:33:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.42.182 with SMTP id c51ls2958255qga.60.gmail; Fri, 11 Mar
 2016 13:33:06 -0800 (PST)
X-Received: by 10.140.233.69 with SMTP id e66mr8526407qhc.6.1457731986169;
        Fri, 11 Mar 2016 13:33:06 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h69si534495pfj.0.2016.03.11.13.33.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 13:33:06 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id DACC5C2F;
	Fri, 11 Mar 2016 21:33:05 +0000 (UTC)
Date: Fri, 11 Mar 2016 13:33:05 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: dgnc: Add block comments
 /* and */ on a separate line in dgnc_tty.c.
Message-ID: <20160311213305.GB19992@kroah.com>
References: <20160306081850.GA1185@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160306081850.GA1185@sandhya>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Mar 06, 2016 at 01:48:50PM +0530, Sandhya Bankar wrote:
> Add block comments /* and */ on a separate line. The warning is reported by checkpatch.pl.
> 
> The preferred style for long (multi-line) comments is:
> /*
>  *
>  *
>  */
> 
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
> Changes in v2:
> * No change.
> *Compile this patch to check nothing is broken.
> 
>  drivers/staging/dgnc/dgnc_tty.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)

Doesn't apply to my tree :(

