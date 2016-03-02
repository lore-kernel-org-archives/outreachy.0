X-GM-THRID: 6256045581066567680
X-Received: by 10.25.31.81 with SMTP id f78mr1722016lff.7.1456935942801;
        Wed, 02 Mar 2016 08:25:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.20.8 with SMTP id 8ls441585wmu.5.gmail; Wed, 02 Mar 2016
 08:25:42 -0800 (PST)
X-Received: by 10.28.63.19 with SMTP id m19mr130571wma.0.1456935942431;
        Wed, 02 Mar 2016 08:25:42 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c140si250100wmh.1.2016.03.02.08.25.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 08:25:42 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1B223DBA;
	Wed,  2 Mar 2016 16:25:41 +0000 (UTC)
Date: Wed, 2 Mar 2016 08:25:40 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: mgc: Bool tests
 do not need comparison
Message-ID: <20160302162540.GH987@kroah.com>
References: <20160227184909.GA2991@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160227184909.GA2991@Karyakshetra>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Feb 28, 2016 at 12:19:09AM +0530, Bhaktipriya Shridhar wrote:
> Bool initializations should use true and false thus bool tests don't
> need an explicit comparison.
> 
> This issue was found using the following Coccinelle script:
> @@
> bool x;
> symbol true;
> symbol false;
> @@
> 
> (
> - x == true
> + x
> |
> - true == x
> + x
> |
> - x != true
> + !x
> |
> - true != x
> + !x
> |
> - x == false
> + !x
> |
> - false == x
> + !x
> |
> - x != false
> + x
> |
> - false != x
> + x
> )
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  Changes in v2:
> 	-Fixed typo "lusture" to "lustre" in the subject
> 
>  drivers/staging/lustre/lustre/mgc/mgc_request.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/lustre/lustre/mgc/mgc_request.c b/drivers/staging/lustre/lustre/mgc/mgc_request.c
> index 6fc8225..aea5fc3 100644
> --- a/drivers/staging/lustre/lustre/mgc/mgc_request.c
> +++ b/drivers/staging/lustre/lustre/mgc/mgc_request.c
> @@ -1394,7 +1394,7 @@ again:
>  	eof = res->mcr_offset == res->mcr_size;
> 
>  	CDEBUG(D_INFO, "Latest version %lld, more %d.\n",
> -	       res->mcr_offset, eof == false);
> +	       res->mcr_offset, !eof);

eek, that's horrid to try to read, can you understand that now?

Please don't do that.

greg k-h

