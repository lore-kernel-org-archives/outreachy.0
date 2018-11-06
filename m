X-GM-THRID: 6620566870307110912
X-Received: by 2002:a1c:d8:: with SMTP id 207-v6mr68616wma.12.1541470845694;
        Mon, 05 Nov 2018 18:20:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:b698:: with SMTP id j24-v6ls2409941wre.16.gmail; Mon, 05
 Nov 2018 18:20:44 -0800 (PST)
X-Google-Smtp-Source: AJdET5fxczqfwrpAnilJwz4/pTBMI/RleOgFRn4cZ54dxgOkMXFyV406O8JZFGQxH6CBnXqrjz9k
X-Received: by 2002:adf:f389:: with SMTP id m9-v6mr2024981wro.11.1541470844855;
        Mon, 05 Nov 2018 18:20:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541470844; cv=pass;
        d=google.com; s=arc-20160816;
        b=uwZBcaDVzyjnQ1aXLoNNcatRmDRANrBFiPB5zOjcgTT4OGjqsyhAIC0V1Zb1PYxvO6
         OQufdNYR35BaHs3huTTdE14tVBHKgPO/sIzCP8QATKI0s1fi/P0dDUAeu4KB77bjrZ/n
         0DTNH9pBBQ/Jk9w9q455iQXsw6Y+ee0yCPHzPZb+KCiKfdQvkfUT974rkSRK82XWzd0m
         fw/liLtUmvneGn+xxV4vTMGiCsoxnhyMekpF+aKEkEG3Gu9CetCKNCN8hC2Pydl0Y2vx
         UMg45/HmwHGJcmW5EF6neI0aWfNCyKCU4rniBPyAl7YWfWlb+G6105S8u6WCX+7tUINh
         xeJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=cVO93lX+jwpkYj/ZnVb7lr3FEzkBjC+A3RQ7W1x5xEU=;
        b=X6LAUBIvHq+jPgCiDdccSeAzxile5lhfwiL4Mz1t3O5FU1iiZDvpIE2+dSXLJOTy5L
         +o72fGCFIKXzJCOhCjIITYYdlSLo6Ccag9V06vXmGi0dxrERLn/yVIy+th8KhRFVKl9Z
         drq/tpwMWzTKFzFyGRVSlDImu2L8IDRJ6u2061OBMlV6Z4D7yDw5TWU+iZaa+oBrZdJ2
         5m3u6GO954A9hgkFadnq53UNewj37QfCwio+JSkCZInuEGEv4tZIjkqs6yxyivrgPII7
         SuMVa49ACP7gVpi46Ys1t1LOPo7miiNpJn1R01nnP64S2UHalvG6w3dVPyhrfENay4wW
         csHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=WbuiL0Iw;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id z129-v6si21918wmc.0.2018.11.05.18.20.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 18:20:44 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=WbuiL0Iw;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541470842; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=VvWrEsh48vab3DGQN4B3nm9E5Qa5+xCvadZO1jrCqM487VGezYlepZYCTy73GiO4RAp/pH8xvjuaXag/XUgmUinR2YOKAVxztUftKdhx/EMOIScwzyhFTrpQQR/RXaBsOS0049GbMACeu5D7aqBcUfPIbeowUE5P8Ajq6E8u6U8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541470842; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=cVO93lX+jwpkYj/ZnVb7lr3FEzkBjC+A3RQ7W1x5xEU=; 
	b=J1q8RrIZloUaXvRcML53FDbGSGNHj+4Mqj+1B1X2N1MZ5aOIn6wwHAMCyzV509oKHbUuyw83+0SXULwzeT7BSDNNSfowXv2tK/+An4YAsVVnVSBfEEHmdE0sPW0DqD/9Dk/5ctLF3eQOTelx2SREUBxaGrm8lmvujXKjGshrsxE=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541470842;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=288; bh=cVO93lX+jwpkYj/ZnVb7lr3FEzkBjC+A3RQ7W1x5xEU=;
	b=WbuiL0IwiY9ywgSX5rohF8Q0LowE7rfyvF8DO3icySRK2nFwI+fI0V6l3heElbsK
	PVkmWR0MyuwQiDfbqdU8pRjkNxWyktwN4E533xdM9hPx0lFDc06BrtyJ3UBJ4JlPAwz
	/VUngvWrn8MO7u0h7WtMSryHJZ0Ul/WYfwf9ayd8=
Received: from kvasir.local (90.252.88.110 [90.252.88.110]) by mx.zoho.eu
	with SMTPS id 1541470841791830.6061915526494; Tue, 6 Nov 2018 03:20:41 +0100 (CET)
Date: Tue, 6 Nov 2018 02:20:40 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 0/2] staging: speakup fix code styling
Message-ID: <cover.1541470798.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Fix code styling reported by checkpatch.

Ioannis Valasakis (2):
  staging: speakup: add spaces around minus
  staging: speakup: move arguments to reduce 80 chars limit

 drivers/staging/speakup/speakup_acntpc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

-- 
2.19.1



