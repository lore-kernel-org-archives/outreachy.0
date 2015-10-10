X-GM-THRID: 6203529109849505792
X-Received: by 10.129.148.129 with SMTP id l123mr14481596ywg.35.1444460643343;
        Sat, 10 Oct 2015 00:04:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.166.79 with SMTP id p76ls125349ioe.92.gmail; Sat, 10 Oct
 2015 00:04:03 -0700 (PDT)
X-Received: by 10.50.41.7 with SMTP id b7mr2893005igl.12.1444460643022;
        Sat, 10 Oct 2015 00:04:03 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id pe1si565344pac.2.2015.10.10.00.04.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 00:04:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id ve7so48209320pab.2
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 00:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Px93NiFI1F8ZvW93iA2H8jOHWbxi57i69nS/vLPeI+U=;
        b=lvZcU9q0jGZroSROofZY3/BfP6PPfzp2wGAuR2672JRQibQZlvoMVV3ddh2z1X0Ysb
         m/B9ziLH0KHGE4rnP7QD0KTg0n5aBwje5K1xDjpQVjo10BuVHYgNzkt+Ig7deQT1GrMt
         Lw8ITkIR1WnjLVHgmOyBIMZ531d5+PMbac32n6w+jliX6xS7NTPfIiOhrusfQ1qLpe0s
         6tvUKKUfOWxIbJnAINSQxM7xs3QO5PcOYx6O/d3vHzXNK0FuqQIJgKq5Ob/6YPEl3WpO
         gdjDxGt6s8qL0/OsqU+1R8zbRLbzaBknGxnxFDPD5z87ZuV1dHzGKM11ZKutRoCrJNZt
         c/GA==
X-Received: by 10.68.166.68 with SMTP id ze4mr20559052pbb.74.1444460642837;
        Sat, 10 Oct 2015 00:04:02 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id uc1sm6292242pab.20.2015.10.10.00.04.01
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 10 Oct 2015 00:04:02 -0700 (PDT)
Date: Sat, 10 Oct 2015 12:33:57 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: move open brace in
 line with control flow statement
Message-ID: <20151010070357.GB4795@sudip-pc>
References: <20151009062102.GA31750@Ubuntu-D830>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151009062102.GA31750@Ubuntu-D830>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Oct 08, 2015 at 11:21:13PM -0700, Alison Schofield wrote:
> Move open braces to be in line with "if" control flow statements.
> Addresses checkpatch.pl:
> 	ERROR: that open brace { should be on the previous line
> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> index 6472777..bf65038 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> @@ -1476,8 +1476,8 @@ static int get_key(struct wiphy *wiphy, struct net_device *netdev, u8 key_index,
>  	priv = wiphy_priv(wiphy);
>  
>  
> -	if (!pairwise)
> -	{
> +	if (!pairwise) {
> +

This patch will be introducing new checkpatch warning of:
Blank lines aren't necessary after an open brace '{'.

The blank lines after the brace is not required.

regards
sudip

