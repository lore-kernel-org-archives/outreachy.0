X-GM-THRID: 4525053181952
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,253b09dbad964a54
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.42.24.72 with SMTP id v8mr9389839icb.14.1425094776256;
        Fri, 27 Feb 2015 19:39:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.219.97 with SMTP id pn1ls360796obc.22.gmail; Fri, 27 Feb
 2015 19:39:36 -0800 (PST)
X-Received: by 10.182.18.67 with SMTP id u3mr3930348obd.38.1425094776069;
        Fri, 27 Feb 2015 19:39:36 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si725358pac.0.2015.02.27.19.39.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 19:39:36 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (unknown [166.170.41.126])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6CBA42C;
	Sat, 28 Feb 2015 03:39:35 +0000 (UTC)
Date: Fri, 27 Feb 2015 19:39:33 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Add blank line after
 declarations
Message-ID: <20150228033933.GA2023@kroah.com>
References: <1425082344-5255-1-git-send-email-dilekuzulmez@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425082344-5255-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 28, 2015 at 02:12:24AM +0200, Dilek Uzulmez wrote:
> The following patch fixes the checkpatch.pl warning:
> drivers/staging/lustre/lustre/ptlrpc/service.c WARNING: Missing a
> blank line after declarations
> 
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/lustre/lustre/ptlrpc/service.c | 3 +++
>  1 file changed, 3 insertions(+)

You sent 7 patches all with the same subject, yet they do different
things.  Can you please fix this and resend makeing the subjects unique?

thanks,

greg k-h

