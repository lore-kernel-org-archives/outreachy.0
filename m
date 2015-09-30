X-GM-THRID: 6200281981833445376
X-Received: by 10.112.40.17 with SMTP id t17mr509920lbk.10.1443617333751;
        Wed, 30 Sep 2015 05:48:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.109.200 with SMTP id hu8ls170478wib.0.gmail; Wed, 30 Sep
 2015 05:48:53 -0700 (PDT)
X-Received: by 10.180.12.170 with SMTP id z10mr623179wib.1.1443617333329;
        Wed, 30 Sep 2015 05:48:53 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id o5si234450wib.0.2015.09.30.05.48.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 05:48:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=mahfouz.saif.elyazal@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id fx3so195460189wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 05:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=X9SWh0Pea1lI54PVwiEUBtkK5JjB26PZJ2SvBiIUDeg=;
        b=pBtKoPOrDHDhkIsTrj0645zCvuT9nQLF1OkWMyLJH3qWljjw/MS+7l6Hq5v0Yvivve
         YXvTgBu/+1HADbg/UHVlEEIu8w7wcYDqqRq6c/iorDF/c14PGOvY0R6Jyl6SKx01IjNt
         drqmJI5ApywO/ebnz/5i7MCODyzDz8sU58Md2+18hnUvXpsK6vmdq3QwjlY6zY1ds2Rt
         53Q6ptxoOLlbN2VCpclre7hrag/IJBMHtPbGZ0FB/ujmCVuqlTH74CQUuDS9ZbTksv7S
         hjNjwi90z0OwfavhKOuGRXcO5gDWz87eTn/IYjkDd4X4RDnJIojh27gIEGQnj+yDWRQI
         kI1Q==
