X-GM-THRID: 6210938115276668928
X-Received: by 10.129.154.205 with SMTP id r196mr40478294ywg.48.1446097715768;
        Wed, 28 Oct 2015 22:48:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.108.232 with SMTP id hn8ls55584obb.12.gmail; Wed, 28 Oct
 2015 22:48:35 -0700 (PDT)
X-Received: by 10.182.65.67 with SMTP id v3mr7062367obs.38.1446097715397;
        Wed, 28 Oct 2015 22:48:35 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id sm2si3926136pab.0.2015.10.28.22.48.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 22:48:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id z6so29758551pas.2
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 22:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=0muZi1V4zL86lZ3nNA/BM8VNtpDxhlR3QjQ2mXRRkT8=;
        b=yZBcL9N8t1IWzRUuBuk4LQLcIbkFe74ti8i37Gk7v4iwO7lCRXP2cvMWGJYlrIMAXk
         hV6t2L+W8MnjCL7R4mWl+OzbdMLuEPqZgn0UlUuk5HR5I8tnS4/+Ok+DQvFd34a6FdC1
         xF/Nm8HZ9rCzhKLEtTY/DQxk0UcfMC1kzTPxPIbDcCEFLtMx4NJFfn+3Ywv/ZmfJqVuU
         5ZL4Ru6MZCFKrUWRtHcdWJcu9sjZwUDAHnIXkt5FcGTjBQwQHTdRa9YosanN7/PYQ6rJ
         bR0HiY6NHWOMR3PFIk12qJGS5NwdeW96TF9orohIImnPH9sWoj4eIJijrEl2yO4VIzSI
         wf8w==
X-Received: by 10.66.196.168 with SMTP id in8mr38343012pac.27.1446097715231;
        Wed, 28 Oct 2015 22:48:35 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.170.95])
        by smtp.gmail.com with ESMTPSA id ub4sm33217197pac.29.2015.10.28.22.48.33
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 28 Oct 2015 22:48:34 -0700 (PDT)
Date: Thu, 29 Oct 2015 11:18:28 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: lustre: console: Remove
 irrelevant return statement
Message-ID: <20151029054828.GB16140@sudip-pc>
References: <cover.1446096468.git.shivanib134@gmail.com>
 <add1870ead28913d364e09a1d06f85c5da8c74ed.1446096468.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <add1870ead28913d364e09a1d06f85c5da8c74ed.1446096468.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Oct 29, 2015 at 11:02:48AM +0530, Shivani Bhardwaj wrote:
> Remove return statement from the function lstcon_group_ndlink_move()
> as its return type is void.
> Fix checkpatch WARNING: void function return statements are not
> generally useful
> 
> Signed-off-by : Shivani Bhardwaj <shivanib134@gmail.com>

checkpatch is complaining about the "Signed-off-by" because of an
extra space.

regards
sudip

