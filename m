X-GM-THRID: 6466262449000546304
X-Received: by 10.25.77.17 with SMTP id a17mr762957lfb.21.1505728655151;
        Mon, 18 Sep 2017 02:57:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.193.129 with SMTP id r123ls1459064wmf.1.gmail; Mon, 18 Sep
 2017 02:57:34 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb6/iTm2Ud+9MUW/im+9CbTAP795YOObJTk7UL66AJvfM6k5xqeJsyRrz0tOjxGr565XmLxn
X-Received: by 10.223.169.144 with SMTP id b16mr1957427wrd.26.1505728654024;
        Mon, 18 Sep 2017 02:57:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505728653; cv=none;
        d=google.com; s=arc-20160816;
        b=bXy3j35lEH5IAalfLIgA4gmabeqtUVXNDHaNB52CYV6X7gJFG9FRkUfiiJKRr8dMGh
         S0BLf8NxrjNFyRLeLRaJVLANyrcqSER6Byn0ZTMFsmRTUNspqEKFv3+8prm/cITaAxhY
         HNx3KVYITzA9yZ5XGeqd80z/JFmObL9Q/Vc03VquGRpJ6GM2jvuWKsvNS7bOnEclV04x
         snkER0sexT/GDCkuxXL7A9Irfo+dNbpLTcCzXeYdDRX6FeWOTGi7Zfni50q2YQeGqRft
         K9v7Zeh3ujbqAkEIh7rHi8p+qUfd50A8WhDLTi0lQuyLB55UtdyWPrtt1O13Q3YpD1Uj
         T7qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=B0pCOMOwci9xPYr5LDAO6ZvuxZzJrEb62sxxiTAoGVs=;
        b=AcjbkrGytzJ4u00Tr3H3elyazgbatFsAU1zX3K45qYuoMWI/pzIruzlYLTK42d1m2S
         Z3hjKiFNLGo8pGWpXUHnyyh/Y9YzthAjwUGmAbQqKoUSZcpsKefFw1D1eNjzwPBY92Af
         NoQ6tWPcH/+Lj4uw3mJgdtdAkSTp33PNOdOZtCu6VY1IRMUnG87lnh0Q2AJQheRDT8+m
         NFhSfxCUdaj4kc9ioJuriGAwhscJjKmAs1LVfzU+25W2bpX7w1Ve/vgswDhBXwhzzsNP
         R0pKs41paWimkHoFJifH9XJYrtd50vg+X7TxV9nov06zDt0QTrmifC1VAqp2ozmVKWvY
         yOyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id p70si441087wma.1.2017.09.18.02.57.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 02:57:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 63422B0B;
	Mon, 18 Sep 2017 09:57:32 +0000 (UTC)
Date: Mon, 18 Sep 2017 11:57:43 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: rtl8188eu: fix block comment styling in
 rtl8188eu files
Message-ID: <20170918095743.GB14946@kroah.com>
References: <1505544039-13645-1-git-send-email-aastha.gupta4104@gmail.com>
 <1505545311-15102-1-git-send-email-aastha.gupta4104@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1505545311-15102-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Sat, Sep 16, 2017 at 12:31:51PM +0530, Aastha Gupta wrote:
> This patch fixes checkpatch.pl warnings for block comment styling.
> 1. Block comment use a trailing */ on a separate line.
> 2. Block comment use * on subsequent lines.
> 3. Block comment should align * on each line.
> 
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
> Changes in v2:
> 	-removed spaces before tab added by mistake in rtw_recv

I see a bunch of patches you sent for this driver, but no idea what
order to apply them in :(

Please resend them all in a patch series, properly numbered, so I have a
chance to get it correct.

thanks,

greg k-h

