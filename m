X-GM-THRID: 6754274846310400000
X-Received: by 2002:a25:77d1:: with SMTP id s200mr8298310ybc.219.1572602159965;
        Fri, 01 Nov 2019 02:55:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:6c89:: with SMTP id h131ls955309ybc.16.gmail; Fri, 01
 Nov 2019 02:55:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxybW9T0Hou8sf5NfbzEATM6+ZcJu2+zt3ujXnbPFHcLdIZ82/Si4NC/IwK37tWV16PSCqf
X-Received: by 2002:a25:df81:: with SMTP id w123mr8653835ybg.286.1572602158588;
        Fri, 01 Nov 2019 02:55:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572602158; cv=none;
        d=google.com; s=arc-20160816;
        b=hizdxTgKAOkjfSS2ARp6yeh4y/n+YAFqzPPuKUmHh5IhEwdo+4ybo6xexiDuLVIveF
         OqB2HMpKWQhVP1dKQSBwjrw8fLZPPj8qNvWZ37AXEX3IFEmnk9mElAHOsQBm9nkxJM2G
         m05i1jtIshK/jO1I7BDa8IhWYEIABlJWy9qujbtlUESeNM3mRwtV4l+fZPGvfb8w7+Fe
         z4BQrqR7T7jPh8eJ2LM4vDAazrKD+S2QpUTzsAekdXdCmae+VDz+Xw4kl20qjm3w5DRp
         fAeBzkT3PngXfRA16WN2nuG001jBaRbkvLXfqei5raOQGlcROWCLknDMyau4J4pXCE9i
         aBVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
        b=xcR4hOse6xj0jlJaXuSzKKnONwYevPlztN5wrvloVIV9zBYxA+nSuIsPvxBASSHtlz
         MBW/n03mryUVM8J0ohLJ5yhmEhoohLcjmMeO2HDTgRuh2h4GUBSfS83WxApFZKqPm7Qn
         bdP/+4TjBbNsEnck439QuIl+pGjNdx5b+R3cng3zme/KNTCOfRI+OnOwLd1JF8Dex85Z
         8s39HjSJAJiLOThzygUlU+Rqy+5mo2FVNpUdWVekEsR8HFjKzxhAd5MVBNN4FMV3AbDz
         KHP1ifLRJarpEfBGJQJuJM0Eikw7D3GASqQTi4oEw6VNxEgg0hLMtcXXnIyTF34R8dZw
         1C6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xo1+UAu8;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u8si494057ybc.2.2019.11.01.02.55.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Nov 2019 02:55:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xo1+UAu8;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [84.241.195.165])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D852B20862;
	Fri,  1 Nov 2019 09:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572602157;
	bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
	h=Date:From:To:Subject:From;
	b=xo1+UAu81H7Rn+gPla9i5EqjBeZS4R3epBiOdbqc5VvSwQFybvEKxECkZhEs9nCHm
	 mKmPs7EjF0Yzx3xZXfyzFtqZeJq9M/BbDM6OcVSXnDZ7pUyjkNPY9bwV1tvpNyE65u
	 iplKn/9LxjMz6Ut/mFkKh4sgs2IKGGJ/JPuYW1HQ=
Date: Fri, 1 Nov 2019 10:55:52 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on, again
Message-ID: <20191101095552.GA2811415@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.12.2 (2019-09-21)

Hi all,

I'm now caught up on all submitted outreachy patches that I can apply.

If you have not gotten an email from my patch system saying that your
patch was applied, consider it lost, and please rebase and resend it.

thanks,

greg k-h

