X-GM-THRID: 6802713893115265024
X-Received: by 2002:a05:6512:304c:: with SMTP id b12mr1187042lfb.196.1583910198655;
        Wed, 11 Mar 2020 00:03:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:b24a:: with SMTP id n10ls168004ljm.5.gmail; Wed, 11 Mar
 2020 00:03:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu4RsAFE23+vzKPDF9YVSV16C5bocIzjdBUj3DwYqxqQD4xEnb0dY+FDcsQp+pBnbhdMHG0
X-Received: by 2002:a2e:b008:: with SMTP id y8mr1245690ljk.35.1583910197159;
        Wed, 11 Mar 2020 00:03:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583910197; cv=none;
        d=google.com; s=arc-20160816;
        b=qZIWBX40PPfgvDie7FG15cKFdORaHg6o1BvumFXgq+DMhwD+ItfI9TsJgjuadYeRIc
         IMpY2rDb3z9+sV8TRDxbcVad1wUoeo5F+wfZn/gElXPyCmaJbW3OTxPCBHoXZaIYtwi8
         HIlSifEyqwmsOBT/BS1chIWIG5amWlaQscr6ePsYF8bGsym+LZ8lkz15ivseiAc2Gcuv
         sEpjdHfp21HevDARd/4OiEp3JNWbWVCneXUKyKP5VCm8+VImVW1uNn3yNIz4y1jkq/gf
         HbZhf36tr8Im0NAe7W+mI1JdeoX97RgLruiHrwvajmgXlCzf3Xr0g3FychI8LTsTgJUE
         DCow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=3vXFRne6A0AMrbxTp0o8C23MvOIGwaNSfA2P01FW9Kk=;
        b=lTliLHljfga0Qu9+s+u9Mzdx3arOilHcWUVv54QHOc1zsNcxbSp/Y4LrXh8dY5pLk0
         XCxqCc+Q0jw10q93BQTo8tqm7LPANPMEZNguwMUyH7p5GHS+m8ajO50ERqqLOyMSvC5Z
         BSKZf0bi8c7sS0KK7K+YMeyC3jrdwu+b4uA0fw/PFuKeQNbyUZY6HozGrZ+CdB7t2R4g
         xrRQN9DX+OmppbqSa1R6dZ+WTEPs3c/nsgOh6UIdVGrJQ7PkwT9jQne5eXmD8PRsMF8r
         dcM/VidaK54xnVOiOjcyZbZ+Z/cusVRcUAKRYDJcs375hGpc6jtKY5hN5gzOrA3RVcIs
         M0xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b="J/J1VD00";
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=oWDoZpiu;
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.24 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com. [64.147.123.24])
        by gmr-mx.google.com with ESMTPS id p14si60881lfo.0.2020.03.11.00.03.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 00:03:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 64.147.123.24 as permitted sender) client-ip=64.147.123.24;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b="J/J1VD00";
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=oWDoZpiu;
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.24 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id DE0645C8;
	Wed, 11 Mar 2020 03:03:13 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Wed, 11 Mar 2020 03:03:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=3vXFRne6A0AMrbxTp0o8C23MvOI
	GwaNSfA2P01FW9Kk=; b=J/J1VD00Ff3T/H9hUvXfYq9xV/+64B9QGbzEQD879vu
	oEFE+wAs/I398BZXTrPQMs5RUARdvtm3zMmNZu6MFlxa3ScUt0ZfHQYZyOmmLDcq
	+VDVOEreaElfGBzh1U3eNNErZbTYZDmwdm2JnPBluSTNTLfxIY/iDAu59YCBps3r
	vPlHzOc5bU1mnITbAdKJUqS84Jncx/iLKfvqc3RnDjvpZsTaDpoE+ni3MIN25KTo
	ZC0UgT/NzN9YRXr4ivWCS+uogckqoUsoQJxwz4BbOXh4RYUzeubvDRh6RqSRaFZo
	GTSubfZvaLCGfRooHZGF7PQyANj3PBI0h0nSvqmGiTg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=3vXFRn
	e6A0AMrbxTp0o8C23MvOIGwaNSfA2P01FW9Kk=; b=oWDoZpiuVDNcibLDJmhhho
	fCp6FqTg+o6iv6XQwNR5uG9ZbQRcAFf4LARp6fZdBO4tntEppU9TapRqwwnpm/fp
	cvDSZRYfxHcTxlCkyZn6TSXm6g+xRg7xYikTK19q38YBz59GwEEZFAol9e+kHAEM
	Oc31fS3movufHN7v67yTu/WCzh0PYXlNoh5uP8haKg8E349YNNKfUuxjtWyNLl59
	DTK3+UXr1TwY16jBRMxyFQ/yoINNaKx7zupy0M7HxFTs+llWncDK9/5g+XTI4Px2
	oDNcbIFKYbuP14WnIXsl7ZxAwAe0orgzhnut3obsqctpnajtZINTjv6xMDhrGZ5Q
	==
X-ME-Sender: <xms:MY1oXmyVBAHpRzMe6A7dj7DLTUt0lrrMR-EoQo26KaUZ10To4uj7Aw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedruddvuddguddtgecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttd
    ertddttddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhm
    qeenucfkphepkeefrdekiedrkeelrddutdejnecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:MY1oXmic55WQ0YkFD-k4WMaUTRD76fHGdXR6yTonD352y59JI6YTyw>
    <xmx:MY1oXjX1rQtAckVFpqoBerYsSFg4mkyC0OSnfUJ0QR050aHxElMNNg>
    <xmx:MY1oXg0POlWaWHgJDcpHAGLuNGFOrbezSczPgfqjZyDv62h9ASyXsQ>
    <xmx:MY1oXr90poiqo9ydarcxe7fGeiZZ0lahK7gWH80aSnPBMPFvD3CZuA>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id F12BA30611FB;
	Wed, 11 Mar 2020 03:03:12 -0400 (EDT)
Date: Wed, 11 Mar 2020 08:03:11 +0100
From: Greg KH <greg@kroah.com>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: ni_pcimio: remove
 old unused code
Message-ID: <20200311070311.GC3572180@kroah.com>
References: <20200310224405.GA9838@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200310224405.GA9838@deeUbuntu>

On Wed, Mar 11, 2020 at 04:14:08AM +0530, Deepak R Varma wrote:
> Found multiple #if 0 code blocks that appear to have never been used.
> Additinal comments around intended functionality may be introduced
> separately. As these commented code blocks do not appear to be
> ever useful, they can be removed.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>  drivers/staging/comedi/drivers/ni_pcimio.c | 48 ----------------------
>  1 file changed, 48 deletions(-)

Why did you send this same patch twice?

confused,

greg k-h

