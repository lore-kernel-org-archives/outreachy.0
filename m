X-GM-THRID: 6252531554516467712
X-Received: by 10.140.104.72 with SMTP id z66mr25916612qge.22.1456666364833;
        Sun, 28 Feb 2016 05:32:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.121.161 with SMTP id ll1ls882886obb.28.gmail; Sun, 28 Feb
 2016 05:32:44 -0800 (PST)
X-Received: by 10.182.240.137 with SMTP id wa9mr9085747obc.16.1456666364409;
        Sun, 28 Feb 2016 05:32:44 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-ob0-x242.google.com (mail-ob0-x242.google.com. [2607:f8b0:4003:c01::242])
        by gmr-mx.google.com with ESMTPS id ph8si629624igb.0.2016.02.28.05.32.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:32:44 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4003:c01::242 as permitted sender) client-ip=2607:f8b0:4003:c01::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4003:c01::242 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ob0-x242.google.com with SMTP id wz1so8498121obc.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 05:32:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=I1mdc/UbAxUWTNFkDnYskXMCRhYDnpKo+T844+Ak6cg=;
        b=IM/MoDVr1KE/MUHo1uakK8mtBYir3RHzhB6elQxsSAnUqZPkF0YGnhVBGQ/Ngdives
         QpTlruTxrlbcE5t11KvDCp9YjrkYUEqS5k9vEngjvURiFMvZQVBRZprQOMusNXZJLt7v
         /xm+VhkfnpkujMPB6G2+MiLMbQwtk+p5X72IOOWGN+YRBFWVzoWXUhRhYF46UFN46mGS
         V64u0tYjPPfUAMXSy8EmLhmHbkltMk8Ql8Kt5N1BpSjaKTDYZ+qTBQOSPe/ImBPnQ1hP
         TZc5V5f2hbW6gs0VQbtS+WNdFB7CSoNYLFV4EoeP4LajSHHi7DdZ8U1hzqNs5VpFmXTj
         +gcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=I1mdc/UbAxUWTNFkDnYskXMCRhYDnpKo+T844+Ak6cg=;
        b=INmNQG9twVTfEGESFzKGOEpj5EDL7C4LhqseRpWamDugZmvX8IgWkVzuljwIqLm3ST
         +Fbh3ZC93nr1TuWeL92/tMmO0hm3xm+CTeldNgpmPsqk91lJVyilTh348UYa6zK+exuZ
         10v+ifQ8nsLBWWmVoQsRPj1Ym6FHQsdL0Vl+Lmjipw8hA+xYBVminGjH4Z2+BVd+apKo
         brQ1QJX4h9dSeCccXky+DokKjEEJx7fVmGfQXdJ0idDM+S/pEZvrikq1tTe4O9tH/tyL
         KaUl0QxKcZKOF0zPgpu24xKM5yEGGSY18qmlr1cIH3f7tBLuE9aSIvRhkSbZ9UKq9ZdM
         07NQ==
X-Gm-Message-State: AD7BkJLKASHi7/l1gO/2TKTgAK1lTyJReNKSdibL9A/P53liC+O/gn7TyABTMbzdbOl9yg==
X-Received: by 10.60.162.102 with SMTP id xz6mr8393831oeb.62.1456666364091;
        Sun, 28 Feb 2016 05:32:44 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2602:306:b8cd:a0d0::2f])
        by smtp.gmail.com with ESMTPSA id i7sm14664229oej.14.2016.02.28.05.32.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:32:43 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Sun, 28 Feb 2016 08:32:43 -0500
From: Tejun Heo <tj@kernel.org>
To: Eva Rachel Retuya <eraretuya@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/5] staging: iio: light: fix block
 comments according to kernel coding style
Message-ID: <20160228133239.GN3965@htj.duckdns.org>
References: <cover.1455730714.git.eraretuya@gmail.com>
 <93345450eeadd03a6f22453b8a7c1d9d4355c7fc.1455730714.git.eraretuya@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <93345450eeadd03a6f22453b8a7c1d9d4355c7fc.1455730714.git.eraretuya@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello,

On Thu, Feb 18, 2016 at 03:35:38PM +0800, Eva Rachel Retuya wrote:
> diff --git a/drivers/staging/iio/light/isl29018.c b/drivers/staging/iio/light/isl29018.c
> index 6c9d943..03dbfb6 100644
> --- a/drivers/staging/iio/light/isl29018.c
> +++ b/drivers/staging/iio/light/isl29018.c
> @@ -320,8 +320,10 @@ static ssize_t show_prox_infrared_suppression(struct device *dev,
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	struct isl29018_chip *chip = iio_priv(indio_dev);
>  
> -	/* return the "proximity scheme" i.e. if the chip does on chip
> -	infrared suppression (1 means perform on chip suppression) */
> +	/*
> +	 * return the "proximity scheme" i.e. if the chip does on chip
> +	 * infrared suppression (1 means perform on chip suppression)
> +	 */

Can you please make these proper sentences by capitalizing the first
character and adding a period at the end?  Also, it often is nice to
reflow the comments so that it fits to, say, 75 column.

Thanks.

-- 
tejun

