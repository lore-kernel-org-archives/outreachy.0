X-GM-THRID: 700464496640
X-Received: by 10.236.70.100 with SMTP id o64mr10394609yhd.9.1424976829131;
        Thu, 26 Feb 2015 10:53:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.195 with SMTP id e64ls311977ioi.70.gmail; Thu, 26 Feb
 2015 10:53:48 -0800 (PST)
X-Received: by 10.50.92.10 with SMTP id ci10mr15733231igb.8.1424976828904;
        Thu, 26 Feb 2015 10:53:48 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ks4si223440pbc.1.2015.02.26.10.53.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 10:53:48 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 969EBB31;
	Thu, 26 Feb 2015 18:53:48 +0000 (UTC)
Date: Thu, 26 Feb 2015 10:53:48 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Katie Dunne <kdunne@mail.ccsf.edu>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: mn88472: Match
 alignment with open parenthesis
Message-ID: <20150226185348.GA17122@kroah.com>
References: <20150219163250.GA29556@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150219163250.GA29556@katie-Inspiron-5748>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Feb 19, 2015 at 08:32:51AM -0800, Katie Dunne wrote:
> This patch fixes the checkpatch.pl Check:
> CHECK: Alignment should match open parenthesis
> 
> Used tabs and spaces in 8 instances to align with open parenthesis
> 
> Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
> ---
>  drivers/staging/media/mn88472/mn88472.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/media/mn88472/mn88472.c b/drivers/staging/media/mn88472/mn88472.c
> index 52de8f8..b8e43ed 100644
> --- a/drivers/staging/media/mn88472/mn88472.c
> +++ b/drivers/staging/media/mn88472/mn88472.c
> @@ -17,7 +17,7 @@
>  #include "mn88472_priv.h"
>  
>  static int mn88472_get_tune_settings(struct dvb_frontend *fe,
> -	struct dvb_frontend_tune_settings *s)
> +				     struct dvb_frontend_tune_settings *s)
>  {
>  	s->min_delay_ms = 400;
>  	return 0;
> @@ -33,9 +33,9 @@ static int mn88472_set_frontend(struct dvb_frontend *fe)
>  	u8 delivery_system_val, if_val[3], bw_val[7], bw_val2;
>  
>  	dev_dbg(&client->dev,
> -			"delivery_system=%d modulation=%d frequency=%d symbol_rate=%d inversion=%d\n",
> -			c->delivery_system, c->modulation,
> -			c->frequency, c->symbol_rate, c->inversion);
> +		"delivery_system=%d modulation=%d frequency=%d symbol_rate=%d inversion=%d\n",
> +		c->delivery_system, c->modulation,
> +		c->frequency, c->symbol_rate, c->inversion);
>  
>  	if (!dev->warm) {
>  		ret = -EAGAIN;
> @@ -113,7 +113,7 @@ static int mn88472_set_frontend(struct dvb_frontend *fe)
>  		break;
>  	default:
>  		dev_err(&client->dev, "IF frequency %d not supported\n",
> -				if_frequency);
> +			if_frequency);
>  		ret = -EINVAL;
>  		goto err;
>  	}
> @@ -277,12 +277,12 @@ static int mn88472_init(struct dvb_frontend *fe)
>  	ret = request_firmware(&fw, fw_file, &client->dev);
>  	if (ret) {
>  		dev_err(&client->dev, "firmare file '%s' not found\n",
> -				fw_file);
> +			fw_file);
>  		goto err;
>  	}
>  
>  	dev_info(&client->dev, "downloading firmware from file '%s'\n",
> -			fw_file);
> +		 fw_file);
>  
>  	ret = regmap_write(dev->regmap[0], 0xf5, 0x03);
>  	if (ret)
> @@ -295,10 +295,10 @@ static int mn88472_init(struct dvb_frontend *fe)
>  			len = (dev->i2c_wr_max - 1);
>  
>  		ret = regmap_bulk_write(dev->regmap[0], 0xf6,
> -				&fw->data[fw->size - remaining], len);
> +					&fw->data[fw->size - remaining], len);
>  		if (ret) {
>  			dev_err(&client->dev,
> -					"firmware download failed=%d\n", ret);
> +				"firmware download failed=%d\n", ret);
>  			goto err;
>  		}
>  	}
> @@ -384,7 +384,7 @@ static struct dvb_frontend_ops mn88472_ops = {
>  };
>  
>  static int mn88472_probe(struct i2c_client *client,
> -		const struct i2c_device_id *id)
> +			 const struct i2c_device_id *id)
>  {
>  	struct mn88472_config *config = client->dev.platform_data;
>  	struct mn88472_dev *dev;
> -- 
> 1.9.1

This patch fails to apply to my tree for some reason.  Can you please
refresh it and resend?

thanks,

greg k-h

