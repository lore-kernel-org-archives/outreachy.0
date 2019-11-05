X-GM-THRID: 6755718813793124352
X-Received: by 2002:a81:35c9:: with SMTP id c192mr24087382ywa.57.1572939388709;
        Mon, 04 Nov 2019 23:36:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:b10c:: with SMTP id g12ls1810370ybj.2.gmail; Mon, 04 Nov
 2019 23:36:27 -0800 (PST)
X-Google-Smtp-Source: APXvYqxHVllYQuswI8F/eOHQhTSMm+QlUyZ3NEqCSyVT+6Gz/ZIFb9YFMv/fL7vBdHZF3sAvqNst
X-Received: by 2002:a25:8b0a:: with SMTP id i10mr27268232ybl.461.1572939387269;
        Mon, 04 Nov 2019 23:36:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572939387; cv=none;
        d=google.com; s=arc-20160816;
        b=oAL6MUr3V/BfWXprHBJsrZZGkk1kqJOzI45zMIwFlkLm2q/r70syI/ODWEdeuYrY1F
         ZTrhDH0mIhmfAP2guVFSY3iD6RkxUWT+cPAVxDxYjgUna/a76SZbO6VE7Z33400qOW1k
         PjGKwOJHEucpiAPbHC+qi8EeCDCR3Aag2RuFWfL3/0mI1sOlgnKjUgfHpqEQS+Yj0N+F
         O0p34ayTLDJotA9Qv2S3yDLv8giF5YetMr4eU2UkF5QP57I1kVgoMX7+hRQoJpPh/Io9
         XlNxhrsO+bzgY3+VLpaEMaPo3RgmVInfatPohN9Zpbng5FYs/rK65jXeAruq0zdRVjiH
         wRRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0DLvzXkMtb+J+mLCAXHRx54J/T1wOLRD1h1bPWitB4I=;
        b=nzNy0liy+K1yN2BFt0MSwMFMT7Ml/YRQMLd2VcLwlfRc6cHs+XZ8klDnor2lUAY9fd
         jrB+xi6leP4oX+HaecG8lLUTC1iq3ic423bJcpHKhpTFroATaiSoz0ZyeD1MCjUzUj1U
         gVktVk/UaEvNLs3BOEEQz/SCMIDGQ28YtfdvnzD7AMQTdsKTaRTRmUP1aW7655Ydxbhs
         Enw3SKysozwfYYEImUSI6ZYniB8svTAB+RWQwAh56WlqQ7ERkTtWtnu0F+HArvH1VFJw
         CYj6Uc+cqBUkKN4w0bPvHkEqV/SV8fNn4HDadwnnmRa6AOHrzLGSfCsTBjQdRaF086TJ
         cjeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=i7afZDZs;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v135si1116811ywa.0.2019.11.04.23.36.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Nov 2019 23:36:27 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=i7afZDZs;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (host6-102.lan-isdn.imaginet.fr [195.68.6.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A6D9A217F4;
	Tue,  5 Nov 2019 07:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572939386;
	bh=GJLLZxXAB8ITWON6qaazq2+01LFaOHbsh+lId4ZE4fY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i7afZDZs6shZQrCy9RMZYsooqaANNGtECN8HgMSdnHOGCjLIrpIL1NUiESM7G8Jae
	 4mwZXxCJ9t9/8T+T2S4t3lJlkfKYXwACbSUE+kI73V9EtUUjrgPTwV9pVdgiUuXAzY
	 /2xD5hYXV9Idf+B+HpXUqlWjsR+jhGorzTI3WQE4=
Date: Tue, 5 Nov 2019 08:36:23 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nachammai Karuppiah <nachukannan@gmail.com>
Cc: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: qlge: Avoid NULL comparison
Message-ID: <20191105073623.GB2588994@kroah.com>
References: <1572938351-108779-1-git-send-email-nachukannan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1572938351-108779-1-git-send-email-nachukannan@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Mon, Nov 04, 2019 at 11:19:11PM -0800, Nachammai Karuppiah wrote:
> Remove NULL comparison. Issue found using checkpatch.pl

You didn't really "remove" it, you did something else.  Please describe
why you did it...

thanks,

greg k-h

