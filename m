X-GM-THRID: 6389998249315401728
X-Received: by 10.36.127.71 with SMTP id r68mr982070itc.11.1487955001347;
        Fri, 24 Feb 2017 08:50:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.230 with SMTP id z93ls6668633ota.44.gmail; Fri, 24 Feb
 2017 08:50:01 -0800 (PST)
X-Received: by 10.200.34.186 with SMTP id f55mr1065413qta.31.1487955000961;
        Fri, 24 Feb 2017 08:50:00 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id u12si1749673pfd.3.2017.02.24.08.50.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 08:50:00 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4ECF4910;
	Fri, 24 Feb 2017 16:50:00 +0000 (UTC)
Date: Fri, 24 Feb 2017 17:49:54 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: arnaud.patard@rtp-net.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] staging: xgifb: function prototype argument should
 also have an identifier name
Message-ID: <20170224164954.GA17967@kroah.com>
References: <20170222181639.GA30190@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170222181639.GA30190@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.7.2 (2016-11-26)

On Wed, Feb 22, 2017 at 11:46:39PM +0530, Arushi Singhal wrote:
> function prototype argument 'struct vb_device_info *' and 'unsigned
> long' should also have an identifier name.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
> changes in v3
>  -make the subject title more relevant.
>  -change the identifier of struct vb_device_info to XGI_Pr.
> ---
>  drivers/staging/xgifb/vb_init.h | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Does not apply to my tree :(

