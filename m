X-GM-THRID: 7913154281472
X-Received: by 10.70.94.102 with SMTP id db6mr44049522pdb.0.1426415989588;
        Sun, 15 Mar 2015 03:39:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.254.129 with SMTP id ai1ls725819igd.33.canary; Sun, 15 Mar
 2015 03:39:49 -0700 (PDT)
X-Received: by 10.42.254.202 with SMTP id nf10mr52057323icb.23.1426415989410;
        Sun, 15 Mar 2015 03:39:49 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gb13si1247516pac.2.2015.03.15.03.39.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2015 03:39:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6923213;
	Sun, 15 Mar 2015 10:39:48 +0000 (UTC)
Date: Sun, 15 Mar 2015 11:39:45 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Somya Anand <somyaanand214@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: sm750fb: Add space after ','
Message-ID: <20150315103945.GA20141@kroah.com>
References: <1426263453-26331-1-git-send-email-somyaanand214@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1426263453-26331-1-git-send-email-somyaanand214@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 13, 2015 at 09:47:30PM +0530, Somya Anand wrote:
> This patch adds space after ',' for the better readability of
> code. This issue is detected by checkpatch.pl
> 
> Signed-off-by: Somya Anand <somyaanand214@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750_hw.c | 130 ++++++++++++++++++-------------------
>  1 file changed, 65 insertions(+), 65 deletions(-)

This patch fails to apply to my tree :(

Please refresh it and resend.

thanks,

greg k-h

