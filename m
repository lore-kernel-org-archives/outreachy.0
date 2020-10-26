X-GM-THRID: 6883028084998537216
X-Received: by 2002:a0c:a046:: with SMTP id b64mr15356957qva.55.1603735423127;
        Mon, 26 Oct 2020 11:03:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:2c09:: with SMTP id d9ls1760548qta.1.gmail; Mon, 26 Oct
 2020 11:03:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzCZL7KQc99DBGUEaej3EbekVdi0mNLkuwp0tcAyAo0Z80/1slNq2BgwAgegFjLPd7pdizP
X-Received: by 2002:ac8:46c1:: with SMTP id h1mr18600070qto.361.1603735421464;
        Mon, 26 Oct 2020 11:03:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603735421; cv=none;
        d=google.com; s=arc-20160816;
        b=ruDylEyTOHSDn3BCRsHocz5oNXqADRpAztAKzvpUmVsBJXkGnZzHJ9rzl6EMqccfX3
         6b0BBBjkepRP/YV0bo5zLbJFI9WD1mcVh1j8GO4uaeABCiTjyqhcwuippw5AAY+Pm8Dd
         xPggsXiL6Kt2ALZMwTRxAP8ZDNE0urVx142dF3eDP3G8lvJFVUpQB6tCFhhaKjFHSVoO
         3fROLZmVpTylZbhMXJ+mAlNVfn7J9OHctzyNuBv84HoQ7a6xd7FzmNZh5bCkdzPltds1
         wO8SO17y6JextBloG8P7rO4G2EymV9jyoqzFOzEaL0mxiGWjS/PmRVlYybFOKUywTBd9
         pZOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=n2uQ0vigAEM39YlPyZqi5YNmE49gfR0uIARRUvCUItM=;
        b=0trpgVLiNDTFQnHus0gLJQMAcdKqE2nXfyRksjgCZkK0sQmtxRdcw5o04dvMkCQWoi
         JngCLwlzCpi57Cqoe9ct0Podyk/7PqMKjDGuuYkxpUlWUV5ZI6O8OK9hG5Uo0ld9+VLO
         XK0Tk0i+lo8V5hwl1YfJzauJHxsIZ5NmVZJgRy7+22MxIwC6rlasN0Mj0O3nvtHIk3DH
         i3YSDQZYJl1cP0GJjoHuXuIjAjsqZFNsrt6v1PWE3Rby+/ImGEmg5N8/IGNdOts4cKNm
         WSVG+WHxyN97cw8ApKVekqqjG2ckfetyGEEy4ZbEiJbasCsdlBKWPK82ubJqvIr/zmS5
         VSFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gL7ODUbR;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id b4si124916qtx.0.2020.10.26.11.03.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 11:03:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gL7ODUbR;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id t22so5099148plr.9
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2020 11:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=n2uQ0vigAEM39YlPyZqi5YNmE49gfR0uIARRUvCUItM=;
        b=gL7ODUbRzRw3GJNYGC6DcW0HY4M5gv36vX/gGdbfZmihFiwJYrL1ku0C6alsCKG5Ts
         ZSGL/Zajh0DhacTCeILzg9490yqkUEoxULKwzt6q69hapPOiLUZZ36efq9am9GtpXyyK
         Q7OdrcMk9UrnmpkYNjS0wDRa3jOP7kV6TY0QxMwXSlB5lz3YKeWETIlUJnAeXh0z7zZK
         C+14SQrRCr3oUT/isIlN8S6BPbh4DinOA3nRyd9NTJSZK/pvbtuNRxMBcinG9pLjA/OH
         2uzisgqLcvkcalay6+eeCqelNbCW69L1mgwNWQ5+5/8QwkG7KQEDueDh63m8D0mlF/wQ
         I8pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=n2uQ0vigAEM39YlPyZqi5YNmE49gfR0uIARRUvCUItM=;
        b=fe0jTU9KwDF/gKspWooUHj6EOBNQeuOBZ3Yavd+kzklR1qsfpWa9m6LcaL7u1ZvruH
         KYQCuZ3JnWgDpdzq6JI+6ugdPVgm2isDPcer6OVPPrB8LXf0HGaOG5za6HuLE4NcMo5p
         t/P5orhRVTbmEnPDEVqHgRUBSxbp5Vt71dz4JhcLBvTXSyLn0FW/cOmECpWzlcHZEUsn
         izNZ3JxKRv+IrJS7DfhUSBj+UoQKGCCR3T+L9q1naYBYcOvN5lnIarZdzzvCzioSmKjI
         4xiOrSVKO9A1eBWqbTcnCVeqpbRvESCaUn8f/PoyV1opa7EAbpXPCpOXGcOVzk5S4n+N
         JNag==
X-Gm-Message-State: AOAM531Hm7oqYgyRHWdPiz5nkV+qRqOscCM04MQyrYsvKtYH2w4IlR5B
	G2ULq7qL8M5kNkXdCaH/NBc=
X-Received: by 2002:a17:902:143:b029:d2:564a:5de8 with SMTP id 61-20020a1709020143b02900d2564a5de8mr15223245plb.74.1603735420723;
        Mon, 26 Oct 2020 11:03:40 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from my--box ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id e20sm12101465pfi.30.2020.10.26.11.03.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 11:03:40 -0700 (PDT)
Date: Mon, 26 Oct 2020 23:33:34 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Steve Longerbeam <slongerbeam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, linux-media@vger.kernel.org
Subject: Re: [PATCH v5 1/2] staging: media: imx: remove commented code
Message-ID: <20201026180334.GB6047@my--box>
References: <9fd1e7dd9e8f944b520f2a789e66e458aeb7b555.1602869338.git.mh12gx2825@gmail.com>
 <20201026040017.GA5074@my--box>
 <20201026055631.GA779791@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201026055631.GA779791@kroah.com>

On Mon, Oct 26, 2020 at 06:56:31AM +0100, Greg Kroah-Hartman wrote:
> On Mon, Oct 26, 2020 at 09:30:17AM +0530, Deepak R Varma wrote:
> > On Fri, Oct 16, 2020 at 11:10:33PM +0530, Deepak R Varma wrote:
> > 
> > Hello All,
> > Request for review / ack of this patch.
> 
> Please never top-post :(

Apologies. Will keep this in mind going forward.

> 
> The merge window only opened up a few hours ago, give maintainers time
> to get to patches (like 2 weeks now).  Also remember, for the outreachy
> project, drivers/staging/media/ patches are not considered and take much
> longer to get reviewed and accepted, as the outreachy documentation
> states.

We had both the patches review acked by Steve L. However, they did not
make it to your list of accepted patches. Hence was checking if there is
anything more needed from me to have the patches get onto your acceptance.

No problem. I will wait for the normal course be followed.

Thank you as always :)
Deepak.

> 
> good luck!
> 
> greg k-h

