X-GM-THRID: 6667588004037525504
X-Received: by 2002:a02:3941:: with SMTP id w1mr3260139jae.7.1552419699488;
        Tue, 12 Mar 2019 12:41:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:194d:: with SMTP id b74ls1259523itb.3.canary-gmail; Tue,
 12 Mar 2019 12:41:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwl0CSiwJKo6crqjvZD+UMczEk8csn95ADyZgh69Kwxbp/D+Gxfza1e/qp2hIDqOMORN4vH
X-Received: by 2002:a24:7a0d:: with SMTP id a13mr1619745itc.20.1552419698490;
        Tue, 12 Mar 2019 12:41:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552419698; cv=none;
        d=google.com; s=arc-20160816;
        b=ZQ3RtHQCprX6oDr7k4TjiA+wDhjtMebo9j7FRwKKID20aXNhEUYR+8qVYXFjD4JbQh
         MBaan+0uP4YA8nI49Pp36eHc0rBwvKqyAFrnmYPjBsfTqe2Zbce+BeuPBkz8dXgIokO8
         S/lncoDeqwz1adFCTFqnckVtAWTlL4KxEVk/BZaA2Lsu3OUvRwnZDWEr3DyWhm6VTi8p
         W3Cg2ixrVQfCyVS2yhwTG5HEKgAI4YFRXgoUAqXbrm0R0lKN0h0X7IGiGQat7gVF4pi8
         ZTcZLXC5Fclm5KjJdYkZG7RvFO3XjvW0ynt8EeM94MD758a0hKTkHnhP833nX/WTVQ3/
         TESA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=vNFGODbtAFUhTos9MWY6NjUmKLDqBLAPSj7I9EyyAXI=;
        b=WjZTNCYGF4kMceQKrl8xybDEX0h4iBfoC+s6+noIODpsyGEmpj9Vd2yM0TvW0jRZf1
         9MJx62jJZWvVdeW26iPmoA8tK8mWm70sGWkFv6FbnCt92ydNs+D5HbTKgJXRQ2KLMufw
         RD9LGog8F1zWW0T+20DKIjJAKMF/LM1sS1e3RKhRAjycagz2/2LnopNP67hJgWMfmUVi
         wBxfY32M2mrXHusYKTkG4RCwMj3fFeGch54zPT5StIl+tTIqzIcNBE5V3KSBlV+qBEHO
         jr9yQDuXqnANgmAsTln3jMpigSR8D+mBEIfeFzk/BHPi3YT7d6vbIDXlBQmV2k29emEd
         UGsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=eNSvKaEd;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y204si135587itb.0.2019.03.12.12.41.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 12:41:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=eNSvKaEd;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.133.8.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 92E12214AE;
	Tue, 12 Mar 2019 19:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552419697;
	bh=vNFGODbtAFUhTos9MWY6NjUmKLDqBLAPSj7I9EyyAXI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eNSvKaEdsRAVsdkfozlDXIdgS+t+S00Sg+YoVGxn+CURDs+vzDGQ4KGgL8waWyeFJ
	 NQtAY839jXz7C6OMa0ZOTQDxAtuqBzw63uBY8hIDefETgwvJiUDElbYgADjPucOP61
	 qCxu1ygOVFPQSDMSAn8l6kf64gDOTfTgdo8g5XUE=
Date: Tue, 12 Mar 2019 12:41:37 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Reddy <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>,
	sanjana99reddy99@gmail.con
Subject: Re: [PATCH] Staging: rtl8188eu: rtw_recv.c: fixed a space
 indentation issue
Message-ID: <20190312194137.GA29260@kroah.com>
References: <CAO-bXGAEHi=_uf7jD+1_+iNhx594rRAak_OBfTVpGenhVUJ2Xg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAO-bXGAEHi=_uf7jD+1_+iNhx594rRAak_OBfTVpGenhVUJ2Xg@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Wed, Mar 13, 2019 at 12:56:34AM +0530, Sanjana Reddy wrote:
> Fixed a space in 2 lines which removed warnings.
> Signed-off-by: Sanjana <sanjana99reddy99@gmail.com>

Please put a blank line between the changelog text and your
signed-off-by: line, otherwise the tools will choke :(

I think checkpatch.pl will catch this, did you run it against your
patch?

thanks,

greg k-h

