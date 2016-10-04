X-GM-THRID: 6337380973243531264
X-Received: by 10.36.28.11 with SMTP id c11mr566316itc.36.1475555003103;
        Mon, 03 Oct 2016 21:23:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.177 with SMTP id 46ls11619933oth.38.gmail; Mon, 03 Oct
 2016 21:23:22 -0700 (PDT)
X-Received: by 10.157.34.134 with SMTP id y6mr401701ota.136.1475555002725;
        Mon, 03 Oct 2016 21:23:22 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id d11si1707854pfl.2.2016.10.03.21.23.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 21:23:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.214.2.210])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id EB7F071;
	Tue,  4 Oct 2016 04:23:21 +0000 (UTC)
Date: Tue, 4 Oct 2016 06:23:23 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Keila Novo <laurana5@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH]board/Kconfig: Add a paragraph that describes the simbol
Message-ID: <20161004042323.GB21357@kroah.com>
References: <20160929152837.GA32652@kheixx-VB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160929152837.GA32652@kheixx-VB>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Thu, Sep 29, 2016 at 05:28:37PM +0200, Keila Novo wrote:
> 
> Commit:

What is that line for?

> The staging board allows continous upstream
> in-tree development and integration of 
> new platform devices.

You have trailing whitespace, and you wrapped your paragraph at an odd
line length, why?

> 
> Signed-off-by: Keila Novo <laurana5@gmail.com>
> ---
>  drivers/staging/board/Kconfig | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/staging/board/Kconfig b/drivers/staging/board/Kconfig
> index 3f287c4..830337d 100644
> --- a/drivers/staging/board/Kconfig
> +++ b/drivers/staging/board/Kconfig
> @@ -1,3 +1,7 @@
> +#
> +#Staging board gives support and configures the kernel build
> +#with new type of devices, making them compatible.
> +#

I don't understand that sentence at all, could you rephrase it somehow?

And why not an extra ' ' after the comment character?

And finally, why make this change at all?  Kconfig files usually do not
have comments in them, right?

thanks,

greg k-h

