X-GM-THRID: 6673442126229929984
X-Received: by 2002:a0c:9622:: with SMTP id 31mr612305qvx.22.1553875977712;
        Fri, 29 Mar 2019 09:12:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:2361:: with SMTP id b30ls1358782qtb.2.gmail; Fri, 29 Mar
 2019 09:12:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyjYFn2qYa66iNWQUxyur4dQ7s7j38uWj/SebT1Fd+EzLtzGWHcYHyt+3vYuV9aHV0W0SEX
X-Received: by 2002:ac8:33cc:: with SMTP id d12mr3758767qtb.27.1553875976617;
        Fri, 29 Mar 2019 09:12:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553875976; cv=none;
        d=google.com; s=arc-20160816;
        b=cxPpH3pStO8a5U9HXEWCPLuA0sV5KyJ34dqP/lMmdQqOdQ+kQTeMXGiPAThGDps6mW
         on0QjXvmPfI7JwwJy6pb7n2L9T8pmXxf/rif0rUnoKHEcnw2YODGWc6yIUsZqQZ1Z6ii
         Oj10TBtguC3oUnu53Fy6cLseYvC9ZF2ljkDdq/Lo0kG78Gy2rjE61Ax3Bu1OfQV52eNU
         zTOwL4FdcHMn8gWnkyv3rwzw+Pdruwvu5xDNv8cOGjTd+WhXB8LeDCV+LN4k5wfUeKbo
         sDuz5bO51PzcqtVbwjCQ2b0+3IUYToqe+qdf2yL51lh4Zp6UgLPfPpuvB25oELqcXw0p
         l1jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=jwt4ql25J/S8RmWurMS/LYOBlxeeHIetbsuwP+H7awA=;
        b=lzvsC0BPTpV+Zb56gU+x0Md/V+b+zb7kfD31qmkUmS/l6GRNDTy4M5fgqZDuJxZz2R
         j12Hsfdiq2JdqeNx3eSz2cgOkfdj3QZx4gyU52/ZwhQkONBl3oPxAZMRAMf22gPfJSTQ
         h3llirfnjhuqUH3MD9z7y/AYshvrw/avid2Zp5QaoC5pV/jOtDFzGkxExSv5klWHDqiX
         /6hlJZ8vVu67WvFw4yxmUf9+WHLKRzv70IyWU2VW09RkQNIS8j3UF0z/l5PfUWyKKLL0
         DzR7/+sS4eRtXvevNRbdqekSzGbkWzg/r3v2veN4uy8XKgqpetsH5Ycrjh+H4pyF6/8x
         3D6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=vqVHmWs8;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b="sylu/eMi";
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com. [66.111.4.25])
        by gmr-mx.google.com with ESMTPS id q58si107724qtf.5.2019.03.29.09.12.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 09:12:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) client-ip=66.111.4.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=vqVHmWs8;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b="sylu/eMi";
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 2590C2185B;
	Fri, 29 Mar 2019 12:12:56 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Fri, 29 Mar 2019 12:12:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=jwt4ql25J/S8RmWurMS/LYOBlxe
	eHIetbsuwP+H7awA=; b=vqVHmWs8NdhbVHkuMQm+lu5T2GH7D+VSMiKzJKvCdHB
	Y/3cDTE6VNfRC8Tk8dcqF7Mohz5/tzEF2iwoHQP3k7Kf6Xd6/O0GrCrwnGAI1BXZ
	jcpvMT+0QQlNsotZ/DUDe2+XWk7DNlNA3kaeLcvmgSJbPzZxLRXgqGp/NBbiBf3e
	a76+QvhwFnsNWODmbMCXL8qoqF4eIvlAQNseuJJCn5AjUX1QibJugpUQCN5AfpvN
	pAqIZ7Mh6qBQiTweNHFIPUUIH9r8NwbdIqA3Lk/4JPzjQC72HV9J4kXVMKi6M973
	Lx+v0EHQr6EqVxWOwxDhZlPKiTSAWVDM3N6qz32S1vQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=jwt4ql
	25J/S8RmWurMS/LYOBlxeeHIetbsuwP+H7awA=; b=sylu/eMirY5QfZSgi5RGQS
	vtbTnCYTXzzNV/Ye7/5EME/wSud5ThB4wOIiYRwTyWPWpn2K4/Bw6LmXo2kxWgax
	LqvrCSoSunA2bFYEutaVaOhm4yYVOPtuxbebG59bXYg09WltGl0P7/avITMQCWMA
	8VWZWX4Rl4cWiTF2ovwAFJ4IWBNbKL4ia/ZNH6qABY64CKUSe497SrToPXvA39BO
	E7jI0kgKO6eH6Z7vf7wNqGOR37zjlPB8Vr1svElFTULgWknGU75jdS4Re3fkCsNK
	X7dJUN5JyX/nkd3TVjdgY+oHtQiKWtcaAez3xCTXGVafZGf5fpw7XfZKKW30+5LA
	==
X-ME-Sender: <xms:B0SeXEPo99Xx-HDESypc3jVshJa4-kzvnSoaeRED-3e9p6Zo8Po8TA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrkeejgdehlecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucfkphepkeefrdekiedrkeelrddutd
    ejnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomhenucev
    lhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:B0SeXKY6ZShoexC5Ot3Fs5V1dodmYFdbG5C3j3lFhtSYNBddwQeFcw>
    <xmx:B0SeXMUh_r40NYL_x8DQT82aB39W9zj265FjWFmELDvvY4mqjZXU7g>
    <xmx:B0SeXBDS0c_TqGjUCe95n9Ta290HnpTCz6Fx73xQ0FjfF2xq-R-x1g>
    <xmx:CESeXAM0vmSzO82_G1WMQpmtZUeHOsdg0tgZ6j4h_U133ZksQsCNbA>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 740E410390;
	Fri, 29 Mar 2019 12:12:55 -0400 (EDT)
Date: Fri, 29 Mar 2019 17:12:53 +0100
From: Greg KH <greg@kroah.com>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Payal Kshirsagar <payal.s.kshirsagar.98@gmail.c>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: Remove
 unnecessary parentheses
Message-ID: <20190329161253.GA32685@kroah.com>
References: <1553790264-4801-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1553790264-4801-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 28, 2019 at 09:54:24PM +0530, Payal Kshirsagar wrote:
> Challenge suggested by coccinelle
> 
> This patch removes unnecessary parentheses while returning a value and 
> removes unnecessary space.
> Using following semantic patch:
> 
> @@ 
> local idexpression id;
> @@
> 
> - return(id);
> + return id;
> 
> @@ 
> local idexpression id;
> @@
> 
> -return (id) ;
> +return id;
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.c
> ---
> Changes in v2:
> 	-Add new semantic patch to drop spaces.
> 
> --- drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> +++ /tmp/cocci-output-4620-ca634c-ioctl_linux.c

That is a _VERY_ odd diff, and obviously does not apply to the kernel
tree.  Did something go wrong when creating it?

Please fix up and resend.

thanks,

greg k-h

