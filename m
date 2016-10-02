X-GM-THRID: 6335655497747660800
X-Received: by 10.31.149.143 with SMTP id x137mr4588652vkd.13.1475420041843;
        Sun, 02 Oct 2016 07:54:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.111.135 with SMTP id x129ls1822298itb.9.gmail; Sun, 02 Oct
 2016 07:54:01 -0700 (PDT)
X-Received: by 10.98.95.71 with SMTP id t68mr4580963pfb.7.1475420041450;
        Sun, 02 Oct 2016 07:54:01 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 128si954021pfz.2.2016.10.02.07.54.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 07:54:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.214.2.210])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D51B971;
	Sun,  2 Oct 2016 14:54:00 +0000 (UTC)
Date: Sun, 2 Oct 2016 16:54:01 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Megha Agarwal <agarwal10megha@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [PATCH] staging: media: bcm2048: Replace 'unsigned' with
 'unsigned int'
Message-ID: <20161002145401.GA21187@kroah.com>
References: <20160929073859.GA21701@megha-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160929073859.GA21701@megha-HP-15-Notebook-PC>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Thu, Sep 29, 2016 at 01:08:59PM +0530, Megha Agarwal wrote:
> This is a patch to the radio-bcm2048.c file that fixes up a
> WARNING: Prefer 'unsigned int' to bare use of 'unsigned'
> found by the checkpatch.pl tool
> 
> Signed-off-by: Megha Agarwal <agarwal10megha@gmail.com>
> ---
>  drivers/staging/media/bcm2048/radio-bcm2048.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
> index ea15cc6..f6f847b 100644
> --- a/drivers/staging/media/bcm2048/radio-bcm2048.c
> +++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
> @@ -2022,7 +2022,7 @@ static ssize_t bcm2048_##prop##_read(struct device *dev,		\
>  	return count;							\
>  }
>  
> -DEFINE_SYSFS_PROPERTY(power_state, unsigned, int, "%u", 0)
> +DEFINE_SYSFS_PROPERTY(power_state, unsigned int, int, "%u", 0)
>  DEFINE_SYSFS_PROPERTY(mute, unsigned, int, "%u", 0)
>  DEFINE_SYSFS_PROPERTY(audio_route, unsigned, int, "%u", 0)
>  DEFINE_SYSFS_PROPERTY(dac_output, unsigned, int, "%u", 0)

Why only 1?  And are you sure this is correct?  Did you build it?

greg k-h

