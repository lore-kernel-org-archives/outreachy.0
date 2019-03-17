X-GM-THRID: 6669342571581407232
X-Received: by 2002:a62:ea12:: with SMTP id t18mr4767843pfh.109.1552828669003;
        Sun, 17 Mar 2019 06:17:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:68c7:: with SMTP id d190ls5393066pgc.3.gmail; Sun, 17
 Mar 2019 06:17:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwCS9Mv9Rp9Qxw3zL9yI5ryNbf6+F17rF/t5TgGSg+/q6RX2vkhDyk5laj8Z/JaWFArFzzH
X-Received: by 2002:a63:5862:: with SMTP id i34mr4799774pgm.18.1552828668195;
        Sun, 17 Mar 2019 06:17:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552828668; cv=none;
        d=google.com; s=arc-20160816;
        b=xG4cznjbyM7cvlCwEKK35361gq+7onzldTyfenZPfdwj5cjYbRb3Aq/6IquX4LAZcE
         zqaaNl7jd7dzbIrfIEtuzv/XefHvn2kCInG0Pb/Lk17BLsgPrzqUhNgaGNkrePSRO2vP
         Z6wTe18C1hOuMJmmHHgGis2jZNLSSp4cwa3xn7bGVUq1caBEtxfCvn/b4Fa+dZp2BHN4
         bwD1Th1J+Bpj85viI9Q6eU+/A1h5leDU5RwTQiQeIg+V7qrxWxTTC955M3Gg7Bns5APL
         kOOxPZuiFHK5YXu2bvDKqJmF/wnxHu1NK2xFp36UJK8XJUVQQNBL208aseX15gGrv9s5
         1Xmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature:dkim-signature;
        bh=gCs9u9GVvEy8yAaajaGdRlcARhKioP/lHmCIh6Bp3sY=;
        b=Hxh4lALFWDEgfSFXMdYU8dpp54lCfA84YtPyqtC+z1xJejTzqXYcDb3DRG8ZHiK+qh
         CHTlTuQALZa9aQznAaQnivO/GcBf6a55CQVkimkjVJ7ILdvgo89Cgi7MwOeBJdIgz04G
         CbtzLbq7NLXVCCbbXZh0F6qteqL/s6AUjjRoF/LClQhyvHOIruYJlaql8VMcmpbTvp8Y
         I9+w7ZHyToZiQmhD9WKoEKhQ3lp2U/GwC77tAkQcidvxh2HMuJ6smkWs14oGydN9Z3Gd
         pHlNYL72iLJLdlCpW2YC8o7i546huLIzkMRluLp8V36o4kdQJunKBbPf3k5htVq/CqZ/
         qt1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=Ilm9OB3h;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b="iZTgv/bD";
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com. [66.111.4.26])
        by gmr-mx.google.com with ESMTPS id i126si329835pfc.4.2019.03.17.06.17.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 06:17:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) client-ip=66.111.4.26;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=Ilm9OB3h;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b="iZTgv/bD";
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 08303213F5;
	Sun, 17 Mar 2019 09:17:47 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Sun, 17 Mar 2019 09:17:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-transfer-encoding:in-reply-to; s=fm3; bh=g
	Cs9u9GVvEy8yAaajaGdRlcARhKioP/lHmCIh6Bp3sY=; b=Ilm9OB3h/NLxIHVjh
	OYxV7fLOazcvbxgh/MqEpd6vAHemBcv5e0aLz+nUCtA4aU4W/Ab8aYwQjJelELrs
	2pSl+rNSuqA6P+JdzCDFndO977MCLeJBR6ohcxNlZ7EqhUIJE5FS8wr/TRwHKdts
	q8yxLWGcFplWCxJau1VvLh2xW9qVZstO4z3NxbzLqMqcmJZvf7U43tCEu4X50bMB
	rRohfjmfEYurE0/l95BhnWgJgIrn/PhchubbJg6cIk+v1x7KAgLCDcG6hA+rzmRd
	K9FY+fStwC0Xpbji5I4k1Q+ZsnLdPfEE3X7xA3kNn5hDQkgkBjjj0a+4Z7mpcYlX
	HxNZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; bh=gCs9u9GVvEy8yAaajaGdRlcARhKioP/lHmCIh6Bp3
	sY=; b=iZTgv/bD4w3x4/iHr6VgQhbvu3gOrwEJSm0daDOJVpwqZyVNPo4TrIU3u
	bm4dWNxV5+81HixjkXCu3/Bm3777DwzCU+WMpUW3evLUJyu0dG4t4fe/0Ild1BrU
	rk8CfDiyTt5m9iQfJvd/GQa1WR7/T4xNiq3VP1Cl02qZsZcpUf9Oscu7tnGY/CEM
	umCUNRy5GvcosfZtGE/4FrQRNhn50kofvEFXbAXxcFzmLEo0Ivz/b8KDsNGE5Ft2
	Fy/l7ObezZx8a2/Ym66SV6M1/9ysg8QikX/9OvTH4JVNbou4KgSZLe4/VDKjtNp8
	2J55RXvKA0lDLq9QlBgfyuRFRM90w==
X-ME-Sender: <xms:-kiOXN15UfmTO8LiHvnzwjdJoFXT3ZE6l7TbVcbn7exWVvRmIv9tkQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrheelgdehvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggugfgjfgesthekredttderjeenucfhrhhomhepifhrvghg
    ucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecukfhppeekfedrkeeirdekledrud
    dtjeenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhmnecu
    vehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:-kiOXOJ70_F8wB_qI7pPNj6xcr6Gp-oNuYZBPHOYiZ3u2rCSz38i-g>
    <xmx:-kiOXC0XWzZPE2J2m9mFrifjmmBm2ywm-LIVoS-TCIHXbbj6yLwoiQ>
    <xmx:-kiOXCkvBdkGmI06f6-VPEUPcc4eXIKC0SPsJD7QvG0axmMo5-y0CQ>
    <xmx:-kiOXAjg1GULe6SJ9-O3vcyqDP1a2gr30ENqxOaGbKX_fey_PPwg1w>
Received: from localhost (5356596b.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 51AA0E427B;
	Sun, 17 Mar 2019 09:17:46 -0400 (EDT)
Date: Sun, 17 Mar 2019 14:17:45 +0100
From: Greg KH <greg@kroah.com>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel]staging: greybus: dt compatible string
 "usbffff,2" documented
Message-ID: <20190317131745.GA15608@kroah.com>
References: <1552827308-3539-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1552827308-3539-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 17, 2019 at 06:25:08PM +0530, Payal Kshirsagar wrote:
> Any compatible string used must be previously documented. For the same
> compatible string ‘usbffff,2’ documented in
> ./Documentation/devicetree/bindings/vendor-prefixes.txt file.
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.txt b/Documentation/devicetree/bindings/vendor-prefixes.txt
> index de6f2cf..62f0b03 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.txt
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.txt
> @@ -422,6 +422,7 @@ udoo	Udoo
>  uniwest	United Western Technologies Corp (UniWest)
>  upisemi	uPI Semiconductor Corp.
>  urt	United Radiant Technology Corporation
> +usbffff,2

Is this really a vendor prefix?

Where is this string from?  What does it have to do with greybus?

confused,

greg k-h

