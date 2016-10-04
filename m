X-GM-THRID: 6336070668192317440
X-Received: by 10.66.122.197 with SMTP id lu5mr1106729pab.156.1475604585222;
        Tue, 04 Oct 2016 11:09:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.182.197 with SMTP id g188ls5118636iof.6.gmail; Tue, 04 Oct
 2016 11:09:41 -0700 (PDT)
X-Received: by 10.98.205.141 with SMTP id o135mr88297pfg.14.1475604581033;
        Tue, 04 Oct 2016 11:09:41 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ua1si1582832pac.1.2016.10.04.11.09.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 11:09:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id t25so5202315pfg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 04 Oct 2016 11:09:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OplKx5nHtUBhaxxLySoIh5hesM+YYfGzGwMqyHOWUvg=;
        b=tF3IZ8Bu6I/cYt9c94T6CYLzVCyW9QB2rurFbTM/h1nyzIMUlOdLFC3Qksj4s7GDXF
         bDRyuSv2tKhBn5i5aFxWKS54SxIvBuGH3+HTjAzTkdwirB3Y8vnWBcKqeOzNEUx87ovt
         U3KWVxL72PTLIHTHzLjD2t6ATjVAR9rYiZBED33J/yfXmfhVUPfVvNzpJzJ2XbTVLwyf
         YcUvuMNs53V6Izlb9vSXk3oR/fe9a+Xea66vgJYKH03qePrRd/yhmy2wwJULs0JQ21iZ
         /q0c77FIiK0t3RGUz7pJXBOS3S2OvMQGlUkSfnWl3X8GF6anwL52ZdAXsmv8zue5PbUV
         nYAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OplKx5nHtUBhaxxLySoIh5hesM+YYfGzGwMqyHOWUvg=;
        b=I+lu2qGKFWOj5soDNFXXGHkj1KcCq8sw+VfTtnOvDDkAUMYt7Q0lXKazY4osk5D01L
         XOj1oW8n/AstsQWVXTkhivexUWwqNeBULz7KQcwjcFY3rzVEhu0XcmtKGT8mQBRHiv5T
         DLCp82nJxdvYrm3501JYZaa35F58Igw/TlnlnbcxAV4xbdseh0rVFYsl/MwhfFhCNNPA
         l1Kd7Wqy4UKI3VPMy2NZ1cikhFNcAhl8W4jUDu5UXYHRVmYLS1ortuONaQm9JNeM1n6O
         i4vOk1g3SlVLtjRV/P/8FH8qtXp2GpaEyqOUkCN/4ZcLh0rZ+0iHmzXWF28IWwOCIwQj
         owow==
X-Gm-Message-State: AA6/9RnmvyWbokFX9aEhhN2HPMcUoh0BEYsxOYycvCi4fUr6dOFXJAgpldqGvy/avNplcg==
X-Received: by 10.98.30.65 with SMTP id e62mr8358476pfe.104.1475604580766;
        Tue, 04 Oct 2016 11:09:40 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id r12sm14344828pfj.82.2016.10.04.11.09.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 04 Oct 2016 11:09:40 -0700 (PDT)
Date: Tue, 4 Oct 2016 11:09:39 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: eraretuya@gmail.com, Jonathan Cameron <jic23@kernel.org>
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, knaack.h@gmx.de,
	pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org,
	daniel.baluta@gmail.com
Subject: Re: [PATCH v2] staging: iio: ad7192: implement
 IIO_CHAN_INFO_SAMP_FREQ
Message-ID: <20161004180938.GA3819@d830.WORKGROUP>
References: <1475308164-3461-1-git-send-email-eraretuya@gmail.com>
 <a1258b09-192c-3870-e7b2-057ceeb1dc62@kernel.org>
 <20161003040045.GB2267@Socrates-DK>
 <3cc1b4d1-b1c9-21f4-8ab1-3672b3aa3845@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3cc1b4d1-b1c9-21f4-8ab1-3672b3aa3845@kernel.org>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Oct 03, 2016 at 08:56:07PM +0100, Jonathan Cameron wrote:
