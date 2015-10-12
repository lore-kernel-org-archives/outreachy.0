X-GM-THRID: 6204685727304777728
X-Received: by 10.107.14.196 with SMTP id 187mr1197106ioo.24.1444646699071;
        Mon, 12 Oct 2015 03:44:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.205 with SMTP id a71ls1487285qgf.23.gmail; Mon, 12 Oct
 2015 03:44:58 -0700 (PDT)
X-Received: by 10.129.103.4 with SMTP id b4mr23501562ywc.24.1444646698472;
        Mon, 12 Oct 2015 03:44:58 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id zg1si1609091pbb.2.2015.10.12.03.44.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 03:44:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pabrc13 with SMTP id rc13so16323418pab.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 03:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=4hFdN0SQBwil57cgBRoA9j4f2UH61pV+7mHwHxuimlI=;
        b=PxO1+Yu4ohOYA/B34MEFe/46xBL5Sno6Pu7Bw0hEla7yfc16MdXnuPeGFdPx4IfR53
         TFeSNvDRchT9jxCAtQwiSAGzZtgDnHkzOhKgvcdC0c4DeXrW7iSnabVjSsDJYCc3Q4w8
         LrArC5ZFuLuI9RfAgA4v2Rppa+WBa6Rtd1uZvFOpNYSe5uVUuCUu+s3NHXBYg1cPcTZ6
         3IxRNXPxN5RZWU10sxqwC6iL6frvZn+vhfRTXGFrTw/3ydzFRM5G+tRT8ryq/M5VssAh
         oK2mXQjTnvyhUD9ImYvyQjilrA8eyZ7TC6Rzlk4hPglYVaqI4BS9u0pRCF/z8oTXhXyk
         iMJQ==
X-Received: by 10.66.161.234 with SMTP id xv10mr16459285pab.131.1444646698207;
        Mon, 12 Oct 2015 03:44:58 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id su3sm17573238pbc.83.2015.10.12.03.44.55
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 12 Oct 2015 03:44:56 -0700 (PDT)
Date: Mon, 12 Oct 2015 16:14:52 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: xgifb: XGI_main_26: Remove
 unused code
Message-ID: <20151012104452.GE13596@sudip-pc>
References: <20151012090922.GA30043@ubuntu>
 <alpine.DEB.2.10.1510121122220.2652@hadrien>
 <CAKHNQQHhftvBwJ+6ACmA-MgvaqRbwXhsCHyP8Wpc=wwQVg2wbw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKHNQQHhftvBwJ+6ACmA-MgvaqRbwXhsCHyP8Wpc=wwQVg2wbw@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Mon, Oct 12, 2015 at 03:28:33PM +0530, Shivani Bhardwaj wrote:
> On Mon, Oct 12, 2015 at 2:52 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > On Mon, 12 Oct 2015, Shivani Bhardwaj wrote:
> >
> >> Remove unused variable and its occurences as it is not used anywhere in
> >> the code.
> >> Issue found using coccinelle.
> >>
> >> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> >> ---
> >>
> >> -     /* Calculation wrong for 1024x600 - force it to 60Hz */
> >> -     if ((var->xres == 1024) && (var->yres == 600))
> >> -             refresh_rate = 60;
> >
> > Could it be supposed to be xgifb_info->refresh_rate = 60; ?
> >
> > julia
> >
> 
> Won't that be a part of structure whose object is xgifb_info? This is
> any normal int type. Plus, it doesn't give any errors when removed, it
> should have if it were xgifb_info's member. Please correct me if I  am
> wrong.

From C syntax point of view your patch is correct. But looking at the
comment mentioned there this could have been:

diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
index 5a6251a4..0436dbe 100644
--- a/drivers/staging/xgifb/XGI_main_26.c
+++ b/drivers/staging/xgifb/XGI_main_26.c
@@ -1230,7 +1230,7 @@ static int XGIfb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
 	unsigned int vtotal = 0;
 	unsigned int drate = 0, hrate = 0;
 	int found_mode = 0;
-	int refresh_rate, search_idx;
+	int search_idx;
 
 	if ((var->vmode & FB_VMODE_MASK) == FB_VMODE_NONINTERLACED) {
 		vtotal = var->upper_margin + var->yres + var->lower_margin
@@ -1268,7 +1268,7 @@ static int XGIfb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
 
 	/* Calculation wrong for 1024x600 - force it to 60Hz */
 	if ((var->xres == 1024) && (var->yres == 600))
-		refresh_rate = 60;
+		xgifb_info->refresh_rate = 60;
 
 	search_idx = 0;
 	while ((XGIbios_mode[search_idx].mode_no != 0) &&

---
Maybe this was the actual intention of the developer as there is also
another global static variable named as refresh_rate which is having the
refresh frequency and saving the Hz value in xgifb_info->refresh_rate.
But that part is in the probe function and the probe will be called
before fb_check_var callback.
Anyways, this was just a thought, please donot send v2 based on this.
Let Greg see it first.

regards
sudip

