X-GM-THRID: 6665415877185241088
X-Received: by 2002:a67:dc89:: with SMTP id g9mr7785191vsk.27.1551943134384;
        Wed, 06 Mar 2019 23:18:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7489:: with SMTP id p131ls1122313vsc.5.gmail; Wed, 06
 Mar 2019 23:18:53 -0800 (PST)
X-Google-Smtp-Source: APXvYqxG2dnuxFxbatbZ05b6dyjUwMDoOPoDqfl2BXBBtE1p9aOy8i0zdXzGwSmJxgo0WiFzZjJP
X-Received: by 2002:a67:1207:: with SMTP id 7mr7588058vss.45.1551943133560;
        Wed, 06 Mar 2019 23:18:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551943133; cv=none;
        d=google.com; s=arc-20160816;
        b=0VxVEy/8ZLURO67EXrPBwU6QjsauYE6M1dW9DLWV4ypgzGAc2TQNgenUSBjWOQZC11
         dMNB7ATOnTTRycDs8E/gsyRd8Tc5LkKic74r6y72PrvPGQ9el0uFe4YsDOMt9ZeOC1vn
         DNrxnhocksK/BpgUUWRhEjci6ov8HJmzZ7L/fePc0JvItKkvOLre6O4jqdBydzI6RsoV
         SqBfw5b5Jgp1nOnZ571G1Dnk8sexbnZbkw0tzRja2imwXvVxpZsxAcT6LVgxd205M9XG
         YkzVGJx7iaziZvrfLHAwv6E/ViA/ZxxQWtBmf+RKln5hHtLDVF3X6K6x/SBQGWEMkIv7
         lW2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=j53ihdaWMG9Gc9DexzArYYdMvt6jFCg5QlOr4Motc5Y=;
        b=zpnXzQ5FNBBmXq5b/zg9WOphOVYKFqzOy0dlVCEe2dg16fCBQu9VcjUDwD1P9Gw4dO
         YC28ae9KR/ZhL2Owv096ZU9J41EkcPw51FXpzIpwL0Luq+hft9xSLzQ5yAtjDmWijiOs
         vlDHgSv9VVOqaGkAtx8ChB1P/H7TvP3H7Mj0b3tE9jZpzoWE3QlH7p18KCyx83co7jyC
         AQG2rz4x5cJMETBN/NL9jyNt3ag0Gg3rzyIAChKiZDtvXgrWm26LtR9EVQ87gZb7U73D
         rFvyjv49u0i/rR055w1Kit0UC01tt4j5pOieIOFveMxplwIjK0rN6+P55qAQCuj+inWO
         dEeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AaLHL8fs;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 71si128009uas.0.2019.03.06.23.18.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 23:18:53 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AaLHL8fs;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8D3CC20835;
	Thu,  7 Mar 2019 07:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551943132;
	bh=DasHzw5YxFTmO0jMhEHWwPdzqYt2sKV23Gqu1nqJvZ0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AaLHL8fsuQBy+vVKAFlzaOK+yRjK5zasTa5uiCLd0yaTBQ5VJ+9JZR10blFrRpFkL
	 /wnPTgrBKcY0Zh/G0RsepRCTLyNRFHa8usEL9FY5BnetToUIjhA4C9Q1kwlqC+XrTx
	 8BW2DEzQ9t/huRMOGktPAWjgPiWOOoSCnr4YBkeI=
Date: Thu, 7 Mar 2019 08:18:49 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumthia Prabakaran <madhumithabiw@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: vt6655: Remove unused function
Message-ID: <20190307071849.GA10409@kroah.com>
References: <20190306220025.25508-1-madhumithabiw@gmail.com>
 <20190306225742.GA12712@madhuleo>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190306225742.GA12712@madhuleo>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Wed, Mar 06, 2019 at 04:57:44PM -0600, Madhumthia Prabakaran wrote:
> 

This is an empty patch/email?

Please fix up and resend.

thanks,

greg k-h

