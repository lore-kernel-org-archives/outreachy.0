X-GM-THRID: 6671711882278076416
X-Received: by 2002:a67:db15:: with SMTP id z21mr3632660vsj.41.1553885687621;
        Fri, 29 Mar 2019 11:54:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:6805:: with SMTP id d5ls714514vsc.4.gmail; Fri, 29 Mar
 2019 11:54:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz1d08b0nXwTbKgytBMNHpvVViU2DHfvSLTeIS2zSfie+JGwNvECSI4Ssz+1Ud4ulA+LFBB
X-Received: by 2002:a67:e24b:: with SMTP id w11mr3606901vse.0.1553885687037;
        Fri, 29 Mar 2019 11:54:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553885687; cv=none;
        d=google.com; s=arc-20160816;
        b=jFFWTqeOvR7b4Zz5YeGUIhwUqt4G0aR1fvHdQLw3DJQeNkBhwwGU8Au/y9+u/TMa6O
         e/s8ORIgJ/hnCpvGq6mAp42JHQCPbgeQ7LHXS99LN93S9YVSTKlA2lgnDBG0AGFAO03f
         dQafp/nGLflXjgELP47y+KkWsneMsGAerjYBDGED2toE1rQDsGUC3VITqWhO0kCY76E+
         JNPI7CMJR1/E8tWljl2L+rUx2nB0P1Qw9t04svU7LX6U/wrrG8e6q6ulUXF9WNNkEbJz
         7EurHDoGw3insAzpYnP9RDfReCB97nxkxhzfkgMzH10dZlcPLTdZd7+czm5ws5q41puK
         U9ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=RZX+C6OsNmOpZoPzPDnDsza7sdAORwPmvqWQGtX9c1A=;
        b=ahVrCZkcDvTNbqziMzY1cdZrKHIRfGBnUDYUyz3egiDMc88mezKVm2ViBax7f/d1RB
         5OMffIH52ex0A4Cn14BFPbkrVGrDw8WMFRgiNyjtCtQCXkuDSXghfQGVFL5GtlnqtKS0
         uA0V0MbLbpPTcNNzH3PkuV0y7sEa4xsNbn5QQKRCWAD4APwTyWgFk6zJT5WKNn5Hm/c2
         MVLd7J8q8Dy4EoFWcwrNMeTNFVtX/23S2t2sK+17ys1yx09ShtrqlpvPSeA+h8+UJ9a6
         0HX/oI+9hJ/l/hSb0m0Xi+OvDSokL+up0np2dcYj6WOd5qY24vyNBe3rQ048ohbU/xGZ
         oB4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=oNPHQpMv;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n74si246273vke.2.2019.03.29.11.54.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 11:54:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=oNPHQpMv;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6E47D2184D;
	Fri, 29 Mar 2019 18:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553885685;
	bh=lMNyycMtXzgafHfu6TtsXQz30bzz3ne/ygWrpXLw0kg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oNPHQpMv6YBur7BEZoRWjT6qkX54nH91Z6sl5ETb/y4/nNZU/O3cbdEgfDQkP1+dz
	 vTT1ppQWQOzlVMxOgG8xQYiSSEDIN0lztZgFJeixvTPgnd8O9cIkRS2HNucjNsKKh7
	 0di8WCLptgH0GYf0U3h8PeaM4ByxFuglmvTP8jHA=
Date: Fri, 29 Mar 2019 19:54:42 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatsala Narang <vatsalanarang@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: rtl8723bs: include: Fix identation issue
Message-ID: <20190329185442.GA19235@kroah.com>
References: <20190329165012.17047-1-vatsalanarang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190329165012.17047-1-vatsalanarang@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Fri, Mar 29, 2019 at 10:20:12PM +0530, Vatsala Narang wrote:
> Corrected the identation of switch case to get rid of checkpatch error.
> 
> Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
> ---
> Changes in v2:
>  -Resend patch

What changed?  Just resending it does not mean anything.

Please fix up and make a v3.

thanks,

greg k-h

