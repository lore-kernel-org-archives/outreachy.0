X-GM-THRID: 6338362197429714944
X-Received: by 10.157.34.134 with SMTP id y6mr4669656ota.136.1475820176903;
        Thu, 06 Oct 2016 23:02:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.20.68 with SMTP id h62ls4821148oth.17.gmail; Thu, 06 Oct
 2016 23:02:56 -0700 (PDT)
X-Received: by 10.157.4.12 with SMTP id 12mr4485560otc.145.1475820176609;
        Thu, 06 Oct 2016 23:02:56 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 7si5614122par.0.2016.10.06.23.02.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 23:02:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id t25so2306326pfg.2
        for <outreachy-kernel@googlegroups.com>; Thu, 06 Oct 2016 23:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=zIRYm+WUIDtTx4mpo+Sxn3qtVFEE0VApVJ/oZI7M1mQ=;
        b=kS3qBePhpOLShxfBPfC5U1odviIZZ4E/CL1jiKPLOCN6mJ3GRHftL5QHJ/sR8CL9xP
         HC9Y3Tu7MXQi7W+EDw1aafcFG5ibjBZ9a3V6WwW0z7kuiDnIPelR12cVjlIr4vRpx67u
         6c2jZ1MFOjvzDN5aBE4/epH9l6PwZG3whWN1iRuI9kmCKE/FX6sJdjVj4iUqaN9Gu+I1
         EVi42uhmD1cANrHOQXODZ5QsixYQNB95YpwLdYAqH0QH0XfxThBVAV4HGmWt7TtAW7vN
         zpb5mbcA1l4slw/aVFL1FrMRQErXLdGGnmQTYmukR9PruomQqHK3lQm7h2ACYvuvIOq3
         L+4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=zIRYm+WUIDtTx4mpo+Sxn3qtVFEE0VApVJ/oZI7M1mQ=;
        b=GGCXvO5LU8VaAzK+pCCAlfD1TLIpunntyPRBH9P7CaVuZ+eq6B8v/RLWQua0ivTUKq
         8l6haNC8ZZPy/G/ihDO+vzak2FbtgftnumkGEQ+ETqaQF1bh+LlJ/4ZjmdGYVRdarDcc
         O+tuRt296W7CMGQw3TTEBCfHbzVr5F73K4kNQiaXfdsFUqzd+370wplbfZOq4h9ybLyC
         m5aKTLc2OwSYRuj60dTuqXMY0J1bFmT117+7l9tiRUllRtJsqhkFm7ZFyUpNmHYwA1FW
         y9lWx+YoLF8/a/Xy8UpDmyl4lrPW7/vs8b0Yb6JPGLSImKzqtaGgO1UXw0PSL5RuSicg
         rC+A==
X-Gm-Message-State: AA6/9Rk6BYJzPQiHM64euubE/AkdUGn/0cYA8LxQsFMFTOaJQCZBsOmJAzI9i4igIynE3Q==
X-Received: by 10.98.106.65 with SMTP id f62mr15115263pfc.107.1475820176294;
        Thu, 06 Oct 2016 23:02:56 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([203.215.121.64])
        by smtp.gmail.com with ESMTPSA id q78sm10280589pfj.33.2016.10.06.23.02.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 06 Oct 2016 23:02:55 -0700 (PDT)
Date: Fri, 7 Oct 2016 14:02:47 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: linux-iio@vger.kernel.org, outreachy-kernel@googlegroups.com,
	Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, gregkh@linuxfoundation.org
Subject: Re: [PATCH] staging: iio: ad7606: implement
 IIO_CHAN_INFO_OVERSAMPLING_RATIO
Message-ID: <20161007060246.GA7872@Socrates-DK>
Mail-Followup-To: Lars-Peter Clausen <lars@metafoo.de>,
	linux-iio@vger.kernel.org, outreachy-kernel@googlegroups.com,
	Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, gregkh@linuxfoundation.org
References: <1475764920-7770-1-git-send-email-eraretuya@gmail.com>
 <baef9fc5-c3de-3b47-4e17-de559027e0b4@metafoo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <baef9fc5-c3de-3b47-4e17-de559027e0b4@metafoo.de>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Oct 06, 2016 at 05:43:36PM +0200, Lars-Peter Clausen wrote:
> On 10/06/2016 04:42 PM, Eva Rachel Retuya wrote:
> > This driver predates the availability of IIO_CHAN_INFO_OVERSAMPLING_RATIO
> > attribute wherein usage has some advantages like it can be accessed by
> > in-kernel consumers as well as reduces the code size.
> > 
> > Therefore, use IIO_CHAN_INFO_OVERSAMPLING_RATIO to implement the
> > oversampling_ratio attribute instead of using IIO_DEVICE_ATTR() macro.
> > 
> > Move code from the functions associated with IIO_DEVICE_ATTR() into
> > the read_raw hook as well as add the write_raw hook with both masks set
> > to IIO_CHAN_INFO_OVERSAMPLING_RATIO.
> > 
> > Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
> 
> Looks good, thanks.
> 
> Acked-by: Lars-Peter Clausen <lars@metafoo.de>
> 

Thank you for the feedback!

> I did some cleanup on this driver last week (not yet submitted), this was
> the last bit I hadn't gotten to yet that needs to be done before the driver
> can be moved out of staging.

Anything else about this driver that needs to be addressed? I'll be glad
to help submit patches for those (and in the process learn something new).

By the way, this particular code took my attention (from write_raw of
this patch):

		gpio_set_value(st->pdata->gpio_os0, (ret >> 0) & 1);
		gpio_set_value(st->pdata->gpio_os1, (ret >> 1) & 1);
		gpio_set_value(st->pdata->gpio_os1, (ret >> 2) & 1);

The last line, st->pdata->gpio_os1, is that really intended or is it a
typo? It could have been st->pdata->gpio_os2. I checked the datasheet
and definition, looks like a typo to me. Just checking with everyone for
confirmation.

Thanks,
Eva

