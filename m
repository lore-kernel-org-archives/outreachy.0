X-GM-THRID: 6211053698454388736
X-Received: by 10.66.100.166 with SMTP id ez6mr9871609pab.44.1446276314849;
        Sat, 31 Oct 2015 00:25:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.9.223 with SMTP id 92ls846851ioj.6.gmail; Sat, 31 Oct 2015
 00:25:14 -0700 (PDT)
X-Received: by 10.66.182.135 with SMTP id ee7mr9901861pac.32.1446276314349;
        Sat, 31 Oct 2015 00:25:14 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id fa8si1056727pab.1.2015.10.31.00.25.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 00:25:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id fv9so99065491pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 00:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=EIFZ145o7Hx3cS8Je1yjaOizmK2fe1NEltQqTWozqdQ=;
        b=f1cYjE52YTTlF9lGAFVWQPrXVdt+DIDpvaZsO0WuTXfp4QUaYTxrLMD7bBMKXhffvo
         6k6suMPtGwUWlS43lKAZyMrsukn3c48rDD43/3QplRNTwidKOsjuJ9939TgXON8EOunh
         GFOK0Yz/Sj7tywroXMbVql9q3CyxiQnq51vT8OBVhxqzlwLIhiCMoXlbi/dL+bGxMkW+
         iHHHXUqAYdnyWcNqNxpBoreOjeJ0EHzMTDkBT/8Hh4eXbYn+WA16x0cuoR6Tvx2qfE+B
         Pn7UAG5a5iWdiFO7tAYXALA6h/7m3CMmyuAB75MZr/gP0hG2N4ICqFeqR3ghvS02oHLw
         r/AA==
X-Received: by 10.68.170.101 with SMTP id al5mr13666207pbc.38.1446276314224;
        Sat, 31 Oct 2015 00:25:14 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.128.226])
        by smtp.gmail.com with ESMTPSA id xz5sm12089489pbb.12.2015.10.31.00.25.12
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 00:25:13 -0700 (PDT)
Date: Sat, 31 Oct 2015 12:55:08 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 3/5] staging: media: bcm2048:
 remove unnecessary blank lines
Message-ID: <20151031072508.GC5145@sudip-pc>
References: <cover.1446235582.git.amarjargal.gundjalam@gmail.com>
 <27b9f66c39d5cd3e32f01cc09acec7ddd0c33cca.1446235583.git.amarjargal.gundjalam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <27b9f66c39d5cd3e32f01cc09acec7ddd0c33cca.1446235583.git.amarjargal.gundjalam@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Oct 30, 2015 at 01:21:05PM -0700, Amarjargal Gundjalam wrote:
> This patch fixes the checkpatch issues:
> 
> CHECK: Please don't use multiple blank lines
> CHECK: Blank lines aren't necessary after an open brace '{'
> 
> Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
> ---
>  drivers/staging/media/bcm2048/radio-bcm2048.c |   10 +---------
>  1 file changed, 1 insertion(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
> index e65c83c..f8578fb 100644
> --- a/drivers/staging/media/bcm2048/radio-bcm2048.c
> +++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
> @@ -179,7 +179,6 @@
>  #define BCM2048_DEFAULT_TIMEOUT		1500
>  #define BCM2048_AUTO_SEARCH_TIMEOUT	3000
>  
> -
>  #define BCM2048_FREQDEV_UNIT		10000
>  #define BCM2048_FREQV4L2_MULTI		625
>  #define dev_to_v4l2(f)	((f * BCM2048_FREQDEV_UNIT) / BCM2048_FREQV4L2_MULTI)
> @@ -1436,10 +1435,8 @@ static void bcm2048_parse_rds_pi(struct bcm2048_device *bdev)
>  	u16 pi;
>  
>  	for (i = 0; i < bdev->fifo_size; i += BCM2048_RDS_FIFO_DUPLE_SIZE) {
> -
>  		/* Block A match, only data without crc errors taken */
>  		if (bdev->rds_info.radio_text[i] == BCM2048_RDS_BLOCK_A) {
> -
>  			pi = (bdev->rds_info.radio_text[i + 1] << 8) +
>  				bdev->rds_info.radio_text[i + 2];
>  
> @@ -1494,8 +1491,7 @@ static int bcm2048_parse_rt_match_b(struct bcm2048_device *bdev, int i)
>  		return -EIO;
>  
>  	if ((bdev->rds_info.radio_text[i] & BCM2048_RDS_BLOCK_MASK) ==
> -		BCM2048_RDS_BLOCK_B) {
> -
> +	    BCM2048_RDS_BLOCK_B) {

This is an unrelated change from your commit message. This should have
been included in your 1/5 patch.

regards
sudip

