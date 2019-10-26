X-GM-THRID: 6751575419230617600
X-Received: by 2002:a17:90a:bb0b:: with SMTP id u11mr12477746pjr.94.1572115519500;
        Sat, 26 Oct 2019 11:45:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:e517:: with SMTP id n23ls3875551pff.5.gmail; Sat, 26 Oct
 2019 11:45:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzDfrTQXFBL5LETnuyvUs4MbI9Tx4dqX6DBm0yGW/2OTtjkwWTnr8H1x+ajnddhz95oZfzI
X-Received: by 2002:a62:305:: with SMTP id 5mr11529515pfd.67.1572115518374;
        Sat, 26 Oct 2019 11:45:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572115518; cv=none;
        d=google.com; s=arc-20160816;
        b=D49ve6p2JOGH3LblGf5tQQ96RgHTtEgd68ODgBEn7u0e/0IpJd6yYSjTs5Mh1g9jP/
         CaZkoKFN0OoMxKwE/g9YRGZkLtjqMdxli58p/J6XFU+w1bp7Cnt1ZU2f+XN0ADyW2C49
         gRDlKWNGydWVi16USCYiA4BY4PjYXKfpTnVC1wFakZyHbV8xb3u7Qi91JgeDFL+SrWIT
         LN0Q8xQHxjrNHlGsuyhcCRD8yMnJyTwaz7NcYTG5C/UpSSUuv8LATr3T6bG3sf+IPQva
         rf+sR6geK5019x8HGUPwyi4AsONnJEcJEfOvXN9YNIGwCVt7tQKXtkKfUr5EsEXjgbp6
         6CWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ope3V2XYhk/1KDCsDsS5r80zEu4tWFA71VOp5/P/Oto=;
        b=YkjNDymz471neSfzbym/oudbPKDvHPUs5kCgHsdv5weNHRRBWvGzCd/SwHv+tg/dcZ
         PrxYZefFXACwNSWxnKN75RqVTH8/dMk1a8IrxeFnpxnV79w6fhmKha5ViTAos1HYNCDk
         rq8A7BXoObppsyf2pWuBwyblMXMzHs8gEWwmeVBzlTV6brC4+YbIo4MAylyIGZfx7TSm
         WI0azS2zYgtSKwu/+T3vXKBZ1D9sERMuKx8xuyHgHx4FJoAYSbI7eGPBtDW7uBTorRyz
         b1W0vTOr4u1mAytYC93GjbA/TVlED8zoxIISA1TArMpKPh3c9223QH/COYAjKKiLCJnx
         /98w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Jrc84DP0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u13si379170pgf.4.2019.10.26.11.45.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Oct 2019 11:45:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Jrc84DP0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 92BDF2084C;
	Sat, 26 Oct 2019 18:45:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572115518;
	bh=VTCsA2HksKiHIP/Tj5cG2Y5DRBDKoJ132atznc9wczA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Jrc84DP0yHSHt3jWXeEe7JdRxBGArUt9owYQYrAlEO0kTkK4yYjCNZ68ScW/oOuZQ
	 OojkJxevDBDjPODlZ/b3Quf5pI1NKrS3F0t+qdM67DWSzV4sx/+qOWLK9FSN1B9Tf0
	 TjfqXYF87bIUiY+czhx0tJxDnDTa3bcdQ1hM2BQI=
Date: Sat, 26 Oct 2019 20:45:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jamal Shareef <jamal.k.shareef@gmail.com>
Cc: outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com
Subject: Re: [PATCH 1/4] staging: sm750sb: Edit CamelCase in dvi/sii164 files
Message-ID: <20191026184515.GA739424@kroah.com>
References: <cover.1571973516.git.jamal.k.shareef@gmail.com>
 <3c47824bcff53ae7f921c21684eb1091e8a77921.1571973516.git.jamal.k.shareef@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3c47824bcff53ae7f921c21684eb1091e8a77921.1571973516.git.jamal.k.shareef@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Thu, Oct 24, 2019 at 08:20:32PM -0700, Jamal Shareef wrote:
> Edits CamelCase naming in a group of dependent
> sm750fb files. Issue found by checkpatch.
> 
> Removes hungarian notation as well as part of fix to
> CamelCase in a given word.
> 
> Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>

This patch does not apply to my staging-next branch at all :(

Please fix up and resend the whole series as a new version.

thanks,

greg k-h

