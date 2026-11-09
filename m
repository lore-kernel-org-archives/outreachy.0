Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.221.50
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794211000;
	b=TMPt2rGcMsBinJRwauJEV4hadrupqtv5d/59AGDuHjRmauis+0u7rENliAKtsmQszxsL
	 yl0zmC7f6j5ywBh4eQcZC8uFyeW8kR49kMBhL0qbv8/dRr8tUD4HFXkBNxEshK7F8hteC
	 qkIl2x6vjSvIoPuTNBwkLxPz+qKUQdVhMbGvsMi+8joBekRoyBVwtyzTFntJqhjYGw+Yi
	 /+L8dWfjPv58X0VEA55u9WscI/Ble4j2Lad3SB5YIBCKoZayuHwvtOfVdBuKaiweTg3yl
	 zwfzDTFZ06gbAzxdqYWfsX3qu3+3FB5pZIIcFlTi+VHTbSC7WA3uLQgV75iO6srUuyQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794211000;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=7HtWqT9F1u6rqdoIAv+Z0YVgKm4E4z20nYKHKjl2Zos=;
	b=5WzW1ZZr6Pa5OHMQLV9YWvQ4bXU9PJE1Q/CYjCQTZ6G4vwm5CbabYias3XTB+1e2Stag
	 nm/4m66LQVDtzqPzlP3fSiXrUA2NRMmulerE99MttClc940Wdb14LTBW9o/IwuRNaJMzP
	 GfvGa/yWtB3BhyWQsOlnz3eEo7FcCAhcVCyAThRqZVbENe0bJFYPBWTMForXQA5eswZqj
	 gxUqYKJlYDL3vG2lze5qR1aZ2FTc/43x1ObmDUvDU5e4H8asGOnaB0wjj4WpTgzG8eD4A
	 emT0UsITsZZSE7V3pXOzL+f6ydLGZa72KegEgww9gP+FOKJDKyov5TAq4iDWnMiapOA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=QEi7y6xq;
	arc=none smtp.remote-ip=209.85.221.50
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3384C606A31C
	for <outreachy@lists.linux.dev>; Mon,  9 Nov 2026 07:56:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 3384C606A31C
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=QEi7y6xq
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-48e1d0e5dafso325640f8f.1
        for <outreachy@lists.linux.dev>; Sun, 08 Nov 2026 23:56:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794210998; x=1794815798; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=7HtWqT9F1u6rqdoIAv+Z0YVgKm4E4z20nYKHKjl2Zos=;
        b=QEi7y6xqK0iO+xDLasPxCxKNRBl87SB/dDbqzvZWwetnAZenVEykEfqgNZDJw7xEXE
         Nwu5OrRb2wnYhmzpgdj+2jcKe7yXYmFnAzZibrN2eI2oC8WPmIhnJ9H+ioV73K9LJjna
         7XUmDrzfIJN9MUSrNChwxvQBajv31ldKOL1Rkb8AEp2vGyO10xDcSfEyv4Kkeaf5LpNd
         Y/Pqt2kziFKQd+glUATG9+0eTWBtvpIrW0BLfmGySieMDe+f7MrpT2mJXehMMU+emn1A
         y/f4BScdo0CYQOVpoFLv2VD7zgrVAbXK8J0zXuN+5JS1MRlXccf9dHSgc7v0NtUwCWQl
         ORWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794210998; x=1794815798;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=7HtWqT9F1u6rqdoIAv+Z0YVgKm4E4z20nYKHKjl2Zos=;
        b=GqLMx1eZ0M6/ixNxoabIbiI3nA21WSOMQTYVdl3I7PEIyXndSmmUA7H8Mv5EhYv/q8
         4W2djk3L5wb6KOc0PuAlCWLDk1PLTAyDaKsUagtZfEj/Qd7EihgbT/cP1UzeCgqVtTNp
         edvdvLXH8b4h8q35rStJqi6ai7OjwfW67XVfLeQqtURhLvp1WwqT82PSFFNJbwEF8o/8
         osZYxpS+8sFP26p5o5jwwLBrD82RNQGaCak8CgpANCuzRnksyF5nXnOo5XQrIKfO5GRo
         sZiqx21K4vcHgNfeOXMFM2yM1gXCrgP4mHZko4Wkjmf4F4ApiI+QOVbJaCmKFJEbqjkR
         3nNA==
