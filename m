X-GM-THRID: 6948690474275176448
X-Received: by 2002:aca:3d86:: with SMTP id k128mr5174755oia.86.1617868847338;
        Thu, 08 Apr 2021 01:00:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:60ce:: with SMTP id b14ls1174315otk.4.gmail; Thu, 08 Apr
 2021 01:00:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxYQHlXWNPgg0R59jzuuddTU3toaR6PhjYs7fKRvDpvVP7+KmnA75lLkYR4DUllYJtzcUB0
X-Received: by 2002:a9d:6855:: with SMTP id c21mr6598142oto.146.1617868846564;
        Thu, 08 Apr 2021 01:00:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617868846; cv=none;
        d=google.com; s=arc-20160816;
        b=cKQK2kJYAOIRkv9lfvI8jB05NwA6mjY6OpnbcAbvFfNONGfZUlO4HPkwuk+BkKee69
         XAIuxsUH0hWa3hSszmSe4ymclVZKcMaL+pXEYMab5hwhT2j/nfort3RmYZ/0FGQUkO0N
         DPY+qSJzncs/hV+Qn0yzvP6GTT6nQop7FOtD5sFfuYzWJmUHaUwQuIawLMVLke3v8Zif
         tTbRMDWIPq78mk3zOzhKdatjhN56MBvzCraLmRKYDME/tLYmKkdVkxuvDCpsN6eBCouj
         gUkyNFA/A30f13aRpmwSd3ZZixAxootBrQVASTVfILuDvp+wjzqGhazadGvJjD7kLNg3
         2edA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5feZWCmUqFMfNFqnz13xTcDntlaU3T5HOPga2qriT8Q=;
        b=A9NPxP0YptBgTubhm0OlYzevEfC6Gj0qTUzPZaGYU/qcQrxElfAjxRW3ZNYTqOBSY7
         XXRIyVfpBJHJ2VwwojnCTxazFDVbU/UD1NU4DZV3i9JjWieiHT90BBn/PY0ZRQ7KEtdO
         NN6mTGVYv3wUGBE8hLCt91+Ip5YWMEaQ96r6JSafqsXFIu9PyADiaq4HY8FbN6+hG7mB
         OQOmI5/H7xW8PTjpu5+aHl1iNxQG3zTkyAI4M8JgSufmvA5SZ51O3GhDkhSnmuEap6aH
         uQCB+3+eENgNVIj0HF6ky4alRatnbiGZuWA3uY1vCRnARn8qC0mheI/v3c21MJBRUUMW
         iVvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=rpKEMNf7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v12si1771717otj.0.2021.04.08.01.00.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Apr 2021 01:00:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=rpKEMNf7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 04A2B6113D;
	Thu,  8 Apr 2021 08:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617868845;
	bh=5feZWCmUqFMfNFqnz13xTcDntlaU3T5HOPga2qriT8Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rpKEMNf7LmAtxXpAo7IkN/7xToOFP1RZs7lk5id+muAmO5HWnvFBrtiux5c86t4wC
	 nA5y9Vq/eEbvtK/LbeR0WZqr20OZ0D+SAkrFDWYaiIRCb6T8i0LUAwXJ8Bc2UDe2eF
	 52PQbRXLFvPdZHx/dHg8/RBbZ9rrQo3yEryyOHtI=
Date: Thu, 8 Apr 2021 10:00:42 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH] staging: rtl8712: removed unnecessary blank line
Message-ID: <YG64Kvun5Xxy4lOL@kroah.com>
References: <YG61JYTdl1HQKcGj@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YG61JYTdl1HQKcGj@kali>

On Thu, Apr 08, 2021 at 01:17:49PM +0530, Mitali Borkar wrote:
> Cleanup patch for CHECK: blank lines aren't necessary after an open
> brace '{'
> Reported by checkpatch

But you did more than just the above in this patch, which is not ok :(

