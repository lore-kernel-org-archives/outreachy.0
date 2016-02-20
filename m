X-GM-THRID: 6251859755441061888
X-Received: by 10.25.210.201 with SMTP id j192mr2606902lfg.6.1456007910267;
        Sat, 20 Feb 2016 14:38:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.46.199 with SMTP id u190ls162544wmu.49.gmail; Sat, 20 Feb
 2016 14:38:29 -0800 (PST)
X-Received: by 10.28.6.14 with SMTP id 14mr384514wmg.6.1456007909685;
        Sat, 20 Feb 2016 14:38:29 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c143si703262wmd.1.2016.02.20.14.38.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 14:38:29 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4EB0C11DA;
	Sat, 20 Feb 2016 22:38:28 +0000 (UTC)
Date: Sat, 20 Feb 2016 14:38:28 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: lustre: llite: Remove
 IS_ERR tests
Message-ID: <20160220223828.GA29889@kroah.com>
References: <20160216120844.GA18950@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160216120844.GA18950@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Feb 16, 2016 at 05:38:44PM +0530, Amitoj Kaur Chawla wrote:
> ll_iget() has been modified to always return NULL in case of error and
> not a ERR_PTR.
> 
> Consequently, remove unnecessary IS_ERR tests as now ll_iget() function 
> can never return a ERR_PTR.
> 
> This patch also removes checkpatch warnings:
> Comparison to NULL could be written "!root"
> Comparison to NULL could be written "!inode"
> 
> Additionally, reinitialising root and inode to NULL has been removed
> since they have already been tested for the same.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
> Changes in v3:
>         -Modified ll_iget() to only return NULL in case of error
> Changes in v2:
>         -Remove IS_ERR test instead of replacing it with
>          IS_ERR_OR_NULL

This doesn't apply to my staging-testing branch due to other changes in
these files by other developers that were send before your patch.  Can
you please refresh your tree and rebase your patch and resend?

thanks,

greg k-h

