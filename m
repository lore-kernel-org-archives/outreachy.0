X-GM-THRID: 9130553114624
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,694247d93496d508
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.250.198 with SMTP id ze6mr637149pac.2.1426862497101;
        Fri, 20 Mar 2015 07:41:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.18 with SMTP id f18ls1244864iod.39.gmail; Fri, 20 Mar
 2015 07:41:36 -0700 (PDT)
X-Received: by 10.50.57.47 with SMTP id f15mr4030983igq.1.1426862496883;
        Fri, 20 Mar 2015 07:41:36 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gb13si834073pac.2.2015.03.20.07.41.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 07:41:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (unknown [31.221.94.139])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 25C5EACF;
	Fri, 20 Mar 2015 14:41:36 +0000 (UTC)
Date: Fri, 20 Mar 2015 13:33:17 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Cristina Opriceana <cristina.opriceana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/5] Staging: iio: Add kernel-doc for
 struct hmc5843
Message-ID: <20150320123317.GA7334@kroah.com>
References: <cover.1426790662.git.cristina.opriceana@gmail.com>
 <f3d3109464d5a23c6314b53ea8e9c00965c108e5.1426790662.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f3d3109464d5a23c6314b53ea8e9c00965c108e5.1426790662.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 19, 2015 at 09:10:18PM +0200, Cristina Opriceana wrote:
> This patch documents the struct hmc5843 specific data following
> this warning:
> "CHECK: struct mutex definition without comment".
> 
> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
> ---
>  drivers/staging/iio/magnetometer/hmc5843.h | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/iio/magnetometer/hmc5843.h b/drivers/staging/iio/magnetometer/hmc5843.h
> index 332a75c..ab729d3 100644
> --- a/drivers/staging/iio/magnetometer/hmc5843.h
> +++ b/drivers/staging/iio/magnetometer/hmc5843.h
> @@ -31,12 +31,20 @@ enum hmc5843_ids {
>  	HMC5983_ID,
>  };
>  
> +/**
> + * struct hcm5843_data	- device specific data
> + * @dev		actual device

Don't you need a ":" after "@dev"?  That's the proper kerneldoc format,
this will not properly parse.

thanks,

greg k-h

