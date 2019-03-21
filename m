X-GM-THRID: 6670698779080916992
X-Received: by 2002:aed:2395:: with SMTP id j21mr768323qtc.32.1553152772540;
        Thu, 21 Mar 2019 00:19:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:24ef:: with SMTP id t44ls2180647qtt.4.gmail; Thu, 21 Mar
 2019 00:19:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw2u1R0yGVUS/d+pI31PfruIExKvg4ls0dasZoM3XBbGLRCeuTq1f3oKeguan46jGduulFB
X-Received: by 2002:ac8:19f0:: with SMTP id s45mr742330qtk.15.1553152772020;
        Thu, 21 Mar 2019 00:19:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553152772; cv=none;
        d=google.com; s=arc-20160816;
        b=Rsvic1fwncI7cx3E9VGyszxCt41sT4k5UXoc2L5YXbXIJDmEYaGBZwKvcuTLhgx7IU
         FqxhllHUpJmkmAJo9yfYTiqQAM11Z9A1AAXFzFD1RPxFItEfAsh2O7cyZtx1yxHTQ0mF
         izNg3HkesI4YtghiPydcdRmas175p/jCpuin8fHUwVYUNWi9si3gy0+wDdmC4+k/tK4U
         pradrvEsZoGBOK4ejU93xklZ5kw5P5GR0bUt/H0Wp3zS/Q2WfuT2mDFp/I/03L8a0zNo
         25QA1iDvSYLEtHKofQJgfeJzDjqO5Zipr/xGTmza2PAa4gkjZzd4KPp9v9xbHu5ldl/N
         M+tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=z6gTskIf2X+Sj+bSPJllaAbWaWmqta/MtCxiWZanBpA=;
        b=UxjfwUQ3ilDmKx829JjyA4AIOaeTPijWqYwTN9jEkspW72r7dlNXHOpFLtRhXeLpFK
         6CfEyfIAum2tmbBMhnBVxO5ba8BXi26pM8nLgZkl2tJRHExScBXUWEghgmZQbPBT9TTz
         m80bLKAKSJuFb9hgIYmoe/w8K+m5gQbUC1vjGSc6kTJfr+2PgQeRNHm99UsIi5JJSgwb
         r+wfeeriEhXs3eLbgkQQ2Uof0GnEcrMmfeYaTtu8FirDcgyavL5VL04v3rp8Zq+gb0mq
         hUbAjFSN9jjJdMxe/BV7sKnPmX/ncR4oC0E4k4JPSWNlU2n06Wg6+Wk93dgkWuqjGp5p
         tYZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1Fk6WbZV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v2si252826qka.0.2019.03.21.00.19.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 00:19:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1Fk6WbZV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 899A02077B;
	Thu, 21 Mar 2019 07:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553152771;
	bh=0d4hmoxVAmYHrsIBhZauID5JeCUvflwd2eO+m7nsEyU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=1Fk6WbZVE0H3r0Ae5wYd7LuMYSR1OZNlv3uEO9SvW1tcj7/MpvuPNhY9SY2s9Vc7H
	 vkTDZHwaKEIDl77fXwQviN1gMdp1RukjQN8aI1bmnZm7MJ9b08RX6Dp7tQFg3a8lqp
	 QHD1CK0q20v47YpFobY7HLWDikzUI7b45W1sbUTc=
Date: Thu, 21 Mar 2019 08:19:24 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: emxx_udc: lines should not
 end with parenthesis
Message-ID: <20190321071924.GD28171@kroah.com>
References: <1553143070-4067-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1553143070-4067-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 21, 2019 at 10:07:50AM +0530, Payal Kshirsagar wrote:
> Adjust code to meet the style of “lines should not end with
> parenthesis”.
> In file named as drivers/staging/emxx_udc/emxx_udc.c

I do not understand this sentance.

We know what file is being changed, you said so in the subject line.  So
I do not think this is needed.

Please fix up and resend.

thanks,

greg k-h

