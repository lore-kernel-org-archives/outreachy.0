X-GM-THRID: 6332847211633704960
X-Received: by 10.66.183.166 with SMTP id en6mr7646058pac.78.1474486769890;
        Wed, 21 Sep 2016 12:39:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.84.16 with SMTP id t16ls4860082ita.22.canary; Wed, 21 Sep
 2016 12:39:26 -0700 (PDT)
X-Received: by 10.107.17.85 with SMTP id z82mr7601756ioi.96.1474486766199;
        Wed, 21 Sep 2016 12:39:26 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id v21si2613497ywa.7.2016.09.21.12.39.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 12:39:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B6CD1B5A;
	Wed, 21 Sep 2016 19:39:24 +0000 (UTC)
Date: Wed, 21 Sep 2016 21:39:30 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Katie Dunne <kdunne@mail.ccsf.edu>
Cc: outreachy-kernel@googlegroups.com, William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Remove unnecessary
 parentheses
Message-ID: <20160921193930.GB19226@kroah.com>
References: <20160921180129.GA12401@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160921180129.GA12401@katie-Inspiron-5748>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Wed, Sep 21, 2016 at 11:01:29AM -0700, Katie Dunne wrote:
> Issue found by checkpatch.
> 
> Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
> ---
>  drivers/staging/speakup/synth.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/speakup/synth.c b/drivers/staging/speakup/synth.c
> index 810a214..9c2164f 100644
> --- a/drivers/staging/speakup/synth.c
> +++ b/drivers/staging/speakup/synth.c
> @@ -407,7 +407,7 @@ static int do_synth_init(struct spk_synth *in_synth)
>  	if (!spk_quiet_boot)
>  		synth_printf("%s found\n", synth->long_name);
>  	if (synth->attributes.name
> -	&& sysfs_create_group(speakup_kobj, &(synth->attributes)) < 0)
> +	&& sysfs_create_group(speakup_kobj, & synth->attributes) < 0)

You should not have that extra space there.  Please remove it and try
again.

thanks,

greg k-h

