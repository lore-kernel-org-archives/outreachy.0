X-GM-THRID: 6210663897171492864
X-Received: by 10.66.221.42 with SMTP id qb10mr25448520pac.35.1446037534992;
        Wed, 28 Oct 2015 06:05:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.113.131 with SMTP id iy3ls2171876obb.93.gmail; Wed, 28 Oct
 2015 06:05:34 -0700 (PDT)
X-Received: by 10.182.52.226 with SMTP id w2mr39627403obo.40.1446037534398;
        Wed, 28 Oct 2015 06:05:34 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id pe1si4880274pac.2.2015.10.28.06.05.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 06:05:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id hy1so1013047pad.0
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 06:05:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=MWMllBMd1hwaCuqBLP2UU2bA4nIzuZq9c1l3LsNFpwc=;
        b=PGk0BTbb8L9vtwBi+qpca5jWyPSoOlamnQdbwXjrQhmq2XTEDdgyV8ofZ289RB8cuU
         HaoCG8QKqYu5ZBSs2KoaHzTo8SHKxugUW0c1ORfVptLj7FiXCEm1BciQ2M0FSQcsH4eg
         Jy/T1Scbt+wb62vZbfGJHeiUsgaGRslKTa65cH49umvkwVmWYEXuLsGkqWvmdBiOTPgp
         vaepUW7xRrdTPp+H6PKQLhHMgljbKDajYtRPWJWVmGbOcNY3+LXSbq8142S4JUpgsjm9
         jil4k9VIFUYhqpV7fZXCdHxuGzFgoKY6mmF/lTVZdz+lOAXMpJEO2QXl7nHAb9WlVEtt
         2Mbg==
X-Received: by 10.66.156.169 with SMTP id wf9mr33947110pab.91.1446037534216;
        Wed, 28 Oct 2015 06:05:34 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.155.175])
        by smtp.gmail.com with ESMTPSA id ug4sm45602245pac.11.2015.10.28.06.05.32
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 28 Oct 2015 06:05:33 -0700 (PDT)
Date: Wed, 28 Oct 2015 18:35:03 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/3] Staging: wilc1000:
 linux_wlan_sdio: Drop unneeded wrapper functions
Message-ID: <20151028130503.GA16810@sudip-pc>
References: <cover.1446032441.git.shivanib134@gmail.com>
 <5a66436fde0503739c5a6e99c6cc5c9c2c2a7cbf.1446032441.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5a66436fde0503739c5a6e99c6cc5c9c2c2a7cbf.1446032441.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Wed, Oct 28, 2015 at 05:18:21PM +0530, Shivani Bhardwaj wrote:
> Remove the functions linux_sdio_get_speed(), linux_sdio_set_max_speed()
> and linux_sdio_set_default_speed(). Replace their calls with appropriate
> functions. Also, definitions associated with these functions should be
> removed.
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---

You have not build tested it.
WARNING: "linux_sdio_set_default_speed" [drivers/staging/wilc1000/wilc1000.ko] undefined!
WARNING: "linux_sdio_set_max_speed" [drivers/staging/wilc1000/wilc1000.ko] undefined!

We have:
wilc1000/linux_wlan.c:  nwi->io_func.u.sdio.sdio_set_default_speed = linux_sdio_set_default_speed;

and also:
nwi->io_func.u.sdio.sdio_set_max_speed = linux_sdio_set_max_speed;

regards
sudip

