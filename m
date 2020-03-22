X-GM-THRID: 6806789560169660416
X-Received: by 2002:a25:7002:: with SMTP id l2mr26413517ybc.113.1584876468972;
        Sun, 22 Mar 2020 04:27:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:c102:: with SMTP id r2ls4122544ybf.5.gmail; Sun, 22 Mar
 2020 04:27:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu7cR+GldfrraAeVNYsXAb9puCQoextqZ7pbno33A9oy0VzpDvHv3fzW9IhSbwuOIuFvNn2
X-Received: by 2002:a25:aca8:: with SMTP id x40mr27595070ybi.512.1584876467541;
        Sun, 22 Mar 2020 04:27:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584876467; cv=none;
        d=google.com; s=arc-20160816;
        b=GuQLxhXDEV/U8q4GcyZwToijN3FOagpw0DqwjcnVQ9y1X2QJlit/2E5kZs2TRaHjW3
         N3N15Se81tzaeHBjuWbR/2D7ACl0BrMLiFlzZOKnR6SABg3HrRa/BdYF177j8G58w36r
         mx4wpi1qg4OqWfjgDl5WjX2nUew1u6bW7xCle0zNLsUJbq8Rk8ZhgQsBeDWvlolLEHiN
         NInyl9d74MLR9eBhnlefUtXk4XXyGfbI8ds6LdyW5rGEZwnsr9Nng0UiqKStdmeOMVeq
         Y0g7MkomnnuSuqQxnU1WJIheFT/lTlNnyYb6r5pK0amGBJhhU4K8EHv1UutYCrHM5JWS
         Pwug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=MiRWCSXSrrm/oDu/jhrLgCQHfq3wo0rdYWSgXnYr8jA=;
        b=W/K/HSyYZAe0fUuG2URsVWViwr5A2BFnLblpqkiRqbRbtyORb6X8wsAFJJyn2xxV+3
         8TdruTlNyxx8TW6pxf+sEwUpdspsqpvkR//bitbTa9B6MyXXt+l/JWWZymMPZJaWgxST
         WPuzBx9oNeVNDWIAWzIiMy72LGVqmWRjau118ZRtbLk/IJ1pjh/8IKr/VhRmpQVrRYkF
         rF+FIN2hzYnUdAJxtz/pD8lR87K6/1Csan6LKC0+MBo82xIfBeQpjzPpy/MBuTdyJ4cB
         rFXVRWeurv/w5CifHNLSofd1GGjlCJWu1AYYIREzvuNCJtm9UanlRWdTKuqKuooZDKm8
         X1bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="fm/5Npgl";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l1si598910ybt.2.2020.03.22.04.27.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 04:27:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="fm/5Npgl";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0BEFE20714;
	Sun, 22 Mar 2020 11:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584876466;
	bh=Zlt25t7XisTrtu+UdnuJ5QG6TBUbTde7SUL83ydeDjQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fm/5Npgl1pGyF0sBACsLEEeeXNojurSvhC1lKABFeruhHdMdEmHj74QyF1cDqq3OT
	 eeMrO7OpPpQYOVLGqJrkMFLzrL8/2FSpRf/nIG5jlVWTsiaUjIxKLNFce89CsvHfWt
	 oEYX+JwfYlrYBoJIdS1oMpvGiDqUbbRDwqQ7sTXA=
Date: Sun, 22 Mar 2020 12:27:44 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: Larry.Finger@lwfinger.net, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 01/11] Staging: rtl8188eu: hal_com:
 Add space around operators
Message-ID: <20200322112744.GC75383@kroah.com>
References: <cover.1584826154.git.shreeya.patel23498@gmail.com>
 <19950c71482b3be0dd9518398af85e964f3b66b1.1584826154.git.shreeya.patel23498@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <19950c71482b3be0dd9518398af85e964f3b66b1.1584826154.git.shreeya.patel23498@gmail.com>

On Sun, Mar 22, 2020 at 03:51:13AM +0530, Shreeya Patel wrote:
> Add space around operators for improving the code
> readability.
> Reported by checkpatch.pl
> 
> git diff -w shows no difference.
> diff of the .o files before and after the changes shows no difference.

There is no need to have these two lines on every changelog comment in
this series :(

And pick a column to line wrap on (usually 72) and stick with that.  You
are using two different ones here, and for this whole series, and it
looks very odd, don't you think?

thanks,

greg k-h

