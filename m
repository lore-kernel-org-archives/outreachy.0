X-GM-THRID: 6945688509502980096
X-Received: by 2002:a63:1f1e:: with SMTP id f30mr1793716pgf.141.1617171779803;
        Tue, 30 Mar 2021 23:22:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:cb0b:: with SMTP id z11ls818907pjt.2.canary-gmail;
 Tue, 30 Mar 2021 23:22:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw95e22nuKe4U4S6LGcvqNmkOG1nN2oSam6JJ6wLFI+ZFt9zq5msA7FCwoNlVlRIWnFVvNP
X-Received: by 2002:a17:90a:9281:: with SMTP id n1mr1965786pjo.146.1617171778664;
        Tue, 30 Mar 2021 23:22:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617171778; cv=none;
        d=google.com; s=arc-20160816;
        b=q4Xqgb1q4KvkrQ6eabXzVZQFuVYZZBB+MXp88PJ9CLeI9QNmBt4R4j7tC/IhnAF7VZ
         Wa27C08JLh5Ns2Cmuv+qE5YTS3FOkSa2YuIfCVkiZ71YWpRZTYgBm/069Imv8DHXtuWi
         r8r/ukBngwIaoSqALjdijNGSSAzdFmpWfZCd9a/fSIetgKTauUwO/ntbtE5Mxk638o9j
         xv8Y95a1TDXWT0CIh696v0Nb0FgXfNR7EJYrKQNw8ShzIxd8aNPNvscSdJPCraiHNk2s
         vV0ZvZ7kAh8ZIh+udunP7OrdjQTQZ4fGhaaTcWbSbycq6aTP0gBHh74SLIeqe+6/xYPb
         NDiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=e+PxklauhdhwjmCSNgqKPpvjvUKPuMmogqcY1TwCtNk=;
        b=c4mC+dyWE7NDzUMTzEfPEELlK4akAxY4X0WqBqxLvxUwIXNSptl1xx/BYwy4F0ReO9
         691IrXuHmXCc00IWhPxj9kaCkQMNy5VIKWQDwqyR0ftqgMMlmKNi2IpbvTlBMHduT3gu
         g+8pbs7LhPpXLewbhmw2d5yLoNl/JZ/oN6JsaI4MdWv25EvSHop70jyqo1V+g5/7Skh6
         HLf0ALHCUe/a67YLtWPsSlTABUK0lP3OaT44c0D7z8j2ecBFM9P0vgrLPTOeKhFdrYuY
         R8pmgnWTQNNotyW6ZAj7y9YnGIAJH8y280VebphRCBCAO80cPvPup/7futfwNEIZYE8G
         E6bQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=RR7HnAJg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y11si84145pju.3.2021.03.30.23.22.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Mar 2021 23:22:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=RR7HnAJg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id B93ED619AA;
	Wed, 31 Mar 2021 06:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617171778;
	bh=bioy7mMpVRXL5zbDwj85CU2GZc5oLjGym23mmEaYQlU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RR7HnAJgIhKO6uDunX6AcgNJ4CBnEUq2dDvHJ4XMXULJpuY/9iG3NhYlLeEXaYH+e
	 +l/7DkJGALmV+BwXevHHtRZ/Xs/jEDqCAHgCnA0bRMrvueWWPyJrW0dvPUwDZD5dzI
	 /5A+hwkdO4PAyw1vUZO4CqeX9C8qOf5Aem0NbhTc=
Date: Wed, 31 Mar 2021 08:22:55 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Deborah Brouwer <deborahbrouwer3563@gmail.com>
Cc: ross.schm.dev@gmail.com, marcocesati@gmail.com, fabioaiuto83@gmail.com,
	dan.carpenter@oracle.com, phil@philpotter.co.uk,
	amarjargal16@gmail.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: rtl8723bs: fix block comments
Message-ID: <YGQVP/llNYUX9egx@kroah.com>
References: <20210331053841.GA6091@djbComp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210331053841.GA6091@djbComp>

On Tue, Mar 30, 2021 at 10:38:43PM -0700, Deborah Brouwer wrote:
> Remove empty comment and fix checkpatch warnings:
> WARNING: Block comments use * on subsequent lines
> WARNING: Possible repeated word: 'very'
> 
> Signed-off-by: Deborah Brouwer <deborahbrouwer3563@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_xmit.c | 61 +++++++++++------------
>  1 file changed, 28 insertions(+), 33 deletions(-)

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- Your patch did many different things all at once, making it difficult
  to review.  All Linux kernel patches need to only do one thing at a
  time.  If you need to do multiple things (such as clean up all coding
  style issues in a file/driver), do it in a sequence of patches, each
  one doing only one thing.  This will make it easier to review the
  patches to ensure that they are correct, and to help alleviate any
  merge issues that larger patches can cause.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot

