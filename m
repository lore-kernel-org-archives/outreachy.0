X-GM-THRID: 6390781740145704960
X-Received: by 10.31.141.75 with SMTP id p72mr92482vkd.31.1488260909942;
        Mon, 27 Feb 2017 21:48:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.33 with SMTP id d30ls301125otb.17.gmail; Mon, 27 Feb
 2017 21:48:29 -0800 (PST)
X-Received: by 10.129.174.69 with SMTP id g5mr181737ywk.125.1488260909585;
        Mon, 27 Feb 2017 21:48:29 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h79si131416pfh.2.2017.02.27.21.48.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 21:48:29 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A143F6C;
	Tue, 28 Feb 2017 05:48:28 +0000 (UTC)
Date: Tue, 28 Feb 2017 06:48:19 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sreya Mittal <sreyamittal5@gmail.com>
Cc: outreachy-kernel@googlegroups.com, William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>
Subject: Re: [PATCH 2/2 v3] staging: speakup: Clean up if conditions
Message-ID: <20170228054818.GA25790@kroah.com>
References: <20170227160940.24674-1-sreyamittal5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170227160940.24674-1-sreyamittal5@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Mon, Feb 27, 2017 at 09:39:40PM +0530, Sreya Mittal wrote:
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
> Changes in v3:
> *Correct placement of patch changes

Why do I have 3 copies of this same email sent out?  Which one am I
supposed to use?

I'm still confused, please resend both of these patches, as a "v4", so I
know what to pick up.

Remember, it should be _very_ obvious to the maintainer as to what
patches to review/accept, you don't want to make me have to think, as I
don't do that very well :)

thanks,

greg k-h

