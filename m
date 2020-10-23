X-GM-THRID: 6886754504094515200
X-Received: by 2002:a2e:8515:: with SMTP id j21mr740399lji.419.1603454318165;
        Fri, 23 Oct 2020 04:58:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:c111:: with SMTP id r17ls416114lff.0.gmail; Fri, 23 Oct
 2020 04:58:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwY/T42GJn5jR45r96mW6GpVD5yNZNV4e+lR4UdIbXQWeTcFqIaqDocccBKhv3pOzm8g+Q/
X-Received: by 2002:a05:6512:3b1:: with SMTP id v17mr603369lfp.262.1603454316025;
        Fri, 23 Oct 2020 04:58:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603454316; cv=none;
        d=google.com; s=arc-20160816;
        b=JN5UIUVF0Dos5pOaQDzZG7M19K4R79LovXqK5GfeS99BnFilBg36jNQMEPfSDzNY8n
         GD1TjOwy1Mbvz2mP8nJixaotM2ZQwvgnnjbjY1xctZc5kMCe/3ALRTBXPcqR0sQIJpF7
         l/chmDWnpSq3WuqcTGuiZ4tcnlXEwUxvlydzRF+Jcy+Fgr7/FYC1e7kDivh1HBP1mCQD
         N9+o9PY0BXyl/INP/SEfDvLQyZESelig61zP9aBVFmDcpnNc/ITRq7uZeUACtjHBz0B9
         WK83Z1K8Hqb630gAR7DaY/9XJOeJUJCidSbcUlAUpg5fQ7VBi0DcskbQSeCyesDWQl3K
         s6nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=a43uQivSqcpgtBeNtkCDgWJNs/iVWYVhNy3CrkGeFSQ=;
        b=GzvDUXP2t72aNQx8jxpZ5cvIv4EG3GMUwmG5FWW60AFyK9nUOT4tJ9/zs3nbP2Ez4l
         H7ha4yffaObMRr/44SQvZeJMEEzkxEfu8ofb2kkVMCp2gSlxDnOx+SVBVjyTi5m99gy/
         3LKdJaWXT6vREeROMyVVQ4XVTGCXdYvBCUHsd3imnFUm9sctSOUeHV/co0Oqc1kDGgad
         hTbSC+FVlP+BtTexsNq6QIkPNqJDH0I6xPtp8+rFUpab5gsFfzFntdv7L/PpRRWXyHjh
         xTZxx7QzYBinRG01gGjIZAiMb3b6/5BbfP+7rv63w+OFYv+jd/UsewrDqoRvQc7rW6Ey
         dTHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=GKvx4ShS;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id t20si44025lfk.10.2020.10.23.04.58.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 04:58:33 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=GKvx4ShS;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=a43uQivSqcpgtBeNtkCDgWJNs/iVWYVhNy3CrkGeFSQ=; b=GKvx4ShSPC/2wFxB6AcKPueFi3
	lkzngVb6jyR4s7900S2bZt7bi5e3F1jIVLIP38fI5j446QCOwZtG6c+93yGj8Nq8V3e5+cf00K80T
	5uIpn+Iky0HoSN89QlGes0CZjm1Z5MY9TReQdbjq2zrErYJd8Jupa7wipQa9TCFFweDTXACPIsyQp
	SejhuoxGLUm6Z/FK9dEcPXnssu7Uxj/7B27ZuIjoXNbCrYD0hBpsg9fRnzt5JnvQlVXX2hKLDBK9/
	2BDvcC2jjoBASqH6sfp+G1Pp1V0ZCQo37QVy8/bJg1qPUCcPVWjg3QjVbq2y6jiks1ShyRuyc/t64
	PWsATsLA==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kVviG-0008OK-Dj; Fri, 23 Oct 2020 11:58:28 +0000
Date: Fri, 23 Oct 2020 12:58:28 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Elena Afanasova <eafanasova@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging/rtl8192e: replace kmalloc
 with kzalloc
Message-ID: <20201023115828.GZ20115@casper.infradead.org>
References: <20201023100317.4473-1-eafanasova@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201023100317.4473-1-eafanasova@gmail.com>

On Fri, Oct 23, 2020 at 03:03:17AM -0700, Elena Afanasova wrote:
> -	txb = kmalloc(sizeof(struct rtllib_txb) + (sizeof(u8 *) * nr_frags),
> -		      gfp_mask);
> +	txb = kzalloc(sizeof(*txb) + (sizeof(u8 *) * nr_frags), gfp_mask);

This would be a good opportunity to use struct_size().


