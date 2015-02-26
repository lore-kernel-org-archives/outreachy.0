X-GM-THRID: 3110621675520
X-Received: by 10.236.63.230 with SMTP id a66mr10715992yhd.51.1424992703066;
        Thu, 26 Feb 2015 15:18:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.153.70 with SMTP id b67ls289694ioe.88.gmail; Thu, 26 Feb
 2015 15:18:22 -0800 (PST)
X-Received: by 10.66.171.9 with SMTP id aq9mr10686663pac.20.1424992702867;
        Thu, 26 Feb 2015 15:18:22 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bo1si307685pbc.0.2015.02.26.15.18.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 15:18:22 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 814E9B3F;
	Thu, 26 Feb 2015 23:18:22 +0000 (UTC)
Date: Thu, 26 Feb 2015 15:18:22 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: aybuke ozdemir <aybuke.147@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: unisys: Change char *
 array type as static const
Message-ID: <20150226231822.GA10936@kroah.com>
References: <1424817582-9438-1-git-send-email-aybuke.147@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424817582-9438-1-git-send-email-aybuke.147@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Feb 25, 2015 at 12:39:42AM +0200, aybuke ozdemir wrote:
> This patch fixes "char * array declaration might be better as static
> const" checkpatch.pl warning in visorchipset_main.c
> After this exchange that can be accessed pointer, without object
> derived from the instance but just just read operation can be done in
> pointer.
> 
> Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
> ---
> Changes since v1:
> * Used "static const char *const" instead of "static char const"
> ---
>  drivers/staging/unisys/visorchipset/visorchipset_main.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Please _always_ compile your changes, this one broke the build so badly
that is is obvious you didn't even try to build it :(


