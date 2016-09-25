X-GM-THRID: 6333834735065759744
X-Received: by 10.176.1.133 with SMTP id 5mr3640269ual.25.1474797897234;
        Sun, 25 Sep 2016 03:04:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.212 with SMTP id f78ls681707otf.43.gmail; Sun, 25 Sep
 2016 03:04:56 -0700 (PDT)
X-Received: by 10.157.4.72 with SMTP id 66mr3605280otc.26.1474797896844;
        Sun, 25 Sep 2016 03:04:56 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si3651477pfw.1.2016.09.25.03.04.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Sep 2016 03:04:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id EB52C78D;
	Sun, 25 Sep 2016 10:04:55 +0000 (UTC)
Date: Sun, 25 Sep 2016 12:04:59 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Namrata A Shettar <namrataashettar@gmail.com>
Cc: Jarod Wilson <jarod@wilsonet.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Wolfram Sang <wsa-dev@sang-engineering.com>,
	Maciek Borzecki <maciek.borzecki@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] staging: media: lirc: Remove multiple blank lines
Message-ID: <20160925100458.GA4872@kroah.com>
References: <20160924164525.GA12571@namrata-HP-Pavilion-g6-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160924164525.GA12571@namrata-HP-Pavilion-g6-Notebook-PC>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sat, Sep 24, 2016 at 10:15:30PM +0530, Namrata A Shettar wrote:
> Remove multiple blank lines to resolve checkpatch issue.
> 
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
>  drivers/staging/media/lirc/lirc_sasem.c | 11 -----------
>  1 file changed, 11 deletions(-)

You sent another patch with this same subject: as part of a larger
series, what makes this one different?

thanks,

greg k-h

