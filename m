X-GM-THRID: 6946206210186018816
X-Received: by 2002:a1c:5f54:: with SMTP id t81mr8678924wmb.84.1617291018160;
        Thu, 01 Apr 2021 08:30:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:58f0:: with SMTP id f16ls1601063wrd.0.gmail; Thu, 01 Apr
 2021 08:30:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw/JGZiLHY66YPh8Yv8woMoX7Z3BAbP5svcouY3Fomxo93DRxrYK8U5/pEgOD9IPcFQszNQ
X-Received: by 2002:adf:f48d:: with SMTP id l13mr10594143wro.311.1617291016796;
        Thu, 01 Apr 2021 08:30:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617291016; cv=none;
        d=google.com; s=arc-20160816;
        b=a5iTd58J6la9Zk0fnR6osz+4RoYxkz7DuzeMuo2s1tHTwkI7G18BQ0S/MBOHWrJlDT
         7gTT1B1ehf31q9MXKc0wRPBlFmO9sa6GQHQpuyV2zFyNGaFZZjGFdRn7DDzj9yznWXVD
         YKFyo70D9tkm08s5NqIOiXDC6ObZaBQvXJlB1E/rw1pXHUMrW2Fr9988HLK3sF1ySdTH
         X8aVAdmCx4NdTogLBeF2+/DbLlbZyBtNnI7ZTfWYGOJTo1U3aH38XApAs7/7ITSMUaK9
         1wQZxzoS/hipLROc4TzThME4D3dqviwM4Mh6kByZAm9tv1VzRkliUrVlkGI+S1EYuJJu
         CoOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=miloN6DGw1sq8TwRfQqBfE3nU1vq3X8oB+icH0CHsp8=;
        b=bkc+vel0+Zot8IT+7oJEij3sybmn1n0oPQtHbxTxM/aQ6noWYXmjINHgDMvyc2jkTR
         9NcvKZ18Y8Wmao0zqccfyud4vbtJjGdn/StGq+Wygkn8KJme7qmWimFi7vGbD8cRHpzr
         X2X/jmu5u4I5c2YD5VP1yepvQCw1ZiJhFmtTezuSndvS99K0kIiGbSXgkSvOZDkOGDYn
         ssbHAlIQptwOw34Q1Be+ganEMnOTXLzDrxKQRx+q4glBMxDLfvj5nCYdfNUxnYw9CrDS
         CMnUK8gfkcfRbvaGrZxGSoet0k95irixIiya+egjDVebggIahPxCJUqXxBIdGwuBXgJY
         X2bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=ih5mRSpb;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id k83si556482wma.0.2021.04.01.08.30.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 08:30:16 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=ih5mRSpb;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=miloN6DGw1sq8TwRfQqBfE3nU1vq3X8oB+icH0CHsp8=; b=ih5mRSpb3Oj6LJUx+Ph6Z6FA+B
	VMfYDwEsuVumiZWxiEz7wgQAlhLEGqEsDVz7leYoL9HqW94qxnvzAi8pzK3zNxCZ27faXCsIAE4Io
	lCI6eiYrHkkWanKTjaNUbEuXRE14U4i+KLJLX1RtUnbBtHARwh0fMmDCFOfm/GJ+7FTaZCOdw/a2h
	C24cvu70+OFvDA3OiGBgV/apvynx3MdNmBLMNkK3w7womxDmjxwwUlRlLYUHMbL3FixGSAdvhuTF3
	+8DJSuphaZHfc5zUktTD8SJM8AV9/GfPSt3epB7J9HlhZBy9CYU4acRqL+YRdhD+MJSxOxbGpokm2
	8mCmwhvA==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lRzGX-006IJe-F0; Thu, 01 Apr 2021 15:29:51 +0000
Date: Thu, 1 Apr 2021 16:29:49 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Cc: laurent.pinchart@ideasonboard.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: media: omap4iss: align
 arguments with open parenthesis
Message-ID: <20210401152949.GG351017@casper.infradead.org>
References: <cover.1617287509.git.martinsdecarvalhobeatriz@gmail.com>
 <475dbbe5774cbfed2d924807d8a3cfeb84b3d845.1617287509.git.martinsdecarvalhobeatriz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <475dbbe5774cbfed2d924807d8a3cfeb84b3d845.1617287509.git.martinsdecarvalhobeatriz@gmail.com>

On Thu, Apr 01, 2021 at 04:07:39PM +0100, Beatriz Martins de Carvalho wrote:
>  		subdev = v4l2_i2c_new_subdev_board(&iss->v4l2_dev, adapter,
> -				board_info->board_info, NULL);
> +						   board_info->board_info, NULL);

Also not a readability improvement.  This checkpatch warning should
be disregarded.

