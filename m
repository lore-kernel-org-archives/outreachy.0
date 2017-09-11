X-GM-THRID: 6464167912849539072
X-Received: by 10.28.46.67 with SMTP id u64mr874075wmu.7.1505148418768;
        Mon, 11 Sep 2017 09:46:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.70.5 with SMTP id t5ls1295778wma.18.canary-gmail; Mon, 11
 Sep 2017 09:46:49 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAuacpM05mP59MkfZsQHdvjgLVlWb2OX/1z5yjc8ha44kn1wNYujjVCyx7y87YsECI+zbN3
X-Received: by 10.28.9.12 with SMTP id 12mr868345wmj.7.1505148409560;
        Mon, 11 Sep 2017 09:46:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505148409; cv=none;
        d=google.com; s=arc-20160816;
        b=mVXtwIBqKblhLWQ+y51bJDwE2h6K6Naw/brViAEHgWpfImmMK7m+gjNaGyVZesrPiv
         UpBXYBN6g8D1ZWeuMIXbDKiHDjRNnCtutVtCKZ2MuQUaOD8JemJBEIVbwYD+D7yO3srY
         LCQu4tCup+FNkWhqDZomYlImUEToWmyrTtCJuR57MukDkwjSZV1HX7mM4X04pc/4vx8l
         gDaz3pYcP2wVMnzGFa/Sa1uWDDx5X/BAmWnnHk8iD5dZ/RrcAfTsZruPxYiLg0p3aAy/
         ZpS6KfioPHKk2JlcDWaO1CgX3v4ovcVRvg8O/1BgxBQ+xjZAAQqbjTBCvQ9prfwv2Vqu
         6QxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=0KTsIG78fkG6Ax7YGiO3bNmhpIB0lm8Y7915AH/lajA=;
        b=Vam3PXrom1q7bGqG0YCavLmjLFT0NVIDOpSib4KdEQZVnDxiWdxlYRQVTGo5RFP06S
         Pt55VXPhIJc74bc9GIdeVTxo2lnVgY+AAPw4qNib5jf8uzi5WbRO5WaF8CgKpkvqboNR
         DecnaBIjnXVC/gyOl59XKZVkE/SyN4fNicKwzTxhM0cOdc6H/U0VMoR1SxOv1LvZQkeA
         8BrEiivecmbfa++TzbEJHpiFkrSF/wYNq4kfn0ka5fzP7SqE7GEyKz7DW1AFdylja6Li
         5khVIET9HD8e4cYupTUl46kBgrGJv3sMcGVGyy8RpRi2YkVY7zOy7MURO3RIdRgCL4FM
         Tm+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id b130si470360wme.0.2017.09.11.09.46.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 09:46:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [12.145.98.253])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C0C5E9C0;
	Mon, 11 Sep 2017 16:46:47 +0000 (UTC)
Date: Mon, 11 Sep 2017 09:46:46 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 07/10] staging: rtl8723bs: Removed unneccesary space
Message-ID: <20170911164646.GA15530@kroah.com>
References: <cover.1505052882.git.harshasharmaiitr@gmail.com>
 <e67d17c4599196e34a39fa331aefed76d63c2260.1505052882.git.harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e67d17c4599196e34a39fa331aefed76d63c2260.1505052882.git.harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Sun, Sep 10, 2017 at 11:04:34PM +0530, Harsha Sharma wrote:
> Remove space between function name and open parenthesis '('
> 
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/os_intfs.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

This and patch 8/10, have the same subject line (well, one letter
different), yet they do different things, please either merge them
together or give them better names.

thanks,

greg k-h

