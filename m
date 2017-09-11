X-GM-THRID: 6463828664038457344
X-Received: by 10.46.18.149 with SMTP id 21mr563182ljs.28.1505148573629;
        Mon, 11 Sep 2017 09:49:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.218.193 with SMTP id r184ls1277389wmg.13.gmail; Mon, 11 Sep
 2017 09:49:32 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb4TJzWiWRZwRG2Vkow9VOAxxuL+KmRJwAerTwCNf16CVOtXP8y2jmdFrr08vUoN9iNKeT1P
X-Received: by 10.223.169.144 with SMTP id b16mr652881wrd.26.1505148572441;
        Mon, 11 Sep 2017 09:49:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505148572; cv=none;
        d=google.com; s=arc-20160816;
        b=IwcxrozhDPMZtRnoszRAt9lFQzEjz1pjCe2RvaQxdtpaFpcbRn/TuriaCTFKeYizNr
         hXBw7sSyrzCjvomff1FwoZVRFfsyQnqkoUUslvHBAdoF1I/OFQY0fvRXgtuXODYXo5vh
         SQ+7VOVSNKWxr4azoZCQ8tRC8/WBiJDHRgvlx9tnlAw1gzCbhjfj4vf1qlLrO3YA/N8d
         fpVMF4wrKTWOUVeFMAAiYj7WQMkuSwHaq7UmWMvGtx1m1WeJ4MOnUEj7GA3mxomUlDuC
         hn8QNcHcXfe6Jd0nNCpQyASLYxvHVFVWrbXuNSDknTb7eU0IWis1gFP6ux7pWA1gFNuu
         PxhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=q7IxPNuLg+MFVNdvGanOqRM25nlpr6rCwsU58Q9LZnU=;
        b=IKk/z4JporIaqSPMMcJ4MRW2baVyTpy25KAXokvlXt99mHj+mJei/vwy1kDNX8GxyT
         ehvlkkDm+8oReA8nKQcoTWCBxPMgys+zksVylXiED6rzq9u4puOurRyLqxPCeLIi525k
         khQfKX6y7p1kTq3waG6hIks+93hVZwTeQdLNuweoAkLxz44Md4vwlu2xpFNiikICHOoq
         GuDdSp1gRbeVa/lCqkg87YFHR3Ak7wbfToi1ZvwBAyr2EhoiA7iVkhigHWznWJWnwbYL
         1GvITGMcE25m+UP6U+XUssrV2Ojn8zaZJKzOrK+Sb4i8TWH7RevKS0yokYY71BQ8CvMi
         PuKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=VqB5s9dE;
       spf=neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com. [66.111.4.25])
        by gmr-mx.google.com with ESMTPS id k18si542143wmd.1.2017.09.11.09.49.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 09:49:32 -0700 (PDT)
Received-SPF: neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) client-ip=66.111.4.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=VqB5s9dE;
       spf=neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 65CFE20A7C;
	Mon, 11 Sep 2017 12:49:31 -0400 (EDT)
Received: from frontend1 ([10.202.2.160])
  by compute6.internal (MEProxy); Mon, 11 Sep 2017 12:49:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-sender:x-me-sender:x-sasl-enc:x-sasl-enc; s=
	fm1; bh=q7IxPNuLg+MFVNdvGanOqRM25nlpr6rCwsU58Q9LZnU=; b=VqB5s9dE
	iefZDyBB+RFoh/tYmfNxJAyWT6Jp+5MIRKqeLi/VtaGzPVCx1e2HMx9OjCOdmnzL
	u1yND2biLz9qBIBymvarMukjabyWCDq5QARxRl18e8209nbPcbzK1EMNyWkPrdfK
	W/2XCgX5au0BT16TWh12QIkhRD2/hpLwaGiGlxHbUu1t7yA69EMVIFs0EQvI0pNY
	zp8xAvB5zvXmUI7O5IiJiaR4PCNIlZ8lNC5EhQzOyBxM7nzN2xabHLqeXKWGp+Fh
	izPYUr39ap6jUe6s5OQpmCoSx5RzElHhFczU1qt2LD9xavnyjKFwNXv6aItcHb06
	rAAsySj2ej3SFg==
X-ME-Sender: <xms:m762WbYfwYdPyosP6j_EIwYRZhL-AP7KanCXQiBvtyYCA4bwnSxP6Q>
X-Sasl-enc: ZAHAh13A1l8BfSzHDVafRkjznYT8HtzRwPPcqhfuO/Xx 1505148571
Received: from localhost (unknown [12.145.98.253])
	by mail.messagingengine.com (Postfix) with ESMTPA id 0A70A7FA7D;
	Mon, 11 Sep 2017 12:49:30 -0400 (EDT)
Date: Mon, 11 Sep 2017 09:49:30 -0700
From: Greg KH <greg@kroah.com>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2] staging: rtl8723bs: Change
 coding style to (foo *bar)
Message-ID: <20170911164930.GA19183@kroah.com>
References: <1504977216-12686-1-git-send-email-harshasharmaiitr@gmail.com>
 <20170911163810.GA3423@kroah.com>
 <6da9eaf6-c92b-4781-ad28-0ac41e84e782@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6da9eaf6-c92b-4781-ad28-0ac41e84e782@googlegroups.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Mon, Sep 11, 2017 at 09:44:41AM -0700, Harsha Sharma wrote:
> 
> 
> On Monday, September 11, 2017 at 10:08:13 PM UTC+5:30, gregkh wrote:
> 
>     On Sat, Sep 09, 2017 at 10:43:36PM +0530, Harsha Sharma wrote:
>     > This coding style (foo *bar) is more common for the kernel code.
>     > Change foo* bar to foo *bar.
>     > Change foo * bar to foo *bar.
>     > Change (foo*) to (foo *).
>     >
>     > Signed-off-by: Harsha Sharma <harshash...@gmail.com>
>     > ---
>     > Change in v2:
>     > �-Updated log message and subject
> 
>     Does not apply to my tree :(
> 
> �
> Do I need to make any changes in this patch ?

If you want it applied, yes, you do :)

Please rebase it against my staging-testing branch and resend it.

thanks,

greg k-h

