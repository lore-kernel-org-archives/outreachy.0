X-GM-THRID: 6808597928719941632
X-Received: by 2002:aca:bb83:: with SMTP id l125mr3894943oif.122.1585317148588;
        Fri, 27 Mar 2020 06:52:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:ec0a:: with SMTP id k10ls3750675oih.8.gmail; Fri, 27 Mar
 2020 06:52:27 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvSB2wiihgzhQg04fl1AENUdTIeOctlBzkkQPAMCv/6GCVlsAbdzLWwnakcNfUjw/oKBHh1
X-Received: by 2002:a54:4e0e:: with SMTP id a14mr4051615oiy.88.1585317147265;
        Fri, 27 Mar 2020 06:52:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585317147; cv=none;
        d=google.com; s=arc-20160816;
        b=O1M4Bq88K0GtbI69wTiXNqVFmwgRbIEup9616mb8BqNtlyqyg03O30rnmZcpD6cf7Z
         EKZ05AabfvlZ5ZlKviNZLb+72AsY11QB06oQkraRiIiZyZ30dToUAMnSKF6SCZSPc/YZ
         ApAKAYy+0IcdAEjp3+FouMceQM+aDZ7ISUqvjKelIQFOtjNCHi/7BbLqGRWalkaUAmty
         X1zMxyMT/hJgB5TXKXMWj/EaRwC8oOnzBe1KeqQzVn2szOGrGZLjurw6aKRxuM8QjkNf
         luouizk2Veyf3MsfJEs3O+pgzMkXqaUwTTHvpL5DjWARUdd8v6cnaarLJ75Dgf7xy7Sw
         XNdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=k4ep4ton6DwRGsOyKk2aYZ4EGiOQdvCOiYWz5lj6w2w=;
        b=idIbCqRrP8//JYJmLal9OHxAHWnRKPgk2/PAyuT04zirBYV+LELD77S3/P9QQ/o6rl
         RCLXAb+LDBc2DahERap1weVkE1pPhsrtKhGdHzlvxTnZCEG4rGnwwy8krnHrmX1In9TW
         wfzRsnu3urBnF9s1R3P0ORa/VgETwAagaTUtj3XD+1FdWO4qmHFHkFTK/RaWC89fwoUt
         L/ipdYhblSAIRf7UUO9Z9MwxGCQfAtHFnPO6+IuGB/PinWduFm0hYpYV+hlRwLvV0x1I
         axfAktdNts0PPah/pfMaclx/e9tlKplaKVLWQqQn7Lzp+xWwZLyXwDmQ7Cgda27FA2vS
         +Qcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uXGA07y3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m132si470930oig.3.2020.03.27.06.52.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Mar 2020 06:52:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uXGA07y3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D306A206F6;
	Fri, 27 Mar 2020 13:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585317146;
	bh=456bFGA9ShUP5iA0wJYJBqRZ1cpqPqOpNJacStwzuSI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uXGA07y3ywqdsOfIeEQcdq7QEiEKobCz3ZndTpYqE8ZLwBSWje6h0A754QUnGnX9p
	 V520LYrQ2Ym+wV8X2D4YyGeXmtP75BBHdvh5i+/7Wl02cX8ifebIMiWDcojGuVSGdo
	 45ENrSFXynbXueGZEIcFMYNfoK69ciirAVVPQ8YM=
Date: Fri, 27 Mar 2020 14:52:23 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4] staging: qlge: Adjust end of block comment
Message-ID: <20200327135223.GA2433128@kroah.com>
References: <20200327134906.GA10286@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200327134906.GA10286@siyah2>

On Fri, Mar 27, 2020 at 04:49:06PM +0300, Gokce Kuler wrote:
> Drop an unnecessary * on the last line of a block comment to follow the Linux kernel coding conventions.
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>

Take some time, and review what you did here and see that there is no
rush.  Go make a cup of tea/coffee/beer/whatever and take a pause.

Then, fix the line-wrap, add a new line before the signed-off-by: line,
and run the result through checkpatch.pl to ensure that all looks good
before sending it out again.

thanks,

greg k-h

