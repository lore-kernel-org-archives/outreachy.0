X-GM-THRID: 6949544081527668736
X-Received: by 2002:a6b:3c1a:: with SMTP id k26mr18154269iob.113.1618123162053;
        Sat, 10 Apr 2021 23:39:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6602:22d6:: with SMTP id e22ls2150842ioe.0.gmail; Sat,
 10 Apr 2021 23:39:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzsVR9VtsV55vDvWHTBX/T0SlRnlLZkXwyJWlPPA/EdwTF9r6vwjsRHtj/9rlwoJrz7GIQX
X-Received: by 2002:a5e:a519:: with SMTP id 25mr17241013iog.3.1618123161306;
        Sat, 10 Apr 2021 23:39:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618123161; cv=none;
        d=google.com; s=arc-20160816;
        b=RoGrUEuvRf9xAZrWdkNuMH8ZIiD0tZS1cCd8yto3XXF88NAKdccBExv/BonCnasopS
         ujKKPUm4kLri0Y7EcrEb/ugBDbin4SWAPMmAzqp8t+9datSRlTKr7/B4TRU+rTe39VLA
         opmboXk3pP7Yavkv8TNuOGWOzzfi2Rl+fCU5MgwSXaSb7qtXSynTtsZH+ODUmN2hpb7l
         HLCacAG054jj75Pi6ijdP5wUtUYwZrTr3ijCpoLAptq2RV2TbzlHebXMGeEdezFZwusS
         YPUCREgKBRoAItEeysOWqug5x/lOYH1PSG0FF8F9UpbDVhiHXS5FORgU+H9lwtufAb3n
         bG8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VcUfwTenQ91DfMg01NriC06ZAm0ZKh8yG3IM9qU/Eu8=;
        b=RBN0fbxWK/UkdUcVL7MdeFrckoyh+HrBJfdwR8B7ewzGmhLkZg/5wJhBvtfoIn9IHr
         bgef9tGgCxYvnF5sbnT6ktJRWLXsl6cQYFB7ANYeSFAVRwSQkPFRUFJwX7dWQPo/7sH8
         mM/AM5g2gzzYMoffjOHig8goPoz/ajkmy8aqXIf/HIbTbcjQHaCM5dFU3LQ2fiytwCZ4
         2RHT3vr51OQjSDgf4GSK6WMRDa8h4jtaF01119ApJLnaY1rYPpbt7j9afFBHH6lEqGyM
         UgBVzy6KK5LUteaDO3bz1RxpqkT0N1u701XoysjeiR+D/BT1P7dzqiZW+INLZEjOiQGu
         v5vA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=XWCF1dRy;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h204si433760iof.0.2021.04.10.23.39.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 23:39:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=XWCF1dRy;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2805A610A7;
	Sun, 11 Apr 2021 06:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618123160;
	bh=fREd7ZSaGcu2cgmLq4XKGuzplJjGYYf3PmF74aQLbsA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XWCF1dRyxH3E3t3zDQWnsLl4Sf4kaEw1fIiV2Hz7LV3EnHNz69B6FM4+pf56PEmfa
	 Ehh0WaX6T8pPtdcNIbJd+gJsOqxqEHr1P9Hl1C2X0BsbVnoz8fHxJ6y7T9EZUv6hgf
	 oc5MHgT46iGJ7vhNh7g0XB4IKSLa6iVTUsc2QDlE=
Date: Sun, 11 Apr 2021 08:39:18 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2 0/5] staging: rtl8723bs: Change
Message-ID: <YHKZlqFy15QC9Mzz@kroah.com>
References: <20210410150008.5460-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210410150008.5460-1-fmdefrancesco@gmail.com>

On Sat, Apr 10, 2021 at 05:00:03PM +0200, Fabio M. De Francesco wrote:
> Remove camelcase, correct misspelled words in comments, remove an unused
> variable, change the type of a variable and its use, change comparisons
> with 'true' in controlling expressions.
> 
> Changes from v1: Fix a typo in subject of patch 1/5, add patch 5/5.

The subject line above is very odd :(


