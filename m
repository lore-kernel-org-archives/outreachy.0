Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.221.44
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793699921;
	b=pW07DKvO/itBYVpC//bIOBZ6VFZILbqYn1dRJBogFIcf+MIKPdwyK0bQOSMeAmvD7Hav
	 YVsfCxJ6tJYWjdSOSdIM9K9OdcoGR/oIVuzL3Bbhk1m2lWH9+cPhS2b2R01iFGg4vPeKQ
	 QW9XP/9MtLsCryl++YtdpUkZuwHSM+3xiYaRNCdxPPOVVtblfzOAaHGAGdr5MNpvM3ihE
	 VdFpDtTs8lhQXexSX4GVeb47+CaZ/QYPldnczYehaEbvJEAbr4Xy0l7jMcppddc4OPqH2
	 KNmFD6jSBTR6IHX3zQtmhxuJoXvC1/Nj+gxVy8vWAmbH7PKWvurlsN8rh/4kCAhb7JQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793699921;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To;
	bh=iAKv+yT4A/GjeZOo4+mQtD3Vw+a5YgPIPq1fplJgNtI=;
	b=kbs843cgHlv+BZCm/VYI+gTdb00iNjHjcOb4cfT1sHI/ZUmrxWJ3wY9W7qRbHvj7Vkg3
	 cxvJAered+yNxtWfh/UnwFuTl87wMZycD5YKXRBtV08AYRiGD2/bFGPTRhmtfPqbP4dB9
	 vEWdIISwPxHE/y/rVqSIV3siv7YGP4UJIl1KLypcJVYnIlNkAcCbqoV3gvJp/S1Wd4bcy
	 YN+swBir71yjvxO4sZEHpO4OBu0CJkD555dIemlXBLcB9Ur/7oGyTru6y8DYCYox/3LDZ
	 qtI+q73+xVGzaVwlZsb+PBesLziOJ1Ct8XluYoajVnvVk2PW38xKRyxZjrsWCxSrhkA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=F6tysFMp;
	arc=none smtp.remote-ip=209.85.221.44
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAB95606EE9A
	for <outreachy@lists.linux.dev>; Tue,  3 Nov 2026 09:58:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org AAB95606EE9A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=F6tysFMp
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-48df8fe8513so3414437f8f.0
        for <outreachy@lists.linux.dev>; Tue, 03 Nov 2026 01:58:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793699919; x=1794304719; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=iAKv+yT4A/GjeZOo4+mQtD3Vw+a5YgPIPq1fplJgNtI=;
        b=F6tysFMpivoFNhXuDPcNCda+5fQzNs1aOd7yhN+LRUbGK7TD2Iji5ptcbIY62Gk6nQ
         s9j5jOYbRo0CY94acPZwznR7R28TONQ8avTZdK3TWdprb/0JWTHXvqoEyu4VMaCzKwg/
         qD/EP5SnJ3Csd6ScznR9WuX9cpVBNok1YIQLUp8TQQjjFfX6byM5PlTEG+L+CSpUH4wH
         JuDk29XmuUfsiI02nIXJPppRzy0CstHoUgrKjHVflUBqWS8gTRb0/6u5fRqzDuSMHakg
         V9w+NeG6QgVqutdoJU+TuAAtUf9kH2B9U6+fGgMWq4oxlvNF0HjG325G35qJK0UhS4QU
         2QyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793699919; x=1794304719;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=iAKv+yT4A/GjeZOo4+mQtD3Vw+a5YgPIPq1fplJgNtI=;
        b=0+TaQJIpjxQkSgpUOfM4fjp33UpIvNu8d2a6tkOWY6OlcviEetypST0J6qfTCvdf1F
         DGHZ1hceSZL3zu4h5W952/XxOMAFczEkB95g9tvKVsNBsMe3eYEh5/6gbjfSyH6w3ByU
         sVmNerULwbKtOgf+Yo+jaZFc2eaaDhM4tYjNVrjONrXGIeoyr74/MUPZMb/WKgAMzlip
         847eZdl8ZdygG1dxnqqi1kIYSTsojHGOKSEQSaiyO9NNSSWq/mbMcYXRKQyqJWv8qJVM
         /ZvX8MqkzYQ29fO9dGf41lurfadkMvDzW+ozDEj1dQNOqsNR5yn7gBK2QtfxZgSC29nL
         ZX/Q==
X-Forwarded-Encrypted: i=1; AKwUvBxhqEws9n9wE/H4TWBJK3+l0fFcgbhe2LLOtrHoUEzK9Z9aREYJlagRApdmQ+HnQil/app/UWaroB0=@lists.linux.dev
X-Gm-Message-State: APuU4Z/xBTAp0zv5jhJYIK7cY00JQD96QM9yROQYcaFmA6jbjLy0ND0r
	mOs+w6quekMCkRxKZ+f8TzK9yI8kA51UjZw+aOG+41lktVyxbNEpX6Ve
