X-GM-THRID: 6948342597010063360
X-Received: by 2002:a2e:b043:: with SMTP id d3mr19286673ljl.280.1618261990516;
        Mon, 12 Apr 2021 14:13:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:48c6:: with SMTP id v189ls670657lfa.0.gmail; Mon, 12 Apr
 2021 14:13:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwLrYFOeThuKm4do9J74cybB71AD9En3Dw8sj7NBIUWCuJHPG4jZ80oS5sa346qdzLc0Z0z
X-Received: by 2002:a19:c1c5:: with SMTP id r188mr20743573lff.179.1618261988895;
        Mon, 12 Apr 2021 14:13:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618261988; cv=none;
        d=google.com; s=arc-20160816;
        b=y+lrUb3NUFGwrLGsN5lImNLfQhe+QhZHSDfS7jlj3yrJb7B8sXqFcmrAj+EgdjL6Wa
         6LCBifWZjmFl/XXZDGdJ8toB6gJE8NGHrtz0pAuHD7B27cJOjegIpHhoHdkTnlk6roMy
         epjwOOaYDv7C7mOlQGrscQm6dCgmIeEvK3p4SZZv8j4QaAxY8Gu2DcE/SlF3j+DgOPfw
         xq2oB5REeIjDM05owCLKE7b1Chb1D9+mqnzJmpMjl+0J7y4KfNbzaY2W+yOjZWabB9OL
         c03NTgP4ZRFSRkMDwW1mq6CgpFVjeRQdEl4Yr0Ce06VW9TcVGv2BbCCJw68TZwhDcD0F
         qx3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Qxt5hGUGCIOriu3kYww5GhknJDLjCA6JPdqgUUXGgoM=;
        b=xQhTWDXtUCOQcDYeRSNmRSRgDi7lxxNg/xGVz/SPk3m/Kvy85kLCIwdEUS9KYXtkvd
         96/76LFcGabzK2qXVKrAzybS9Orc+4LqYn+UusFyiYb4o/nR0OeedhHRgEwxcmwLFYDj
         F1WK+AO/ZsTAYoSUl3Z2kvaYxI2sICQwIULi13lgh6O1Rp7doKJAMt4aplbTZNQrfEmu
         jzVZgU3JnL3hNhn75DzRL/gtiUdU/RSV608+7yC0SY4aSHSz3hG1wtDWRx97ON/EJA14
         7jv5PuD1fNXt3fYbiypTnrCwOFA5Ink5WhWSKn6WO+v+TJ6ZpToQEQoSGo17Y+xI381R
         ePNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=VLET7wPt;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id p18si657837lji.8.2021.04.12.14.13.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 14:13:07 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=VLET7wPt;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=Qxt5hGUGCIOriu3kYww5GhknJDLjCA6JPdqgUUXGgoM=; b=VLET7wPtaKrRRfzF3FNJlosHRs
	53TLpy3ZIicI9BERoQtjnoFJlwpUzX8HnbaYJsoxLg5uBj+SKIZj6qAi3eWpDydUCJP9/HpJmwFAr
	Z56xeKGBAEub2TWsJq5FtlCH/A3wCmS4v0aEtWXrQcdSlDjaq42QuTNBbdJOukIrhyAa7UaePgnpe
	nKBsKF11XQGNYYBamyaHJHf+M1c3TOmzwEO7LD2xhMwJ53WoamQYVhMGwUIUj3iK5WfW7S7vmoiu9
	zXvWat8+TfVWJl3owoRTgnQMog6i6FUooBAO/LmAoGM2KcrdqVp310Y1NyVR4jSOCQzhil7G26Cpc
	ZRTeIWhg==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lW3rh-004tEt-Qe; Mon, 12 Apr 2021 21:13:04 +0000
Date: Mon, 12 Apr 2021 22:13:01 +0100
From: Matthew Wilcox <willy@infradead.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: hal: Remove
 camelcase
Message-ID: <20210412211301.GO2531743@casper.infradead.org>
References: <20210412210258.8061-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210412210258.8061-1-fmdefrancesco@gmail.com>

On Mon, Apr 12, 2021 at 11:02:58PM +0200, Fabio M. De Francesco wrote:
> Removed camelcase in (some) symbols. Further work is needed.

What would be more useful for this driver is making it use
drivers/net/wireless/realtek/rtlwifi/btcoexist/ which has already
graduated out of staging.  I haven't checked how closely it matches,
but this is surely a better use of time than "cleaning up" this version.