X-Gm-Message-State: APuU4Z9ETXbMjucmc21JoNKd+5tVrMVg+3YXnqHYYPHGQ4XOU3qo2pPt
	VTjhtpH7JGJJOZxRM/UoD360An+ZLt7E3Q+Z5lM1wHlJoQLgaobdzRug
X-Gm-Gg: AYBFou2sL0KXw0bwnJOQ0Pw1+EiwCDm90lcMDlIbXcpQOs2gWAKO02+WRB42xVRkn7I
	3UlUtTotPSwYvdt4k+MZds9p5zQh6GzZgbmlTudKbWSdbrXcOR4knzxGR1BIep0HtuzG8T/5nu2
	VJAC8uOcAuBgw3MMO3yIMYwL83gfaWAfaf9oghBOcSGg5M/WH4icG/zTA6qgBJ3THc/z8pLKgHj
	hXxOF5hOImQ7iWCWyucVFSc7tdzwMbwyBNx0ZhSZwMV7eW52vylbc8B6+twiUkTfKO3mkKYdmDF
	4B+QaCpLfo1MR2KYeY/XmfhHedZoJFyjhAcDnntZJh/WSLLhnnha4J/vhPjCoL1LoLGSqiXZwY+
	QOC4N+KOp4jEkL2gBY5wLQdw1Q+pRYeIqizd/vekCgXSEeRa3dM3u424pk5jsy+JHemL2Q0DiE6
	NvGecKu/Ou1oLI7nbquBeC9428UgyIP9kImfKhXvnrsXeOWWp8UjUiSt0xD3TAMRzCvdtCukJe+
	XEy2Cp/ehc0c5yG57RlV68Ghef4ziM+ojbWv0NBYS4vRlEOcVkAa7H9eNs/E1mLKR8jCPqhLcLD
	PW3z1F+cx4ai3a5h6K/2s9zgaDLt/K3Ycyxfm3ydF36+DVBjvpUBm00Trn5xKEmOIsgRROZf7Aa
	l/VRBE6AG0LPOyBYti/a2LjilcfQRFShMF8VTprvI12F9wfupvvtXM9KjKwWqWKiG5w==
X-Received: by 2002:a05:6000:2511:b0:48e:d7c:4bc3 with SMTP id ffacd0b85a97d-494248ee013mr12152572f8f.21.1794210998445;
        Sun, 08 Nov 2026 23:56:38 -0800 (PST)
Received: from localhost ([2c0f:3d00:6be:8900:ce5e:9212:ea4b:f30])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4959755d494sm9252436f8f.41.2026.11.08.23.56.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2026 23:56:37 -0800 (PST)
Date: Mon, 9 Nov 2026 10:56:33 +0300
From: Dan Carpenter <error27@gmail.com>
To: Shivani Patel <patelshivani2283@gmail.com>
Cc: outreachy@lists.linux.dev, vaibhav.sr@gmail.com, mgreer@animalcreek.com,
	johan@kernel.org, gregkh@linuxfoundation.org,
	linux-staging@lists.linux.dev
Subject: Re: [PATCH] staging: greybus: audio_manager_module: Add newline to
 sysfs output
Message-ID: <avF8sf_Auo0z-_93@stanley.mountain>
References: <20261109075242.62681-1-patelshivani2283@gmail.com>
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
In-Reply-To: <20261109075242.62681-1-patelshivani2283@gmail.com>

On Mon, Nov 09, 2026 at 01:22:42PM +0530, Shivani Patel wrote:
> The sysfs_emit() calls in the show functions for audio manager module
> attributes were missing terminating newlines. Add them to conform to
> the kernel coding style requirement that sysfs output ends with a
> newline character.
> 
> Signed-off-by: Shivani Patel <patelshivani2283@gmail.com>
> ---

No.  See the archives (lore.kernel.org) for why.

regards,
dan carpenter

