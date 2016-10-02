X-GM-THRID: 6336161909682733056
X-Received: by 10.200.56.181 with SMTP id f50mr4369443qtc.11.1475404198698;
        Sun, 02 Oct 2016 03:29:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.212 with SMTP id f78ls8042689otf.43.gmail; Sun, 02 Oct
 2016 03:29:58 -0700 (PDT)
X-Received: by 10.31.165.137 with SMTP id o131mr4378930vke.38.1475404198362;
        Sun, 02 Oct 2016 03:29:58 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si6325949par.0.2016.10.02.03.29.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 03:29:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (smb-adpcdg2-02.hotspot.hub-one.net [213.174.99.136])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B1A4971;
	Sun,  2 Oct 2016 10:29:57 +0000 (UTC)
Date: Sun, 2 Oct 2016 12:30:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel@googlegroups.com, knaack.h@gmx.de, pmeerw@pmeerw.net
Subject: Re: [PATCH] staging: iio: adc: ad7192: Fix block comment
Message-ID: <20161002103003.GB18602@kroah.com>
References: <cover.1475252219.git.anchalj109@gmail.com>
 <e55c4a26afeb396db3cefe4071125b228d4ba3a0.1475252219.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e55c4a26afeb396db3cefe4071125b228d4ba3a0.1475252219.git.anchalj109@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Fri, Sep 30, 2016 at 09:54:02PM +0530, Anchal Jain wrote:
> This patch fix the problem of block comment when the block comment 
> detect by the checkpatch.pl 
> CHECK: Block comments use a trailing */ on a separate line
> so to fix this problem just remove trailing */ and add it on the next line
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/iio/adc/ad7192.c | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)

Please always cc: the proper maintainers for stuff like this, I think
you forgot some...

thanks,

greg k-h

