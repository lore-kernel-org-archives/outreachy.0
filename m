X-GM-THRID: 6390781740145704960
X-Received: by 10.157.20.241 with SMTP id r46mr6597955otr.137.1488206431701;
        Mon, 27 Feb 2017 06:40:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.42 with SMTP id a39ls13625259otb.26.gmail; Mon, 27 Feb
 2017 06:40:31 -0800 (PST)
X-Received: by 10.13.251.70 with SMTP id l67mr6837394ywf.87.1488206431381;
        Mon, 27 Feb 2017 06:40:31 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h130si3123949pfe.1.2017.02.27.06.40.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 06:40:31 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 8569AB5E;
	Mon, 27 Feb 2017 14:40:30 +0000 (UTC)
Date: Mon, 27 Feb 2017 15:40:22 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sreya Mittal <sreyamittal5@gmail.com>
Cc: outreachy-kernel@googlegroups.com, William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>
Subject: Re: [Outreachy kernel] [PATCH 2/2 v3] staging: speakup: Clean up if
 conditions
Message-ID: <20170227144022.GB14933@kroah.com>
References: <20170224213346.7sms5gp76g344biq@stayawesome>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170224213346.7sms5gp76g344biq@stayawesome>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sat, Feb 25, 2017 at 03:03:46AM +0530, Sreya Mittal wrote:
> Found by checkpatch.pl
> Logical conditions are on the next line, useless parentheses present
> Clean up the if tests by
> 
> * Put logical conditions on the previous line
> * Remove useless parentheses
> * Line up the tests 
> 
> Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
> 
> ---
> 
> Changes in v2:
> * More elaborate log message
> * Fit MSG_FUNCNAMES_END) on the previous line
> * Fit ch == SPEAKUP_HELP && on the previous line
> 
>  drivers/staging/speakup/keyhelp.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)

Where is patch 1/2 of this series?  Always resend the whole series,
as finding the first patch here is tough...

Please resend both of them.

thanks,

greg k-h

