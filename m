X-GM-THRID: 7714883239936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,31430fd6994c5b1e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.201.10 with SMTP id jw10mr6041166wjc.3.1426141660448;
        Wed, 11 Mar 2015 23:27:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.74 with SMTP id v10ls299873wiz.26.canary; Wed, 11 Mar
 2015 23:27:40 -0700 (PDT)
X-Received: by 10.180.91.76 with SMTP id cc12mr6498822wib.7.1426141660139;
        Wed, 11 Mar 2015 23:27:40 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id el6si1002497wib.0.2015.03.11.23.27.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 11 Mar 2015 23:27:40 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,387,1422918000"; 
   d="scan'208";a="102998587"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Mar 2015 07:27:39 +0100
Date: Thu, 12 Mar 2015 07:27:38 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Ioana Ciornei <ciorneiioana@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 6/9] staging: sm750: Move open curly
 bracket on previous line
In-Reply-To: <e915b7cd1e15db4d41555662a06b1bdc80b22ad2.1426121972.git.ciorneiioana@gmail.com>
Message-ID: <alpine.DEB.2.02.1503120727110.2072@localhost6.localdomain6>
References: <cover.1426121972.git.ciorneiioana@gmail.com> <e915b7cd1e15db4d41555662a06b1bdc80b22ad2.1426121972.git.ciorneiioana@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 12 Mar 2015, Ioana Ciornei wrote:

> Place curly open bracket surrounding statements blocks on the same line 
> as the control flow instruction in order to follow with Linux coding style.

It looks like you have mixed two patches somehow.  In several cases here 
you remove a space before a semicolon.

julia

