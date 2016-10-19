X-GM-THRID: 6341262958071382016
X-Received: by 10.13.254.71 with SMTP id o68mr2428492ywf.156.1476897005182;
        Wed, 19 Oct 2016 10:10:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.225.68 with SMTP id n65ls4313750ith.17.canary; Wed, 19 Oct
 2016 10:10:01 -0700 (PDT)
X-Received: by 10.36.44.5 with SMTP id i5mr6235845iti.32.1476897001102;
        Wed, 19 Oct 2016 10:10:01 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id z76si6420960pff.1.2016.10.19.10.10.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Oct 2016 10:10:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 128so2977568pfz.1
        for <outreachy-kernel@googlegroups.com>; Wed, 19 Oct 2016 10:10:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=wXdG/p4o8weD6XCIxICTlRpm/cSIKnrc48i7FmIKVK0=;
        b=kRKBiD+AFWmKFXPDVnjjkjZBkJXR01nmGVYtlSmFiMUOqqMAVxVbtbSzedpvcUlq2B
         ilHS4VZdcg3JZZZbp2L7P3IUOOql7fsz0QO5t64b721I9WnKkPw5x6I1+/UUhsuNi69V
         ohfI5PQF8th2dvxSDYdyNvzG99W0YVZhPh6+WWZvC3Vp6nBNwdlLRd8IkFDuMWtwfC7F
         hOXXmLMXKBd0Tpr7djK3ecMZCHxTW3/p7LVicQ5TAQMC5hNMVbn5pcRxTJYyhr7MwJ9r
         KmvdTeH83vz1BM0VtuHSw263ROHxcWKnZTppb6jtAtywPUySGZ6knxPE5UA/6zf+rpCg
         EJSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=wXdG/p4o8weD6XCIxICTlRpm/cSIKnrc48i7FmIKVK0=;
        b=ju53fTNnoH4oFwoH70RNP+AZ/wx6nsBC2Go+fJhjLxubZB0gSCYlqueVTLI3a9z3To
         N0/y2D4wi1FR75K0mK8lDpC7MAE3mpM1dpxN3sbIG6Fu93a1uYrAKTS2oZWR1pGAz7ge
         Uh47IRkc6OVT6hv3PVu/y2ctd11HqrLw2VJn17wMxnzFgnNdU0r3bRdrJJ+ToZMwMAXx
         4qptrYX/0vipU7xRWzrOKDSyAoeDYeropMmkHt059w6GysK96YRFKNLA2jKYJUDJCcYa
         SBBQuxw9cKfksgEPNiUSDOl88RqdIRBdQ6gU7UjpHlb5W7GqiVCs9MUF2POqK4jLt/68
         DCww==
X-Gm-Message-State: AA6/9RkFC0W6wAd+uIK6DS5aoLtiSw9TDdTNo0WN4J7CmoaQ1ZEArALYABmxVTEWegIyuA==
X-Received: by 10.99.129.65 with SMTP id t62mr10875091pgd.114.1476897000849;
        Wed, 19 Oct 2016 10:10:00 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([203.215.120.119])
        by smtp.gmail.com with ESMTPSA id r194sm43074285pfr.94.2016.10.19.10.09.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 19 Oct 2016 10:10:00 -0700 (PDT)
Date: Thu, 20 Oct 2016 01:09:57 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, outreachy-kernel@googlegroups.com,
	jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de
Subject: Re: [PATCH] tools: iio: iio_generic_buffer: add -A to force-enable
 all channels
Message-ID: <20161019170953.GA2121@Socrates-DK>
Mail-Followup-To: Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	linux-iio@vger.kernel.org, outreachy-kernel@googlegroups.com,
	jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de
References: <1476440319-11124-1-git-send-email-eraretuya@gmail.com>
 <alpine.DEB.2.02.1610172311510.31400@pmeerw.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1610172311510.31400@pmeerw.net>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 17, 2016 at 11:15:53PM +0200, Peter Meerwald-Stadler wrote:
