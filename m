X-GM-THRID: 6949836539406843904
X-Received: by 2002:a17:902:ff02:b029:ea:e4ef:f23f with SMTP id f2-20020a170902ff02b02900eae4eff23fmr6134263plj.39.1618220099248;
        Mon, 12 Apr 2021 02:34:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:80cb:: with SMTP id a11ls5584910pfn.9.gmail; Mon, 12 Apr
 2021 02:34:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxW6YnRgDoUmkpqGoR54P3noL2FdBta1aaqF1IQ1VIQaeyr0tyeKt3xwhcOKFqh5T5P1/IU
X-Received: by 2002:a62:aa19:0:b029:24f:46d6:1320 with SMTP id e25-20020a62aa190000b029024f46d61320mr360789pff.65.1618220098256;
        Mon, 12 Apr 2021 02:34:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618220098; cv=none;
        d=google.com; s=arc-20160816;
        b=DWVodPq3dZHvtQ9w23PbVIjHPuMkMPLpfM85zCsagOUicaHn3LjY0Y4Sap5ar73o0D
         jCba4qNcEapbvIh3+BwT0Q3UT5lD4cKcEWwfGF0ppvB6mnOsFenOOC8jul8kndOX6vgo
         YINX4r791PlMNabjOpalydRsK93zYMwTOAhyKfBRJ/BZFIhyy4MxkZmfMlZRapVEx0qi
         gjWfeutFOi2vYVaFQgJX04JIC24m2eIIJ16NoWf9TrYKXUXZujc6vGhLFYfo4kQ9kZuq
         mrKd4mcOPBZh5moZojDbwIKaX51JGG80GThBv2jtgi6wy8waSesExmR/ixlgdgHcj/C/
         JucA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Y1sxCfWweWwRbvZLgkMHw1bDp73dV7VYdbFVdmmmtZ4=;
        b=QoSmaYqSGJogmhIhAq2imHQcDCJPHbz1jQ7nIQ5LnOt8alQJRqhXVtz518MPVIRwyI
         /inu0Kx1h0NBsTCTpWwHjPwIESPoUi9T3tWmNtGUpSkA1uDgiazjYw5kiTuOhwvedYnO
         2yN0ablRfCW6/SDGLyBRgBczqyiYOtMbOZi+Mz+Y3WLlaPNQVduw+jtCQQxLmbm+J6sN
         pwMyrQ6GhO6QFH1gi/GccLakVe8EbYjICMs4D+rQVGtrSWGlwiwsHphNDuu8kkBr+Z7/
         0dEVUS5bCyGNvZ/tNs8TrKenBTtzJXaphwnyzuuyyzeNVcgbdRs/5Om22/HM9GbaLNPU
         ybIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="lqNT/d3q";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q5si62328pfs.5.2021.04.12.02.34.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 02:34:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="lqNT/d3q";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 81C4561245;
	Mon, 12 Apr 2021 09:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618220098;
	bh=Y1sxCfWweWwRbvZLgkMHw1bDp73dV7VYdbFVdmmmtZ4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lqNT/d3q3utn3eCtUo+AWp7O5ZIu1JPCfGXQXXVDgvA2aU99E6Yr/AqIo+waPyj06
	 UlyyECWQssAp17huOiKlVSG06T5Mbyy9CwTR6MnzgMlSKzMc9q5yrUdGuyyYmPD7xg
	 mM/w2EwHmqdkgPtD9Q3XzFDbCPhv0dXBTIQD/a0Q=
Date: Mon, 12 Apr 2021 11:34:55 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH v3 0/3] Modify subject description and rectify spelling
 mistake.
Message-ID: <YHQUP/zq1vGwram/@kroah.com>
References: <cover.1618133351.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618133351.git.mitaliborkar810@gmail.com>

On Sun, Apr 11, 2021 at 03:25:05PM +0530, Mitali Borkar wrote:
> This patch fixes style issues

"this" is not a patch :(

And the subject line here also needs fixed up.

thanks,

greg k-h

