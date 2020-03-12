X-GM-THRID: 6803065802760126464
X-Received: by 2002:a81:9c07:: with SMTP id m7mr7502502ywa.88.1584001182464;
        Thu, 12 Mar 2020 01:19:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:aae8:: with SMTP id t95ls1224965ybi.8.gmail; Thu, 12 Mar
 2020 01:19:41 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsAoAFm7eyuVXXARTRQYd+oIpwSvGf6Gn9kiAqQgyUZyqCnrD4BzwOmMGRoan1pI+sAqbuo
X-Received: by 2002:a25:aa51:: with SMTP id s75mr7614225ybi.171.1584001180936;
        Thu, 12 Mar 2020 01:19:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584001180; cv=none;
        d=google.com; s=arc-20160816;
        b=qHg6fojr4esAnbgUZ2Rw4IXameIbkP0N/oJNnIPa3L/Hf3u1lkff3JFaWpsvswU3nH
         udcfF5F3y+AfY4116siEvQb8LV/M489vwmiE6K4ZK6XC5ncme9S/qTTWTBwNXRXGf4MU
         RSDmeGLd+DE2m6znh3tfPy82jtTXnmE4Ca8enVj7pZU4PMF6PbcMh7GEeEy0isaer9tj
         VzVmZK3GrMFIlz6/nmM6KJnfDqiQoRCjSsjQ4k4Q3N+YwHkZ7SjGrWJxBGxSBba4t42x
         6A6X66KQEmRLE34G6usAzHdmNcIVfLQiCRm05Z573RPtY1rpPY07XxwFfL/iV0i8UdEi
         44mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5KHv10A6YkdE8fIDDhxsr1UoSC5QQCJVquXCfXkviAI=;
        b=PinNaIxFxSLv5VXxDUf77OIOZl/BKvBZPoe544mxdiwLl09ryP+yaZyvKjHjWx2CuB
         ZGsalLrvdZe5yWlzneckD8gR6x18SXBbVOtIAzlKwb4+Rd2P41lnfJxods5ynYrbgdFP
         MFe5FqxECL/Aa9P5YmIbHrSFFxvc7Ev/5tYUK6hOvuG91WaqKILUBqRO/XuZHvrj6ij5
         IJ3OyJ8r6NmcHI/uujCycQ5vbu+34dQVQCuzdPuhW1ZllYDsxyd97m+7VmouCUbyh45m
         Zv5/WEKkzotj0MUmQKZMvEuBJMJ6cnlTiMDV1mrmdYYjZJc/C8kh0UMm7xM0LIWgTALv
         UPSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JtQczCeU;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x13si443333ybs.4.2020.03.12.01.19.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 01:19:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JtQczCeU;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C191B206EB;
	Thu, 12 Mar 2020 08:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584001180;
	bh=X8gYiEOfCZueOsanZm/EPzwAeT9dhAxo3FHel6E8gms=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JtQczCeUO5uSGcAYsD5CFquiINA9odeN5mAyRzqA/GKh9BwZ2otJJ3DoT7FJYp9jg
	 UQl+wLTkYd5ZhvwDYziJYvloMHyuWbAV+efFlJ8YZQGEIYClub2SX3TJthF3bN0TH4
	 oa7N1EaY3IggPUWybJdkWXwDIXSFVTMdHJVAIPsA=
Date: Thu, 12 Mar 2020 09:19:36 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, daniel.baluta@gmail.com
Subject: Re: [PATCH] staging: fbtft: Reformat lines over 80 characters
Message-ID: <20200312081936.GG11746@kroah.com>
References: <20200311212939.GA2872@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200311212939.GA2872@deeUbuntu>

On Thu, Mar 12, 2020 at 02:59:43AM +0530, Deepak R Varma wrote:
> Multiple macro definitions crossings 80 character line length nakes it
> hard to understand. Reformating the these lines makes the code more
> readable and easy to understand. Issue flagged by checkpatch script.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>  drivers/staging/fbtft/fbtft.h | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)

You sent 2 patches with almost identical subject lines, yet they did
different things to different files.

Please fix up and make them more unique and resend both of them.

thanks,

greg k-h

