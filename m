X-GM-THRID: 6949862244544937984
X-Received: by 2002:a54:458b:: with SMTP id z11mr18219954oib.69.1618220199976;
        Mon, 12 Apr 2021 02:36:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:7dd2:: with SMTP id k18ls3874539otn.5.gmail; Mon, 12 Apr
 2021 02:36:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyKjAsFK2MSlLzIE7hvWUaEr13hv4teEwsQVo32SJLKq+bUrhl6gqT+9qjJvhrR+alrUbuA
X-Received: by 2002:a9d:6296:: with SMTP id x22mr370344otk.292.1618220199120;
        Mon, 12 Apr 2021 02:36:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618220199; cv=none;
        d=google.com; s=arc-20160816;
        b=nhtdqpclqfmKL5C1Eu5pdTVJZdNM1qUcVqoY74vI69cH3vQ2AtBPIh39SMwry5Kp5o
         1+IzcMOHOzGv+gRr+JRVn1VQrP/Sq5JEMxcRasqIIPfh4g9edp0aB1F1KyeK5lX2a0kj
         v1F+4zXoQbmXzXk5IsYyPdEsxWO3K3v2/qhAFyAt8y5tXhdTpB88SswHmacjf0I1igoU
         /MiDkSSRInAZwzgkQ/eag0yT6u5AGD2wySUhFA+9rezPsykkKxjGljFjOIfNMy+zrp9h
         QbxdmZ+pOYa2cA2ozD1ezdn9mSEG1YP9AaP7x0hhi3gftBvKZO0Zx52+myAjKKQjmXUi
         j9+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sGwqaz3CpeSUy1C5Wd/vFz8NkdWN9zpzlYSkj0cshD8=;
        b=ADVOiBycSV648Yu+9nxqj1IAWDlzq7Pgus2MtMANz1ZiFtX2UAEgL5O8KZrUS35UTB
         AcOj2+QAg0mPGsdfw42e+Tr0EnojxLy1djqDWVT02ZEesK+iuy8K2l6CHYnibu+PsBu8
         QZo1EAWxbqOwx2hTOq2uZoC4ysr8VBObnx3oUr2sldG1D0j268bnNnI6oqdhAm1tdwu6
         1jiIEjXzSP5kHKMMohPPZI1Z2ETXeMY8eD3X8XXnY3zuACdha+CRuwUh4nCCmpA+173q
         0tPhM+X4kRMP/AmCxI7W5f7f2qVt3bv8fdXx/zmpyZjGX3F1ul1RrzgE6XTIjF540ypn
         Y/gA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=xH7N4h6q;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b17si768421ooq.2.2021.04.12.02.36.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 02:36:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=xH7N4h6q;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id C72896120F;
	Mon, 12 Apr 2021 09:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618220198;
	bh=sGwqaz3CpeSUy1C5Wd/vFz8NkdWN9zpzlYSkj0cshD8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=xH7N4h6qhQJc8GnunUJp/WVObp/Xynp1va/lJ0USlrm2gFzU8lauLpv7qqY0lOOuD
	 UfxQzBbRY0WKUFdB1odnq65aJ1tUdArq3xI98iVJrglsmQe0VjavLCT0oOd9Ep6eOl
	 vGL+ylJd1f0a/vceA0Ia6TE8FDmYQODzfK6ekKKM=
Date: Mon, 12 Apr 2021 11:36:35 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH v4 0/3] staging: rtl8192e: modified log message
Message-ID: <YHQUoz/eQ+By5Bd1@kroah.com>
References: <cover.1618139271.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618139271.git.mitaliborkar810@gmail.com>

On Sun, Apr 11, 2021 at 05:04:46PM +0530, Mitali Borkar wrote:
> This patch fixes style issues
> Changes from v3:-
> [PATCH v3 1/3]:- Modified log message.
> [PATCH V3 2/3]:- No changes.
> [PATCH v3 3/3]:- No changes

Your subject line here is odd :(

Please fix up.

thanks,

greg k-h

