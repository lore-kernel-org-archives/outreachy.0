X-GM-THRID: 6202253257836855296
X-Received: by 10.66.194.168 with SMTP id hx8mr14666351pac.19.1444464932974;
        Sat, 10 Oct 2015 01:15:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.103.161 with SMTP id fx1ls842016obb.44.gmail; Sat, 10 Oct
 2015 01:15:32 -0700 (PDT)
X-Received: by 10.182.230.197 with SMTP id ta5mr14348617obc.37.1444464932623;
        Sat, 10 Oct 2015 01:15:32 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id wl2si527177pab.1.2015.10.10.01.15.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 01:15:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id ex6so108136787pac.0
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 01:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=3x/jBe5QjcY3wjROOm+rjKGm3EJ2mWaFpQvirc4eX5o=;
        b=CNFbu50C64TB/KvbIAnp0a22RrPy4dpWmch8+zwVDa/lQ/+K0XWo7XqAIXW6H8fT9K
         EGzyAGk7yWHzO/3x8x0+Zpl9a2u7Z/dEcZtUcNdE42x6cbB1ay7s6NRHdvk87V6gkb0t
         psAauFqlX+Yh3u98wMCUGsIigRRx2BoDbwfhBSKSxxKvij6l8MxjPpxxV7rgXzwRxBiO
         yDP9L2w+Z1Q9Z72C/xEx6qGukodhjYGfpBhxeftrQKQEV3DeBkt6G7ZwiVTObgklt3th
         ii9D/UW0HRmoCsh7llEcL/CDUbqamd0j+Fd0AzHEVsNnMG6Q3BVmZ/t/5Icf0QTIF4sq
         SUBg==
X-Received: by 10.66.250.197 with SMTP id ze5mr20995253pac.50.1444464932465;
        Sat, 10 Oct 2015 01:15:32 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id xz5sm6706631pbb.12.2015.10.10.01.15.30
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 10 Oct 2015 01:15:32 -0700 (PDT)
Date: Sat, 10 Oct 2015 13:45:27 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8712: usleep_range is
 preferred over udelay
Message-ID: <20151010081527.GG4795@sudip-pc>
References: <20151009210528.GA29402@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151009210528.GA29402@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Sat, Oct 10, 2015 at 02:35:28AM +0530, Amitoj Kaur Chawla wrote:
> Fix checkpatch.pl issue: "CHECK: usleep_range is preferred over
> udelay;
> see Documentation/timers/timers-howto.txt".
> Replace `udelay()` with a call to `usleep_range()` with a reasonable
> upper limit determined by the other sleeping functions present.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
> Changes in v2:
>         -Modified commit message
>         -Replaced the second udelay() with usleep_range() present in the 
>          same function
> 
>  drivers/staging/rtl8712/hal_init.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
> index 15c6160..2031291 100644
> --- a/drivers/staging/rtl8712/hal_init.c
> +++ b/drivers/staging/rtl8712/hal_init.c
> @@ -209,7 +209,7 @@ static u8 rtl8712_dl_fw(struct _adapter *padapter)
>  		i = 10;
>  		tmp16 = r8712_read16(padapter, TCR);
>  		while (((tmp16 & _IMEM_CODE_DONE) == 0) && (i > 0)) {
> -			udelay(10);
> +			usleep_range(10,1000);

checkpatch should complain here about a space after ','

regards
sudip