> 
> > If attribute/s is/are already enabled (by default or via scripts or
> > manual interaction), issuing -a will fail to enable the channels thereby
> > one has to manually disable the said attribute/s before proceeding with
> > auto-enabling.
> > 
> > Add a command-line option -A to force-activate all channels regardless
> > of their current state.
> 
> comments below
>  
> > Suggested-by: Alison Schofield <amsfield22@gmail.com>
> > Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
> > ---
> >  tools/iio/iio_generic_buffer.c | 17 ++++++++++++-----
> >  1 file changed, 12 insertions(+), 5 deletions(-)
> > 
> > diff --git a/tools/iio/iio_generic_buffer.c b/tools/iio/iio_generic_buffer.c
> > index f39c0e9..84c9888 100644
> > --- a/tools/iio/iio_generic_buffer.c
> > +++ b/tools/iio/iio_generic_buffer.c
> > @@ -247,6 +247,7 @@ void print_usage(void)
> >  	fprintf(stderr, "Usage: generic_buffer [options]...\n"
> >  		"Capture, convert and output data from IIO device buffer\n"
> >  		"  -a         Auto-activate all available channels\n"
> > +		"  -A         Force-activate ALL channels\n"
> >  		"  -c <n>     Do n conversions\n"
> >  		"  -e         Disable wait for event (new data)\n"
> >  		"  -g         Use trigger-less mode\n"
> > @@ -347,16 +348,22 @@ int main(int argc, char **argv)
> >  	int noevents = 0;
> >  	int notrigger = 0;
> >  	char *dummy;
> > +	int force = 0;
> 
> bool instead of int
> maybe force_autochannels
> 
> >  
> >  	struct iio_channel_info *channels = NULL;
> >  
> >  	register_cleanup();
> >  
> > -	while ((c = getopt_long(argc, argv, "ac:egl:n:N:t:T:w:", longopts, NULL)) != -1) {
> > +	while ((c = getopt_long(argc, argv, "aAc:egl:n:N:t:T:w:", longopts,
> > +		NULL)) != -1) {
> >  		switch (c) {
> >  		case 'a':
> >  			autochannels = AUTOCHANNELS_ENABLED;
> >  			break;
> > +		case 'A':
> > +			autochannels = AUTOCHANNELS_ENABLED;
> > +			force = 1;
> > +			break;
> >  		case 'c':
> >  			errno = 0;
> >  			num_loops = strtoul(optarg, &dummy, 10);
> > @@ -519,15 +526,15 @@ int main(int argc, char **argv)
> >  			"diag %s\n", dev_dir_name);
> >  		goto error;
> >  	}
> > -	if (num_channels && autochannels == AUTOCHANNELS_ENABLED) {
> > +	if ((num_channels && autochannels == AUTOCHANNELS_ENABLED) && !force) {
> 
> parenthesis not strictly required/needed
> the bracketing is inconsistent, when do you use parenthesis with && and 
> when not? I suggest to drop parenthesis
> 
> >  		fprintf(stderr, "Auto-channels selected but some channels "
> >  			"are already activated in sysfs\n");
> >  		fprintf(stderr, "Proceeding without activating any channels\n");
> >  	}
> >  
> > -	if (!num_channels && autochannels == AUTOCHANNELS_ENABLED) {
> > -		fprintf(stderr,
> > -			"No channels are enabled, enabling all channels\n");
> > +	if ((!num_channels && autochannels == AUTOCHANNELS_ENABLED) ||
> > +	    ((autochannels == AUTOCHANNELS_ENABLED) && force)) {
> > +		fprintf(stderr, "Enabling all channels\n");
> 
> as above
 
Thanks for the feedback. I submitted a patchset about these suggestions.
However, I cannot fully omit all extra parentheses on that part
otherwise the tool will not compile due to requiring parentheses around
'||'.

Eva
> >  
> >  		ret = enable_disable_all_channels(dev_dir_name, 1);
> >  		if (ret) {
> > 
> 
> -- 
> 
> Peter Meerwald-Stadler
> +43-664-2444418 (mobile)

