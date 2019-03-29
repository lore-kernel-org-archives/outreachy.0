X-GM-THRID: 6673867872334249984
X-Received: by 2002:a67:ed96:: with SMTP id d22mr4641817vsp.7.1553885116538;
        Fri, 29 Mar 2019 11:45:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:bd04:: with SMTP id y4ls712177vsq.2.gmail; Fri, 29 Mar
 2019 11:45:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzaDDEvMJz8/zQeDERwSOv//OVuGC8XvEKG1e1/IagCRF+N22BTi2mLgKHJxRNF/fsL74f5
X-Received: by 2002:a05:6102:151:: with SMTP id a17mr4637689vsr.37.1553885115793;
        Fri, 29 Mar 2019 11:45:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553885115; cv=none;
        d=google.com; s=arc-20160816;
        b=BMx3Yso1WQqCpnJD3phpVYVrNyp5ZKDG4U9a9WQ7sR6DSVz3/q/d6OpJRxHElKevU8
         DgV5hisSFm/VSMHFbaan6ZX/CMGBp8oyvStov0cCWu6Jpkg8bWLf7oPTLJ5VS0oAnahT
         bqXSL0Bn15S/Esssz4ijVmH+PhAQHjTxVMAZTe4WjrJgAolDjjIfoIWsNFNtQRukFKH0
         R5uC6GVux97A+BrE+QiGBd0JSjSbuLycvX0Bq/A8kteluBYIvDI56qBl8km9qIXIjNuR
         /0ryFXbTguLCls6UUARzg4KdApnLY5vFqzGeqGNx5JrW/z6Et3r6erx59nDSwJ+sVXxz
         BZ2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=WnJmHlIk5XWyzHNKkB99N+L5EoA7O8mViTk70pG+IMg=;
        b=R4gN9OeRDv+CowWGlylNcsMaqpWTMhHb40tSRyDAwPO3DPVSizQ30VKrQdGll+ySwM
         xEMiXX5GC+mSZ552eB/5JSsa4RtIcVlelz4WQJebAW3mMnx+EZhEaT+tFtjDgYEH/yy6
         LhuqdRyPoAqjaoOzqsJzPFUpRU/gnroL9kHwysn7aYGZ8dkkMwPdXhcrlJCqEF5h1usm
         7hk1SANsOA59QtOq71YOK3Dejz3eRdbvzUztHr179EIhawUj/a8sgAVas3r9c98yyJJL
         19J7I97oWlnZyI0hYZ2G1eMvIYGCRXnb1cWJn7Kmj0fPLFrC5/YpxeLMGqtFAEjBfQVY
         bYzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=Rg1EX0Yi;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=PRkBxhoa;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com. [66.111.4.26])
        by gmr-mx.google.com with ESMTPS id n2si146653uap.0.2019.03.29.11.45.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 11:45:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) client-ip=66.111.4.26;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=Rg1EX0Yi;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=PRkBxhoa;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 9F4EA220A5;
	Fri, 29 Mar 2019 14:45:14 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Fri, 29 Mar 2019 14:45:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=WnJmHlIk5XWyzHNKkB99N+L5EoA
	7O8mViTk70pG+IMg=; b=Rg1EX0YiBlUItjqixDo7VkdxC/IcPgDtGQV8WymH2Fn
	lP6cHccgqb8edRtCh7yYOzAS+keXMgS1ahVXH6rDe4uqT2BzEB24zFO7pVxHfN3T
	arMLSx8cpPWUzfK516g3jpfDJfmmbh8zbixIb8QgMsaPlOuRdh4CgZluc7gn2L1X
	5fThXp/7jIQo4z2RUp+n9et4WTyCVNdIVyj/Iy6b+7irFt8Sj3u9LXfkZyOjgkol
	ui4VYQhateL+5wvBuDTHQv8JHe/yJS34TYmJ6gwDR7ezkHdRVbF7oMcNvkPH2u+r
	UAP3dAU0dDkshWPpn/SFh0b52X5eG4hfKNQDpmDlNhw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=WnJmHl
	Ik5XWyzHNKkB99N+L5EoA7O8mViTk70pG+IMg=; b=PRkBxhoaNbOkE0ATFm+XcP
	IpdvbpEEsjs0SvMAWzEcw0zOU0ArttwoRbZtcljg1X/WPYDuJJY0P7e3MhXz8ggv
	0JcFzGkVr/kjHvRMFTOEWAPdMxikPen7GE6ItsW4bbKsFqbDrV8tHqI5wqPpbQqN
	Vbxn3DQGOah6VbaFMLHB2Q/tP9FyEfabL157Hx2uLAJSibMbOsZFwUVfFCaZavXL
	6PZCIumPgmFK+HO9WnNQAejiABWQkXJQUKZzWTmRFEJdxkaZKBClg2/D/ccH0lL4
	8o6uXi47eculEK26EHfDXxHUItlGJZNmHzyPY3F68j+cCqxM7yHOsl/J2IXZ/zTw
	==
X-ME-Sender: <xms:umeeXDVfL5WNESSxnfIU0Pvjw7dgnxU1JJQhcgS4klAiZiK8CYmi5A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrkeejgdeltdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucffohhmrghinheprhhfiedthedvrd
    gtqddqqdgrnecukfhppeekfedrkeeirdekledruddtjeenucfrrghrrghmpehmrghilhhf
    rhhomhepghhrvghgsehkrhhorghhrdgtohhmnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:umeeXP3zuKHYrPP7325nPUimx7aWnPsMIg7dUXvMpIBlY23oKmyCfg>
    <xmx:umeeXMXoGGR0nWdNezOlxUkpJqjNx5AAyl9TtCBF4fwEFGKKzEimLA>
    <xmx:umeeXNCa506Lyz5zFmGzyNNJiNBljgXBxPWjRjKDuHOEzGDp_p8sbg>
    <xmx:umeeXK4Z9WrPcaPbddpu_Hayi9GhVrvGQC520GL6_qheDQCz-4WdMw>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id D893DE49DE;
	Fri, 29 Mar 2019 14:45:13 -0400 (EDT)
Date: Fri, 29 Mar 2019 19:45:10 +0100
From: Greg KH <greg@kroah.com>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Compress two
 lines into one line
Message-ID: <20190329184510.GA4639@kroah.com>
References: <1553880917-2839-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1553880917-2839-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Fri, Mar 29, 2019 at 11:05:17PM +0530, Payal Kshirsagar wrote:
> Challenge suggested by coccinelle.
> 
> This patch compress two lines into one line using following semantic patch:
> 
> @@
> local idexpression ret;
> expression e;
> @@
> 
> -ret = e;
> +return e;
> -return ret;
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
> diff -u -p a/hal/rtl8723b_rf6052.c b/hal/rtl8723b_rf6052.c
> --- a/hal/rtl8723b_rf6052.c
> +++ b/hal/rtl8723b_rf6052.c

Please take your patch and try to apply it yourself to a kernel git
tree.

Hint, it will not work :(

Always test your patches before sending them out.

greg k-h

