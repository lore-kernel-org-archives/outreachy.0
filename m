X-GM-THRID: 6392225228462751744
X-Received: by 10.129.169.10 with SMTP id g10mr1271737ywh.165.1488306861505;
        Tue, 28 Feb 2017 10:34:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.18.240 with SMTP id g103ls1819010otg.39.gmail; Tue, 28 Feb
 2017 10:34:21 -0800 (PST)
X-Received: by 10.200.3.229 with SMTP id z37mr1056192qtg.8.1488306861092;
        Tue, 28 Feb 2017 10:34:21 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h79si129577pfh.2.2017.02.28.10.34.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 10:34:21 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 84349415;
	Tue, 28 Feb 2017 18:34:20 +0000 (UTC)
Date: Tue, 28 Feb 2017 19:34:11 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: mchehab@kernel.org, outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [PATCH 0/5] Fixing multiple checkpath issues
Message-ID: <20170228183411.GB17922@kroah.com>
References: <20170228181756.22863-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170228181756.22863-1-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Tue, Feb 28, 2017 at 08:17:56PM +0200, Tamara Diaconita wrote:
> Made cxd2099.c file from cxd2099 driver more readable by fixing multiple checkpath issues.
> 
> Tamara Diaconita (5):
>   Add comment for struct mutex definition.
>   Added spaces around arithmetical operators.
>   Removed unnecessary blank lines.
>   Change a kzalloc parameter.
>   emoved redundant code.
> 
>  drivers/staging/media/cxd2099/cxd2099.c | 96 +++++----------------------------
>  1 file changed, 13 insertions(+), 83 deletions(-)

My "patch bot" found problems with the first one, and the same thing
goes for all of the other 4 as well.  Please fix up and resend, as a
series that is linked together so it is easy to see in an email client
(this happens if you use git-send-email).

thanks,

greg k-h

