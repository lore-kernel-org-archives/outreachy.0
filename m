X-GM-THRID: 6471275503571435520
X-Received: by 10.28.9.12 with SMTP id 12mr955897wmj.7.1506769623275;
        Sat, 30 Sep 2017 04:07:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.144.209 with SMTP id i75ls2346635wri.12.gmail; Sat, 30 Sep
 2017 04:07:02 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBPLHYYFyzVbSCNhh+v6efKPHnE4akk/Ld/zQzxjIZaMNfwKGCgsgM1Nlenh3X8otCQpyZF
X-Received: by 10.28.7.196 with SMTP id 187mr947574wmh.7.1506769622379;
        Sat, 30 Sep 2017 04:07:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506769622; cv=none;
        d=google.com; s=arc-20160816;
        b=qGnHekwbXsh9IgrMFz46z44NYkSPtBCSc52fjK2Ys1iDFO17M9EKRYKdXddL4ckTpH
         bFY11NCmo4ZhKtMbDlPKnnkW4VR7X6emt7hPD6/YJSoRiIxPz0aZHAJEq7j0BO3UDoeL
         CliSuKuLHQ7B61w4BdREmXEdHBRBViAVFy/pin3EsbIf7i84w1Z/U7TeKL6Pc6IDbcCF
         woK79xz2VdGkmMvGYtMKMixnw79T3EaNIvnWuVvUmR6XTaTApOS5Kft3d1k5UNnc5OiC
         ANgNOJk5Ni2Pr7ReVFEsHjxVCwH/G1fMjneDZAmViiOsrkrVcOhiJmvUpIbf8vg/TDhH
         g4XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature
         :arc-authentication-results;
        bh=faWg+6NZaPGfFf4gvAHuVV2llmK7tsHjx+EGBp0Psp4=;
        b=iTusq8tsZVMfO42HJYzm+FSdwlwbvg8Y/xtMGIr2pT5ki6D1oPuC/GzFvdwyCplA/d
         /M8lkH01a+305KmjkXbmKovevymYWyA/QLeuz/oFC8IeKeJ4ZEkhmlGe9xnRdpRyETK/
         r0OiMthPOQlz1pA1m9NMJyOj04gnZrXvVRx7fhoUV9dqWSNrhBkgGZENdcC8L18stfTw
         BHaF01Q6Y4mOpgcBUTuxJxkz+xlN1jbgXwOlb5utUF4PQGGfBwXCFXUo2isoAaRI+td8
         IWd8x3dBeTc7jPI6XX+++i6Jz52jrAhcybiScLWi++VgzuP9i3Q932UuQ2Y2PWDR99Zb
         YKiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@tobin.cc header.s=fm1 header.b=XopN54sd;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=lKtN6UGw;
       spf=neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of me@tobin.cc) smtp.mailfrom=me@tobin.cc
Return-Path: <me@tobin.cc>
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com. [66.111.4.25])
        by gmr-mx.google.com with ESMTPS id b203si615225wmh.4.2017.09.30.04.07.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 04:07:02 -0700 (PDT)
Received-SPF: neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of me@tobin.cc) client-ip=66.111.4.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@tobin.cc header.s=fm1 header.b=XopN54sd;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=lKtN6UGw;
       spf=neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of me@tobin.cc) smtp.mailfrom=me@tobin.cc
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 3202320A82;
	Sat, 30 Sep 2017 07:07:01 -0400 (EDT)
Received: from frontend2 ([10.202.2.161])
  by compute5.internal (MEProxy); Sat, 30 Sep 2017 07:07:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tobin.cc; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc
	:x-sasl-enc; s=fm1; bh=faWg+6NZaPGfFf4gvAHuVV2llmK7tsHjx+EGBp0Ps
	p4=; b=XopN54sdqThlTdnfr040olT605dZz5bqzTUAX628qGywICn1+Tffnh9Nq
	654NH8wNuMrWHF90bkqlb7X17JQYEoLe/DIP+ThDzVXiSzjCpdtGrnIyEZod15lA
	2JKsDblJ6LvcF5vxZyd4eaG4+ZHJ1SuiJfCTNZztIDFvaS4HxjuTKgf4wuqXDysB
	psHpTCNuEvNRt1pROUkWGbPH31bwUSHrnvhc7AYSnSAj0aEjW1BtcxdwbT9S16T5
	xD7Iwc4/l2QIpNo9KX5tY0KUwDg4/WsQKy9rlnRfegVbpwsk+8gGpxochUTpe9lz
	1s7epqcF810zdUvgtQ7MNhXWpeNjg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=faWg+6NZaPGfFf4gvA
	HuVV2llmK7tsHjx+EGBp0Psp4=; b=lKtN6UGwwYjSrbGkQiFJusWHuuFtCLYrYF
	XP3y/PaiT/D3n5lfzrCEtdEpyErL3Ar/yCnPqnI/MZOl+Wsd3R+fuPbAwJwGjcrY
	nYbW7ShJJXsShXqTYB1QnCZ5GQZkhrjFxZvhqtsO65neMXZsmFRrFlHlrXj+qn0Z
	ZQUqLJ9azIiR2hGhOnbJtN1PS+QwJsuiV5iX6gMozbBnp7+A0dL4/U33rl5V5cPW
	pZkmGW2/lMhREr7J2/5W9lAEVGxpXoZTZqKYWUVC59rjEzx5co/YcDwunQL5Mv0x
	MNTwC1cVeGhMpjFeFZdZCoN7r6CqHTw45Q7HmfqfsojfB21zw00g==
X-ME-Sender: <xms:1XrPWb_5fJSW272vS421FQqObUjoLZhiFtGdtWxv9KkUtXfaqREjPQ>
X-Sasl-enc: /zTYYCMARc3mJcB/wPiOExW8L7tYisEepchQHWBhiyPF 1506769620
Received: from localhost (124-169-110-131.dyn.iinet.net.au [124.169.110.131])
	by mail.messagingengine.com (Postfix) with ESMTPA id 72F8A24969;
	Sat, 30 Sep 2017 07:07:00 -0400 (EDT)
Date: Sat, 30 Sep 2017 21:06:57 +1000
From: "Tobin C. Harding" <me@tobin.cc>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: rtl8723bs: Remove unnecessary comments.
Message-ID: <20170930110657.GA25277@eros>
References: <1506758434-3193-1-git-send-email-shreeya.patel23498@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1506758434-3193-1-git-send-email-shreeya.patel23498@gmail.com>
X-Mailer: Mutt 1.5.24 (2015-08-30)
User-Agent: Mutt/1.5.24 (2015-08-30)

Hi Shreeya,

We don't usually add a period to the subject line for kernel patches. (reason: we only have about
52 characters for the commit brief description so best not to waste any).

On Sat, Sep 30, 2017 at 01:30:34PM +0530, Shreeya Patel wrote:
> This patch removes unnecessary comments which are there
> to explain why call to memset is in comments. Both of the
> comments are not needed as they are not very useful.

You may like to read Documentation/process/submitting-patches.rst (specifically
section 2) for tips on writing your git log.

        Describe your changes in imperative mood, e.g. "make xyzzy do frotz"
        instead of "[This patch] makes xyzzy do frotz" or "[I] changed xyzzy
        to do frotz", as if you are giving orders to the codebase to change
        its behaviour.

Good luck,
Tobin.