> On 03/10/16 05:00, Eva Rachel Retuya wrote:
> > On Sat, Oct 01, 2016 at 12:35:26PM +0100, Jonathan Cameron wrote:
> >> On 01/10/16 08:49, Eva Rachel Retuya wrote:
> >>> This driver predates the availability of IIO_CHAN_INFO_SAMP_FREQ attribute
> >>> wherein usage has some advantages like it can be accessed by in-kernel
> >>> consumers as well as reduces the code size.
> >>>
> >>> Therefore, use IIO_CHAN_INFO_SAMP_FREQ to implement the sampling_frequency
> >>> attribute instead of using IIO_DEV_ATTR_SAMP_FREQ() macro.
> >>>
> >>> Move code from the functions associated with IIO_DEV_ATTR_SAMP_FREQ() into
> >>> respective read and write hooks with the mask set to IIO_CHAN_INFO_SAMP_FREQ.
> >>>
> >>> Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
> >> Given this is heading away from the generic staging fixes and into the
> >> list of specific IIO tasks, please do make sure to cc the linux-iio
> >> list.
> >>
> >> (I'd prefer that for all IIO touching patches - but give that's somewhat
> >> of an oddity for staging I don't really mind that much)
> >>
> > 
> > My apologies for that. I will include the linux-iio list in the future
> > revisions and patch submissions. (cc'ing the list now..)
> > 
> >> Otherwise, almost perfect, but there is a weird corner in this driver.
> >>
> >> Take a look at what write_raw_get_fmt is set to...
> >> For this write it should return be IIO_VAL_INT;
> >>
> > 
> > I had set the return to IIO_VAL_INT already. Can you please point out where
> > else I had missed?
> You return that for the read which is quite correct, the interesting one
> is the write_raw callback change.  Have a bit of a dig into how that knows
> what it is getting (in val and val2).

Hi Eva,

Replying back in this main thread to keep all in one place.

If you go look at the iio_info struct definition (be sure to scroll up
and see the comments), you'll find this info you need. I believe you'll
add a case for your new attribute to *write_raw_get_fmt().

See if that gets you further along.

Questions, please ask in this thread.
Thanks,
alisons

> 
> > 
> >> Lars / Michael, this driver is only a very small distance from being
> >> fine to move out of staging.  I'm basically seeing two bits of
> >> custom ABI that need documenting and review, but otherwise post
> >> this cleanup looks in pretty good state to me.
> >>
> > 
> > By any chance, are you referring to these:
> > static IIO_DEVICE_ATTR_NAMED(in_v_m_v_scale_available,
> > 			     in_voltage-voltage_scale_available,
> > 			     S_IRUGO, ad7192_show_scale_available, NULL, 0);
> > 
> > static IIO_DEVICE_ATTR(in_voltage_scale_available, S_IRUGO,
> > 		       ad7192_show_scale_available, NULL, 0);
> Those two are actually standard ABI (though there is a long term plan to handle
> the available attributes in a nicer fashion)
> 
> The custom pair are bridge_switch_en and ac_excitation_en,
> > 
> > Can you please guide me as to what to do next on the "documenting" part,
> > and should I send a patchset instead with this and the documentation bit
> > put together?
> This one definitely wants input from Lars-Peter.  I don't know the hardware
> at all.  It might be possible to work out what these are well enough to
> figure out if the ABI is 'right' (by which I mean well defined within the
> full set of IIO ABIs) and to work out some documentation.
> 
> However such docs would still want a review from Lars or one of his colleagues.
> > 
> > Thanks for the feedback,
> You are welcome.
> 
> Jonathan
> > Eva
> > 
> >> Thanks,
> >>
> >> Jonathan
> >>> ---
> >>> Changes in v2:
> >>> * Make commit message more detailed
> >>> * Fix tiny bug about bypassing iio_device_release_direct_mode()
> >>> * Remove unneeded goto and use break instead
> >>>
> >>>  drivers/staging/iio/adc/ad7192.c       | 75 ++++++++++------------------------
> >>>  include/linux/iio/adc/ad_sigma_delta.h |  1 +
> >>>  2 files changed, 22 insertions(+), 54 deletions(-)
> >>>
> >>> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> >>> index 1cf6b79..e6e4505 100644
> >>> --- a/drivers/staging/iio/adc/ad7192.c
> >>> +++ b/drivers/staging/iio/adc/ad7192.c
> >>> @@ -322,57 +322,6 @@ out:
> >>>  	return ret;
> >>>  }
> >>>  
> >>> -static ssize_t ad7192_read_frequency(struct device *dev,
> >>> -				     struct device_attribute *attr,
> >>> -				     char *buf)
> >>> -{
> >>> -	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> >>> -	struct ad7192_state *st = iio_priv(indio_dev);
> >>> -
> >>> -	return sprintf(buf, "%d\n", st->mclk /
> >>> -			(st->f_order * 1024 * AD7192_MODE_RATE(st->mode)));
> >>> -}
> >>> -
> >>> -static ssize_t ad7192_write_frequency(struct device *dev,
> >>> -				      struct device_attribute *attr,
> >>> -				      const char *buf,
> >>> -				      size_t len)
> >>> -{
> >>> -	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> >>> -	struct ad7192_state *st = iio_priv(indio_dev);
> >>> -	unsigned long lval;
> >>> -	int div, ret;
> >>> -
> >>> -	ret = kstrtoul(buf, 10, &lval);
> >>> -	if (ret)
> >>> -		return ret;
> >>> -	if (lval == 0)
> >>> -		return -EINVAL;
> >>> -
> >>> -	ret = iio_device_claim_direct_mode(indio_dev);
> >>> -	if (ret)
> >>> -		return ret;
> >>> -
> >>> -	div = st->mclk / (lval * st->f_order * 1024);
> >>> -	if (div < 1 || div > 1023) {
> >>> -		ret = -EINVAL;
> >>> -		goto out;
> >>> -	}
> >>> -
> >>> -	st->mode &= ~AD7192_MODE_RATE(-1);
> >>> -	st->mode |= AD7192_MODE_RATE(div);
> >>> -	ad_sd_write_reg(&st->sd, AD7192_REG_MODE, 3, st->mode);
> >>> -
> >>> -out:
> >>> -	iio_device_release_direct_mode(indio_dev);
> >>> -
> >>> -	return ret ? ret : len;
> >>> -}
> >>> -
> >>> -static IIO_DEV_ATTR_SAMP_FREQ(S_IWUSR | S_IRUGO,
> >>> -		ad7192_read_frequency,
> >>> -		ad7192_write_frequency);
> >>> -
> >>>  static ssize_t
> >>>  ad7192_show_scale_available(struct device *dev,
> >>>  			    struct device_attribute *attr, char *buf)
> >>> @@ -471,7 +420,6 @@ static IIO_DEVICE_ATTR(ac_excitation_en, S_IRUGO | S_IWUSR,
> >>>  		       AD7192_REG_MODE);
> >>>  
> >>>  static struct attribute *ad7192_attributes[] = {
> >>> -	&iio_dev_attr_sampling_frequency.dev_attr.attr,
> >>>  	&iio_dev_attr_in_v_m_v_scale_available.dev_attr.attr,
> >>>  	&iio_dev_attr_in_voltage_scale_available.dev_attr.attr,
> >>>  	&iio_dev_attr_bridge_switch_en.dev_attr.attr,
> >>> @@ -484,7 +432,6 @@ static const struct attribute_group ad7192_attribute_group = {
> >>>  };
> >>>  
> >>>  static struct attribute *ad7195_attributes[] = {
> >>> -	&iio_dev_attr_sampling_frequency.dev_attr.attr,
> >>>  	&iio_dev_attr_in_v_m_v_scale_available.dev_attr.attr,
> >>>  	&iio_dev_attr_in_voltage_scale_available.dev_attr.attr,
> >>>  	&iio_dev_attr_bridge_switch_en.dev_attr.attr,
> >>> @@ -536,6 +483,10 @@ static int ad7192_read_raw(struct iio_dev *indio_dev,
> >>>  		if (chan->type == IIO_TEMP)
> >>>  			*val -= 273 * ad7192_get_temp_scale(unipolar);
> >>>  		return IIO_VAL_INT;
> >>> +	case IIO_CHAN_INFO_SAMP_FREQ:
> >>> +		*val = st->mclk /
> >>> +			(st->f_order * 1024 * AD7192_MODE_RATE(st->mode));
> >>> +		return IIO_VAL_INT;
> >>>  	}
> >>>  
> >>>  	return -EINVAL;
> >>> @@ -548,7 +499,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
> >>>  			    long mask)
> >>>  {
> >>>  	struct ad7192_state *st = iio_priv(indio_dev);
> >>> -	int ret, i;
> >>> +	int ret, i, div;
> >>>  	unsigned int tmp;
> >>>  
> >>>  	ret = iio_device_claim_direct_mode(indio_dev);
> >>> @@ -572,6 +523,22 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
> >>>  				break;
> >>>  			}
> >>>  		break;
> >>> +	case IIO_CHAN_INFO_SAMP_FREQ:
> >>> +		if (!val) {
> >>> +			ret = -EINVAL;
> >>> +			break;
> >>> +		}
> >>> +
> >>> +		div = st->mclk / (val * st->f_order * 1024);
> >>> +		if (div < 1 || div > 1023) {
> >>> +			ret = -EINVAL;
> >>> +			break;
> >>> +		}
> >>> +
> >>> +		st->mode &= ~AD7192_MODE_RATE(-1);
> >>> +		st->mode |= AD7192_MODE_RATE(div);
> >>> +		ad_sd_write_reg(&st->sd, AD7192_REG_MODE, 3, st->mode);
> >>> +		break;
> >>>  	default:
> >>>  		ret = -EINVAL;
> >>>  	}
> >>> diff --git a/include/linux/iio/adc/ad_sigma_delta.h b/include/linux/iio/adc/ad_sigma_delta.h
> >>> index e7fdec4..5ba430c 100644
> >>> --- a/include/linux/iio/adc/ad_sigma_delta.h
> >>> +++ b/include/linux/iio/adc/ad_sigma_delta.h
> >>> @@ -136,6 +136,7 @@ int ad_sd_validate_trigger(struct iio_dev *indio_dev, struct iio_trigger *trig);
> >>>  		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) | \
> >>>  			BIT(IIO_CHAN_INFO_OFFSET), \
> >>>  		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE), \
> >>> +		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ), \
> >>>  		.scan_index = (_si), \
> >>>  		.scan_type = { \
> >>>  			.sign = 'u', \
> >>>
> >>
> > --
> > To unsubscribe from this list: send the line "unsubscribe linux-iio" in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > 
> 
> --
> To unsubscribe from this list: send the line "unsubscribe linux-iio" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html

