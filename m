X-GM-THRID: 7020422968837668864
X-Received: by 2002:a6b:6118:: with SMTP id v24mr902491iob.154.1634641954474;
        Tue, 19 Oct 2021 04:12:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6e02:1d11:: with SMTP id i17ls2276284ila.8.gmail; Tue,
 19 Oct 2021 04:12:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzHw7JCxXP+ERJO18KsBkNQPD4CACUDWpU/66w8VQjJSe5yeZy2NfZYFj+p2ccK50mEPdxb
X-Received: by 2002:a05:6e02:1e03:: with SMTP id g3mr17387837ila.31.1634641953705;
        Tue, 19 Oct 2021 04:12:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634641953; cv=none;
        d=google.com; s=arc-20160816;
        b=qXeYK3WisA1IPsClD5OCxS/0YWsNkQ58NSlBBJ/z4GqGXvBpboWpNhoJo3OXaD0qn+
         d8Ok9SOWPDUBL3prZfQLdT14t6xcNzidVgh/YewQjFKgNjYOGrSCCvwasfll8ezt/e0J
         bz8/EgOGVAqXM3hK/C9SIPHQTgHDPXTmMlY2PHxxY65J+iGVTUC/IrWmCc5iKupzOlt/
         bd/WS3Lfwqg7A3ah7kVrWa3POJTlyOlRZx6yyyJgWrleQOyfHZHepEcmo9hlo0CEo4Wx
         roG0Z3EKBhEoK5i3ZKuDpSqmgdeXFoG/4UEt2hbmBySgMnxYxPrinXihZ7iRhKj/04Vx
         lRXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=EHjsShZ7muGV7Me9tCV7JUX8B79gxpTErJkjpZqgJa8=;
        b=sZi8nLIFmx9kzOdPX/MCl0tBmhlIrKfbQnMPEUJ+5YcWCC94ynJ91aZwlwFNjkVho4
         rRfWO/uJSBOBJgE7hRUx1NL+NPNqPm6pJ8eYW2s4J9kiOZvjpwSCxLSl+xcYanx+OA2/
         jlywMOQguJOU2EtRr2CvEkQHbd8XcRpxER9+1AsKtypp+Q4yVaRUVM4V5PFONttnDXaK
         GCcjU+1pC/Q3+9r+bxaGgGDpeQh0dWjZ4kI/q0v3ptwpCBl8DSLKRLjBXtx93+OOSGax
         Kmonwy5Hanzyu7s6FDpgvmWy7uhP4sOS+KsDSBCOKNGYzNkBl56kl9VdF4Bgj5Yc63Q5
         fuiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=OCbpwg9x;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j18si1477494ilc.4.2021.10.19.04.12.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Oct 2021 04:12:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=OCbpwg9x;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8A37F60F22;
	Tue, 19 Oct 2021 11:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1634641952;
	bh=xSLpVhIimaEc2GSO7dKWsRCb7cTgM+8to+JnNVQdntg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OCbpwg9xv51+xHWAUCfvWWsXSXpbYzrRFL6ZKdfzd2rPw1739MSmPlPLMPjOdmeU4
	 Egb8kBFl0/KAZgLH1baQtMmuJvfSupUy2WSM01Y2UwE8T3sAsInjF1rN/6GcPrp5RB
	 rTZDprGImIIUMjTONnQgNcGHvfp674UgxbqGWTO8=
Date: Tue, 19 Oct 2021 13:12:30 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Karolina Drobnik <karolinadrobnik@gmail.com>
Cc: Joe Perches <joe@perches.com>, outreachy-kernel@googlegroups.com,
	forest@alittletooquiet.net, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: vt6655: Fix line wrapping in rf.c file
Message-ID: <YW6oHsli56urDry6@kroah.com>
References: <20211018150526.9718-1-karolinadrobnik@gmail.com>
 <YW2O3wC8wMEKS3Ub@kroah.com>
 <84f3c940fedb961e6e7e88d47c3d15e598bc32c3.camel@perches.com>
 <810a4e29b0c54520a30cae4d37fde0a59ea3d83b.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <810a4e29b0c54520a30cae4d37fde0a59ea3d83b.camel@gmail.com>

On Tue, Oct 19, 2021 at 11:59:56AM +0100, Karolina Drobnik wrote:
> Hi,
> 
> Thank you very much for your comments.
> 
> On Mon, 2021-10-18 at 17:12 +0200, Greg KH wrote:
> > Also, these are all just fine as-is for now.  A better way to make
> > these lines smaller is to use better variable and function names�
> > that are shorter and make sense :)
> 
> I have v2 ready but I'm not sure, given the Joe's patch, if my solution
> is a satisfactory one. I didn't jump on such refactoring as I'm still
> learning about the codebase/process and didn't want to muddle the
> waters (...more than I do already).
> 
> Greg, what would you prefer? Should I back up with my patch, pick
> something else and let Joe's patch be merged?

Joe hasn't submitted it in a format that I can take it in, so that is up
to you, I can't tell you want to work on :)

good luck!

greg k-h

