X-GM-THRID: 4409240059904
X-Received: by 10.70.131.81 with SMTP id ok17mr3537628pdb.6.1425251186695;
        Sun, 01 Mar 2015 15:06:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.236.41 with SMTP id ur9ls563984obc.40.gmail; Sun, 01 Mar
 2015 15:06:26 -0800 (PST)
X-Received: by 10.182.142.102 with SMTP id rv6mr25388885obb.47.1425251186487;
        Sun, 01 Mar 2015 15:06:26 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si1304464pac.0.2015.03.01.15.06.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 15:06:26 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2040C268;
	Sun,  1 Mar 2015 23:06:26 +0000 (UTC)
Date: Sun, 1 Mar 2015 15:06:25 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: Add blank line after
 declarations
Message-ID: <20150301230625.GA10671@kroah.com>
References: <1425034527-10985-1-git-send-email-dilekuzulmez@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425034527-10985-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 27, 2015 at 12:55:27PM +0200, Dilek Uzulmez wrote:
> The following patch fixes the checkpatch.pl warning:
> drivers/staging/media/parport/bw-qcam.c WARNING: Missing a blank
> line after declarations
> 
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/media/parport/bw-qcam.c | 5 +++++
>  1 file changed, 5 insertions(+)

You sent 3 patches with the same subject, yet they did different things,
how am I supposed to know what to do here?

thanks,

greg k-h

