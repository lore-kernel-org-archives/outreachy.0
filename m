X-GM-THRID: 6659918417753014272
X-Received: by 2002:a0c:b08f:: with SMTP id o15mr10214455qvc.36.1550686004125;
        Wed, 20 Feb 2019 10:06:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:7344:: with SMTP id o65ls9906890qkc.8.gmail; Wed, 20 Feb
 2019 10:06:43 -0800 (PST)
X-Received: by 2002:a37:a5c1:: with SMTP id o184mr19831828qke.42.1550686003464;
        Wed, 20 Feb 2019 10:06:43 -0800 (PST)
Received: by 2002:a37:788:0:0:0:0:0 with SMTP id 130msqkh;
        Wed, 20 Feb 2019 06:46:21 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYKuDvEmXEE68twQGxUBUMY7zHwfgRcgnkGWJOrtUQjrvTe2JXGe30xN5loUS3XysH8T+U6
X-Received: by 2002:a50:b781:: with SMTP id h1mr4432341ede.3.1550673981060;
        Wed, 20 Feb 2019 06:46:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550673981; cv=none;
        d=google.com; s=arc-20160816;
        b=USQsLDb3MPk1mPF/m8l7vTaOzjVZ0+h4JZp0WwjgFBN57NO0fMXAOw+ac8OCNTsfOl
         ja3J7IHMxVy6ZXV5/G8qqgN8vO5xQ0Wfh6DKHXh2NLNTonzlC3VoQbFqObPeofpXbpSm
         i42TwloTfdXapUTR5DHsJpXMEm+JNnuKES3sS5xPdeJ7DRVPp7xjji5N4XY53KmOeIxa
         59fIWlWR8MMScROChJIh57dHvxUr0POafyCbcv3QUoVSFRJ//uvY3fbMtu4rAQ+//Yeq
         Ot1Tv1Tf1zuWG4hP20+aj2jO10mCdoOM5IbvpNwFOW7Xkuu0La19RzUBgW5/m3F7vfW1
         f3/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=FBSGO7mNl/Pi41kqMJI6nQsXA6eeq25iro3uZA1HouE=;
        b=epDI7hhjTbcsG9fHFAnHyB1DJFqPyffA7lRs6hpN1VjKbj0X5NgQR9PLWsAXVxqXoM
         ppZHghDFFH+GIV2DCD6j7qtjJbusJOHPwrwum+evJ9Vor0qOn7D4FidNXih8Gj0FI+tD
         qLD6oxtOc6bDjpzlzEYt/8JJi9pDRC2Dfzn2Ziu2rJg/z7zEbS/4SdjWjRJPs4xS+SJ6
         NhQagHYzZA/7zhbSjOLPOF+TaCDaJb/sCKuhXYnVLSh/x1rDvDW1lqoj44YXD1tHUpsr
         lQGDTYfFDohRvLqsd0U46DgzGyfORkgGiM0bOfOC7z9UxEmAZTjc6s8jUFnxylodIjlz
         YBJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lunn.ch header.s=20171124 header.b=tY1Tfumj;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Return-Path: <andrew@lunn.ch>
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id u9si1085879edp.1.2019.02.20.06.46.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 20 Feb 2019 06:46:16 -0800 (PST)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@lunn.ch header.s=20171124 header.b=tY1Tfumj;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=FBSGO7mNl/Pi41kqMJI6nQsXA6eeq25iro3uZA1HouE=; b=tY1TfumjBTSrc3bM+BDdF7d+IY
	fuvGf4liP/fROP/9hDXIbhiNxkBE4CabUyFtX+OBCME2JJnqky/TZt9eZow5NbeFS8cRKbTFjo8q4
	ah6/cafI1yhSF5Q2mxQNbOt0rgaP7bV3qRAZo+dn04N0ujmB35SJkjWFGvGeauNEu+jw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
	(envelope-from <andrew@lunn.ch>)
	id 1gwT8Y-0006a8-Tr; Wed, 20 Feb 2019 15:46:14 +0100
Date: Wed, 20 Feb 2019 15:46:14 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Himadri Pandya <himadri18.07@gmail.com>
Cc: outreachy-kernel@googlegroups.com, julia.lawall@lip6.fr,
	f.fainelli@gmail.com, davem@davemloft.net, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] net: dsa: add missing of_node_put
Message-ID: <20190220144614.GG13075@lunn.ch>
References: <20190220032432.2878-1-himadri18.07@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190220032432.2878-1-himadri18.07@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Feb 20, 2019 at 08:54:32AM +0530, Himadri Pandya wrote:
> Decrement the reference count on port while returning out of the loop.
> 
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>

Hi Himadri

Thanks for the patch. The code changes themselves look good.

Netdev has a few additional processes for submitting patches. Please
take a look at

https://www.kernel.org/doc/Documentation/networking/netdev-FAQ.txt

Please base this patch on net-next.

Thanks
	Andrew