X-Received: by 10.194.62.112 with SMTP id x16mr4027299wjr.20.1443617333048;
        Wed, 30 Sep 2015 05:48:53 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.239.145])
        by smtp.gmail.com with ESMTPSA id o10sm610747wia.4.2015.09.30.05.48.51
        (version=TLS1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 30 Sep 2015 05:48:52 -0700 (PDT)
Date: Wed, 30 Sep 2015 14:48:49 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: fbtft: Remove debug
 messages related to DEBUG_WRITE_VMEM
Message-ID: <20150930124849.GA3692@waves>
References: <1443615633-5978-1-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1443615633-5978-1-git-send-email-shraddha.6596@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Sep 30, 2015 at 05:50:32PM +0530, Shraddha Barke wrote:

Hello Shraddha,

Nice effort done there. But you forgot the cover letter for this
patch set. Check the section 'Submitting a patchset' in:

http://kernelnewbies.org/Outreachyfirstpatch

for instructions to generate a patchset and its cover letter.

> Remove debug messages related to fbtft_par_dbg(DEBUG_WRITE_VMEM.. )
> as this info can be obtained using kernel function tracer
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/fbtft/fb_agm1264k-fl.c | 2 --
>  drivers/staging/fbtft/fb_pcd8544.c     | 2 --
>  drivers/staging/fbtft/fb_ssd1306.c     | 2 --
>  drivers/staging/fbtft/fb_tls8204.c     | 2 --
>  drivers/staging/fbtft/fb_uc1611.c      | 2 --
>  drivers/staging/fbtft/fb_uc1701.c      | 2 --
>  drivers/staging/fbtft/fb_watterott.c   | 4 ----
>  7 files changed, 16 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
> index 2a2d53c..88718f6 100644
> --- a/drivers/staging/fbtft/fb_agm1264k-fl.c
> +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
> @@ -278,8 +278,6 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
>  	if (!convert_buf)
>  		return -ENOMEM;
>  
> -	fbtft_par_dbg(DEBUG_WRITE_VMEM, par, "%s()\n", __func__);
> -
>  	/* converting to grayscale16 */
>  	for (x = 0; x < par->info->var.xres; ++x)
>  		for (y = 0; y < par->info->var.yres; ++y) {
> diff --git a/drivers/staging/fbtft/fb_pcd8544.c b/drivers/staging/fbtft/fb_pcd8544.c
> index 828174a..8b52523 100644
> --- a/drivers/staging/fbtft/fb_pcd8544.c
> +++ b/drivers/staging/fbtft/fb_pcd8544.c
> @@ -117,8 +117,6 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
>  	int x, y, i;
>  	int ret = 0;
>  
> -	fbtft_par_dbg(DEBUG_WRITE_VMEM, par, "%s()\n", __func__);
> -
>  	for (x = 0; x < 84; x++) {
>  		for (y = 0; y < 6; y++) {
>  			*buf = 0x00;
> diff --git a/drivers/staging/fbtft/fb_ssd1306.c b/drivers/staging/fbtft/fb_ssd1306.c
> index 7568e94..568b433 100644
> --- a/drivers/staging/fbtft/fb_ssd1306.c
> +++ b/drivers/staging/fbtft/fb_ssd1306.c
> @@ -165,8 +165,6 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
>  	int x, y, i;
>  	int ret = 0;
>  
> -	fbtft_par_dbg(DEBUG_WRITE_VMEM, par, "%s()\n", __func__);
> -
>  	for (x = 0; x < par->info->var.xres; x++) {
>  		for (y = 0; y < par->info->var.yres/8; y++) {
>  			*buf = 0x00;
> diff --git a/drivers/staging/fbtft/fb_tls8204.c b/drivers/staging/fbtft/fb_tls8204.c
> index 4e16ea7..d609f87 100644
> --- a/drivers/staging/fbtft/fb_tls8204.c
> +++ b/drivers/staging/fbtft/fb_tls8204.c
> @@ -98,8 +98,6 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
>  	int x, y, i;
>  	int ret = 0;
>  
> -	fbtft_par_dbg(DEBUG_WRITE_VMEM, par, "%s()\n", __func__);
> -
>  	for (y = 0; y < HEIGHT / 8; y++) {
>  		u8 *buf = par->txbuf.buf;
>  		/* The display is 102x68 but the LCD is 84x48.  Set
> diff --git a/drivers/staging/fbtft/fb_uc1611.c b/drivers/staging/fbtft/fb_uc1611.c
> index 5b83661..664e313 100644
> --- a/drivers/staging/fbtft/fb_uc1611.c
> +++ b/drivers/staging/fbtft/fb_uc1611.c
> @@ -230,8 +230,6 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
>  	int x, y, i;
>  	int ret = 0;
>  
> -	fbtft_par_dbg(DEBUG_WRITE_VMEM, par, "%s()\n", __func__);
> -
>  	switch (par->pdata->display.buswidth) {
>  	case 8:
>  		switch (par->info->var.rotate) {
> diff --git a/drivers/staging/fbtft/fb_uc1701.c b/drivers/staging/fbtft/fb_uc1701.c
> index 28b13cf..28aa100 100644
> --- a/drivers/staging/fbtft/fb_uc1701.c
> +++ b/drivers/staging/fbtft/fb_uc1701.c
> @@ -146,8 +146,6 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
>  	int x, y, i;
>  	int ret = 0;
>  
> -	fbtft_par_dbg(DEBUG_WRITE_VMEM, par, "%s()\n", __func__);
> -
>  	for (y = 0; y < PAGES; y++) {
>  		buf = par->txbuf.buf;
>  		for (x = 0; x < WIDTH; x++) {
> diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
> index c480049..9c2f0e3 100644
> --- a/drivers/staging/fbtft/fb_watterott.c
> +++ b/drivers/staging/fbtft/fb_watterott.c
> @@ -74,8 +74,6 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
>  	int i, j;
>  	int ret = 0;
>  
> -	fbtft_par_dbg(DEBUG_WRITE_VMEM, par, "%s()\n", __func__);
> -
>  	start_line = offset / par->info->fix.line_length;
>  	end_line = start_line + (len / par->info->fix.line_length) - 1;
>  
> @@ -113,8 +111,6 @@ static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
>  	int i, j;
>  	int ret = 0;
>  
> -	fbtft_par_dbg(DEBUG_WRITE_VMEM, par, "%s()\n", __func__);
> -
>  	start_line = offset / par->info->fix.line_length;
>  	end_line = start_line + (len / par->info->fix.line_length) - 1;
>  
> -- 
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443615633-5978-1-git-send-email-shraddha.6596%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

