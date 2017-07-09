X-GM-THRID: 6440502427589279744
X-Received: by 10.46.82.217 with SMTP id n86mr1745709lje.2.1499581209990;
        Sat, 08 Jul 2017 23:20:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.83.75 with SMTP id t11ls66229ljd.42.gmail; Sat, 08 Jul 2017
 23:20:08 -0700 (PDT)
X-Received: by 10.46.20.67 with SMTP id 3mr1693337lju.31.1499581208534;
        Sat, 08 Jul 2017 23:20:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1499581208; cv=none;
        d=google.com; s=arc-20160816;
        b=SA2RORiGhpUVkWrEC6G8bQhPD3/5Bm8J+RnBH5cdFCWb8yZhPXuql5tUrBeEnCn3DI
         ZBD2ejZALtrZbSxm27LK4HEMGz3mm3iPLnfFzVdoj5QZdMjxMcgXVHVvqBZ2E9ct8aFb
         0+aYn0+zr05xEluAH2pOIvzEV+QDzIOHkchb1Eow7TqqYbfKilB6udTm0BHUUd86NdAF
         4Lv5qAS7PfI4kND498HxbtcyFvleSFmmPtkZEh25vpolCYVEmaPGDjIcsT4qOWt1znr6
         7xN8OhFWsbK++AERlyHj4OEWljaAwNtZH8FyL+PM6e6DLpKEgXX+g10ZSLXh6yAKjRIN
         qn1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=VffIGNk0EihQ5CwOT7PdMtxcs3pIgifxfv8OV0i2MJg=;
        b=GUdRfRsrC9mGY09sQ6lVllPgRjFzf6PsZ+kobBcFbfx7iE+pQpWGKw/YAkzlagyrS+
         8spLPfEcQgVm4R607MBa8V5YACbgnTEqRyMEEAhdq36BdLERgzXAvUyJWZOupf6vPdpF
         jPttQ5i+jY+gVBgsAc1ftgN+8ynpUjsLpZqGfArPtGzB0qadAGrzuqPGnsNg02elfKN8
         zywTVvDF6VuBwSvaRR1jN/63tapE8hFHNpVOA72qfR1WmywVHg/whsaEit49Ik+tttDn
         GcIe9WcVxcrtDF6ol37OYRELYpGCxf6gcidoTYFAKPABJXE9R6ZVKfKacd6k/JAXCcAK
         eWlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id f67si1396000wme.1.2017.07.08.23.20.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Jul 2017 23:20:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 90A30258;
	Sun,  9 Jul 2017 06:20:06 +0000 (UTC)
Date: Sun, 9 Jul 2017 08:20:02 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Place constant at
 the right.
Message-ID: <20170709062002.GC8739@kroah.com>
References: <1499546306-4085-1-git-send-email-shreeya.patel23498@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1499546306-4085-1-git-send-email-shreeya.patel23498@gmail.com>
User-Agent: Mutt/1.8.3 (2017-05-23)

On Sun, Jul 09, 2017 at 02:08:26AM +0530, Shreeya Patel wrote:
> Move constant to the right of a relational operator.
> This coding style is more common for the kernel code.
> 
> Problem found by checkpatch.
> 
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_btcoex.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Is the outreachy application process happening right now?  If not,
please send this to the proper mailing lists, this one isn't to be used
for normal patch submissions.

thanks,

greg k-h

