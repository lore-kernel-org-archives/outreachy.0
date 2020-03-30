X-GM-THRID: 6809017254478348288
X-Received: by 2002:a54:4e13:: with SMTP id a19mr8135135oiy.108.1585582748454;
        Mon, 30 Mar 2020 08:39:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6750:: with SMTP id w16ls6579007otm.4.gmail; Mon, 30 Mar
 2020 08:39:07 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsRB6Pts1ZtmZedcGcWJGvPdnSlqsZHlUJrVeFY0T7aBTo5xpeC+oV/okwOBKUklyVFDqXb
X-Received: by 2002:a9d:544:: with SMTP id 62mr9670318otw.355.1585582747365;
        Mon, 30 Mar 2020 08:39:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585582747; cv=none;
        d=google.com; s=arc-20160816;
        b=yag6oeL3UhWGSgk/3HSy0q1SOPy5Vjl3jNKW5Tfw6RUHJn0J2V5sl+P6vb6jxhciLq
         KUYWIXa1QWVg9fNtu97iW9bU5lGnX91N6QnjapHb5WyYdMdub6ZfdGcqeH1yqFodRaBW
         l1hShBn8SxgOo3BIq5S8ar88tid3iF2Oc2pCmWXB9o5OwqEFC4/n+DLi/3Ct+WtCb7n8
         98F6K+FZ7YiABH37ZA7LFvboJ/1SRTSxhcounDeszDijubjqT+B8d86oliT7bR/7xgvP
         5kgPtcOaIw9Wd2B2PGkHbsJ+FMyTZRUY602SeN+a1zlgZKJuqSamC4hV21QLIghVbBks
         xOjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=BmldSv04UOLUuCxS2Fw2OmfIT4ahSp1Zti4hqCxXGiU=;
        b=ivtrWa0y8grQjwdL2rIVsu5iRKdm7HV7XpOUGjrBJ6SketQtUqx4zapOIdBq29wT+n
         F+2f7a4i4010xNU0EItQSw2jpErpf6IkKWIAbG26OMyMrMtBwRyRc90FMAI7F2RVMe1i
         f200qtiRZ0qdFtAIy4JpBGiYGCP89KdFH5jlSbwLBauOQfruY2iqKIxsZdPwAe+vUSTt
         0AiX169bSLQy0g9rDK68cx1BmJvk644zUSa6f7kHX5PGdiqadqmEexjn4lZWvnyH8HLw
         X+QcRetrHkrEJOvbQ9OaNmvQXksz1BfZxPfz1007Wx8c8ICROX2eAU9Nxf7y2GpC+bfY
         H9DA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Q6BqyIvS;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p29si616343oof.2.2020.03.30.08.39.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 08:39:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Q6BqyIvS;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id F23702072E;
	Mon, 30 Mar 2020 15:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585582746;
	bh=BmldSv04UOLUuCxS2Fw2OmfIT4ahSp1Zti4hqCxXGiU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Q6BqyIvS1IFOER2u6n4UH6dOR3mRnT+36UMIDNZJ8//VsAozobCf3vd9n+gome8Ki
	 jfRlU39SoV9GEPfPSGM2vTvjvEZJAVcfFYqEAood0vZ+2Alem3+JQTAvldg0vFs4z4
	 19tpMm3lXSAsI7rG1i7uPAcpDw/xNKa7UZZlEtOQ=
Date: Mon, 30 Mar 2020 17:39:04 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: wlan-ng: rearrange line exceeding 80 characters
Message-ID: <20200330153904.GB772452@kroah.com>
References: <20200327222426.GA29189@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200327222426.GA29189@siyah2>

On Sat, Mar 28, 2020 at 01:24:26AM +0300, Gokce Kuler wrote:
> Moved from the comma character to the bottom line after for it exceeds 80 characters.

The irony of this sentance being longer than 80 characters is not lost
on me...

Please fix that up.

Also, the wording is odd, try looking at other patches that did this
same type of thing and use what they did.

thanks,

greg k-h

