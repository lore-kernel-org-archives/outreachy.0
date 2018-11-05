X-GM-THRID: 6620120308618625024
X-Received: by 2002:a17:902:ab81:: with SMTP id f1-v6mr586683plr.91.1541425997507;
        Mon, 05 Nov 2018 05:53:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:b946:: with SMTP id v6ls2588717pgo.9.gmail; Mon, 05 Nov
 2018 05:53:17 -0800 (PST)
X-Google-Smtp-Source: AJdET5cI1so5trjxB21PRTh951WHefwy2z7XcDRT1QH+MfwfvAJ49vIRDkpBwhKmwtmfsP9kpp8O
X-Received: by 2002:a65:518d:: with SMTP id h13-v6mr2897820pgq.59.1541425996927;
        Mon, 05 Nov 2018 05:53:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541425996; cv=none;
        d=google.com; s=arc-20160816;
        b=sJviUlwmJWGmksc/iJBGv9qEUcL5xKoTfr7TBa/f+uf8qa4TN4kg4+VRA2/2T9CFT5
         SoC1bUqr4W9813x1IUuZRgb7zcHcd1CcQE16UEanuc18ezHXq8nxEijdPCuoqU4gPrTe
         UR8y3WaWrUEEcpQi8XplCXz/uIuy7YjtGnTIvH8EfYyiyzgpH7W3kb7tTYaALSgHcvix
         OpdOp/BLa5XPIjzoVi++6Yd2Kz6URgc1xtuJmsVFuyfo3BEePy5E+0hxjVpEJmvp5fty
         wThg5irOIKv7p29q3oEsKYOIViXHyoiauFbpQ5yfjMhT51stsxBHwMmFyGH9dg2nx9VE
         4YpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=AZRvKEiCeKuJdzDzbj0ZKKdk+x/e9BW1XJYATUUqeNE=;
        b=l5cAC5qLys+bm/cs0JaS4Pw7ewy6Gp3Fg9DFF2UQUOtGwiqxjDuXtyrIv2QQ1wq/8d
         sYcTIzbkwpQGaaPQWdZ7h25RgSmROeXONLKBawdXLKhtzoXEoa1AxzuZhTC315/RksKt
         KxWQC2fARKhSUvq11oeEVlnoVz4DCimXxgkmsauILERbQZvdQRpXJP0uH9f7Kj4v2uoF
         CoMG53uuVK4PO439+QJx7RPofsiIAX8m63IqxawDX4UNQONJ+5selQRqL/EvoCKAcGxG
         zzavBLCuczQx6rzWOcNRpaSZ3pyzjtc9qyJKJ/jRDYpMipaayeS3cUcVkYCE7+2NQT1w
         Jazg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="hlaUBPQ/";
       spf=pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id az8-v6si1184917plb.2.2018.11.05.05.53.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 05:53:16 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="hlaUBPQ/";
       spf=pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 26BFD20827;
	Mon,  5 Nov 2018 13:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541425996;
	bh=atB8Q2Qr8SAW3ht5Gd5UWa1ry9qXn6jW5EuzHLPBkyw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hlaUBPQ/IQ250s57kdr73mSIOrluVkY/oLKwbZziXoMgtPRt6DdrPlMfowg6TWvTn
	 lXy0hTzjSwWMvtHgoNZCini/XUvb9eOjYiaQx3bprv5awWawnGErZh4EEdaLpyC7B0
	 IYz9AXFK1X0k+m2YqnwYFXn/cwFQa7GMsm1cUWTI=
Date: Mon, 5 Nov 2018 14:53:14 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/2] staging: graybus: match open parentheses
Message-ID: <20181105135314.GC9626@kroah.com>
References: <cover.1541366816.git.code@wizofe.uk>
 <03e7603e693aaf17879365814b2be3e5b9765eba.1541366816.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <03e7603e693aaf17879365814b2be3e5b9765eba.1541366816.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Sun, Nov 04, 2018 at 09:28:06PM +0000, Ioannis Valasakis wrote:
> Match open parentheses by indenting.
> Reported by checkpatch.
> 
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/greybus/es2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Ah, this is the 2/2 patch, it didn't show up in my searching as you
mispelled "greybus" on the Subject: line :(


