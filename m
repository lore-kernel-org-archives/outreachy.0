X-GM-THRID: 6399197627083128832
X-Received: by 10.13.196.196 with SMTP id g187mr2196ywd.79.1490076683247;
        Mon, 20 Mar 2017 23:11:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.64.142 with SMTP id n136ls2631020ita.2.gmail; Mon, 20 Mar
 2017 23:11:22 -0700 (PDT)
X-Received: by 10.99.97.8 with SMTP id v8mr14230784pgb.137.1490076682426;
        Mon, 20 Mar 2017 23:11:22 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id a3si3226413pfb.2.2017.03.20.23.11.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 23:11:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id AB040905;
	Tue, 21 Mar 2017 06:11:21 +0000 (UTC)
Date: Tue, 21 Mar 2017 07:11:08 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com,
	outreachy-kernel@googlegroups.com, kirk@reisers.ca,
	samuel.thibault@ens-lyon.org, speakup@linux-speakup.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] staging:speakup: Multiple checkpatch issues,
Message-ID: <20170321061108.GA5524@kroah.com>
References: <20170319131455.25007-1-arushisinghal19971997@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170319131455.25007-1-arushisinghal19971997@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sun, Mar 19, 2017 at 06:44:53PM +0530, Arushi Singhal wrote:
> Improve readability by fixing multiple checkpatch.pl
> issues in speakup driver.
> 
> Arushi Singhal (2):
>   staging: speakup: Moved OR operator to previous line.
>   staging: speakup: spaces preferred around operator

You have sent many different speakup patches, in different series, and
then a bunch of individual patches all at once.  I have no idea what to
apply here, what order they go in, or even which ones should be
reviewed.

So I've dropped all of them from my patch queue.  Please resend all of
your outstanding speakup patches, in a _single_ patch series, so that
they can be reviewed in the correct order.

thanks,

greg k-h

