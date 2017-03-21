X-GM-THRID: 6399197627083128832
X-Received: by 10.99.154.9 with SMTP id o9mr17569605pge.6.1490079319159;
        Mon, 20 Mar 2017 23:55:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.22.218 with SMTP id s26ls1424530ots.17.gmail; Mon, 20 Mar
 2017 23:55:18 -0700 (PDT)
X-Received: by 10.129.146.139 with SMTP id j133mr17042916ywg.173.1490079318739;
        Mon, 20 Mar 2017 23:55:18 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id a3si3236367pfb.2.2017.03.20.23.55.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 23:55:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E233A94F;
	Tue, 21 Mar 2017 06:55:17 +0000 (UTC)
Date: Tue, 21 Mar 2017 07:55:05 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	outreachy-kernel@googlegroups.com, Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	speakup@linux-speakup.org, driverdevel <devel@driverdev.osuosl.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] staging:speakup: Multiple checkpatch issues,
Message-ID: <20170321065505.GA8664@kroah.com>
References: <20170319131455.25007-1-arushisinghal19971997@gmail.com>
 <20170321061108.GA5524@kroah.com>
 <CA+XqjF_MC042ev5H1h4=4C7NNH1wJFyWxtekOtRe9Yybik2=-w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CA+XqjF_MC042ev5H1h4=4C7NNH1wJFyWxtekOtRe9Yybik2=-w@mail.gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Tue, Mar 21, 2017 at 12:03:50PM +0530, Arushi Singhal wrote:
> 
> 
> On Tue, Mar 21, 2017 at 11:41 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> 
>     On Sun, Mar 19, 2017 at 06:44:53PM +0530, Arushi Singhal wrote:
>     > Improve readability by fixing multiple checkpatch.pl
>     > issues in speakup driver.
>     >
>     > Arushi Singhal (2):
>     >� �staging: speakup: Moved OR operator to previous line.
>     >� �staging: speakup: spaces preferred around operator
> 
>     You have sent many different speakup patches, in different series, and
>     then a bunch of individual patches all at once.� I have no idea what to
>     apply here, what order they go in, or even which ones should be
>     reviewed.
> 
>     So I've dropped all of them from my patch queue.� Please resend all of
>     your outstanding speakup patches, in a _single_ patch series, so that
>     they can be reviewed in the correct order.
> 
> 
> Hi Greg
> I will resend them all in a single patch series.
> I just want to confirm that� whether you have droped all my patches or only
> speakup driver patches.

At this point in time, only the speakup patches.  I only see one other
pending patch from you, for the sm750fb driver, in my queue.

And don't worry about confirming or not, just resend, given the huge
numbers of patches sent for kernel development normally, there's no way
I can track what an individual does or has outstanding or has been
dropped, it's impossible.  That's up to you to manage, not me :)

Remember, I get an average of 1000 emails a day that I need to do
something with, not including mailing lists I'm subscribed to...

thanks,

greg k-h

