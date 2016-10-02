X-GM-THRID: 6335769509399363584
X-Received: by 10.129.5.216 with SMTP id 207mr4667893ywf.6.1475421241997;
        Sun, 02 Oct 2016 08:14:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.13 with SMTP id f13ls3377690ioe.45.gmail; Sun, 02 Oct
 2016 08:14:01 -0700 (PDT)
X-Received: by 10.36.29.7 with SMTP id 7mr3959208itj.2.1475421241615;
        Sun, 02 Oct 2016 08:14:01 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id um12si6549036pab.2.2016.10.02.08.14.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 08:14:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.214.2.210])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E239B71;
	Sun,  2 Oct 2016 15:14:00 +0000 (UTC)
Date: Sun, 2 Oct 2016 17:12:18 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: knaack.h@gmx.de, outreachy-kernel@googlegroups.com,
	michael.hennerich@analog.com
Subject: Re: [PATCH v2 1/2] staging: iio: cdc: ad7152: Add blank line after
 declarations to increase readability
Message-ID: <20161002151218.GD10868@kroah.com>
References: <20160929150109.GA4059@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160929150109.GA4059@life-desktop>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Thu, Sep 29, 2016 at 08:31:19PM +0530, Anchal Jain wrote:
> Add a blank line after a function declaration because local variable 
> declarations should be seprated from the function's statments by a blank line
> to increase the readability of a code.  
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/iio/cdc/ad7152.c | 4 ++++
>  1 file changed, 4 insertions(+)

Why do you have trailing whitespace in your changelog comment?

Also, you forgot to cc: the IIO maintainers :(

