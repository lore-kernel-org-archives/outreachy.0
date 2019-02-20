X-GM-THRID: 6659597331609944064
X-Received: by 2002:a25:cb02:: with SMTP id b2mr13947983ybg.11.1550658304679;
        Wed, 20 Feb 2019 02:25:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:6b0a:: with SMTP id g10ls5200518ybc.13.gmail; Wed, 20
 Feb 2019 02:25:03 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZqSpMZ5n8Hccz9GaWJ6RsavxLthkl+z1922LhkylmYFB7hxWYyYL7Dwo86fHHJnEFNmG47
X-Received: by 2002:a25:9c88:: with SMTP id y8mr569209ybo.2.1550658303910;
        Wed, 20 Feb 2019 02:25:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550658303; cv=none;
        d=google.com; s=arc-20160816;
        b=aw3AyLHSIK34l3egvvs4Owkgpep5Sq/R6/aut9kpolU3EyGLbRUYus6x69EHOz+hOG
         4DC0XyzAt6RfyyKpHuK9NHIvXAWMiGoAQ3Tds6r5CvGvlXE253BS0cWeEjlep6xYZo41
         8Ftjd6hDw8rh230TquhdTu7LVeOHDNIyiQZTwR07nrxEoefLxS9gS21gfWMDy3YG6bVT
         Gq4QPwxEkSTvIu7wq7VUDE31gfCs4y75T9Jl8ooblQVByOvgmRRl+YhwJZqOjoPrxfEY
         n8QCNIb45nUeGGA4PyMDXONPRqRpAxnAmJ11zqB65YCxM+TA3OLJadf7Vw44UvG++s+Q
         RgOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=mjJceIiOEyPmHfu9iXYmMl15krF/fha0YvZGxaQqp3M=;
        b=B+vvhiTQmcwAV+YoItViRVm2gU38wRLT5F75rXiDVrnN9y/QTaYI2Zqx2M6HdS8/RM
         FFAjirn9TOdWfIGwfqfy6v3MS5MJ4LAeD9OPO9oyhMLokx8MI0Tj7ZXPnUrZuuHPRFI/
         kiYuJS/EjHcd3q3GEpWdkLxwVP0G3Az0+ZM7EGKobO1G/QvN6nrzkEUsNMABavGls/do
         wHfo97UEM95WKbYZpa8f9E854Q64+3Zvk0St6/hbYTooSpbRyhTyxj0FEdYywZoChJS5
         SXfTqNW+hvcQUmpOVurRz8vKhslsgFZZOhkv5sAYfdFntY7FX9GTr67KvsaCHLHGL/4m
         Md0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aXlLMFt7;
       spf=pass (google.com: domain of srs0=vgux=q3=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=vgUX=Q3=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=vgUX=Q3=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c6si1227977ybo.0.2019.02.20.02.25.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Feb 2019 02:25:03 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=vgux=q3=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aXlLMFt7;
       spf=pass (google.com: domain of srs0=vgux=q3=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=vgUX=Q3=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (unknown [195.134.171.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 657602146E;
	Wed, 20 Feb 2019 10:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1550658302;
	bh=qU/Tm+qpAFTXlhMqxpqxbp64Q8CnIrZMLi+Y/jkSIag=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aXlLMFt74o/KDN49NQQ458wU1gVczcM+MH5XwkRDfZiIVrsXrn+FyX4FhgRvEQ+XH
	 I64ogQFQtsd59A4giBW08+0rBiwZ6kjt2hdbcp5sSsXm7YWj9/Wy5RKSrR82ACDrbe
	 6XX61ab2NzxTSVV5fHqhTAMs/VZfrGi5o4WYsF8s=
Date: Wed, 20 Feb 2019 11:24:58 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Himanshu Jha <himanshujha199640@gmail.com>
Cc: Bhanusree Pola <bhanusreemahesh@gmail.com>,
	outreachy-kernel@googlegroups.com,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH]staging:mt7621-mmc:
 Prefer using BIT macro
Message-ID: <20190220102458.GC5535@kroah.com>
References: <20190219063848.GA2994@bhanusree-MacBookAir>
 <20190219155635.GA18454@himanshu-Vostro-3559>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190219155635.GA18454@himanshu-Vostro-3559>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Feb 19, 2019 at 09:26:36PM +0530, Himanshu Jha wrote:
> 
> Now that I see this patch has been already been applied, so
> its fine for now and an explicit "Patch applied." from Greg
> would have been better IMHO.

Patch authors get that type of email from my scripts, I do not send them
to the mailing lists as it would just be too noisy.

thanks,

greg k-h

