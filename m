X-GM-THRID: 6806841558557523968
X-Received: by 2002:a17:902:b60f:: with SMTP id b15mr7022311pls.14.1584959717568;
        Mon, 23 Mar 2020 03:35:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b203:: with SMTP id t3ls8162576plr.1.gmail; Mon, 23
 Mar 2020 03:35:16 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvB+G5jEs8bcx7DU5wMVTLrLDrW4tZ8/8uCJWGaqlJ/0iwL4kNgWkKSsgSN7B7pQJiLBFvU
X-Received: by 2002:a17:90a:fd90:: with SMTP id cx16mr826512pjb.41.1584959716196;
        Mon, 23 Mar 2020 03:35:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584959716; cv=none;
        d=google.com; s=arc-20160816;
        b=cV9mL9dXgtpRq2iCaXibIpf6XadlsVeaT1JWKQd9i0d4Q5rdGujlo8svx6a5rN42m2
         uIawJIu/Rh9RXkR2yNFh3hVJqfvGOSdTpl9ZoQxES6NVxmbGzz/CUKnZ1po2vkqBof+C
         eKDQHUc2pO6nOjIKi5r6I7FAu4241nB5ZFQCcSoMhAE6oWFZoIoX00P6MfmmL0AonLfq
         aGzub/7jA5BZ9M3wHey3yrT/2b8wlnTqjcY+XScBKR1/mWhwX47zhMeL/4GFI3XusB1K
         7Ce+yQREK6oG4Bi1qylkLs84TcM4lYFw4BDzYEYCUgMRy+4xXB838fOMveF/pxLEJCTn
         /Kcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=lVWZFM1Mn4CPAryAebzc/T8yjoR0n2lM3+0O+Hz0CaU=;
        b=CfucLhlajbchlNAZAtFvuG6Y5iJuEz2YOTEPEph/CK6DVSI2ECA+Ju7wNrqnTTU5KV
         gTtx3hz5IczpI91ZlXcfbLF9UNr7eqMnZ7YwlT+pT2ljxfnf/wz0uhMkRSZuUYBQwLgM
         qTTRgpCu4KUAlqUbBaDffXU+iyZoGwoS8Z6JqA6yzgOf9JEfW88z/RtJc07AM/2Xsabh
         HR5ZgaGVjZutvcaJH1SBi5sjAzfN7I18iO6W8q3rXZHWGFxe85Lds9PZxwHYemFUWIe4
         7OvtlwmXgrtI/fzwk+zRlNx1dF6UbWFWbzJIXOJ9YL0Zu+nMA9VLU8At/Oh86BNgUGNJ
         Hd+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LlswuNR1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c207si64641pfc.3.2020.03.23.03.35.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 03:35:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LlswuNR1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A28EC20722;
	Mon, 23 Mar 2020 10:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584959716;
	bh=lVWZFM1Mn4CPAryAebzc/T8yjoR0n2lM3+0O+Hz0CaU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LlswuNR1x6rnO8Uy+zdadqVoa3ekrf+pRUtP3w+ZPKW33QZK+co83K/7WjUM8O7d5
	 i2BXYiCB4uOhlVqgLN0FWI1nMOaSbwBNme4ABb6bevstcYtYyBjuzL0eyoQZsqH/dh
	 WC8OyB2WYxlxxb28gJ1lVPPMFv7s1Pyl17X/Yoyo=
Date: Mon, 23 Mar 2020 11:35:13 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: hp100: line over 80 characters
Message-ID: <20200323103513.GB452208@kroah.com>
References: <20200323002450.GA15867@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200323002450.GA15867@siyah2>

On Mon, Mar 23, 2020 at 03:24:50AM +0300, Gokce Kuler wrote:
> Add a spaces character before that for correct syntax.

Does not match the subject line :(

