X-GM-THRID: 6620379413564358656
X-Received: by 2002:a2e:9cc8:: with SMTP id g8-v6mr671211ljj.29.1541427200851;
        Mon, 05 Nov 2018 06:13:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:4bca:: with SMTP id y193ls111687lfa.3.gmail; Mon, 05 Nov
 2018 06:13:19 -0800 (PST)
X-Google-Smtp-Source: AJdET5fnD2ec4VDinUw4pSObX7i3VJVlh9jK/SvC2NN8vEmA7JVg931rDmeVtpICcX9OF9d5uQ0q
X-Received: by 2002:a19:5619:: with SMTP id k25-v6mr1661647lfb.12.1541427199919;
        Mon, 05 Nov 2018 06:13:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541427199; cv=pass;
        d=google.com; s=arc-20160816;
        b=CSQkwOcWJiJ/cgwbmSJEI4Ije7K0L+ud7lrNUPrAP7cFPyRlcFfU4ELl7U9FpSAWFi
         Zl5+ZCFa6pRZfFmAyP02T2yK7cFnkng6hvPPhEAsDPte3IiaWGE/6E8KHWtB5gmjQlzv
         1qT81b2ZRHuRk3pSjuempnSVkxbTYCyRjs3KCa4vNOYlmJIduqfxluI9qYbanvrYB6IA
         lRmFEZiI1P44xb1u+jBkF75wrxQjgG1Jh/H4lFoD8EoC7OIdVgAJyTz09d4t1m2sfVUV
         IHXKvrlwu4HI7iMUjM+RUT5fwCOhWyX8ygudZYBpsR2nrsSrOlQUrU2ZAwtdVfbqjZj1
         I1AA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Rzc2W0gc2a1A4Ia2TqV/YbUD3wyftmEvJHYoNoR7HyM=;
        b=TEb9pT2exLSBOMlcy3x24gYMGxCnkEpq/dHJrh/7xeWanj8s5AKdAkFZWGspZ6wi9F
         o/NohKK+67UJuKjqz9DwR8eyhW9VMe57nBfB+a5eBrTdHCLjEN/NlcE7kexBWoZXc+H6
         rT0yFwao4dxgv6ljaRpBfDAOEdCXb2xNrI9y3K2ckV/ujUjTm3wDktZq/O/UELb5z49R
         b4zxPOWIkEMRoZhVWVF+EUv69bC5ETU/M46cqWVp1DZXQReOFHUfwC9D/jyJKphv/aZf
         RauFQ4V9jQt4SRCIgp+Pyrv9kRhxZeb/IkJMcTRgZ3e3PecgdI2He5n2moXnNqBc0RfE
         3hIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=fu8UemFC;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id y66-v6si1136048lje.0.2018.11.05.06.13.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:13:19 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=fu8UemFC;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541427197; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=Xt4U2nzGTIR+fTdJtxnGNgtxejiJfuovykmkik8S8mw4415P9aKN8G7xTXy/+fS5qH1+E7n3kj2LYf/sWF7MnqcteC7My48s0kwTTVl9+Rk2IWOG4iwrA5o9LB6FUrySDNYMX4PX4mpJ8qQyDCBvR91mwoGiVeoB/jmGLRzrk5o=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541427197; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=Rzc2W0gc2a1A4Ia2TqV/YbUD3wyftmEvJHYoNoR7HyM=; 
	b=PeiE6UFyfzEg28tGkO2MxOXi/NHXUnd0lP/xGUGrYTAgPMYV40lxy/Ws2QKWYFZBQFDrvEwrtPeLDB52mNTBqWnC10kTJ0oAVQU8XYo2rhopFuAXkZu878egPmYrRx4z6Fb1/J3Ehpl44fyMGkA3bW2pKrYqVTjBzE5Zd4JJgN4=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541427197;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=332; bh=Rzc2W0gc2a1A4Ia2TqV/YbUD3wyftmEvJHYoNoR7HyM=;
	b=fu8UemFCt9lhePtQheVaR7VC5ls321q+LG0scJNfdpDGpcfdkKh3TtLN21fb/87q
	oLDOIxG0Zf4gC4Mv7Xold+1hIzeI82H84RAYnJ0AV94jDq1r9eP2svshiVOlGjlHm6j
	UYtVMS/uIZoR1G8pveeVzFrXO59X8MHN2WHrdlNM=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541427195340419.9454388993894; Mon, 5 Nov 2018 15:13:15 +0100 (CET)
Date: Mon, 5 Nov 2018 14:13:14 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 0/2] staging: zoran: replace bit mask and fix styling
Message-ID: <cover.1541427136.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

staging: zoran: replace bit mask and fix styling issues reported by
checkpatch.

Ioannis Valasakis (2):
  staging: zoran: replace masking with  BIT macro
  staging: zoran: remove unnecessary braces

 drivers/staging/media/zoran/zoran_device.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

-- 
2.19.1



