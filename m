X-GM-THRID: 6754496283091664896
X-Received: by 2002:a25:a324:: with SMTP id d33mr13422095ybi.58.1572691170525;
        Sat, 02 Nov 2019 03:39:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:d0d7:: with SMTP id h206ls1500172ybg.12.gmail; Sat, 02
 Nov 2019 03:39:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzjIEx1LTUQ6gmZk3rrkR6cOIrb2WzyRpRr70xkUNTwIMjdXokb0YAwhIV42Vt1Zdhs1EPP
X-Received: by 2002:a25:e696:: with SMTP id d144mr9685298ybh.173.1572691168814;
        Sat, 02 Nov 2019 03:39:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572691168; cv=none;
        d=google.com; s=arc-20160816;
        b=vXKZwAp79nwtGTBmOFZ+PAGyZz4cxoj4GxxDBHE3K3IFGCqVgh4Q3ma5aY/NouElzm
         zv5qed8dMbu4S54L/lYLUJY39e2U8Zf4x+CgRABS9xDpFU6zGq5BnIG1sKnvUTMVyXo9
         KJxEFfWCwfuYJtE8PaN0hLhcq2b2rZZ6A37RJnWvJk3lDaDz8JMjBml2knWT87GAupsT
         h/3gqxUgfM9fNKWl319EdahXvTuscNAaky3MIp655p9JdVaB5OZKYkNdBKgEl3hLf7xz
         By4MhxxcHYCGOxCJN4Yo0S8P5/fO5hG4YMcRbR7r00iDvU7OoI2UztaeBx8rua434S7k
         mE4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=2Yh2DDRNrKspKq1cM/EQkeKYgy9gXyiI2m+Xo++q9KY=;
        b=PvVdsOme/TPTHncwAzZliSgZhuiF474moUUi/+5ra2gkbJpaGmxENcUblIz4KUxdVy
         7CXuYqZ0Nuqbfw4yKmy2qZNA3rgSA7BQwY0kL2WbWXaUFNGnJNhu0Ahjbzk43yws4zMl
         lkZjfHA6XmfuqYehlZiPE0DzmDc4pktoKRR4OAtxyipJpeGkTrTMdwHQjvoePpMEc/Il
         n+Z2ykWpE4V5J1ms3JDEi+bwqLQOpznwZ1MdQsluH+m3MK+kYzVuUnSAhFdTpBkNXiq1
         apvBySkrudcdOj2MS37fCCQPABn2EiiI/foe7VHtmyOvgyhSzwyQyzaM2HljPWyOn5fl
         fcBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b="rA/Y8Egr";
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=BWquDFZe;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.27 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com. [66.111.4.27])
        by gmr-mx.google.com with ESMTPS id u8si716163ybc.2.2019.11.02.03.39.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Nov 2019 03:39:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.27 as permitted sender) client-ip=66.111.4.27;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b="rA/Y8Egr";
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=BWquDFZe;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.27 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 35B5A21910;
	Sat,  2 Nov 2019 06:39:27 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Sat, 02 Nov 2019 06:39:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm2; bh=2Yh2DDRNrKspKq1cM/EQkeKYgy9
	gXyiI2m+Xo++q9KY=; b=rA/Y8EgrtEOTSmhhpiM52u7GSYHst8IXX6Upli2jWcu
	Pz1K3t24B10cA435toAAnOvTivN5rI9n7PLDRPjpfT4jvOIebHdt+TFRX/3XGSLB
	xl4Pz7msWkbLEVIOdOo37gxpFZ5B5isNI5I9/eAk7UoziJpUqGJofKpnJID0IGUY
	olVKoUOPyj0c5TOQFOBTkEhO8huGgl9VmePl++LfYBqSevCiFseh3bkiYnH2TW2C
	ePRvK04mW+G77rpOtFbbSlkWzdxMJLHUwM8/QDkp67IrOefKSzOGo5HVJR+JJf3n
	xC3lobBnq5suCfH8otBVpERzkhoE76lXowsQgUB7+5w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=2Yh2DD
	RNrKspKq1cM/EQkeKYgy9gXyiI2m+Xo++q9KY=; b=BWquDFZeMXY0xHTRBaOh6m
	slozo5PqETx7d8DwymApcKKwbHPx2LbrNWYUTKLTvQ/2n02Ax086fzzu3RITIhqA
	uAj9xDBpzoa2kNVU1gMRlqZ0VHhdR0scx+LhvwgTtuQXdbSb3q2Y8taSGFM3kTIu
	3nsj83oI1I8UlQkAj6QS7imFeZIOfLIQZO7W5ZeA8KJehMoTLRR5PQ1xVmrxNrwm
	g+9qEs4H5fRLw8rtR/kzQvIPYUL80b2J2+P5/2zUMi0WY96Z3rV/HdvM+2UWxK+K
	qceEQJypxhUIO6s4i+NjPvFq6eePEPGrs7t39W6K6UBYTbcecDk9VL9u4WIITpHg
	==
X-ME-Sender: <xms:3ly9XTET8HPq_J0xq0hftMzvC2pBcySZzPu0K8H3tAAk1GaNc8bqcA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedruddtledgudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujggfsehttd
    ertddtredvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhm
    qeenucfkphepkeefrdekiedrkeelrddutdejnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hgrhgvgheskhhrohgrhhdrtghomhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:31y9XUfUl_eFMvt0IcBmZJ5sa0xY1IcUyZjv-RVfF_ilDU3g8iux7A>
    <xmx:31y9XSLrFWGxtP34aokt5ZqZzYLXhby1Ckbpk4avZczzs2bb_y9Yhg>
    <xmx:31y9XbpFzwkvQ6hb-Nuv5dJkMYqI_EL6z__MpzI_I738qz1lYCq1kQ>
    <xmx:31y9XfmlinZdVFREhvzc3sXHqIp2gIyZ1fxITsONiBG9Ke2VYi2HgQ>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id AC73A306005F;
	Sat,  2 Nov 2019 06:39:26 -0400 (EDT)
Date: Sat, 2 Nov 2019 11:39:25 +0100
From: Greg KH <greg@kroah.com>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com, jerome.pouiller@silabs.com,
	gregkh@linuxfoundation.com, Boqun.Feng@microsoft.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: wfx: fix warning of using plain integer
Message-ID: <20191102103925.GA170933@kroah.com>
References: <20191102001457.23369-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191102001457.23369-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Sat, Nov 02, 2019 at 12:14:57AM +0000, Jules Irenge wrote:
> Fix warning of using plain integer as NULL pointer.
> Issue reported by sparse tool.
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/wfx/queue.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
> index ef3ee55cf621..5d29bce65f71 100644
> --- a/drivers/staging/wfx/queue.c
> +++ b/drivers/staging/wfx/queue.c
> @@ -565,7 +565,7 @@ struct hif_msg *wfx_tx_queues_get(struct wfx_dev *wdev)
>  		}
>  
>  		if (ret)
> -			return 0;
> +			return NULL;
>  
>  		queue_num = queue - wdev->tx_queue;
>  
> -- 
> 2.21.0
> 

Please send this as part of a patch series, with your other changes to
this driver.

thanks,

greg k-h

