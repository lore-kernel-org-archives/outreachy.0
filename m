X-GM-THRID: 6464947819093426176
X-Received: by 10.28.229.16 with SMTP id c16mr982602wmh.13.1505729006157;
        Mon, 18 Sep 2017 03:03:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.141.82 with SMTP id p79ls1447224wmd.19.gmail; Mon, 18 Sep
 2017 03:03:25 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBUh927t3sa1kuyks/8KuOZKdEFsdOM18qNtA1t/vrrvhzVjQ0IIFmrdKsWOH8e7guxKMO6
X-Received: by 10.28.135.132 with SMTP id j126mr839727wmd.0.1505729005576;
        Mon, 18 Sep 2017 03:03:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505729005; cv=none;
        d=google.com; s=arc-20160816;
        b=Me/t1ybsVutRBssOWHj58Pu1lqkNEPiP/iDOV+CYjWut5e1An0SEVWav6tQ3FqaQz5
         t4x+XzZ67Pw8jKSFbcvnPGaQsVefAKCIOFZJmidPS94wz3H7d62TXBsRsS4j+1vTOkgD
         ash8HaDNEWvE1w1HSra62fzo/Dsy42/0A9fiQAuIYBEDuXi0AYbIme/LL5T1h+Zy+1Za
         Tp6OvBAxrtEF5M5lS7ILYlHt2N4LEzGk9XLr0i/IlJwRWJNnTAB29eJwINRcFFIt1N41
         4An3umfvMaL83jXp6uFzl4LbfcnkfSQ99hiyuyHVt0RnDQebovYl7EEkvJQp7p0Xd9eU
         jQJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=UQ5qF4WB7RtuZWI4aX+2mjfX6FgKkzpcNPaWpLqIH0E=;
        b=R8GdI9CSlzRjeeVHE3ZI4iaP2eXeiJzWQslak14rHMnGu6P8jDTYurS+Pae40FreZg
         z004KR4LeLVs4icHoko43gejsoRYFPJ2f2BK/VkbI747Q4ft5QJ9FfVFD7hqGtGdzFTS
         eZ8S5UGnAWJ1g2+4eJ4f3L5vttDh1M1a0J14tEWa7DjmO1Nr1POxDZ1iQ+d8QfMJP30H
         MIskawJkRUN2vlR3o++D2aQE9+6ZTme3HIBcyrYPjhVJKA9wmkkD7g0sd5/yuBbXS8Ah
         WUCnhRa3nsxw8qIIU0Em35UFSnfm80QEujKCOIwVOzcbsipXoGWyIRPzf0T30wSN90WI
         0lFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=TY9/hMsq;
       spf=neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com. [66.111.4.25])
        by gmr-mx.google.com with ESMTPS id l133si504333wmb.3.2017.09.18.03.03.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 03:03:25 -0700 (PDT)
Received-SPF: neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) client-ip=66.111.4.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=TY9/hMsq;
       spf=neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 92A4320C06;
	Mon, 18 Sep 2017 06:03:24 -0400 (EDT)
Received: from frontend2 ([10.202.2.161])
  by compute6.internal (MEProxy); Mon, 18 Sep 2017 06:03:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=UQ5qF4WB7RtuZWI4aX
	+2mjfX6FgKkzpcNPaWpLqIH0E=; b=TY9/hMsqwpGzraafsXsttmvE/VioMn17sd
	tA/zlSE0VqFx5BXqdwwdnL2ZJ1+CFqeubSSV8itDUR10FoYIIj7UnRf2aB2mzBYY
	M8rXz8wlEb61FEJV/ss2PuPVTXFgjt+EUwff/nGmQ00JkhobvLSbGpZdu+fD0h2D
	yhQ+OP5gCB5V7SSZjRfso+2FCotOwdNxHzlCXOD/cQNZLNeCgtj4nz1OcIpayQKG
	rz7HqgxAzqYfjlY/sbtsYbnUppaQ7DpTnLRlIdddygVaGP/+98NyUM2mif0iHwyD
	LW260X4M6Pk9urf8DcGCkVa4HOlFSP7ymkGnM4zqoZf0Ggcg5NEw==
X-ME-Sender: <xms:7Jm_Wd0PdFp1P6D7mMWZR2N91Vxm-KDtJvxkosTNvdKMESWJC9DW-w>
X-Sasl-enc: 3DfcdOISdhQ2tsQS7ncf7O+ykgWQoqzdqV/YksBJyQyc 1505729004
Received: from localhost (lfbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.messagingengine.com (Postfix) with ESMTPA id 3783C24BA2;
	Mon, 18 Sep 2017 06:03:24 -0400 (EDT)
Date: Mon, 18 Sep 2017 12:03:36 +0200
From: Greg KH <greg@kroah.com>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 4/4] Staging: vc04_services: Remove
 trailing whitespace
Message-ID: <20170918100336.GA24451@kroah.com>
References: <cover.1505377440.git.meghana.madhyastha@gmail.com>
 <68b33848437cf19e295892e93082e5b94733d4d3.1505377440.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <68b33848437cf19e295892e93082e5b94733d4d3.1505377440.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Thu, Sep 14, 2017 at 02:05:16PM +0530, Meghana Madhyastha wrote:
> Found by checkpath.pl

This is whitespace that you created in your patch 3/4, so it shouldn't
really be necessary at all :(

Please fix that patch up and resend the series, this 4/4 patch will not
be needed then.

thanks,

greg k-h

