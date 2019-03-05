X-GM-THRID: 6664861839759769600
X-Received: by 2002:a6b:ea12:: with SMTP id m18mr163088ioc.35.1551797007303;
        Tue, 05 Mar 2019 06:43:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5e:a91a:: with SMTP id c26ls7717594iod.0.gmail; Tue, 05 Mar
 2019 06:43:26 -0800 (PST)
X-Google-Smtp-Source: APXvYqyVtkGRQI/J0J1BD6BUykm9lTevDFhLPtbBnEEBK8uu8I+szjeTltJbgdpoLxHUUdNivqSM
X-Received: by 2002:a5e:c60c:: with SMTP id f12mr169475iok.17.1551797006238;
        Tue, 05 Mar 2019 06:43:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551797006; cv=none;
        d=google.com; s=arc-20160816;
        b=lETdFfVdGZ9Y9zfLsed/h60TslQmRoELG+m06WVOLPHD1iaAyMn4bX9O+abTVzPb69
         yempS+c89ZKahIGxrZQGVKjvQvqEqY0Ewviz0nyMT8XkyCCRyKs4qUxIy+hXNUc9Phry
         mVa3IsBLc7dnFBktwP893yplP1RrRNc45X1fR7yHB/dIRyhXKk92nyWST6C6oT+6QXrM
         IGdIOJNS2TpViTjVlyqlHzlP97lUtObpJvJL8gqNKCGyCSZ/3PUy6YdyB/kp1y2iGbOo
         AryhQ5/N+pbp2ripbCz6azTJU+1uyrcj4/rfx8gfqkqX1UXglIx6hd/LlPou0nAECx76
         kj6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=TxxKRCK/4Ygxv6b388jNm9JytRqE2j89R918UVEtePs=;
        b=HDo+VckUNBMIgZDq+sr6BDhBfTncmzB944cAgGxD8LLRubUFkGYNoDX6Xibi4qI2s5
         mmMUGn/bYAb3pZfEu0hg1tQY7KXvwZO7eZIrtVPGKlgjc6e/v9ngiqU8O41pER9wb4A8
         KvpPZPSSCzU+M1qq5Htvq7Cgd7RMjUXPtnq421Duq8Arfa9kq0b9q99+P6WTv0B+KfoD
         3nFAQkdOJD6kJmmk1nINm0p5OcFGrN5GwaDQVp/lUjHUC0+/6fuLkKeiTaUUgszzqtsN
         gtc1r+1NIfW8BdRTYZRbmE7CSLSxW6l8vC+94MG18/vPFuKODOw/TEdIZOeajdPwQJq5
         R7TA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=j+OlVi1o;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=5pPXWrAx;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com. [66.111.4.26])
        by gmr-mx.google.com with ESMTPS id x22si592949ita.0.2019.03.05.06.43.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 06:43:25 -0800 (PST)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) client-ip=66.111.4.26;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=j+OlVi1o;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=5pPXWrAx;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 4A66022A8A;
	Tue,  5 Mar 2019 09:43:25 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Tue, 05 Mar 2019 09:43:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=TxxKRCK/4Ygxv6b388jNm9JytRq
	E2j89R918UVEtePs=; b=j+OlVi1oyDtPoWkAdY6G3VDmIEw2jNuLUnoI+9eKgQz
	oyCQTA7bHEDDlwACX5Dbq3Cs/vIb+8mkDYP3bH7Km4khf1VQ5OX9AKQveTRVtCkD
	Ja83gv9Un7ee5o0AgTfWktHE6C2WkhWz+uEmRH/RXEycGDHeEixhMkFkE3AGjZSd
	zztI0j2+Zq7xOMAQQ8GF+qm9hrq35z1hSp2OXKvdW6nYbmQmCpo6hbCBKUP7Kqrp
	VI9vCbSGhyAVb4qqHhaWaYiVy8J48hbeimkbHWB/ooqFsOrcqgvI5H3NJB0lbEdo
	9+TNuVwngXfu7f8uqsU022SDv+IxjdbACuh1oq8FRoQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=TxxKRC
	K/4Ygxv6b388jNm9JytRqE2j89R918UVEtePs=; b=5pPXWrAx4vQ7bdFYjuOXHK
	Q9jfFKE9RFoY0BbIMnAH6rDizJjL2OgutondvwK1g2BdMn/T4TFup8LJgII51cSB
	kbePVYt1QNcKcO/E/ZHDqZjKcAXLZVYjQqlWdFLC/nEH7Z5Sw77oNNwVBHC2uw+F
	hCyGu+stTytmvadodx2EIQbGGT2yj3YRy8O5MVrQYH9VKdutMsFPVXjUvuxwPG+W
	0S8qEO+8QaN4m5AP3YI9w/2bdKu2Ku8GhqyOJLJamwQq649ZV6y89JWcaOG0lV4X
	nyP/s/ZCJKb429YQhYzBZI+red+b3scSdLc96SuI+hLt2gVt6kPklYzcTuYYW3lA
	==