X-Gm-Gg: AYBFou3yhbQ+Dw15g91aru5ruVTWVY6isGfk+/st4TG2hX4Dm2EFtT5x3o2V1tv7cAr
	rrI9tv0UmvYdTMGI5xcgnasl0wil69J8DpWYy/0GN62RXwLDGQdmCSHOR2lp/JxFkyvQ/DeQ2Nl
	uySfkjDxrubZGo9xiW0zoD94bLPMjcT+u18orkTb/S4pFQ/H2dyl/oqqx5W/Cjh7GEWD9G8Ineh
	Ou+OZRW+WBNUHW781JN+mTci/75Ax/68Qw4FcNnfkAPtb7enDm+Xo/mCBNzMKSMoolGWhFJaRGY
	vhmPj63VGCicYava9w1uPEtuLVvp4nXzHkdTM3wRt78Y//OT2fwVFc7f9cV/ShuvFuHbLVhjzcy
	M1FCQin+0DADnLPoHfiMef65fQqUENuEQLlhB6EYptWSSI2qcoQzU689awmSCkWMeAK09kZglGV
	oejt/gdcNTXYvvVkSOKmtN5MJ34RassdyOi0X+tUFtfvMLCbU6ZqQnAgCclbOVdUE8G/8ENaNiy
	PMiWTp+gZ65Gm8/zD725vW8ul90i5CwPVDjiOwD1gxTP9doFHPej9PqIUuMbn68vMFGehCfd1V4
	1L+On2J1PMweJMFpOgtdsShEBOrRFEHDR+epX78AAAz5Rd3v4CcM4RVJJ2VnsObkIj0wzD69Xlh
	u3XvMaHXMZhMRTIq0b9zQfcGthz3zKjGaBp4BGIFv3/SqwLX8bJgTCwKrWrawCF590w==
X-Received: by 2002:a05:6000:24c7:b0:48d:f460:2c62 with SMTP id ffacd0b85a97d-48e6e50da1dmr29721511f8f.33.1793699918835;
        Tue, 03 Nov 2026 01:58:38 -0800 (PST)
Received: from localhost ([2c0f:3d00:6be:8900:ce5e:9212:ea4b:f30])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e71b964desm23901951f8f.46.2026.11.03.01.58.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 01:58:38 -0800 (PST)
Date: Tue, 3 Nov 2026 12:58:34 +0300
From: Dan Carpenter <error27@gmail.com>
To: Johan Hovold <johan@kernel.org>
Cc: Alex Elder <elder@ieee.org>, Maritu Hone <marehone12@gmail.com>,
	Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Bryan O'Donoghue <bod@kernel.org>, greybus-dev@lists.linaro.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: greybus: uart: fix heap buffer overflow in
 gb_tty->buffer
Message-ID: <aumwSiYE_EfWGdo3@stanley.mountain>
References: <20261102195332.19860-1-marehone12@gmail.com>
 <f3848ac6-a105-4581-8f17-fc9d3f748b74@ieee.org>
 <aumfB5MLWIQuTYY3@stanley.mountain>
 <aumlkgtsSDS1fw4g@hovoldconsulting.com>
 <aumpM9Hlh40t9UZd@stanley.mountain>
 <aumuFpFQWloRxaqO@hovoldconsulting.com>
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aumuFpFQWloRxaqO@hovoldconsulting.com>

On Tue, Nov 03, 2026 at 10:49:10AM +0100, Johan Hovold wrote:
> On Tue, Nov 03, 2026 at 12:28:19PM +0300, Dan Carpenter wrote:
> > On Tue, Nov 03, 2026 at 10:12:50AM +0100, Johan Hovold wrote:
> 
> > > It's the kfifo_out_peek() in gb_uart_tx_write_work() that may write 2
> > > bytes beyond gb_tty->buffer (as its size is currently just
> > > gb_tty->buffer_payload_max).
> > 
> > Ah, right.
> > 
> > The right way to fix this is to have a commit message that
> > says.  "The gb_tty->buffer pointer is supposed to hold a struct with
> > a flex array at the end, but gb_uart_probe() only allocates enough
> > space for the flex array so it's two bytes too small.
> > 
> > Part of the reason for this bug is because it uses a void pointer
> > instead of a struct pointer.  Clean that up as well to prevent
> > future bugs."
> > 
> > Please send something like this in v2.  (Send exactly this code
> > but edit the commit message if you want or leave it as-is).
> 
> Looks good, but since kzalloc_flex() was introduced in 7.0 (and this
> bugs goes back to 4.9 it may be better to do that conversion in a
> follow-up patch to assist the backporters.

Yep.  Good point.

regards,
dan carpenter
