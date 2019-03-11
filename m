X-GM-THRID: 6666504737930608640
X-Received: by 2002:a25:810b:: with SMTP id o11mr15670360ybk.43.1552344732903;
        Mon, 11 Mar 2019 15:52:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:e6cd:: with SMTP id d196ls2203401ybh.9.gmail; Mon, 11
 Mar 2019 15:52:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyErSajGoSwFWzdpQeuDM2haNXJ1tEXTgdVIh7D81U+n3KIv2Ua2L+DyCmo/hPbk9RAAu/P
X-Received: by 2002:a25:8010:: with SMTP id m16mr8380418ybk.34.1552344732062;
        Mon, 11 Mar 2019 15:52:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552344732; cv=none;
        d=google.com; s=arc-20160816;
        b=dAsU9+4i1dn9MVwyyH1iL0tmOxsNSV7Va87WnmD7Urv8Ik217IKQaJ3n5B62d2jWt8
         c3wCO0CQ2plnPKVTw1uTjgF8di1lLs64flam5ZoslNhl/FtlJi92TfEuf2a9vNqaHPKJ
         kjurzinGa2yr6SU62J29/+DBrYNbjqanvMCLIOjdPGzHlhnwAwZ9bsqMOevNldVY8UQk
         vAPe216rr+aWKQ3rER84MIIoS/s8LZwnmnYBH/SZBJumsQW7KFAqPeOVnF1FwWVn6Oy4
         ogtuqVSuedsa67JJ5t1mJcZIyk7jG0gXydgv/xfnTQv1u4bWc2zLqB2d3N2ANGU8uAfU
         PFnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=bp7Pdl/4o6SH6io+EAftGr+WyhQiTS62Cd7gioNfnQg=;
        b=mL4XucuyEYIOL/15hukbqd/JK+KG2ftO4VV0f86hc3HeaTDL2p2PSmC6MFZIsD8NRZ
         KDHb3AUboK2IgSVRWA2sCjWCogYjhEmoNBX4HAFvscOGxI1hr4QSD16DfP0/zubi7C+4
         zqaKkOHeKbOmoQhUFe2HajqO8toXkNCPwBfUX/6W/JRHl2bkmbFu+X5UOSvLDxktGShC
         sYDTml3LWuPKFoWe+Oi9FWQmhiGKQBpV929UIuX6C4txDnhTOmgEkYTnqUtsCtF5owyC
         AC+32kszeQje7408QUV+h8Tx/TF4SJjMQQ/gqJdqqFz/7ujWaAMk0a6tDAm/KpVST6fH
         XIsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FAxjoanW;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x187si282784ybc.5.2019.03.11.15.52.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 15:52:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FAxjoanW;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.133.8.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EA27C2087C;
	Mon, 11 Mar 2019 22:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552344731;
	bh=S4Hndls6bxqLUoKNOEaW1VpYu48Ebxs8Glvxl2Tjz4Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FAxjoanW2G9DP/KMqP99MRtnw16oP5I7VhwEyZPBFhNECed3XjR0km731Oh9+umq1
	 JWe8yyKE8L3B/R3L/AjVrIC40TFmNTJpbdWtWlWgfgBuERj/hr76yzyiHdUdeuUuO2
	 lyx3loH+kEP2oonLLCg8+20rCLvNgKAcHuS6tw2U=
Date: Mon, 11 Mar 2019 15:52:10 -0700
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2 1/2] staging: rtl8712: line over 80 characters.
Message-ID: <20190311225210.GB569@kroah.com>
References: <20190310125800.GA25941@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190310125800.GA25941@bhagyashri-Lenovo-G570>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sun, Mar 10, 2019 at 06:28:00PM +0530, Bhagyashri Dighole wrote:
> Fix coding style issues, which solves checkpatch.pl warning:
> "WARNING: line over 80 characters".
> 
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
> Changes in v2:
>   - Put kmalloc on the next line.

Please resend the whole series, not just one patch.

When you do this, also properly "thread" your patches using git
send-email, so it's a lot easier to handle them when reviewing.

thanks,

greg k-h

