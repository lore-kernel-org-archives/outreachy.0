X-GM-THRID: 6883926801253400576
X-Received: by 2002:a25:1c1:: with SMTP id 184mr7841322ybb.243.1602789723849;
        Thu, 15 Oct 2020 12:22:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:700b:: with SMTP id l11ls95015ybc.5.gmail; Thu, 15 Oct
 2020 12:22:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy4oVXppLVxUVONRvT4O1iD/6fmL4M5xcU/TiTkDAH9VL71PaiCcjRR6+GkLWKJoFwjMnXl
X-Received: by 2002:a25:9087:: with SMTP id t7mr7748250ybl.195.1602789722170;
        Thu, 15 Oct 2020 12:22:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602789722; cv=none;
        d=google.com; s=arc-20160816;
        b=QI/EAOyh7ob56/YWDZ3JQxhk5S3tx0TyiG8OTkVLQveo6pMDkJkkCy61oyodo/daPg
         0A98oQ4KcK8BEyUFHlcU8Vc/OLKZ5DCiZI6UWAKlUJ3R8WU4lkTvTWPKTLt5KhnxklXI
         behI9/GHyH+4cGJyT4SPhybzDzSg4PZsIFf0UmP1ZqVK57cwl+58iTUTEO++XlhqxwHW
         zj6VqNk1KHGz+3A7/qVrjsEXTLZ4Fp/UmV3lGIswkxL07FBjkmUOzUFyLYEYG7rcgpJ/
         3mRfFMXARqEuTQdaUQAJxM4sJufuUdPj33PCa4pA1M/0WU9E3V3SG10XyAlBli5yKCYn
         u/YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+1B1I6n+4355KChQSD1PKlxesOkEF8at+yb+azl9KxE=;
        b=z5n5EFYXMqwa36FjuyVhHVzga3APajKjPQg6MQOPIx0T3cfpX/R0g20P63o8UwNY4H
         kBk6LojRXvBkVTQfbuyC2yV8bvwPfmASxuchnDg9VbTVc3r809qaJubQwBfpVGtLslJi
         UsDuBjmLCB4K/KVVadZc3W2DdcERZYIXpe9ARwJYIFWXxIAhGgFfeNnclrcwPB/ba014
         ElpSkEL+uznFMGvMrRQRut8e43fuE5RrSRgD8Sf9zvjw6MNYBIZGyWs8LG+PnMlF1F3v
         7WQSmTRXFqbtprlNliOygXITEVUwgD/vQVP/H3u0nHdRHQrlrZS142s+kXAIb22LOMgW
         ux8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=VJV+7LI5;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id r8si15688ybl.1.2020.10.15.12.22.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2020 12:22:01 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=VJV+7LI5;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=+1B1I6n+4355KChQSD1PKlxesOkEF8at+yb+azl9KxE=; b=VJV+7LI5lu6RB9m/2CsMy4VYCv
	OhGI8ToNtzUdCnKL/a2kMNwzv8H1Kevzw/kqYtbaSZZvqTBmwFl8WETkyxiLRuEM6/ziD05TrxK/C
	/1J6ZuK5+PdqRvdqpy38sPsej00I53ULkw0Ugrd283pD0RmqFecGYEfgOo6c62xatcSe27uQIWdaE
	X5ms3F1mi62NS67SvDCZJ4nQ7u8h0rizZ5y4oDBbWeDqwlTyUeT7iCUPRagk+OuQ3ANSCfm4LCIPV
	4Rc6cws93yrksBtDBiiCSiNDUd15KaFZg2apu/mUXVOSk7wB+cmMW1sj09dMsHIACo2Z/qh0enqdX
	9ZePuyHA==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kT8p3-00066C-Bu; Thu, 15 Oct 2020 19:21:57 +0000
Date: Thu, 15 Oct 2020 20:21:57 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Sumera Priyadarsini <sylphrenadin@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [Outreachy][PATCH 0/3] staging: Replace
 snprintf() with scnprintf()
Message-ID: <20201015192157.GC20115@casper.infradead.org>
References: <cover.1602767114.git.sylphrenadin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1602767114.git.sylphrenadin@gmail.com>

On Fri, Oct 16, 2020 at 12:41:42AM +0530, Sumera Priyadarsini wrote:
> The show() methods in device attributes should return the number of
> bytes printed into the buffer which is the return value of scnprintf(). 
> snprintf() returns the potential number of bytes that could be written
> which may be greater than the actual length to be written.

There's a big patchset just gone into 5.10 yesterday which adds a new
sysfs_emit() for show methods.  You probably want to use that instead
of scnprintf().

