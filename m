X-GM-THRID: 6807040840718876672
X-Received: by 2002:a1f:944d:: with SMTP id w74mr9585249vkd.23.1584959948881;
        Mon, 23 Mar 2020 03:39:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:b8:: with SMTP id 53ls981099uaj.10.gmail; Mon, 23 Mar
 2020 03:39:07 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuTsPogmL5bYx31f5PtrUMcpRzuwJdbUQN8imCpTbi7YGoQ2GOz5hz7uChJbxZLIaN8w0e6
X-Received: by 2002:ab0:5ea9:: with SMTP id y41mr13074615uag.10.1584959947680;
        Mon, 23 Mar 2020 03:39:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584959947; cv=none;
        d=google.com; s=arc-20160816;
        b=0Io7OxBUjPX0YuvuXo14J3lLCioKdHZHKsb0zpzTmwepvQC/BtlJlD9twZZS7yQk8f
         1xTw/GvzXAolWGN45hMba2/lS8ePTomjEoUS1vITjavC7/RC81UPkJ+yDYaWBVGwZeOj
         Z3jxxxPGhn107dhNR5FWsnFvtIolM2arj1tIsjSE0OOCMvhQiBMMGF8CZQ+VNSzh+NTD
         P7NT84N/kdjVDWGqg1QhOnrtFieoYiBYCJxPhT89ooNBZuc/AO6Ct57lIvO/m3juYE09
         qM+z7LdKKLeM26PKWL8pP4xQCptu2o+YBs1cYkM0njqc1dnv4Hq6DS0wziVbWWkK0PmZ
         vaxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VfHNCeZf6Q0sKzlNZ3k01AsI7fgj3BgO29A4hKIwXBw=;
        b=IbSo725zYIzqIbWSiV9J1Ue7bIM88B3sfJaFusLD+c88/ziO6XVOy9jYWIU4ml0cF1
         15zJLl0q5rJTDR85o/loFbXiPRKfbt0CECssU59YKbqg1jqeWOwGf6y4k/fT02iE+der
         lbvww3DGc+hluW4t+TrJzVEbfJ/3WLwFMkq6dTe7nFS1CQ7GFasHrtfw2L9S1k8MlbJU
         xhREv0uYoaAmMhvW20hdVNQa5sv2e3m+ZW0wvPCnDa6BJBs9f2QoGpp1pDMliJnLAfes
         ZyYEsjX0Hc2YGOnlNTbWtV5XjUskbRenuC2cQRX5IyV+/bBqcAvLddDX/pj4MRrWwoJA
         xUWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MpXXVFzV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i13si1023728vkk.5.2020.03.23.03.39.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 03:39:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MpXXVFzV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0453120722;
	Mon, 23 Mar 2020 10:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584959946;
	bh=wpbb2RZoo9ZE0UflOX6sH/niwLGhmBt0UyvBYso+Mig=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MpXXVFzVsj/Rj/EHo+bXeFAdDUqU4m6Hd0gWZL15YwSKnVUJFA7cXzzjQaWHqNHsq
	 S3qTDDum5W9mZqA3Zu1gbpuLiqov1ULF9e3QHUc1geczM0X8Gn8wGuzOpZIMKl0+vR
	 OH5p9DstJz323lVma1lWQdNcsC+M577m6heEUuds=
Date: Mon, 23 Mar 2020 11:39:04 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Soumyajit Deb <debsoumyajit100@gmail.com>
Cc: outreachy-kernel@googlegroups.com, perex@perex.cz
Subject: Re: [PATCH] Remove space after * in pointer declarations
Message-ID: <20200323103904.GA477736@kroah.com>
References: <20200322143442.GA32287@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200322143442.GA32287@ubuntu>

On Sun, Mar 22, 2020 at 08:04:49PM +0530, Soumyajit Deb wrote:
> Remove space after * in pointer declaration to improve code readability
> and to adhere to the standard coding style.
> Reported by checkpatch.pl
> 
> Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
> ---
>  drivers/staging/hp/hp100.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)

There is no "staging" or driver name in the subject line here :(

Please fix up and resend.

thanks,

greg k-h

