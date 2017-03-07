X-GM-THRID: 6394528999032225792
X-Received: by 10.157.16.117 with SMTP id o50mr8542598oto.78.1488865277243;
        Mon, 06 Mar 2017 21:41:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.33 with SMTP id d30ls17096183otb.17.gmail; Mon, 06 Mar
 2017 21:41:16 -0800 (PST)
X-Received: by 10.129.32.68 with SMTP id g65mr2563642ywg.154.1488865276849;
        Mon, 06 Mar 2017 21:41:16 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c123si463581pfa.4.2017.03.06.21.41.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 21:41:16 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 954C5B6B;
	Tue,  7 Mar 2017 05:41:15 +0000 (UTC)
Date: Tue, 7 Mar 2017 06:41:09 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	samuel.thibault@ens-lyon.org, outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [PATCH v3 0/2] Improve code readability
Message-ID: <20170307054109.GA14438@kroah.com>
References: <20170306231817.7076-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170306231817.7076-1-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Tue, Mar 07, 2017 at 01:18:17AM +0200, Tamara Diaconita wrote:
> Fix multiple checkpath.pl issues to improve code readability in speakup driver.
> 
> Tamara Diaconita (2):
>   staging: speakup: keyhelp: Add spaces to align
>   staging: speakup: keyhelp: Fix 'if' continuation
> 
> Changes since v2:
> *Replaced the subject of the patches.
> 
> Changes since v1:
> *Deleted the patch: 'staging:speakup:keyhelp.c: Remove unnecessary else' from the set and remake the original file.
> *Deleted the '.c' in the subject of the patches.
> *Added a space after ':' in the subject of the patches.
> 
>  drivers/staging/speakup/keyhelp.c | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)

I don't see any patches attached to this 0/2 email, what happened to
them?

thanks,

greg k-h

