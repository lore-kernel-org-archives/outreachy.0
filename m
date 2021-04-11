X-GM-THRID: 6949753709721026560
X-Received: by 2002:aca:486:: with SMTP id 128mr5555658oie.117.1618123209530;
        Sat, 10 Apr 2021 23:40:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:65cf:: with SMTP id z15ls3229285oth.10.gmail; Sat, 10
 Apr 2021 23:40:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx8f+iU00OJj8ZvzVYgTpAgCZJFbQf7kPcck96yK7GunoI86hj5iauKJ2HJbI56KyJVlP3c
X-Received: by 2002:a05:6830:1590:: with SMTP id i16mr19384230otr.12.1618123208906;
        Sat, 10 Apr 2021 23:40:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618123208; cv=none;
        d=google.com; s=arc-20160816;
        b=dJ9w0y/mk7u8Odo3jDoWtLtxn6f68la+n4FotL/Dyftktf+DDMdZvt9jaJanyIypEL
         g+wi5vBNTAVYsRkFpaBcB8wCyCKyKs7G6XE60eYUoFCrJNOkQ7pfBeJlmpT470NAxTGa
         Cu2UaPZ/BJ5onrWIKaaXQI1kkQpPNblwPvFxFLgZGhSmllB+NBuyUiQaxfa6ISDNCQPp
         73KR4UviQehNgSZGk+BmWe+Nfd236K0fJJ4im/sATjOhXMblnxKWikzGBdZOiAdAs8g5
         Qf0BXWgUi/uN86+wrnZNGs5+GKTSZ+Ngb6TYn6xI9pSjYsdnP5TJBcOs8QEnMTkEHzb9
         p6mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Ihdh/BIv0PminHuLCBWl7wC4H5KoBl1AqipoKyuusOE=;
        b=ScP+MvVJrFsOHhKNmXXz8ZH4CsTO/Dz1wmWMKXZVsmeZvy3ShmmEQCFFbofReFdcSi
         62ly0eWw4Jm70Gy76ikZ6TxzaNPNjGtb4TUkp5VrKpwPbyXrWaKb08mKTh70C4DMimyN
         EDlB2LMgD/xF2jR++DDKbsiTmuo22TG7iWV7n2xBDbVaeZiNatMz1ly61PgbWI+67sW9
         y4p9RxnQiIy0n2b6akVT04b46hE8l9r3Y92gf+O/6vikEmXLu++nimimnU5VIGWiVM2q
         pDH4B+WzbE+8NLVqJSto6Cbv7pL5A7HlIielOcGiFdA0LrgoLwg4vsw9tBxNZroo/sq4
         rHKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Ko8ydC9q;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 6si354620ooy.1.2021.04.10.23.40.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 23:40:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Ko8ydC9q;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8F16E60FF0;
	Sun, 11 Apr 2021 06:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618123208;
	bh=yWcyVaHsSg/OYuADPlEru0Q1V+2nyXABCRz9V8mF494=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ko8ydC9qf38CY0QXM81OdYaswKjxv9vkb9T4kx4xxxlwLFqZN9zlOSHpLUmpTNg4C
	 4G7eOMzlDgcsY78FZKagV9neaDinslANgJEg4vst2GvOg7FvoyXn37y17IG9xn7277
	 mF/Xl0Gn8lSADfIGLPpYyteG4gMew2Xx/rvVDo34=
Date: Sun, 11 Apr 2021 08:40:05 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH v2 0/3] staging: rtl8192e: remove unnecessary parentheses
Message-ID: <YHKZxXSMCQMRYhfQ@kroah.com>
References: <cover.1618110617.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618110617.git.mitaliborkar810@gmail.com>

On Sun, Apr 11, 2021 at 10:03:40AM +0530, Mitali Borkar wrote:
> This patch fixes style issues
> Changes from v1:-
> [Patch 1/3]:- Removed unnecessary parentheses around boolean expressions
> [Patch 2/3]:- No changes
> [Patch 3/3]:- No changes
> 
> Mitali Borkar (3):
>   staging: rtl8192e: remove unnecessary parentheses
>   staging: rtl8192e: remove unnecessary ftrace-like logging
>   staging: rtl8192e: remove unncessary parentheses

You have two patches in this series that do different things, yet have
the same subject line (with a misspelling in one).  Please make them
unique.

thanks,

greg k-h

