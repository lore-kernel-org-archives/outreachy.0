X-GM-THRID: 6341262958071382016
X-Received: by 10.13.207.198 with SMTP id r189mr1075216ywd.138.1476584026093;
        Sat, 15 Oct 2016 19:13:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.196 with SMTP id c65ls3848224ioj.30.gmail; Sat, 15 Oct
 2016 19:13:42 -0700 (PDT)
X-Received: by 10.107.53.161 with SMTP id k33mr5142316ioo.83.1476584022393;
        Sat, 15 Oct 2016 19:13:42 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id um12si4057026pab.2.2016.10.15.19.13.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 19:13:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id i85so6687704pfa.0
        for <outreachy-kernel@googlegroups.com>; Sat, 15 Oct 2016 19:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1jautcgKx4uyhha6ELMsVUxvnPqnLbORbJl/hYdOTxI=;
        b=FzHba2EtOZgWKmpOd/jmYFvvcXD+oCUdB2PLCfos6b1Y2gRbmVZrl7CXrIBqBZuIIA
         ly3UbfCy0MQArMoU7jxqNz4CmxuBJ960emRIvVXtpFR0kZaZMERVmhviPer5gU4oDlSa
         W+Q4ACmDv/Vn5EKpKlYJd7r2S/z5uyYN6fOGZwtugzVeUxATVhEHGD/Dz4naybIN7468
         53DB/y6fNvnkK8OPLew79mn/CMKz6KHdJA9IDmAcMWdZNAOSeuiHu2EDjNcSQ5C73U5k
         Vt8B+FvhYwjovwD8MB9PFjCMexP1ZlfT1YIwld5c/f4/eWyF/3F8JaGB3l+IoXRAH2Nf
         AYxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=1jautcgKx4uyhha6ELMsVUxvnPqnLbORbJl/hYdOTxI=;
        b=AiT69zYncbkWWDdL0LjoruHFnd8isxbGjNMVD0Jtex9A2P+yVYAJ7uVkWyxq44DL67
         RMiTQX/eLm8QvRsvlafzvrSfzSw73lVVfXmSXrjwKiLKvtEf8sPuOOM8jX0+OVN8ms/5
         txlUfQ8EMxDYBuD3JS/aFBNOmXexp44SQw03iGYTmi3ChzRtUw6bjtA5Qx/RHSqkIk44
         8NwwUr1e2ui8RNtMhUr216JW9BrIP/4cnGS/L8WyKyP7fcXZUXhq1FGCUeqPbvqb4LAy
         lRjYUgo/bK3C0puu4GRgf9c0VpegTFcUzzY+wviW4hS6ovzPb8bhlGhkjtIwaQcDtmPX
         l1/g==
X-Gm-Message-State: AA6/9RlKQPtekisS51OzEIqv1jay2Aysn2dOSVtt9aAIC3ouwD8PeQEYg6q1EtmzVcq+LA==
X-Received: by 10.99.111.142 with SMTP id k136mr23810085pgc.143.1476584022142;
        Sat, 15 Oct 2016 19:13:42 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([103.14.62.226])
        by smtp.gmail.com with ESMTPSA id d188sm37736098pfd.33.2016.10.15.19.13.40
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 15 Oct 2016 19:13:41 -0700 (PDT)
Date: Sun, 16 Oct 2016 10:13:33 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: linux-iio@vger.kernel.org, outreachy-kernel@googlegroups.com,
	knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net
Subject: Re: [PATCH] tools: iio: iio_generic_buffer: add -A to force-enable
 all channels
Message-ID: <20161016021332.GB2406@Socrates-DK>
Mail-Followup-To: Jonathan Cameron <jic23@kernel.org>,
	linux-iio@vger.kernel.org, outreachy-kernel@googlegroups.com,
	knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net
References: <1476440319-11124-1-git-send-email-eraretuya@gmail.com>
 <80bfc9a1-592e-3f8b-3a72-ea7259a74469@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <80bfc9a1-592e-3f8b-3a72-ea7259a74469@kernel.org>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Oct 15, 2016 at 03:27:22PM +0100, Jonathan Cameron wrote:
> On 14/10/16 11:18, Eva Rachel Retuya wrote:
> > If attribute/s is/are already enabled (by default or via scripts or
> > manual interaction), issuing -a will fail to enable the channels thereby
> > one has to manually disable the said attribute/s before proceeding with
> > auto-enabling.
> > 
> > Add a command-line option -A to force-activate all channels regardless
> > of their current state.
> > 
> > Suggested-by: Alison Schofield <amsfield22@gmail.com>
> > Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
> Seems like a useful addition with minimal 'cost'.
> 
> Applied, though there was some fuzz due to a recent patch making
> sure the ? was in the argument list, so please check I didn't mess
> it up!

It looks fine, thanks!

Eva

> 
> Applied to the togreg branch of iio.git - initially pushed out as
> testing for the autobuilders to play with it.
> 
> Thanks,
> 
> Jonathan
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
> >  
> >  		ret = enable_disable_all_channels(dev_dir_name, 1);
> >  		if (ret) {
> > 
> 

