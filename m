X-GM-THRID: 1726977409024
X-Received: by 10.236.50.227 with SMTP id z63mr9468456yhb.4.1424974955793;
        Thu, 26 Feb 2015 10:22:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.50.6 with SMTP id y6ls288800ign.23.gmail; Thu, 26 Feb 2015
 10:22:35 -0800 (PST)
X-Received: by 10.43.99.67 with SMTP id cr3mr9338758icc.32.1424974955612;
        Thu, 26 Feb 2015 10:22:35 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bo1si227153pbc.0.2015.02.26.10.22.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 10:22:35 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 48506BE7;
	Thu, 26 Feb 2015 18:22:35 +0000 (UTC)
Date: Thu, 26 Feb 2015 10:22:35 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: aybuke ozdemir <aybuke.147@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 3/5] Staging: lustre: Corrected
 code indentation
Message-ID: <20150226182235.GB7025@kroah.com>
References: <1424546577-11537-1-git-send-email-aybuke.147@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424546577-11537-1-git-send-email-aybuke.147@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 21, 2015 at 09:22:57PM +0200, aybuke ozdemir wrote:
> WARNING: suspect code indent for conditional statements(8,15)
> spaces are converting to tabs suspect code indent is deleted.
> That was found by running checkpatch.pl
> 
> Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
> ---
> Changes since v1:
> * changed the description
> ---
>  drivers/staging/lustre/lustre/llite/llite_lib.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

What does this v2 match up too?  Please resend the whole series, it's
just too hard to figure out what to apply, and what to ignore here.

thanks,

greg k-h

