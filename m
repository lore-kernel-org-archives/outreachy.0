X-GM-THRID: 6394452359735410688
X-Received: by 10.107.157.6 with SMTP id g6mr6800050ioe.79.1488833510483;
        Mon, 06 Mar 2017 12:51:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.7 with SMTP id 7ls3986008otw.5.gmail; Mon, 06 Mar 2017
 12:51:50 -0800 (PST)
X-Received: by 10.157.34.114 with SMTP id o105mr6708790ota.48.1488833510141;
        Mon, 06 Mar 2017 12:51:50 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 2si118520pfx.8.2017.03.06.12.51.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 12:51:50 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D13C495D;
	Mon,  6 Mar 2017 20:51:48 +0000 (UTC)
Date: Mon, 6 Mar 2017 21:51:42 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	samuel.thibault@ens-lyon.org, outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [PATCH v2 0/2]
Message-ID: <20170306205142.GB20033@kroah.com>
References: <20170306182052.2989-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170306182052.2989-1-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Mon, Mar 06, 2017 at 08:20:52PM +0200, Tamara Diaconita wrote:
> Tamara Diaconita (2):
>   staging: speakup: keyhelp: Add spaces to align
>   staging: speakup: keyhelp: Fix 'if' continuation
> 
> Changes since v1:
> *Deleted the patch: 'staging:speakup:keyhelp.c: Remove unnecessary else' from the set and remake the original file.
> *Deleted the '.c' in the subject of the patches.
> *Added a space after ':' in the subject of the patches.
> 
>  drivers/staging/speakup/keyhelp.c | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)

Why is there no real subject here saying what these patches are for?

thanks,

greg k-h

