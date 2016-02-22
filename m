X-GM-THRID: 6253406958213136384
X-Received: by 10.25.15.161 with SMTP id 33mr3665489lfp.0.1456171359645;
        Mon, 22 Feb 2016 12:02:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.19.91 with SMTP id j88ls381889lfi.50.gmail; Mon, 22 Feb
 2016 12:02:39 -0800 (PST)
X-Received: by 10.25.22.154 with SMTP id 26mr3659076lfw.3.1456171359186;
        Mon, 22 Feb 2016 12:02:39 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id s141si1256848wmd.1.2016.02.22.12.02.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 12:02:39 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id BF6DBA5B;
	Mon, 22 Feb 2016 20:02:37 +0000 (UTC)
Date: Mon, 22 Feb 2016 12:02:37 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Rakhi Sharma <rakhish1994@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: Use __packed
 instead of __attribute__((packed))
Message-ID: <20160222200237.GA23683@kroah.com>
References: <1456115199-5456-1-git-send-email-rakhish1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1456115199-5456-1-git-send-email-rakhish1994@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Feb 22, 2016 at 09:56:39AM +0530, Rakhi Sharma wrote:
> This patch fixes the warning: "__packed is preferred over
> __attribute__((packed))" as reported by checkpatch.pl.
> 
> Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
> ---
>  drivers/staging/wilc1000/linux_mon.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

This is already in my tree :(


