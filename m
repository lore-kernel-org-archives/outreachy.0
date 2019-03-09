X-GM-THRID: 6666290525545431040
X-Received: by 2002:a5d:8794:: with SMTP id f20mr13359888ion.32.1552126356418;
        Sat, 09 Mar 2019 02:12:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:4c81:: with SMTP id q1ls3991818jad.0.gmail; Sat, 09 Mar
 2019 02:12:35 -0800 (PST)
X-Google-Smtp-Source: APXvYqxd3yFcWHcycY4hprXyssn7ouh/GfweoQHPG6H9i23347CkQGP//VkxUiWPZJdcVqOdFfdj
X-Received: by 2002:a02:c611:: with SMTP id i17mr13525765jan.1.1552126355559;
        Sat, 09 Mar 2019 02:12:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552126355; cv=none;
        d=google.com; s=arc-20160816;
        b=NkZRjlmJs6VOVVMaBWYHAcdTF48Kevr+s/hc+yCH9HPmAnSoZ9YAV7w2jPWSIGxR+V
         /YtDXy/hLp2ixuW2P4bADHO/eBIXHeTQUGe+MOvwabkIlVSNfmxVfEkFhifs3emivSmb
         jCjDxePKarn55Z8jKvZsXSGVH2+3vKiqb8UAT9wjpW3KmEV3tQCZ6BsZVlOP8o3goxRH
         hWQCaGdSBz7T3GXxNpbNL7wT2e/Bd+M6dN2QZWMMzt8UUeqAfKZkmjtff6qH6nWOugKp
         FQwQyJo9Gsw+UY0cg1TAia3ANdsGAkxSFlDr8hKgAARY7sgQ4lc0/L2pBLjeK8qo0EZE
         Av9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2LyYjS75xtoBYleq+Np46iWjbMWBMRszTwxV53OEI8g=;
        b=Dz19uNSh5F57bk0t3ieN0VGhgZW/8zmsiHqfRGw/XDyQmpcq5AtXlC6R8DZPOVdLSs
         M3sP4oj39JYyUe0oScZl7koU0gl19zK28Bf4U6j5rVtL2TeDB9yVrmYGV6e/tYUw2NGI
         fn2rHZEzMjpiucrF6tFguy37TjS+kph8vNm2dc5iYO8o4/OB0HSCAHISV5gExVOHlQd9
         SJSWhxVyatAbsVcCD3aB//B6r8t9RbFHBWxfp3rQiMXM4Lh2k3sMUZMxfWWznrh7MXfa
         C+TuqghWiDRm3DCP8J+2J0iEdA/bbHDjzbeBhfRh2PkvadcIt/emyD8NaPKdFDqpSqp2
         vJKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=O3NyMgUc;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y73si6610iof.1.2019.03.09.02.12.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 02:12:35 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=O3NyMgUc;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3FB102081B;
	Sat,  9 Mar 2019 10:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552126354;
	bh=NoR/si8+r58wNYNkqCXww20208UT4qMs8+opFuySZbY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O3NyMgUctHMR0ts9phth5Esz2Es93WPF9aTc742KSWNLDR8ZoduEdwOjflFT61sEK
	 AxvXVr+ap3BGumy0aXLgPc41YBqysNNZsErqnJRTXJrSGEokzn6pPLtV3qn+/MXb9+
	 v0xfNpLZgVTEM8xlhmTRlY7++D09xSEMW2DuwcAQ=
Date: Sat, 9 Mar 2019 11:12:32 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Wentao Cai <etsai042@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4 0/4] Correct malformed SPDX-License-Identifier
Message-ID: <20190309101232.GB25106@kroah.com>
References: <20190309073125.5610-1-etsai042@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190309073125.5610-1-etsai042@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Fri, Mar 08, 2019 at 11:31:20PM -0800, Wentao Cai wrote:
> Correct SPDX-License comment characters in drivers/staging/most/dim2/ 
> 
> Wentao Cai (4):
>   Staging: most: dim2: errors.h: Correct SPDX-License-Identifier
>   Staging: most: dim2: hal.h: Correct SPDX-License-Identifier
>   Staging: most: dim2: sysfs.h: Correct SPDX-License-Identifier
>   Staging: most: dim2: reg.h: Correct SPDX-License-Identifier

That's 4 patches, which is great, but you sent out 5 patches in this
series :(

Odds are you had a file that ended in .patch in the directory when you
sent this out.  It happens to everyone :)

I'll just drop it and focus on the numbered patches.

thanks,

greg k-h

