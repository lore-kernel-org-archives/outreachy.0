X-GM-THRID: 6947860813701971968
X-Received: by 2002:a17:902:6546:b029:e9:1e31:3351 with SMTP id d6-20020a1709026546b02900e91e313351mr6126374pln.26.1617685945371;
        Mon, 05 Apr 2021 22:12:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:9acd:: with SMTP id x13ls7155473pfp.1.gmail; Mon, 05 Apr
 2021 22:12:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxnHJgkj21btSXBfxkPXqWq5giJf12ww2+ZoW0bp5+unPUsl+LwJJ2hWw+aP7RKP4hJHPaJ
X-Received: by 2002:a65:4382:: with SMTP id m2mr4657606pgp.354.1617685944029;
        Mon, 05 Apr 2021 22:12:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617685944; cv=none;
        d=google.com; s=arc-20160816;
        b=gcEeHO+bTyeKMXVlopiXN2WTEU+izPojrhthaC+7edEwhap56I/1dINcI36/hNjWAK
         lCWNwoaQN4TiJlH/jcIqlibaZhI7+rPd1ksi+6B2yLJBtngUrxVkrnlZw4uoRMe0STF7
         D+4KQ1fh/T/K/WnNnOQO/nHlPiX7jwwC7/FtBufRgMzfs4yWdBkYG5QNeYFiDsXjc7dJ
         LiwvVuOYSs8ZpFWZvrXXq5Q5AID9ykXHjQw96f56hyYTlcERRsNFogSwTFtcghHRWciI
         G8tmC61S+rvm7O0wK98/RTfQ8Ib512LvfA1VjGhz1HeKskLi/eO+2+fS+sq1LFNP9oHY
         KuXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=H1vFmWW805TdlnA3iuILZMq1+Y3KbxQiiUpSbn+yMJ4=;
        b=KQlCNVm4VqlrlkJ4n/a+RSmtDk/nsHr5M+dMA6RhIoZMLa1F0lBehu7Ja5h3KVqvwJ
         iLYQ3cXKMZGux84wLZiakZBZRTz+28pq3KEB+5Vkagcqa6iJjGbMyZsoPXXJjWzOrUSS
         oaKW3PemJsjmD1T3ghzB0kLiKNTHEM6Ie/6K7+4WwME6mGSjLAkU+CJ0ZgOOiv6EwgRZ
         ZB9rYupfbICvwqjIk8q0S4FDnnDIEp8yAzp3cM64LE6PNh28UFP8GZObKJOkuUfphrEv
         B7qP/0M/yV2GSK7uSnkFE17OCzmYyl2O8KKPl9wSJQTqQFrmaNJVAyDHq2kGBQNrFd7x
         nlWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=S7Ak5xOy;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 145si1425931pfb.0.2021.04.05.22.12.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Apr 2021 22:12:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=S7Ak5xOy;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 25DED6139B;
	Tue,  6 Apr 2021 05:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617685943;
	bh=DVdnzSlpk96fgifywt6Ea0ccohmhyTvFVqPDosNka4Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S7Ak5xOylfao7LhoMZ5yw8t0Z/iP3rdspp5wygiJSR+Mu6AeEBh7gikm2xt4Twha/
	 KQiQQc8BpYcyRPZPhbofy2Jcj04L7IqWVaFmDYHQNoPomBHS/KHT1HsXLja/UbYRhm
	 q1uil0HCVEduhbEdzMuJjuHU/v56GxcGbWEnbk74=
Date: Tue, 6 Apr 2021 07:12:20 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Correct indentation in Hal8723BReg.h
Message-ID: <YGvttKG+RNhKAmO/@kroah.com>
References: <20210406020815.22995-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210406020815.22995-1-fmdefrancesco@gmail.com>

On Tue, Apr 06, 2021 at 04:08:15AM +0200, Fabio M. De Francesco wrote:
> Correct indentation issues of many #define and comments in Hal8723BReg.h
> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 604 ++++++++++----------
>  1 file changed, 302 insertions(+), 302 deletions(-)

You forgot to cc: all of the needed mailing lists.  And your subject
line needs some work.  But the biggest issue is that I do not understand
what this patch does at all.  What is wrong with the original code here
that required you to "correct" it?

confused,

greg k-h

