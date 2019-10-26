X-GM-THRID: 6751691743619448832
X-Received: by 2002:a37:bc86:: with SMTP id m128mr8923637qkf.161.1572113156989;
        Sat, 26 Oct 2019 11:05:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:15f9:: with SMTP id p25ls4494589qkm.4.gmail; Sat,
 26 Oct 2019 11:05:55 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw49koEQWjAVXi+f7UtY2kybCW+kC7cLiH5RPfXmrJwogo+0X7UvcpCueGDkXCfEKDt3Ryz
X-Received: by 2002:a37:d93:: with SMTP id 141mr8810121qkn.45.1572113155856;
        Sat, 26 Oct 2019 11:05:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572113155; cv=none;
        d=google.com; s=arc-20160816;
        b=m7QJ+dgBYDLj8cKXHTACOV0w1ChJnT4OzDF3UquTsawiirFxzk9vGp7psoDZ72e4Ut
         AjdhwUnJRl09ejXUOzwxmug/VMir+TL92fzWcqu2JLKCL3iLlrcyl+h3FIYnnrBLVk3l
         8II4QoEvYCHvHGm6hJ+eNg0vJqwiVm/Xn8JuWRsgPn0uoj6GfVdv32iFLbxw9YBVjbv7
         zlkVMJM2KjcP71hP16dYcWa1YdYTkqN314epmI9Y/71Nae822yhWRwL0KQ+mDmR1WhS/
         DEITOHdT+hXkbib0bk+uibzl4R+2r54HqvXAQOLF3IJK7Aw1e5vJ0K0FQwBLe8UzlBrh
         wmRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=KEQYzUJuVM+Xh37aoMgQbnTlvGFKKWu2J2c69nqHlXE=;
        b=SN6ewpxWG64e+pZn/BRxfy6Cmp31svgXzHzn9wGNBMoREk1T03HAFQ0GOLkhJ7uVm5
         4qIs4GGhn1W3yiclCRgpFJA1+TAIuI8sjhbkyNjRxbLwzA0u9F5BIdfkj3QEZv0tmCvl
         Gi5Ob3lzN8S1oM/m5W89E15a+1Bw/id14MHCHTniZfO9ulZM7Afkme3KHK6UzGkksz55
         ijYUEy277TxUNhV77m/PkBIcJRjCtyoStBam7fL3pVHgXdobJ31yt3i5hsHglXvEEpcL
         ffe707WN9ObyuMCoJXf1Ad/tkaz0WqY1S1Padsqe4QRDt27PTx5arRslSnauqB4DM/jn
         C7Dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=T5tWDSm1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d13si336322qtn.4.2019.10.26.11.05.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Oct 2019 11:05:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=T5tWDSm1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4069F20663;
	Sat, 26 Oct 2019 18:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572113154;
	bh=mo7cnc2aUge27iHJt4UudgcRcB8RYFwtC+7Bxy2/M9o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T5tWDSm1Ai4lWRRORhybJFWwQum9K5TZ62lAutswAy/sKQ5x6E5QDA0og84Xoc91h
	 Jo818FmNvu7WZrrYbf6JHHeH99UQnawbhc+ALuOvAUkwz6wu/4uDlGyzgmd0pe+Ckz
	 MvHueRCJvWmfED/bfJE6HL0JXsIxq9o2720Bl4ZA=
Date: Sat, 26 Oct 2019 20:05:52 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Evan Chime <chime.evan.dri.devel@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: clocking-wizard: Remove extra asteriks at
 beginning of multi-line comment
Message-ID: <20191026180552.GD645771@kroah.com>
References: <20191025105210.GA20197@ik-ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191025105210.GA20197@ik-ubuntu>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Fri, Oct 25, 2019 at 11:52:10AM +0100, Evan Chime wrote:
> Remove extra asteriks in the beginning of multi-line comment for structure
> "clk_wzrd". Should be "/*" not "/**", consistent with the kernel coding
> style
> 
> Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
> ---
>  drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
> index e52a64be93f3..566075f2972c 100644
> --- a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
> +++ b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
> @@ -37,7 +37,7 @@ enum clk_wzrd_int_clks {
>  	wzrd_clk_int_max
>  };
>  
> -/**
> +/*

Really?  This is a kerneldoc format, I think this has to have two '**'
characters, right?

thanks,

greg k-h

