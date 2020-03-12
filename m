X-GM-THRID: 6803273594668318720
X-Received: by 2002:a17:902:343:: with SMTP id 61mr7761136pld.332.1584013700781;
        Thu, 12 Mar 2020 04:48:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:cf08:: with SMTP id h8ls2773331pju.2.gmail; Thu, 12
 Mar 2020 04:48:18 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvWN8LRtGlcWWGfSNAcCVt+Ff8/1ahhzz9Ko94SgIn871+2930FyT4C+yDvfKnJA/RkKI1W
X-Received: by 2002:a17:90a:c587:: with SMTP id l7mr3770010pjt.82.1584013698907;
        Thu, 12 Mar 2020 04:48:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584013698; cv=none;
        d=google.com; s=arc-20160816;
        b=Sw1BgvIhL/UiWZIkfap1gvPX2yI2BhPypjRiYrc8BF8mgz5d7lSJWANSB1/3rDUxUA
         2iAuDZZhyre5MqcBtPZOIJ4OUUtWBP+5asUECBDLQd59GvMDfTvSDxemOD1fV8N+2aVN
         FUAn1LZGae+i64kajYYA5VNZXcSxArP6/qcxcfIce/CBhBV2ux0eEXdIxTwREcbd7zVm
         0ly6ckCec9hRTk0GHSUvJqWhyJDdUfxOeNjoyD8XPnE6LA9/TGnpzLqquWHT2+embRfA
         JUUnBp58f2jo9aNuTFM63SLEnzZr48IzTtHxgrLmchsYOJ38cMol+++jazLWB91BBO/k
         IcqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/yZCbVWjysWEgvaZAdCrxGU11EkT6FXYjfk4Uszd0IA=;
        b=JnikSku1TT/dwo7mNZvQesXWEv5yaRwhPlOR21zT3HxpBjLn1qneGTP2W/nQLjTk9R
         TueK9NvmLJvS+fu6mgrGwpMKJpqwa5HdsiUuCyWJ1vUk4LiGZa7tcQTdLSfWm+RAojyC
         o2i58VRe1d8x0/o+RiAzEmhF+xsWGz+PVnoBeoSR8LN6+/x2Hvmi1OH7/gZljOIDfihk
         dENRVDMsrkqwscYbmjTwvD8vYuSnrCTzgTCy8cJ2LQr3QXfGqDgAuDVa3JIiIjFC+Yph
         8/4/md8grs3JXd2FO76VkKMfcYbmC+qtfDis63g1lx9yUf0QvBk+IlyNGWmr5EN5s2aR
         em4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pcTmk64j;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x12si215280plv.3.2020.03.12.04.48.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 04:48:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pcTmk64j;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2B1652071B;
	Thu, 12 Mar 2020 11:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584013698;
	bh=P4pANMVJ9A1xBuwW0CZ463Vcpa99AXo++GBCi7XcLSE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pcTmk64jD6pF30cZm2IlDXfEosWLTTnPlDcxNyKwR/UISz+Ip+d6u/XZ41IRRVdxw
	 dDypCwvlJAuY0BsBDHWfNbgcyYD2LypiuH7t4rakK366szjHRHKsZjtChW+zCb/7jm
	 S2t3tr8X3A2JH4pE8+j+p07rytlsp/mXfFQGS1fM=
Date: Thu, 12 Mar 2020 12:48:16 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Patchset Help: Can we make one with
 corrections in multiple files in a driver
Message-ID: <20200312114816.GA224153@kroah.com>
References: <20200312105557.GA5010@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200312105557.GA5010@tulip.local>

On Thu, Mar 12, 2020 at 04:26:02PM +0530, R Veera Kumar wrote:
> 
> I want to know what can be made a patchset?
> 
> If I make simple corrections in a group of files in a driver
> using checkpatch.pl, can it be made a patchset?

Yes.

> Also I sent a patch with typo fixes in two files.
> Could it had been made as a patchset?

Yes.


