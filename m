X-GM-THRID: 6671816179609239552
X-Received: by 2002:a17:902:b282:: with SMTP id u2mr106124plr.9.1553418523978;
        Sun, 24 Mar 2019 02:08:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:4554:: with SMTP id s81ls5717194pfa.3.gmail; Sun, 24 Mar
 2019 02:08:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwKKEjgHhUIxBXNpNFBXqy4cd+e3vWv28leES+jhVA0oX76V4w2Wz8Vmf2VmrBtiFnruiys
X-Received: by 2002:a62:4414:: with SMTP id r20mr18171579pfa.37.1553418522994;
        Sun, 24 Mar 2019 02:08:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553418522; cv=none;
        d=google.com; s=arc-20160816;
        b=aCO2pe+Q4dw3aaBvj648HxnnShorZ76hTQTL55wlXxAi8F7sbHblJvnaP8aVeDmjb3
         d/gKNCqZ62kJiZe4Y24Q5cej0Rp6rCpjzD3DI0LgLRYEhmUBHDvZtgMu4Aap+PpcVRLM
         G7p11Us164z6ZJTYJhsprMiiEdPYmYzFRLc+VBBVLE4matjO6OWQLEc+00C/gTIrskPW
         g5Wup5V1svw0LzHtGG6N60X+v4XqRbUjT9BcbmBM3yUTtwX7/gv5pJ85tJyz8pZwiBXO
         KBTPgOEFb37C4/x5FWhtN++9vLW04no6zSsbK/uUEKYzFBFk+d3B6k/D/REDB6AKpiK+
         5lpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature:dkim-signature;
        bh=0lPh5rQ0sD0jFAGBVfqr8ovi6BUTs+aVMxE2vS0r1wc=;
        b=rBJ8JllRwJYKLVxtE4CjmnjlzmCnlYxe6xOZhUn5FQgPpkI2fOQzG68En1VBLqC/MA
         dpcIbAL6sl43d/jScWkVGE464eQ4LhI675R4wYR4vE/ev3Mb3VTYMqwZea7iHi9d6jVZ
         dOj0rkPWq0AkEN7R65Ijob8q0zq49JgfZyuEvuJb8gAyFJpL//xeyqq7yIMlZXfgt5tA
         S19wMaKG1ytTFcqp6ORnK++YLjS1ydFKkKqMVuIo2M51E97SSDZ7w0eX0L4AkUb4BlbV
         m/duls+5n0/irFceWBk0asYLwzdAe74aQyR9fCbXn1rZidoUjJAa8Z/sffvOP/2QRSx5
         RjyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b="w/mxUkr0";
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=2Zu0jpxb;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.27 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com. [66.111.4.27])
        by gmr-mx.google.com with ESMTPS id t63si600033pfb.5.2019.03.24.02.08.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 02:08:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.27 as permitted sender) client-ip=66.111.4.27;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b="w/mxUkr0";
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=2Zu0jpxb;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.27 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 375A721CCA;
	Sun, 24 Mar 2019 05:08:42 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Sun, 24 Mar 2019 05:08:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-transfer-encoding:in-reply-to; s=fm3; bh=0
	lPh5rQ0sD0jFAGBVfqr8ovi6BUTs+aVMxE2vS0r1wc=; b=w/mxUkr0zcwHwuOTW
	VxFt9J+0mjgypJBFj9gAtu8IwR9iis8dAhGhBDHgrvutsLP/Y7reODUjF5YpMNMJ
	oYMMJfIMgd4oaASwS9jN0+YiOFvmExUQACr6GZf/LXIPTyV2c4FwGG7Ux0cfef4y
	UUh2Fb1kMulQSHCljmzi00enl9Rd0zsw7uhCkDhtBjqYtw80UTko/86Kyi9ljHWh
	mzJwAuN2HXJLmho85ZutpX1A1jLZ0NMNeHKNR0GrLKu0oTb7Bs1kMV/6f4czMuZ8
	jX9qOOKCcFtJU/iBsedann5QoTAjRwzC3OyyqOwyCpRM3bk65lijS9nOVyCqCu8s
	le/gw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; bh=0lPh5rQ0sD0jFAGBVfqr8ovi6BUTs+aVMxE2vS0r1
	wc=; b=2Zu0jpxb3MF0+he94g0H/jrfSqwMACKiTrsJ9BaSP92lr3LGmx/6NFVKe
	8vAafA9KX1lVr4PpmG4lQMM9DAajUH0cPB2Wkeb6aBL9fpmFzfjQXORfDXhT+QTE
	+QeVhv0xBjK71PUZztRjKM17D6z61GuFzAqB0c4Bnb7CJkTp9DKfanFVVx6Mmybk
	4+02ZGNaRewG9jhZm7fFKsWvFa3QqICooviFCMTzoHJ5ZiVcNonjarXT5rk+XqbO
	ywbQN4QdNPYU1aI9kFb3Qx+GCyhJAX0ipOS0cVQ81JcSNJ21pfIRJpRDpdjyG5Rc
	WbuBidXqIbBJm+H3ozX2R6aM/+0oQ==
X-ME-Sender: <xms:GUmXXHx1MAQycGwKTC8Ou_tqiIks5LkleWV0HoVfOMJbPRJTgU9aMQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrjeeigddtudcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggugfgjfgesthekredttderjeenucfhrhhomhepifhrvghg
    ucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecukfhppeekledrvdegkedrudegtd
    drudeinecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomhen
    ucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:GUmXXHrtrSjK4Xfo9Vly-ARzbOQ2p8fpWvdXLVG6wIcxRwYj5i8UVA>
    <xmx:GUmXXNbub0qUVjMUsgArnfUv_7MzRDO2dBjV4-JltLeKYlPS1ygL7A>
    <xmx:GUmXXG_G8qKXaQzwpqGQciCBNz7AAJWOyY0aDxYOeOp4uPsHJKbz4g>
    <xmx:GkmXXMfBiTR6AdDSY-bGGS4pUudgUF2r2yqBSMgwYkkM1B9xR4_HWQ>
Received: from localhost (unknown [89.248.140.16])
	by mail.messagingengine.com (Postfix) with ESMTPA id 84E84E408B;
	Sun, 24 Mar 2019 05:08:41 -0400 (EDT)
Date: Sun, 24 Mar 2019 10:08:40 +0100
From: Greg KH <greg@kroah.com>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/6 v2] staging: rtl8712: avoid
 camelcase variable name 'backupPMKIDList'
Message-ID: <20190324090840.GA4651@kroah.com>
References: <1553406061-8336-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1553406061-8336-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 24, 2019 at 11:11:01AM +0530, Payal Kshirsagar wrote:
> Eliminate camelcase variable names to fix the style issue – ‘avoid
> camelcase’.
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
> Changes in v2:
> 	-backup_PMKID_List replaced with backup_PMKID_list

Is this just a single v2?  You sent out a whole new series though?

I am totally confused as to what to review here and what is the latest
version.  Please resend a new series, as "v3", on each patch, so that I
know what to review/apply.

thanks,

greg k-h

