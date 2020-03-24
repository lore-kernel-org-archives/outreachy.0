X-GM-THRID: 6807140134242222080
X-Received: by 2002:a37:5c44:: with SMTP id q65mr23106268qkb.454.1585078714464;
        Tue, 24 Mar 2020 12:38:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:d44d:: with SMTP id r13ls4444031qvh.7.gmail; Tue, 24 Mar
 2020 12:38:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs4kCNUShJ+NyMJesI374986wPO6q9OLrI3/tMyjpaOaCQVyzFeCkxxGgBcAM6g83j1Mhv5
X-Received: by 2002:ad4:4829:: with SMTP id h9mr25984929qvy.135.1585078713210;
        Tue, 24 Mar 2020 12:38:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585078713; cv=none;
        d=google.com; s=arc-20160816;
        b=X5W9UijyYujSIXI3Fe7KrFRNxc6dDtlI5FMx3i9Cb+vrYuueagyC92AQlcvfowZmdI
         vhdHN6rw1IIaAl271OCQOuwd3C67cNxPw+PdrUSoTLNtSMWf2Ypy0RpkBrHAmeZdY6Ao
         m+VqDudTrrxd02s1e7/HTjJPE5dyo3HuWb6biEf+JGXHdfG31EBzH+Izk7wHg2Aa8c/0
         8i2KsW38haUhXBms7uG5iKRC1T0flyac2rY8U52/xme5jhdh7k4XPrDqAd2l6piihqbw
         ftwHvQdQh5V0EULGv9YqGy/YLl/ksF0BZa6o3dlxgRaQQIPkkjgtIOoTkO7cRINFW4Sz
         a6EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6RqONos7VVxltfjWedbNZWlzNAcrEq9wEtfBTt5n5Mk=;
        b=kgH36AoyN2HNHn4zw8TZ55eCDecBNbeNWBizEChhnxADSI1lKYhimVyywqqQQ/lEYL
         Rt0R5aCMkNQHHoT7kwqkr2o3t25heuHCsKqMxxeqrmb0Wlr6eVJ0g2ilAUvp/xwHO50V
         5yIZiN+WZqZCEv5ebdFXbaOZOhjuDRGAA54HWVJXjgFPNN8KmoQseGXTGw642IMj8C/3
         H/rGUgmDD3GepUOYIyrgE28Oyv3zUIMaqRnJR98QYAtzKnJWtN+UCcPvSIiEgoF3pT9G
         kh7wm2950fD6m9zLMq1iHrSN3Ju4ufm0QITbdqzE8iNWULTukOx0efOTC9rLCIKUG40F
         R0BA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BOLpLuLz;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id d34si1250514qte.4.2020.03.24.12.38.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 12:38:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BOLpLuLz;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id ng8so2062804pjb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Mar 2020 12:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6RqONos7VVxltfjWedbNZWlzNAcrEq9wEtfBTt5n5Mk=;
        b=BOLpLuLz/kPjT0s48qh+jvQ7GFoqc0IABMp72MJ9WEThPUJHrRjd/lUDZTz9t4+/oP
         oDytd1suIU9c1jRfTiYuYKQyB0hMGFLt9ByXTl6NMl5AStlPyCuXdUpW/Do5g2Zo/OTc
         fo+ms7b/3vD9l/WvxQKkN2/Z6G7DpV8mm+N21qV7Oou3JUzdQPkmxMwUgZvH8ncy9m4C
         syxg2gekP/Ts5Vf+0hHSM0MKWjzSktikSeQGLMOpL9YH+yR6c1yDUHmQhd5FLe7JJu4h
         qM396VJLZN0Aapm9fmsUpiOxTLdBWKMLRCMLwFZ4afYzpteWUIsY16iL1yW6EpJEeIp5
         qisQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6RqONos7VVxltfjWedbNZWlzNAcrEq9wEtfBTt5n5Mk=;
        b=PWxeLcsUJNkJJbDHqKWTgmwYtX09gZFjgJISLyHQgub8WDl2+WHUwPKZYqcphwzzqf
         cXvZx/Cxs3W8T5cNz3nBWFY+n34r+8W1J++Msre5wLVp4E/rIWKY2fWS73bcEHEPs9Ll
         c5F60witmrcU242wL6gaAIMNEA/QM3EC2476c2bm6FuXBAzaZYTjuvIUkR50vBvRYwpw
         DQQkhmVkTXOZU4FNl9oio1BSgK6XhH5XS/crQL5m/FMUurJfVXRewD1kkcPmNWQHzZ0K
         2UokyDLmElaGt1sU09Zi4jaLJg1S0+X9N6DSZTJIPWKnxK3ak86gSgwgQcSSJcey51Gf
         oUDg==
X-Gm-Message-State: ANhLgQ1sB7y7qVSOedOkGuHX83TI5ZLKJ/DB3j1mbMp6kp/0kL17Dvr1
	zOJ2zL/STblUfLoiYALh7VI6Vbyt
X-Received: by 2002:a17:90a:23ed:: with SMTP id g100mr6999477pje.93.1585078712460;
        Tue, 24 Mar 2020 12:38:32 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.240.207.191])
        by smtp.gmail.com with ESMTPSA id x4sm403495pgr.9.2020.03.24.12.38.13
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 24 Mar 2020 12:38:32 -0700 (PDT)
Date: Wed, 25 Mar 2020 01:08:05 +0530
From: DEEPAK VARMA <mh12gx2825@gmail.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [PATCH] media: staging/intel-ipu3: Remove extra blank lines
Message-ID: <20200324193759.GA26516@deeUbuntu>
References: <20200322210005.GA27747@deeUbuntu>
 <20200323071024.GB20234@kekkonen.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200323071024.GB20234@kekkonen.localdomain>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Mar 23, 2020 at 09:10:25AM +0200, Sakari Ailus wrote:
> Hi Deepak,
> 
> On Mon, Mar 23, 2020 at 02:30:10AM +0530, Deepak R Varma wrote:
> > Remove extra blank lines from the code blocks.
> > 
> > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> 
> Thanks for the patches. They seem fine to me, but could you send them to
> the linux-media list, please? That's where the media patches are reviewed,
> including the staging tree.
> 
Hello Sakari,
Thank you for your comments. There are 2 patches for ipu3 that are
reviewed, but yet to be accepted by Greg. A couple of them have already
been accepted in the recent past.

Do you want me to forward the current open patches list OR all the past 
patches as well OR just the future ones?

Thank you,
Deepak.

> -- 
> Kind regards,
> 
> Sakari Ailus

