X-GM-THRID: 6664844369829298176
X-Received: by 2002:a25:2254:: with SMTP id i81mr785413ybi.28.1551780259994;
        Tue, 05 Mar 2019 02:04:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:589:: with SMTP id 131ls2044622ybf.7.gmail; Tue, 05 Mar
 2019 02:04:19 -0800 (PST)
X-Google-Smtp-Source: APXvYqzfqxxmZIjtCaFuXV93G5ij0fbqPHgQC5kRPSfuzcn8kId/WWPt3EIGfLrMGRDmaD2MiQ9S
X-Received: by 2002:a25:d287:: with SMTP id j129mr903143ybg.9.1551780259297;
        Tue, 05 Mar 2019 02:04:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551780259; cv=none;
        d=google.com; s=arc-20160816;
        b=dWQnrIlDDPaPeuOR1pw396bE3we8ZRIYctGhpgKHdxSaTtx3f8g2/7zEZ5gYCIsJHt
         3FiNf6+ZxF6aZamJTCW9EjSOB7l2zX0T2EFdqSpn/XSbVdn6/A3vpa6bULwOF6VdmDQ7
         aHLMVR8WdR4FPmsOe0L0h99lEnuYtsaUSB0V7fJYoUODrX4PpDZ+f1Uu4oATJXLmS6aK
         srj+R4E/BaZIiBj53kSdh/YruHWdeYqTyr0waMWonjfQ0ojBoJ2TbgY27wAUv5PItA05
         M1lpQY8QGxupNyHR4DnjuS/i3AVnI2x1nhq5UVlYv/RQUj+LRNsfAu7Fc3rdJ+VVcjZ8
         R5Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=spcpori1FM+b0VtyUTWi5FaItN5shJ9aL+uU/w2vcUc=;
        b=iyBj2CWjYQsSAiKzoy/kjLF9jXxS17m5FWbndUKp53YSnuuwh22mzwokl/6mj38xLB
         UMpk5VvW3xzDEReJBcyPOb2nUnuLOM9vULLc8gTRMYRJJpp9RodA+RXxx99TuOhaedsl
         KyS6WzWeK3BErt8k2RGqdgo/9COW7FZ+TimVFFCXA8NLuIUF2hkzele3fy3KXGhY61sT
         mPtgT5Hvw2SEWhrRXvdbDonMnwm4Fm+wW62AzWp5VAahxi7/Np2YGQLhl7HLgFuYIoCe
         gTGBAMcM1rt7KAcOp+UUH7x8Yj408ogZgGgRwIi4abSRUmgOqnno9hoMEy00Q0G1szFv
         o7lg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=eIgaN7sK;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=2OK+cFVs;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com. [66.111.4.26])
        by gmr-mx.google.com with ESMTPS id k62si402102ybb.4.2019.03.05.02.04.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 02:04:19 -0800 (PST)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) client-ip=66.111.4.26;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=eIgaN7sK;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=2OK+cFVs;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id BB00622AF3;
	Tue,  5 Mar 2019 05:04:18 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Tue, 05 Mar 2019 05:04:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=spcpori1FM+b0VtyUTWi5FaItN5
	shJ9aL+uU/w2vcUc=; b=eIgaN7sKOd+iYXWVPzjLVvc15Ty0AfSzvNCQ29KDvbi
	/RppmnJvrYZj7TUdvpktOTXYHMdGzmx9mHg4fhxda78sNhhEtClDkiuVXJJzNt8d
	RBQTyZlM84NTV30hYnjRYBrzUgto3TyN6Jy40y7DTP6/g3ZJe3KMpmK1S1g4mSi3
	6ti1N7S0Ji15IZcqmFO5wXF4o3D8cWB0cZ60S3P1Dzz7AqTBjR+aFteERgvMpfR6
	/+ZGx9/4y9meMvKD2E8kMSrksY74LfN6/QOW11jzdgsoYbbncwZYJi+UF+UPACQk
	VhfTxhC6CShog0rNCyYurY78n0pWw1ekCBC76cvJK5Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=spcpor
	i1FM+b0VtyUTWi5FaItN5shJ9aL+uU/w2vcUc=; b=2OK+cFVsXKJozt8t/WiSIT
	IwK9VDQWs7m6GC4fChkw+mfhlFrN1iHooHPjudRPOLRcIwPg7OnrE7HHVqNfLMnG
	YlZE42bn+rWSoQPxHUHfBXieLWE/eqBw3LLIB5txn1XcZBoCKwAT0Lv7gL7P4eMD
	GKX1tFSaqNWLt8PYH2DZIN9kGPCK/19oGa4jDoXspmUnkQ4pDUJYIf6RukvjS4X6
	+1oayxL5msDCM622Ol0E7Qj16+/Blq5S3ceHeKrCr33N/DQ/mfSBUI9tb4CvH/oG
	RulzqKaFzYacsCR4o3j68VYgRU3JKOA01M9WZCCFVv0pOegK+zvjvA9+ktjVzi5g
	==
X-ME-Sender: <xms:okl-XCiARijH6k3z2mi0IAM3ln5bBPEKKOTjAf_YazSrTDXBGXexdg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrfeefgdduvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucfkphepkeefrdekiedrkeelrddutd
    ejnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomhenucev
    lhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:okl-XBgWaZATSgD9V7DRz1X9_FXcSgUCQRV8jS4vodUKWJv9bBWQ8w>
    <xmx:okl-XAQxqbCnEn_i-5t77QPOCP1Tb1iCg5N-fiKA8GdqrJeoSt3g4A>
    <xmx:okl-XAAjCN8hC4y3UvyVhesT29Xb5A6LkIKxmXRQObuJl-lySB2Zsg>
    <xmx:okl-XH2RzPjzu0eYscj3L2j7Kwtk893al7-d-HG0MfC4rGFnJpZRZg>
Received: from localhost (5356596b.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 010FAE4210;
	Tue,  5 Mar 2019 05:04:17 -0500 (EST)
Date: Tue, 5 Mar 2019 11:04:16 +0100
From: Greg KH <greg@kroah.com>
To: Daniela Mormocea <daniela.mormocea@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: Line over 80 characters
Message-ID: <20190305100416.GA32186@kroah.com>
References: <20190305100001.GA13873@pthm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190305100001.GA13873@pthm>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Mar 05, 2019 at 12:00:01PM +0200, Daniela Mormocea wrote:
> Fix line over 80 characters to get rid of checkpatch warning
> 
> Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
> ---
>  drivers/staging/iio/addac/adt7316.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/staging/iio/addac/adt7316.c
> index 6f7891b..be2dfdb 100644
> --- a/drivers/staging/iio/addac/adt7316.c
> +++ b/drivers/staging/iio/addac/adt7316.c
> @@ -2155,7 +2155,8 @@ int adt7316_probe(struct device *dev, struct adt7316_bus *bus,
>  	else
>  		chip->dac_bits = 8;
>  
> -	chip->ldac_pin = devm_gpiod_get_optional(dev, "adi,ldac", GPIOD_OUT_LOW);
> +	chip->ldac_pin = devm_gpiod_get_optional(dev,
> +						"adi,ldac", GPIOD_OUT_LOW);

Shouldn't this be:
	chip->ldac_pin = devm_gpiod_get_optional(dev, "adi,ldac",
						 GPIOD_OUT_LOW);
?

thanks,

greg k-h

