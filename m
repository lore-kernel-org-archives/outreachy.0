X-GM-THRID: 6949457058068430848
X-Received: by 2002:a63:9811:: with SMTP id q17mr26360688pgd.238.1618220264609;
        Mon, 12 Apr 2021 02:37:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b7c7:: with SMTP id v7ls1887918plz.0.gmail; Mon, 12
 Apr 2021 02:37:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxyPLmrytcrdEbIjE9h92QotrbmhgIiEAe0t3+PD1EvSulc4JIHrfCGkQREEYuRL1dyaGqG
X-Received: by 2002:a17:903:22cc:b029:eb:1db:eb7f with SMTP id y12-20020a17090322ccb02900eb01dbeb7fmr3288641plg.26.1618220263580;
        Mon, 12 Apr 2021 02:37:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618220263; cv=none;
        d=google.com; s=arc-20160816;
        b=ghAktFzF1ycAzzmnT+/Kn1a2U8qXZw/sKzqWsIlCy2B9lUONer6BwB0jv0ktHbe2cf
         RfdsdVsRu7lWn3XCrdHi7gTt+A2qVTBQpHlS9dv6ktUXWvjVxJoTLv6ON/HWb+8WvfGB
         TIeh9q+82mNUb9ptxI+cCPhlkSBey3+uXz9bJKxMfC4dqnnwMLsr5Fzl86oHw7g/OW8K
         phsabXDQw3y8Qy3H3++uYQVrF37bnlWZV1yVtsxmv0xm8t+EboFADuTC6cY7ws4j7Nli
         YOzktnFGJHu1MQ0O0ao/b7D3teFkxHF/mNtMm7icFKKGLrISuq42K2sBG0x2u+TEEOpJ
         iyMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8u7FiThjkAoAqoMog/m0/4PwazBdOjjcDP7tYSTJ6IM=;
        b=wQOBFJjBXsDYSlkZXezFKjrnp7CfM7B2V21P6ShZBXHFGU/onpQ2v5gg2wrrkxQRWJ
         BVkPi17J4/fPILIhgK7fp8aSchaPjCt4GRKwBdnNP+A7iuwAy9/ULC1eIS4XoshQUwAq
         tdBuZc2zAP6NT1QecX3w3s4kSvg5ormjfbwbbdmNnIFJVTDD+qmnnpyvQ5IyhlPcsu8t
         wWPn2shr2sPJ0Q+0xmgGAlNwxPkwyU1BO62ZPJM/E6mkqQfpY5F9HEJuc8kgvMTMod7C
         Ql8dtM1D1hRsuVC+GjuM9W9JrFvOUbIWl0mLR6EtEoId4YPv4QJLeafzAnpac1gIXjLR
         ur5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=y+9Oxn25;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c3si660443pls.0.2021.04.12.02.37.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 02:37:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=y+9Oxn25;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id B31B26121E;
	Mon, 12 Apr 2021 09:37:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618220263;
	bh=uBEBWCvKhDMQP4UP/TvSZxCggBLXt3IfEwGxtJ1Rg6w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=y+9Oxn25Slqjyi6P1Wetic+CokPt+pAZ3c4VmQlOpj1MHuqU+HoxKCDfhtE53JKOi
	 M7nJTq2gpRXNc8xq0Ys/OD1xQ7qQ1A7FuVEwQVqSBtLOrsduAQZD30SQiTnQ1z1Nqc
	 jkEMafIyVtu5L3f2dS6f6fCbwnWIycX1O1MMqgAA=
Date: Mon, 12 Apr 2021 11:37:40 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v5 0/4] staging: rtl8723bs: Change
 several files of the driver
Message-ID: <YHQU5NNLOGO///39@kroah.com>
References: <20210411110458.15955-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210411110458.15955-1-fmdefrancesco@gmail.com>

On Sun, Apr 11, 2021 at 01:04:54PM +0200, Fabio M. De Francesco wrote:
> Remove camelcase, correct misspelled words in comments, change 
> the type of a variable and its use, change comparisons with 'true'
> in controlling expressions.
> 
> Changes from v4: Write patch version number in 2/4.
> Changes from v3: Move changes of controlling expressions in patch 4/4.
> Changes from v2: Rewrite subject in patch 0/4; remove a patch from the
> series because it had alreay been applied (rtl8723bs: core: Remove an unused variable).
> Changes from v1: Fix a typo in subject of patch 1/5, add patch 5/5.

I'll take this, but the subject here is a bit odd, and obvious :)

thanks,

greg k-h

