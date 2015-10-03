X-GM-THRID: 6200357690588266496
X-Received: by 10.129.92.197 with SMTP id q188mr15816985ywb.25.1443851958451;
        Fri, 02 Oct 2015 22:59:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.89.228 with SMTP id v91ls1797869qgd.33.gmail; Fri, 02 Oct
 2015 22:59:16 -0700 (PDT)
X-Received: by 10.129.85.149 with SMTP id j143mr16467629ywb.31.1443851956693;
        Fri, 02 Oct 2015 22:59:16 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id uv4si2374207pac.0.2015.10.02.22.59.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 22:59:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pablk4 with SMTP id lk4so124484553pab.3
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 22:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=S4BshVc655uY+/hDe5uHnAmrX4f3NlvxfpKI+jz+/yg=;
        b=Wov0U1YSSP1Nm8SiGLodcTAD2FD/PIWpG0JtF4YVWv9ti3RZHHbI8WDgryD0NT2H+X
         +dt8SNC1+lbI4631w/2eK/6DpkZjE67DIi2ISAUR9FJ9dZoayDpOx/Qg1TF0tGxBRP1E
         I0/gC91t6DEiKmEBBvw21pq6yH93yb1Mb2/XNOzacUGxvSoUZ73FuadXMt4F4I70wdsm
         ScFfQ/hPnvkfXdokGG2fWxuD5miMW0m32aOjpvs3J6SKfVMlKlDKI0Z3lEazTLeqFrgU
         OVF6IuVYnlQjtmmISO+cV9RAzpfOLLL4iEP085Qq9SbS42wxSYgAAhpI8NHAMWK/lCOD
         L/0g==
X-Received: by 10.68.129.231 with SMTP id nz7mr24957752pbb.53.1443851956470;
        Fri, 02 Oct 2015 22:59:16 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.175.61.48])
        by smtp.gmail.com with ESMTPSA id yi8sm15315919pab.22.2015.10.02.22.59.13
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 02 Oct 2015 22:59:15 -0700 (PDT)
Date: Sat, 3 Oct 2015 11:29:09 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com, y2038@lists.linaro.org
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: olpc_dcon: Replace
 timespec with ktime_t
Message-ID: <20151003055909.GC4428@sudip-pc>
References: <1443806645-16504-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1443806645-16504-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Oct 02, 2015 at 07:24:05PM +0200, Ksenija Stanojevic wrote:
> Struct timespec will overflow in year 2038, here it will not cause an
> overflow because it is used with timespec_sub, but still has to be
> removed as part of y2038 changes. Replace it with ktime_t. Also use
> monotonic instead of real-time by replacing functions getnstimeofday
> with ktime_get.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> Reviewed-by: Arnd Bergmann <arnd@arndb.de>
> ---
> Changes in v4:
> 	-fix checkpatch.pl errors/warnings introduced by changes made
You missed one more checkpatch warning.
> 	 in v3.
<snip>
> +		delta_t = ktime_sub(now, dcon->load_time);
> +		if (ktime_to_ns(delta_t) > NSEC_PER_MSEC * 20) {
>  			break;
>  		}
braces are not required for single statement if block.

regards
sudip

