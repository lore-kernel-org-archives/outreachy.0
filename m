X-GM-THRID: 6206972446110646272
X-Received: by 10.140.234.135 with SMTP id f129mr24719299qhc.9.1445761627530;
        Sun, 25 Oct 2015 01:27:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.25.166 with SMTP id d6ls614043igg.43.canary; Sun, 25 Oct
 2015 01:27:07 -0700 (PDT)
X-Received: by 10.66.102.65 with SMTP id fm1mr10928720pab.4.1445761627266;
        Sun, 25 Oct 2015 01:27:07 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sm2si1676693pab.0.2015.10.25.01.27.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 01:27:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4C16090;
	Sun, 25 Oct 2015 08:27:06 +0000 (UTC)
Date: Sat, 24 Oct 2015 18:40:45 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Cristina Moraru <cristina.moraru09@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: lustre: Replace sscanf
 with kstrtoint
Message-ID: <20151025014045.GD8425@kroah.com>
References: <1445173359-123710-1-git-send-email-cristina.moraru09@gmail.com>
 <1445287733-17493-1-git-send-email-cristina.moraru09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1445287733-17493-1-git-send-email-cristina.moraru09@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 19, 2015 at 11:48:53PM +0300, Cristina Moraru wrote:
> Replace single variable sscanf with specialized function
> kstrtoint at the suggestion of checkpatch.pl, to fix
> 'WARNING: Prefer kstrto<type> to single variable sscanf'
> 
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> 
> Changes in v2:
>   - Change error code handling.
> Changes in v3:
>   - Remove unnecessary braces
> ---

The "Changes..." lines need to go below the --- line, otherwise git will
add them to the changelog, which we don't want.

Can you fix this and resend?

thanks,

greg k-h

