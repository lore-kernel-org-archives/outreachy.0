X-GM-THRID: 6249599077237915648
X-Received: by 10.66.221.100 with SMTP id qd4mr2446461pac.0.1455297026580;
        Fri, 12 Feb 2016 09:10:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.25.133 with SMTP id c5ls200051igg.3.canary; Fri, 12 Feb
 2016 09:10:26 -0800 (PST)
X-Received: by 10.107.16.87 with SMTP id y84mr3460134ioi.2.1455297026171;
        Fri, 12 Feb 2016 09:10:26 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-yk0-x243.google.com (mail-yk0-x243.google.com. [2607:f8b0:4002:c07::243])
        by gmr-mx.google.com with ESMTPS id l85si912716ywb.2.2016.02.12.09.10.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 09:10:26 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c07::243 as permitted sender) client-ip=2607:f8b0:4002:c07::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c07::243 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x243.google.com with SMTP id z13so2560453ykd.3
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 09:10:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=tNeFTY9frCN56/ioruxOZjzDHIIrIfsJ71+cvfFAoGQ=;
        b=qEIb3t4Yfwgi44CNEY8SUKFUNurXkoysOaSfFaaF+WpKrbjmyBbzCLT+3hvjH0xmHT
         wCICdA01n71b+Z9msIrOeKT+rgMZ5nN5EHByTGMsESGf8HYDyXESSd7TZeKdtkF8S7Mp
         Qe2BWl3k5lJ6rHrJLuKDsyvTG/QeNOFk8nxYrLzIFSoiMMzaHitjEPFpoyQSP142sDbL
         ETYtGJwQwTc5pjlwQlyJrNlNFSLlHj9yzq/B7mIY8qNMqmobF2UZtj2M5PhKiZtoJqDL
         0EO7vtHkMqjX1qkS76S26Thu5fWlVAAUPwppssfAlDCaZLM4dyDm61PGR9VSr8D+JkkJ
         pmDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=tNeFTY9frCN56/ioruxOZjzDHIIrIfsJ71+cvfFAoGQ=;
        b=On0DiGK2xOknVx3i4ydwTFz2eDV3KbUsGxaRQCI/g/MdFpnQD1bw8EEAFFUDyRldj9
         /CTfZo/fwjucidQPt2BehTo4TwL6tCPUeWJvCiaXljHaQZrpay9+ATYXz3H0q4vOMDUR
         GRCH4Z1Ba155O2lS9DDzMX6V94DgmnwJDDeytLZQB/Ql/8EbzteX5W+Lj4KGNKievj2I
         nkn8TYVhGgBxoGrzMzR4IjcZu+Nf3ro75szD/73cTVHEQYvyePelkj9ctdkPKIjEptw4
         rr/k7SUJYFp5YbAvBn0bKbkN61+ZP9zgUy2pJbojSGB6cXfOU++vrGCnO4PzQkZ6ju6R
         bncg==
X-Gm-Message-State: AG10YOS6csR8n9xHe7ncnYvlEAHhsS24An2zf+0CpYEV5mDfaPVW74HIiqevNfQiAJGvyw==
X-Received: by 10.37.231.74 with SMTP id e71mr1584686ybh.129.1455297025986;
        Fri, 12 Feb 2016 09:10:25 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2620:10d:c091:200::a:8dab])
        by smtp.gmail.com with ESMTPSA id f186sm10632460ywa.6.2016.02.12.09.10.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 09:10:25 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Fri, 12 Feb 2016 12:10:24 -0500
From: Tejun Heo <tj@kernel.org>
To: Eva Rachel Retuya <eraretuya@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/5] staging: fbtft: Remove the use of
 CamelCase
Message-ID: <20160212171024.GJ3741@mtj.duckdns.org>
References: <1455210550-11363-1-git-send-email-eraretuya@gmail.com>
 <1455210550-11363-6-git-send-email-eraretuya@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1455210550-11363-6-git-send-email-eraretuya@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Feb 12, 2016 at 01:09:10AM +0800, Eva Rachel Retuya wrote:
> Rename the macro defining constant ROWxCOL into ROW_X_COL to remove
> checkpatch check concerning use of CamelCase and to achieve better
> readability.
> 
> CHECK: Avoid CamelCase: <ROWxCOL>
> 
> Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
> ---
>  drivers/staging/fbtft/fb_ili9481.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fb_ili9481.c b/drivers/staging/fbtft/fb_ili9481.c
> index fb0e6c3..242adb3 100644
> --- a/drivers/staging/fbtft/fb_ili9481.c
> +++ b/drivers/staging/fbtft/fb_ili9481.c
> @@ -64,13 +64,13 @@ static void set_addr_win(struct fbtft_par *par, int xs, int ys, int xe, int ye)
>  
>  #define HFLIP 0x01
>  #define VFLIP 0x02
> -#define ROWxCOL 0x20
> +#define ROW_X_COL 0x20

This really isn't camelcasing.  I can't see how this change is
beneficial.

Thanks.

-- 
tejun