X-ME-Sender: <xms:DIt-XHw__2LzDgBKDX3kgYKYVvJF3jp3xtu_2aKOWmbMUD8nW5XVog>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrfeefgdeilecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucfkphepkeefrdekiedrkeelrddutd
    ejnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomhenucev
    lhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:DIt-XOTuDl6YceeJh1Yq5sK_yHAysP6Zfz1J2sMZ4AB8D273azUO7w>
    <xmx:DIt-XBdviBLBytlTzI4hLjyK1gPiAl2jM_mkTwr1-IG_WB0WwEE8BQ>
    <xmx:DIt-XD7eqEHW9H0h7XTpR1VZ4dWOs_2qjvJmHIzbkHiGJu7sfHx1vQ>
    <xmx:DYt-XK6GqGpNXOvAkKULeCG5focgVBrbk2nXKASFzkTU0YFjWWy7UA>
Received: from localhost (5356596b.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 53D77E4362;
	Tue,  5 Mar 2019 09:43:24 -0500 (EST)
Date: Tue, 5 Mar 2019 15:43:22 +0100
From: Greg KH <greg@kroah.com>
To: Daniela Mormocea <daniela.mormocea@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 4/4] staging: ralink-gdma: Remove
 whitespace and add blank line
Message-ID: <20190305144322.GA18239@kroah.com>
References: <1551790140-19291-1-git-send-email-daniela.mormocea@gmail.com>
 <1551790638-19664-1-git-send-email-daniela.mormocea@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1551790638-19664-1-git-send-email-daniela.mormocea@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Mar 05, 2019 at 02:57:18PM +0200, Daniela Mormocea wrote:
> Delete unnecessary whitespace after cast, and
> add blank line after declarations to avoid warnings.
> 
> Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
> ---
> Changes in v2:
> -make these a patch series
> 
>  drivers/staging/ralink-gdma/ralink-gdma.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
> index 44a65e2..012213f 100644
> --- a/drivers/staging/ralink-gdma/ralink-gdma.c
> +++ b/drivers/staging/ralink-gdma/ralink-gdma.c
> @@ -127,6 +127,7 @@ struct gdma_dma_dev {
>  	struct gdma_data *data;
>  	void __iomem *base;
>  	struct tasklet_struct task;
> +
>  	volatile unsigned long chan_issued;
>  	atomic_t cnt;

Checkpatch is wrong here, there should not be an extra line :(

It's getting confused as the code should not have 'volatile', but that's
a change that is much more complex to make.

>  
> @@ -818,7 +819,7 @@ static int gdma_dma_probe(struct platform_device *pdev)
>  	match = of_match_device(gdma_of_match_table, &pdev->dev);
>  	if (!match)
>  		return -EINVAL;
> -	data = (struct gdma_data *) match->data;
> +	data = (struct gdma_data *)match->data;

this one is fine.

Why did you do two different types of thing in the same patch?  Even if
both of them were ok, I would have asked you to split this into two
different patches.

The other 3 patches were fine, just fix this one up and resend it.

thanks,

greg k-h

