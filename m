X-GM-THRID: 6402923058008424448
X-Received: by 10.99.109.204 with SMTP id i195mr357519pgc.146.1490800620783;
        Wed, 29 Mar 2017 08:17:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.170 with SMTP id 39ls19916243otj.6.gmail; Wed, 29 Mar
 2017 08:17:00 -0700 (PDT)
X-Received: by 10.157.32.136 with SMTP id x8mr351048ota.138.1490800620186;
        Wed, 29 Mar 2017 08:17:00 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id y203si1287749pfb.0.2017.03.29.08.17.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 08:17:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id r137so2222926pfr.3
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 08:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=r/G6D9JTF7nlsjszNRppyfOiIeXyi2XBO74y69DrP+M=;
        b=lXkNY9TsBOY2Uq2/88w4oy++oS7a/rsQd2yKU1RW0JD6ativjCJ/aSz7Rq8Yt/24ia
         F3tkYCoc3O6ZOXttnwMs7d5h3DxjGD3kx+ihrr1NMJ++Kjj3L8QNYl4Jn5EggtlVFpjN
         UJ7sEN1aR+vIm0C2OjYE/XvMJqiyVRVp4O7Acz5X0jmZtjengA1vXyVKUCET9QP4wPmW
         Rdp2ySgKpgG79t0jm5XqlKZkLAejC/CnnMdhSgzEB5mzmrL9GhvAkLZ3iTvXppA4SMbe
         KwLY+oEiIulTuKGGXyn8rMnOielvtHdF/SI8yjFqO4QGXKTBCNFpjBTQdrdvyMIrrIPQ
         QThQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=r/G6D9JTF7nlsjszNRppyfOiIeXyi2XBO74y69DrP+M=;
        b=PjLG2z0MLWhfD4Q9xw2hs+6T131f7nivUArRsXqImZMxgMAwbbOPuU19D29Kgi/g/W
         Gf7IzN4H71RAC7zy+5tb+COh+Ac73RdKwEstn5GJ4mF4HIkDuRcloM7QWY7d3xjSbNfx
         /SRB5WxFBs9cPs8q3+0c7rb7DfPuysJIL0becvPj2TyO8lejZQASzWsA0JqtVR+1lP2N
         41E9Ca/KXTgkUB1YUZjuneISJNW0Rclht8MoZevdPc+UX8PYwi5I00yYFzrYTuWdfUd7
         17tTSw3OyoPLnsO4q1VNJ+xphMvUYMxMIxrjDnuD12CAzPNhmGJqxgX5+/NZezyYpZNZ
         IbhA==
X-Gm-Message-State: AFeK/H30nIYAGihkuvKVN9HsX2ysgT6oMCXJ66eA2nW3HCxPHh1pv+Y8QJybgp9qOPFpIA==
X-Received: by 10.84.231.199 with SMTP id g7mr1175244pln.163.1490800619940;
        Wed, 29 Mar 2017 08:16:59 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id l3sm14277235pgn.10.2017.03.29.08.16.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 08:16:59 -0700 (PDT)
Date: Wed, 29 Mar 2017 08:16:58 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: simran singhal <singhalsimran0@gmail.com>
Cc: jic23@kernel.org, Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] iio: accel: bma180: Set up buffer
 timestamps for non-zero values
Message-ID: <20170329151658.GB20663@d830.WORKGROUP>
References: <20170329141131.GA23646@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170329141131.GA23646@singhal-Inspiron-5558>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 29, 2017 at 07:41:31PM +0530, simran singhal wrote:
> Use the iio_pollfunc_store_time parameter during triggered buffer set-up
> to get valid timestamps.
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>

Hi Simran,
I guess you knew I'd recognize this one ;)

My first thought were - "Wow that was a short and sweet description!
Is that all I said when I made similar patches?"  So, I went back
in history and sure enough - that is all I said in the changelog.

But I knew I had thought more about it than that changelog showed.
So, I went back to the mailing list and found the patchset cover
sheet where I had placed the greater explanation and options.

Note to myself: don't bury too much stuff in cover letters!

Note to you: Defects do repeat themselves so your method of hunting
is fine.  If you haven't done it already, add the step where you go
find the mailing list discussion of the patch.  That can be helpful.

Here's a link to the patchset on linux-iio:
http://marc.info/?l=linux-iio&m=146825066822274&w=2

The piece of interest is:
Alternative change would be to use iio_get_time_ns() directly in the
push_to_buffers call in the handler.  We can do this if you are not
one of those "devices (who) need a timestamp grabbed as soon as possible
after the trigger" (from iio_poll_func definition)

This is all just FYI for you now.

Leave the patch for the reviewers to comment.

Thanks,
alisons

> ---
>  drivers/iio/accel/bma180.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/iio/accel/bma180.c b/drivers/iio/accel/bma180.c
> index efc6773..4ae5c80 100644
> --- a/drivers/iio/accel/bma180.c
> +++ b/drivers/iio/accel/bma180.c
> @@ -762,7 +762,7 @@ static int bma180_probe(struct i2c_client *client,
>  			goto err_trigger_free;
>  	}
>  
> -	ret = iio_triggered_buffer_setup(indio_dev, NULL,
> +	ret = iio_triggered_buffer_setup(indio_dev, iio_pollfunc_store_time,
>  			bma180_trigger_handler, NULL);
>  	if (ret < 0) {
>  		dev_err(&client->dev, "unable to setup iio triggered buffer\n");
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170329141131.GA23646%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.