> 
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750.c | 48 +++++++++++++++--------------------------
>  1 file changed, 17 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> index f6083c4..8f12370 100644
> --- a/drivers/staging/sm750fb/sm750.c
> +++ b/drivers/staging/sm750fb/sm750.c
> @@ -175,8 +175,7 @@ static int lynxfb_ops_cursor(struct fb_info* info, struct fb_cursor* fbcursor)
>  	}
>  
>  
> -	if (fbcursor->set & (FB_CUR_SETSHAPE | FB_CUR_SETIMAGE))
> -	{
> +	if (fbcursor->set & (FB_CUR_SETSHAPE | FB_CUR_SETIMAGE)) {
>  		cursor->setData(cursor,
>  						fbcursor->rop,
>  						fbcursor->image.data,
> @@ -260,13 +259,10 @@ static void lynxfb_ops_imageblit(struct fb_info *info, const struct fb_image *im
>  
>  	if (image->depth == 1) {
>  		if (info->fix.visual == FB_VISUAL_TRUECOLOR ||
> -			info->fix.visual == FB_VISUAL_DIRECTCOLOR)
> -		{
> +			info->fix.visual == FB_VISUAL_DIRECTCOLOR) {
>  			fgcol = ((u32*)info->pseudo_palette)[image->fg_color];
>  			bgcol = ((u32*)info->pseudo_palette)[image->bg_color];
> -		}
> -		else
> -		{
> +		} else {
>  			fgcol = image->fg_color;
>  			bgcol = image->bg_color;
>  		}
> @@ -421,7 +417,7 @@ static int lynxfb_ops_set_par(struct fb_info *info)
>  		var->red.length = 8;
>  		var->green.offset = 8;
>  		var->green.length = 8;
> -		var->blue.offset = 0 ;
> +		var->blue.offset = 0;
>  		var->blue.length = 8;
>  		fix->visual = FB_VISUAL_TRUECOLOR;
>  		break;
> @@ -560,8 +556,7 @@ static int lynxfb_ops_mmap(struct fb_info *info, struct vm_area_struct *vma)
>  	printk("lynxfb mmap vm end: %x\n", vma->vm_end);
>  	printk("lynxfb mmap len: %x\n", len);
>  	printk("lynxfb mmap off: %x\n", off);
> -	if ((vma->vm_end - vma->vm_start + off) > len)
> -	{
> +	if ((vma->vm_end - vma->vm_start + off) > len) {
>  		return -EINVAL;
>  	}
>  	off += start;
> @@ -642,7 +637,7 @@ static int lynxfb_ops_check_var(struct fb_var_screeninfo *var, struct fb_info *i
>  		var->red.length = 8;
>  		var->green.offset = 8;
>  		var->green.length = 8;
> -		var->blue.offset = 0 ;
> +		var->blue.offset = 0;
>  		var->blue.length = 8;
>  		info->fix.visual = FB_VISUAL_TRUECOLOR;
>  		break;
> @@ -695,8 +690,7 @@ static int lynxfb_ops_setcolreg(unsigned regno, unsigned red,
>  	if (info->var.grayscale)
>  		red = green = blue = (red * 77 + green * 151 + blue * 28) >> 8;
>  
> -	if (var->bits_per_pixel == 8 && info->fix.visual == FB_VISUAL_PSEUDOCOLOR)
> -	{
> +	if (var->bits_per_pixel == 8 && info->fix.visual == FB_VISUAL_PSEUDOCOLOR) {
>  		red >>= 8;
>  		green >>= 8;
>  		blue >>= 8;
> @@ -705,14 +699,12 @@ static int lynxfb_ops_setcolreg(unsigned regno, unsigned red,
>  	}
>  
>  
> -	if (info->fix.visual == FB_VISUAL_TRUECOLOR && regno < 256 )
> -	{
> +	if (info->fix.visual == FB_VISUAL_TRUECOLOR && regno < 256 ) {
>  		u32 val;
>  
>  		if (var->bits_per_pixel == 16 ||
>  		   var->bits_per_pixel == 32 ||
> -		   var->bits_per_pixel == 24)
> -		{
> +		   var->bits_per_pixel == 24) {
>  			val = chan_to_field(red, &var->red);
>  			val |= chan_to_field(green, &var->green);
>  			val |= chan_to_field(blue, &var->blue);
> @@ -861,9 +853,8 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
>  	};
>  
>  
> -	static const char *fixId[2]=
> -	{
> -	"sm750_fb1", "sm750_fb2",
> +	static const char *fixId[2] = {
> +		"sm750_fb1", "sm750_fb2",
>  	};
>  
>  	int ret, line_length;
> @@ -924,7 +915,7 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
>  	}
>  
>  
> -	for (i=0;i<3;i++) {
> +	for (i = 0; i < 3; i++) {
>  
>  		ret = fb_find_mode(var, info, g_fbmode[index],
>  				pdb[i], cdb[i], NULL, 8);
> @@ -1232,16 +1223,13 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
>  		fbidx = 0;
>  ALLOC_FB:
>  		info[fbidx] = framebuffer_alloc(sizeof(struct lynxfb_par), &pdev->dev);
> -		if (!info[fbidx])
> -		{
> +		if (!info[fbidx]) {
>  			pr_err("Could not allocate framebuffer #%d.\n", fbidx);
>  			if (fbidx == 0)
>  				goto err_info0_alloc;
>  			else
>  				goto err_info1_alloc;
> -		}
> -		else
> -		{
> +		} else {
>  			struct lynxfb_par *par;
>  
>  			pr_info("framebuffer #%d alloc okay\n", fbidx);
> @@ -1362,8 +1350,7 @@ static int __init lynxfb_setup(char *options)
>  		strsep() updates @options to pointer after the first found token
>  		it also returns the pointer ahead the token.
>  		*/
> -	while ((opt = strsep(&options, ":"))!=NULL)
> -	{
> +	while ((opt = strsep(&options, ":"))!=NULL) {
>  		/* options that mean for any lynx chips are configured here */
>  		if (!strncmp(opt, "noaccel", strlen("noaccel")))
>  			g_noaccel = 1;
> @@ -1373,8 +1360,7 @@ static int __init lynxfb_setup(char *options)
>  #endif
>  		else if (!strncmp(opt, "dual", strlen("dual")))
>  			g_dualview = 1;
> -		else
> -		{
> +		else {
>  			strcat(tmp, opt);
>  			tmp += strlen(opt);
>  			if (options != NULL)
> @@ -1410,7 +1396,7 @@ static struct pci_driver lynxfb_driver = {
>  
>  static int __init lynxfb_init(void)
>  {
> -	char *option ;
> +	char *option;
>  	int ret;
>  
>  #ifdef MODULE
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/e915b7cd1e15db4d41555662a06b1bdc80b22ad2.1426121972.git.ciorneiioana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

