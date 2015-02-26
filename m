X-GM-THRID: 739037413376
X-Received: by 10.182.246.37 with SMTP id xt5mr10097284obc.25.1424987326363;
        Thu, 26 Feb 2015 13:48:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.39 with SMTP id h39ls315668iod.26.gmail; Thu, 26 Feb
 2015 13:48:46 -0800 (PST)
X-Received: by 10.66.65.109 with SMTP id w13mr9949582pas.28.1424987326203;
        Thu, 26 Feb 2015 13:48:46 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bo1si285682pbc.0.2015.02.26.13.48.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:48:46 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id EC899B32;
	Thu, 26 Feb 2015 21:48:45 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:48:45 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] Convert simple_strtoul to kstrtoul
Message-ID: <20150226214845.GA1389@kroah.com>
References: <1424441776-20373-1-git-send-email-navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424441776-20373-1-git-send-email-navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 20, 2015 at 07:46:16PM +0530, Navya Sri Nizamkari wrote:
> This patch fixes the checkpatch.pl warning:
> simple_strtoul is obsolete, use kstrtoul instead.
> 
> Replaced simple_strtoul with kstrtoul as both can perform parsing error
> checks on the string to the converted. The parsing error condition for
> simple_strtoul is that the string to be converted is same as the converted
> string, with kstrtoul the return value is non-zero in case of this error.
> 
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
> Changes in v4:
>     -Updated commit explanation to be more generic.
> 
>  drivers/staging/media/parport/bw-qcam.c | 4 +---

This file is no longer in Linus's tree :(

