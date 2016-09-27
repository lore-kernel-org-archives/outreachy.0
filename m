X-GM-THRID: 6334690503118815232
X-Received: by 10.200.55.71 with SMTP id p7mr6504510qtb.16.1474956342181;
        Mon, 26 Sep 2016 23:05:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.197 with SMTP id c63ls12186554otb.11.gmail; Mon, 26 Sep
 2016 23:05:41 -0700 (PDT)
X-Received: by 10.129.146.84 with SMTP id j81mr7047286ywg.62.1474956341661;
        Mon, 26 Sep 2016 23:05:41 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id e66si200612pfk.2.2016.09.26.23.05.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 23:05:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 21so264699pfy.1
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Sep 2016 23:05:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7lsFNwrjurbj3s74U6NDQgxaE8nIY/RP9fr1GdLwFv0=;
        b=ZASgE8p29sE+SnnWebmRxMwDQcZ8sr5/51Xw0uyu0eGXu0YqK0MFtatXTonadCAz+W
         W/gHD2VM2AnzEBryogu2QKT74lpE5fE2ziH3d2s5TIX6lFN3IOWWvoJaxG3CVIj9vKC2
         bkNE0skConKRq2PYzN1ufhdX7U+uY0YHRdiM2uZGfvOAeGEdDRJf/otei7eGPo81Kp9Q
         SbNepfCm2EwojLlbNhWFdp0qlWob1zX0orkbCDohJTtom6lDA/BMjIkDIwhNE5NGDDe0
         f1ha4Jeuw6T9QP5m1wUfvfOhTXZTIgsk+4QhFeaB4aeq3ktLv3zNvYXxcrmyR6NrICg9
         AuIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7lsFNwrjurbj3s74U6NDQgxaE8nIY/RP9fr1GdLwFv0=;
        b=f6u0IqmK0ItS2d3VMCEqkJaHQZgqB/ZRS8xBjLzS6ghaP6OtqmziHvM5GWYebn1Hoq
         2dd+5s9JP7sgzdIM7AHwujmMlsbzSW4E11xK8UjWmQZJWDrfT4l8l4mT8w4oR851/FE9
         kv0q+xIF6YktQ37FKt6oTIcsqjSYmDrOnYBLetleMnJUchoznHPwiP6tBuWnAvVr4aKf
         mgAeBoBiFmTdNiGfaUWKPA//DrfaCpCQFV9AYVSETQeoV4Iqva2UGEER5hIJzANxH/8Q
         ss+m8mjgvCu82DwKduXl/4Pdkidg6DjYat5LHwvotqSuLLhanl7KVE3rr7TfPqC/6lpd
         /SnA==
X-Gm-Message-State: AE9vXwOT0//1UU3CJ/UQJyPisLzMko6h0uC5JmLwGZ+uw5plyNcgEQdaP6hg5TrahZgUvg==
X-Received: by 10.98.147.195 with SMTP id r64mr44637216pfk.32.1474956341412;
        Mon, 26 Sep 2016 23:05:41 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id n77sm1345542pfj.31.2016.09.26.23.05.40
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Sep 2016 23:05:41 -0700 (PDT)
Date: Mon, 26 Sep 2016 23:05:40 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Subject: Re: [Outreachy kernel] [PATCH v2] iio: temperature:
 maxim_thermocouple: Fix sparse endianness warnings
Message-ID: <20160927060539.GA10769@d830.WORKGROUP>
References: <20160926171404.GA11773@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160926171404.GA11773@sayli-HP-15-Notebook-PC>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Sep 26, 2016 at 10:44:04PM +0530, sayli karnik wrote:
> Fix following endianness warnings using sparse:
> warning: cast to restricted __be16
> warning: cast to restricted __be32
> Use __be16 type for incoming read data when storage_bytes equals 2 and __be32
> when storage_bytes equals 4. Since the variable allocated already has the
> correct storage size the patch is classified as cosmetic.
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>

Hi Sayli - 

v2 code looks like it handles both cases. 

I think you've made a bug fix!  

When the storage_bytes == 2, it would work on LE systems but give
invalid data on BE systems.  That unsigned int buf points to a location
where only 2 bytes of data are placed during spi_read. Those 2 bytes go
in the upper bytes. Then when the be16_to_cpu() happens that buf
gets cast to 16bits.  We get the upper bytes on LE systems (good bits)
but the lower bytes on BE systems (bad bits)

Lars - Please check my logic and the code too.  If this is a bug
let us know if Sayli should include a fix tag.

Pending Lars' review, you can update the changelog.

Take a further look at storage_bytes and you'll find when it is
set to 2 and when it is set to 4.  That would be good information
to include in the changelog.  You'll find that this is only a bug
in one of the two chips this driver supports.

Check your precommit checkpatch hooks.  There are still CHECKs in
the spi_read lines of code.

And, back to the less exciting. It would be good for that commit
message to say what you did: replace unsigned int with __be16/32
I know you're short of space on that line.  It's ok to drop the
subdir (temperature) and just state the driver as in:
iio: maxim_thermocouple: commit message.

Please 'CC linux-iio on v3 and the module author, from bottom of
source file.

Thanks Sayli,
alisons

> ---
> v2:
> Updated the subject line and changelog
> Moved the spi_read function call inside respective case statements so that data
> is read only once.
> Moved the return statement after the switch case
> 
>  drivers/iio/temperature/maxim_thermocouple.c | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/iio/temperature/maxim_thermocouple.c b/drivers/iio/temperature/maxim_thermocouple.c
> index 39dd202..2683b0f 100644
> --- a/drivers/iio/temperature/maxim_thermocouple.c
> +++ b/drivers/iio/temperature/maxim_thermocouple.c
> @@ -123,22 +123,24 @@ static int maxim_thermocouple_read(struct maxim_thermocouple_data *data,
>  {
>  	unsigned int storage_bytes = data->chip->read_size;
>  	unsigned int shift = chan->scan_type.shift + (chan->address * 8);
> -	unsigned int buf;
> +	__be16 buf1;
> +	__be32 buf2;
>  	int ret;
>  
> -	ret = spi_read(data->spi, (void *) &buf, storage_bytes);
> -	if (ret)
> -		return ret;
> -
>  	switch (storage_bytes) {
>  	case 2:
> -		*val = be16_to_cpu(buf);
> +		ret = spi_read(data->spi, (void *) &buf1, storage_bytes);
> +		*val = be16_to_cpu(buf1);
>  		break;
>  	case 4:
> -		*val = be32_to_cpu(buf);
> +		ret = spi_read(data->spi, (void *) &buf2, storage_bytes);
> +		*val = be32_to_cpu(buf2);
>  		break;
>  	}
>  
> +	if (ret)
> +		return ret;
> +
>  	/* check to be sure this is a valid reading */
>  	if (*val & data->chip->status_bit)
>  		return -EINVAL;
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160926171404.GA11773%40sayli-HP-15-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.

