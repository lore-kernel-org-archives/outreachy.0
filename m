X-GM-THRID: 6336169348869128192
X-Received: by 10.107.41.136 with SMTP id p130mr4779893iop.11.1475422454996;
        Sun, 02 Oct 2016 08:34:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.36.151 with SMTP id f145ls1761600ita.17.gmail; Sun, 02 Oct
 2016 08:34:12 -0700 (PDT)
X-Received: by 10.66.227.34 with SMTP id rx2mr4592809pac.138.1475422452619;
        Sun, 02 Oct 2016 08:34:12 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ua1si1899038pac.1.2016.10.02.08.34.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 08:34:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.214.2.210])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id F405871;
	Sun,  2 Oct 2016 15:34:11 +0000 (UTC)
Date: Sun, 2 Oct 2016 17:34:17 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/2] staging: rtl8188eu: core: rtw_ap: Replace memcmp
 with ether_addr_equal
Message-ID: <20161002153417.GA20682@kroah.com>
References: <20160930165233.GA4907@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160930165233.GA4907@life-desktop>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Fri, Sep 30, 2016 at 10:22:48PM +0530, Anchal Jain wrote:
> Replace memcmp() with ether_addr_equal()
> issue detect by checkpatch.pl
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_ap.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

You didn't build test this patch, which isn't very nice :(

Please always test your patches by at least building them, otherwise you
will end up with grumpy maintainers...

greg k-h

