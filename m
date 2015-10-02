X-GM-THRID: 6200357690588266496
X-Received: by 10.140.135.5 with SMTP id 5mr11297473qhh.11.1443760878062;
        Thu, 01 Oct 2015 21:41:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.47 with SMTP id j44ls1390690qge.4.gmail; Thu, 01 Oct
 2015 21:41:16 -0700 (PDT)
X-Received: by 10.129.84.198 with SMTP id i189mr11165563ywb.32.1443760876759;
        Thu, 01 Oct 2015 21:41:16 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id wl2si1435229pab.1.2015.10.01.21.41.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 21:41:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id lk4so95129083pab.3
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 21:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ALugzWZLLfP/3ncdQ+x5wKt9iopr5Cas4gQvUh8sH60=;
        b=jqV234/xBB5fT8iCLl+gUnkFgaLqfpslPlfxsVUd3MwTA+S5uJCuinoI4nqbxBMZFq
         /ixSkyug04v/Hvyoze13aeoZ8xaOdELBTOumn7gQW+Mb/PCC1htohqFelLrF3t1whCg8
         hI1jAkCsAJ797ibMq6EPLkyH1Ca2v45uqk7TcCre6iio8zLdDshof/AKZoD/9z5zwYhI
         3cGmab1xJMi89ffOMuL9U7V1QpdzBQvEw1DN/+z35JDbdqkrVKaKsgPXi9NIiIyDB4iq
         Yo1cplaYoIGNbdsgI1CMdcOWbtHv/JAhvokcmIfafhvSUXZGia/DxVnfDpKjKGdjFvNr
         bMBQ==
X-Received: by 10.68.68.233 with SMTP id z9mr17343931pbt.132.1443760876501;
        Thu, 01 Oct 2015 21:41:16 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.244.224])
        by smtp.gmail.com with ESMTPSA id bo5sm9659500pbb.76.2015.10.01.21.41.14
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 01 Oct 2015 21:41:15 -0700 (PDT)
Date: Fri, 2 Oct 2015 10:11:06 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com, y2038@lists.linaro.org
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: olpc_dcon: Replace
 timespec with ktime_t
Message-ID: <20151002044106.GA3544@sudip-pc>
References: <1443713340-3161-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1443713340-3161-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Oct 01, 2015 at 05:29:00PM +0200, Ksenija Stanojevic wrote:
> Struct timespec will overflow in year 2038, here it will not cause an
> overflow because it is used with timespec_sub, but still has to be
> removed as part of y2038 changes. Replace it with ktime_t. Also use
> monotonic instead of real-time by replacing functions getnstimeofday
> with ktime_get.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
Please always test your patch with checkpatch before sending. It has
trailing whitespace.
>
<snip>
> @@ -355,14 +354,14 @@ static void dcon_source_switch(struct work_struct *work)
>  			 * deassert and reassert, and hope for the best.
>  			 * see http://dev.laptop.org/ticket/9664
>  			 */
> -			delta_t = timespec_sub(dcon->irq_time, dcon->load_time);
> -			if (dcon->switched && delta_t.tv_sec == 0 &&
> -					delta_t.tv_nsec < NSEC_PER_MSEC * 20) {
> +			delta_t = ktime_sub(dcon->irq_time, dcon->load_time);
> +			if (dcon->switched && 
whitespace error here.

regards
sudip

