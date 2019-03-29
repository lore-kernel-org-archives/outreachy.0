X-GM-THRID: 6670961947938127872
X-Received: by 2002:a24:6b05:: with SMTP id v5mr2119368itc.38.1553885164006;
        Fri, 29 Mar 2019 11:46:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:455f:: with SMTP id y92ls975373ita.1.canary-gmail; Fri,
 29 Mar 2019 11:46:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzOS/lYghOdnR/4YMBnPgI/aEF7CdfwT2A4EmpDipZTbEHZiNK9KX41MVmYs+H3w/tcWkd2
X-Received: by 2002:a24:5741:: with SMTP id u62mr720978ita.5.1553885163083;
        Fri, 29 Mar 2019 11:46:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553885163; cv=none;
        d=google.com; s=arc-20160816;
        b=FIPeSqhiq4qr7Uo+xGI0Mck3F/q4k6zunZl1JrC2IpoO3jf98BVII5aF5pMo6eZlQ+
         xh0K9svAuSgjU/jpBEDHx14rqTj3mlAhYT0QUUU9/2+U9kr6ROJvVISUh2NiGKWyxrjc
         AeZb2kG3e3q4jivQ+yn63DsHNb2DIviNJk7Cdutgm88bnfDsaTiPj3wtpAr4Dz8G/U50
         Hc+sGacENvemyS5D7J83b5Jy1BjVr3fZVXoniu0qG454UZbb2YK/PHy4A2rofK83zzUp
         CdFGczmFob/nPPhtf24e0dFK5p5lZFzl5/KokOWtuNYUv4pJQxXcoj82QsU+jz57LzfB
         1K5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+lRwyWMg/8CquCCRI4mPxKID1D8EijM7suNVmOYMPXo=;
        b=MRzyoM8T3UNbVyeQix4I+ZThPSrK29CE4H2XSBTvSQpvMAM07z6leTFfFZuK3frvnz
         CefFRYSSJqUFlAvpYJV0gngaL/T+NOZ+htWZKWu3mk1tz9tkM4C6/O+Mi8EOFhSnGxUr
         pOD5/So3BhKUJeq9Dxb8sS9XUfFMg/ZvQEi8i3aLn5DHtfyhs7rEDYfN6HAtnOt/e9hC
         gD+h1le+uQyWEWSNZ4cD/eFSbeJ2N8Uciq95ujeURLj4q3EkKXCMf4x6/If4eDA/3iBQ
         F7I5WOyb+IRVGYQlqC1a3+gsUiEuVJnWWZ17YI2caQQkczUp7r/CkJg2QtbTiXd0U5p0
         H1BQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rfFdr6GV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x26si152198iog.4.2019.03.29.11.46.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 11:46:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rfFdr6GV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B5B812184D;
	Fri, 29 Mar 2019 18:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553885162;
	bh=eqJZ3vmH3rBZuheB/x+VS5NGBsNmdoJY6RPtEV0IGa4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rfFdr6GVGyHmc1vgPNbBShq4GvGJzJATBPhImUi65MP4Jm01EGS9Vjk2TWLlvftw7
	 ggx/m42bQqpSahSv9KFojLq0qig/evda+6JE2xJACELamwImqqpq98OxFWksljPgoN
	 vUyce35N2PKFKoXXku4NkVp1NLkskgo9iuNSUpZM=
Date: Fri, 29 Mar 2019 19:45:59 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatsala Narang <vatsalanarang@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v4 1/3] staging: vt6655: line over
 80 characters
Message-ID: <20190329184559.GB4639@kroah.com>
References: <20190322202945.24884-1-vatsalanarang@gmail.com>
 <20190324085619.GA21361@kroah.com>
 <969520ee-c1dc-43ca-a091-ef619f6dd2bd@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <969520ee-c1dc-43ca-a091-ef619f6dd2bd@googlegroups.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Fri, Mar 29, 2019 at 10:10:27AM -0700, Vatsala Narang wrote:
> For two patches in this patchset(2/3 and 3/3) i got the acceptance mail but 
> for patch 1/3 I haven't recieved any mail ,So should i resend the whole 
> patchset ?

There must have been a problem with patch 1, so just fix that up and
resend it.

thanks,

greg k-h

