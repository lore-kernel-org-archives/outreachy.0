X-GM-THRID: 6672382238734155776
X-Received: by 2002:ac8:17f1:: with SMTP id r46mr22786512qtk.141.1553544752149;
        Mon, 25 Mar 2019 13:12:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:8b55:: with SMTP id d21ls3106886qvc.2.gmail; Mon, 25 Mar
 2019 13:12:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxknYCaUOChlj0q6IjledQtg9pj1sdjhHS+bt2B46eZX++QIkfKLJ11m60hyVXUs1t9MM2I
X-Received: by 2002:a0c:b78e:: with SMTP id l14mr22533496qve.129.1553544751396;
        Mon, 25 Mar 2019 13:12:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553544751; cv=none;
        d=google.com; s=arc-20160816;
        b=xhVgANUDrmtcNrJdVyyc5AGbfbNZFXPEOLBenlpXpQnhwfz/oxiVAGUewlaoDO03EM
         rpHI+DoqVZkOIxWhNvwBN9mDgZo4RFcfyKcgqC2FAlcP0eoJdXzpfkvj6Te4d5MBU+S+
         QN8nY6w2SuZYzNIg5NRI8iM3+GMxpH+QyA2iiUstXzmilXK19ndMQrR5oWV8TqJXky+f
         E5r5bOy0NJU9wmbsXI2UlEzxhYZCwhaXVdHi8+r5iYaj8zCxt+QCO4jdcnCJm98uGyVq
         NBWahQreFMqqPu0EjjVKyLSpeLa31izQXU+vjwrxX2lmMQbfYAx+z5xMzkLeg+sH5dvj
         Bo3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=cGHmUZDwh9LWo49plS1i0MxAsHbSj1jv17lHlYZONDw=;
        b=Uqd4WXfUpchJt0+ED8WW5lKiCU2r8Zs/P9CGzMnTWOE2CiK03ciHKYpp9+exK86cwc
         VVkpZyQQn31xWWa3DqN4ERyzBFQQlgozArFkIQj7oBT+umuKtW+elccyXZNcnz9+BqUj
         iqM4I4RnaNHYWBbPp6MMjRpuXzqcVMg9G4lEJqg1H+8lhsFuioT54GRNFguzqCeWnxHH
         DEnOC5YOx0PlqxIXb8C7Uhr2PMb3maroO6UaSY7kPcQ1IE7oalxnKW+mMC0YKND6jcJ2
         fFnAscxm2v93M/lY+0oXSdgtJ01P9EnRtgoHQXBKsmZXHTFbQCMoMM6YpVZfRzjCtC7X
         Rkhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cpl9XhKL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x11si275549qka.5.2019.03.25.13.12.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 13:12:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cpl9XhKL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [218.237.54.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B2D2D2087C;
	Mon, 25 Mar 2019 20:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553544750;
	bh=dQebgenX9Fxp2oqwjDTE2e9LfklAuxxAASLhfFkvac4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cpl9XhKLgYRc8CMKl7mhx58UatV8cheeTv5HI70FlcGAgtbmq5TIkaiDBQICSFq9w
	 j9lU9NU1hB2kKjyQezrGOjmixhU5lWUQ+KaF3Gl9KGpVlSGciEzHpk7S35jhtvEWPc
	 0wjeJgkPI0YEvoI1qhWJfITiJbgtmc8104PyFmuo=
Date: Tue, 26 Mar 2019 04:26:14 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: mchehab@kernel.org, outreachy-kernel@googlegroups.com,
	jules.octave@outlook.com
Subject: Re: [PATCH] staging: tegra-vde: Add comment for the lock declaration
Message-ID: <20190325192614.GB14506@kroah.com>
References: <20190325173033.16011-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190325173033.16011-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Mon, Mar 25, 2019 at 05:30:33PM +0000, Jules Irenge wrote:
> Add comment for the lock declaration to fix checkpatch warning
> Issue found by checkpatch.pl warning:
> "CHECK: struct mutex definition without comment".
> ---
>  drivers/staging/media/tegra-vde/tegra-vde.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

No signed-off-by?

