X-GM-THRID: 986854719488
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,6ef541a6a31e12b0
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.43.146 with SMTP id l18mr8738020yhb.23.1424973481507;
        Thu, 26 Feb 2015 09:58:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.170.225 with SMTP id ap1ls1942061igc.11.canary; Thu, 26 Feb
 2015 09:58:01 -0800 (PST)
X-Received: by 10.43.172.4 with SMTP id nw4mr9583323icc.3.1424973481216;
        Thu, 26 Feb 2015 09:58:01 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si206028pdb.1.2015.02.26.09.58.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 09:58:01 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D0B09B8A;
	Thu, 26 Feb 2015 17:58:00 +0000 (UTC)
Date: Thu, 26 Feb 2015 09:58:00 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: aybuke ozdemir <aybuke.147@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: lustre: lnet: Cleanup
 switch statement
Message-ID: <20150226175800.GA24181@kroah.com>
References: <1424380006-18213-1-git-send-email-aybuke.147@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424380006-18213-1-git-send-email-aybuke.147@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Feb 19, 2015 at 11:06:45PM +0200, aybuke ozdemir wrote:
> Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
> 
> This patch fixes the following checkpatch error:
> ERROR: switch and case should be at the same indent
> 859: FILE: drivers/staging/lustre/lnet/selftest/conctl.c:859:
> ---
>  drivers/staging/lustre/lnet/selftest/conctl.c | 112 +++++++++++++-------------
>  1 file changed, 56 insertions(+), 56 deletions(-)

signed-off-by: needs to be at the bottom of the changelog description.

thanks,

greg k-h

