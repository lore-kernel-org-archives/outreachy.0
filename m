X-GM-THRID: 6340039489286569984
X-Received: by 10.157.4.77 with SMTP id 71mr278883otc.145.1476280517996;
        Wed, 12 Oct 2016 06:55:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.1.7 with SMTP id 7ls3347672otu.37.gmail; Wed, 12 Oct 2016
 06:55:17 -0700 (PDT)
X-Received: by 10.31.164.1 with SMTP id n1mr286334vke.42.1476280515911;
        Wed, 12 Oct 2016 06:55:15 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x241.google.com (mail-vk0-x241.google.com. [2607:f8b0:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id p131si1137269vkf.1.2016.10.12.06.55.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 06:55:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) client-ip=2607:f8b0:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x241.google.com with SMTP id 2so2179507vkb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 12 Oct 2016 06:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OGcElUhRax34N2c9toQ7cquaSLG4YbBZCeDzdiLeKew=;
        b=smI54FNDTAdgsLA3ZajbwFGqtL2ec1cVZfFtlxxd42c+GTocEKE2/bYGsxMNTA7p5h
         UHtRmvb4j/Y8OagNJEXthohA0gbmrVIlxnckiXGvmbA2StQ54a2eQvhpQse1JL40b+9Z
         NwKqQz1iDzxluXrWDs1AI4G1VfQAefzPMbQBQML359rz6QX7FSBmTAXR/dSZH6/zcgXR
         F6yZjrpce3as9FDZuACeLLDX/KnSEZyRhURIq2CxQNlSA0H0kFXv7XHULK3nvx7dKy3C
         0BYwXT2HD1ORUOFbKo+0LVtdsZ9SO+WjT/H8+MaTWmFAxqup7eJkzqXg7Y/ajIRGAKyx
         mrjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OGcElUhRax34N2c9toQ7cquaSLG4YbBZCeDzdiLeKew=;
        b=CrtsAC8bM4lUQ+zzqFpzpEaBGz3DH+gatw3h04tMvWBO6qYI9vZd8o0DlUJfrPJje/
         W3JFxnCE/LKYoVxFrFUbu7PGyoylLxMSjmggXHE4lk6q18Kx1lcetYks0OxuHLfUw2C5
         RJGISjsIRtUQF/UdIUOvHTIqlDklnYfWz4qpNtZcxKoGh/2IReE7ikCBtwiFpsO+g4Gv
         7TXzd1gk8wFOfxLH2E8mziJGC3k0mXxGvK3N1kkegeX4kihhUrJ9mkGhEBW1YQHY1CQS
         xu/2d4dulOgOB/Zb3moIACykc3iqfy4Que8d775Ukw6omLQI0tGLRZdaNj/9sJqIaMIJ
         gNsQ==
X-Gm-Message-State: AA6/9RnJNR1iZ/BoVP6WFggW7GR6znBs3/xMphOYco6IoQgf6OMdf7CVBaefnYbRfQU6aQ==
X-Received: by 10.31.110.130 with SMTP id j124mr600004vkc.142.1476280515691;
        Wed, 12 Oct 2016 06:55:15 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id 1sm554970uae.12.2016.10.12.06.55.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 06:55:15 -0700 (PDT)
Date: Wed, 12 Oct 2016 10:55:08 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: hvaibhav.linux@gmail.com, johan@kernel.org, elder@kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/7] staging: greybus: Format block comments.
Message-ID: <20161012135508.GC5158@lennorien.com>
References: <20161011031105.GA21887@lennorien.com>
 <20161012132401.GA22452@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161012132401.GA22452@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 12, 2016 at 03:24:01PM +0200, Greg KH wrote:
> 
> Does not apply to my tree :(
> 
> Can you refresh this whole series and resend it?  Keep the acks that
> were sent for some of the patches, and fix up the subject: lines.
> 

Ok, I'll create new patches containing the changes without ack.

This one that doesn't apply, should I just drop it? Your tree is local
so I can't see what is different, to adjust the changes, until you push
the changes to staging-testing, right?

thank you,

elise.

